/**
 * 
 */
package com.booze.app.dao.interfaces;

import com.booze.app.model.User;

/**
 * @author Sushant Kumar Singh
 *
 */
public interface IUserDao {

	public boolean saveUser(User user);
	public User getUser(User user);
}
