/**
 * 
 */
package com.booze.app.util;

/**
 * @author Sushant Kumar Singh
 *
 */
public class SqlScript {

	public static final String SAVE_USER = "INSERT INTO tbl_lmb_member (fl_nm,lst_nm,sex,eml_addr,ph_no,addr_txt,created_on,update_by,created_by,dob,user_pwd)" 
			+ "VALUES(?,?,?,?,?,?,sysdate(),'admin','admin',sysdate(),?)";
	
	public static final String GET_USER = "SELECT id,fl_nm  firstname,lst_nm  lastname,sex, eml_addr email,ph_no phoneno,addr_txt  address,default_loc location,dob,user_pwd password FROM tbl_lmb_member where eml_addr=? and is_deleted<>1 ";


}
