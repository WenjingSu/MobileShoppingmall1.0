package com.apple.dao;

import java.util.List;

import com.apple.beans.Manager;

public interface ManagerDao {

	public boolean managerAdd(Manager manager);//��ӹ���Ա[��������Ա]
	public boolean managerUpdate(int id,int role);//�޸Ĺ���Ա��Ϣ[��������Ա]
	public boolean managerDel(int id);//����ɾ������Ա[��������Ա]
	public List<Manager> managerFindAll(int id);//��ѯ���й���Ա[��������Ա]
	public Manager managerLogin(Manager manager);//����Ա��¼
	public boolean managerUpdatePwd(Manager manager);//����Ա�޸�����
	public boolean managerAddFindOne(String m_name);//����Աע���ʺ���֤
}
