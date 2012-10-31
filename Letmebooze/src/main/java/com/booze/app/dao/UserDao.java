/**
 * 
 */
package com.booze.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Component;

import com.booze.app.dao.interfaces.IUserDao;
import com.booze.app.model.User;
import com.booze.app.util.SqlScript;

/**
 * @author Sushant Kumar Singh
 *
 */
@Component
public class UserDao extends BaseDao implements IUserDao {

	String sql = null;
	/* (non-Javadoc)
	 * @see com.booze.app.dao.interfaces.IUserDao#saveUser(com.booze.app.model.User)
	 */
	public boolean saveUser(final User user) {

		try {
			sql = SqlScript.SAVE_USER;
			this.getJdbcTemplate().update(sql, new PreparedStatementSetter() {
				
				public void setValues(PreparedStatement ps) {
					try {
						ps.setString(1, user.getFirstName());
						ps.setString(2, user.getLastName());
						ps.setString(3, user.getSex());
						ps.setString(4, user.getEmail());
						ps.setString(5, String.valueOf(user.getPhoneNumber()));
						ps.setString(6, user.getAddress());
						ps.setString(7, user.getPassword());
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			});
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see com.booze.app.dao.interfaces.IUserDao#getUser(com.booze.app.model.User)
	 */
	public User getUser(final User user) {

		String password = user.getPassword();
		sql = SqlScript.GET_USER;
		final User returnUser = new User();
		this.getJdbcTemplate().query(sql, new PreparedStatementSetter() {
		    public void setValues(PreparedStatement ps) throws SQLException {
		    		ps.setString(1, user.getEmail());
		    }
		}, new ResultSetExtractor<Object>() {

		    public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
			if (rs.next()) {
			    returnUser.setId(rs.getLong("ID"));
			    returnUser.setFirstName(rs.getString("firstname"));
			    returnUser.setLastName(rs.getString("lastname"));
			    returnUser.setEmail(rs.getString("email"));
			    returnUser.setSex(rs.getString("sex"));
			    returnUser.setAddress(rs.getString("address"));
			    returnUser.setPhoneNumber(rs.getLong("phoneno"));
			    returnUser.setPassword(rs.getString("password"));
			    returnUser.setDefaultLocation(rs.getString("location"));
			}
			return null;
		    }
		});

		if(password != null && password.equals(returnUser.getPassword())) {
			return returnUser;
		} else {
			user.setFirstName("Guest!");
			return user;
		}
		

	    
	}

}
