/**
 * 
 */
package com.booze.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booze.app.dao.interfaces.IUserDao;
import com.booze.app.model.User;
import com.booze.app.services.interfaces.IUserService;

/**
 * @author Sushant Kumar Singh
 *
 */
@Service
public class UserService implements IUserService {

	@Autowired
	private IUserDao userDao;
	/**
	 * 
	 */
	public boolean saveUser(User user) {
		try {
			this.userDao.saveUser(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	/**
	 * 
	 */
	public User getUser(User user) {
		try {
			return this.userDao.getUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
