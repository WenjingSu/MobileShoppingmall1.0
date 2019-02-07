package com.apple.dao;

import java.util.List;

import com.apple.beans.Manager;

public interface ManagerDao {

	public boolean managerAdd(Manager manager);//添加管理员[超级管理员]
	public boolean managerUpdate(int id,int role);//修改管理员信息[超级管理员]
	public boolean managerDel(int id);//彻底删除管理员[超级管理员]
	public List<Manager> managerFindAll(int id);//查询所有管理员[超级管理员]
	public Manager managerLogin(Manager manager);//管理员登录
	public boolean managerUpdatePwd(Manager manager);//管理员修改密码
	public boolean managerAddFindOne(String m_name);//管理员注册帐号验证
}
