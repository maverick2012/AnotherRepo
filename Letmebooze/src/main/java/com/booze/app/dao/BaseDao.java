/**
 * 
 */
package com.booze.app.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Component;

/**
 * 
 * A base class which should be extended by all the dao classes.
 * 
 * @author Sushant Kumar Singh
 *
 */
@Component
public class BaseDao extends JdbcDaoSupport {

	@Autowired
    public void currentDataSource(DataSource dataSource) {
	super.setDataSource(dataSource);
    }

    protected NamedParameterJdbcTemplate getNamedParameterJdbcTemplate() {
	return new NamedParameterJdbcTemplate(this.getDataSource());
    }
	
}
