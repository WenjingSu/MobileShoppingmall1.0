package com.apple.dao;

import java.util.List;

import com.apple.beans.User;

public interface UserDao {
	// ע�⣡���û����������֤��MD5����
	public List<User> userfindall();// ��ѯ�����û�

	public User userfindbyuId(Integer u_id);// ��ݡ��û���š����һ�Ա������Ϣ

	public boolean updateUserDel(User user);// �߼�ɾ���û�
	
	public boolean userRegister(User user);//�û�ע��
	
	public User userLogin(User user);//�û���¼
	
	public boolean userUpdate(User user);//�û����ĸ�����Ϣ
	public boolean  userHeadShotUpdate(User user);//�û�����ͷ��
	
	public boolean userFindbyName(String username);//�ʺ���֤
	
	public boolean userUpdatepsw(User user);//�û���������
	
	public boolean userUpdatephone(User user);//�û����İ��ֻ���
}
