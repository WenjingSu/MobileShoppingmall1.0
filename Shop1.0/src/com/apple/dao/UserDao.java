package com.apple.dao;

import java.util.List;

import com.apple.beans.User;

public interface UserDao {
	// ×¢ï¿½â£¡ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö¤ï¿½ï¿½MD5ï¿½ï¿½ï¿½ï¿½
	public List<User> userfindall();// ï¿½ï¿½Ñ¯ï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½

	public User userfindbyuId(Integer u_id);// ï¿½ï¿½İ¡ï¿½ï¿½Ã»ï¿½ï¿½ï¿½Å¡ï¿½ï¿½ï¿½ï¿½Ò»ï¿½Ô±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ï¢

	public boolean updateUserDel(User user);// ï¿½ß¼ï¿½É¾ï¿½ï¿½ï¿½Ã»ï¿½
	
	public boolean userRegister(User user);//ÓÃ»§×¢²á
	
	public User userLogin(User user);//ÓÃ»§µÇÂ¼
	
	public boolean userUpdate(User user);//ÓÃ»§¸ü¸Ä¸öÈËĞÅÏ¢
	public boolean  userHeadShotUpdate(User user);//ÓÃ»§¸ü¸ÄÍ·Ïñ
	
	public boolean userFindbyName(String username);//ÕÊºÅÑéÖ¤
	
	public boolean userUpdatepsw(User user);//ÓÃ»§¸ü¸ÄÃÜÂë
	
	public boolean userUpdatephone(User user);//ÓÃ»§¸ü¸Ä°ó¶¨ÊÖ»úºÅ
}
