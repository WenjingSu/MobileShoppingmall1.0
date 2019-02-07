package com.apple.beans;

public class Manager {
	private Integer m_id;
	private String m_name;
	private String m_password;
	private Integer role;
	private Integer m_del;

	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Manager(Integer m_id, String m_name, String m_password,
			Integer role, Integer m_del) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_password = m_password;
		this.role = role;
		this.m_del = m_del;
	}
	public Integer getM_id() {
		return m_id;
	}

	public void setM_id(Integer m_id) {
		this.m_id = m_id;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public Integer getM_del() {
		return m_del;
	}

	public void setM_del(Integer m_del) {
		this.m_del = m_del;
	}
	@Override
	public String toString() {
		return "Manager [m_id=" + m_id + ", m_name=" + m_name + ", m_password="
				+ m_password + ", role=" + role + ", m_del=" + m_del + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((m_del == null) ? 0 : m_del.hashCode());
		result = prime * result + ((m_id == null) ? 0 : m_id.hashCode());
		result = prime * result + ((m_name == null) ? 0 : m_name.hashCode());
		result = prime * result
				+ ((m_password == null) ? 0 : m_password.hashCode());
		result = prime * result + ((role == null) ? 0 : role.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Manager other = (Manager) obj;
		if (m_del == null) {
			if (other.m_del != null)
				return false;
		} else if (!m_del.equals(other.m_del))
			return false;
		if (m_id == null) {
			if (other.m_id != null)
				return false;
		} else if (!m_id.equals(other.m_id))
			return false;
		if (m_name == null) {
			if (other.m_name != null)
				return false;
		} else if (!m_name.equals(other.m_name))
			return false;
		if (m_password == null) {
			if (other.m_password != null)
				return false;
		} else if (!m_password.equals(other.m_password))
			return false;
		if (role == null) {
			if (other.role != null)
				return false;
		} else if (!role.equals(other.role))
			return false;
		return true;
	}
}
