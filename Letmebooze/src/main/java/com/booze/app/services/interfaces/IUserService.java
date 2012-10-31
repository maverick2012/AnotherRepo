/**
 * 
 */
package com.booze.app.services.interfaces;

import com.booze.app.model.User;

/**
 * @author Sushant Kumar Singh
 *
 */
public interface IUserService {

	public boolean saveUser(User user);
	public User getUser(User user);
}
