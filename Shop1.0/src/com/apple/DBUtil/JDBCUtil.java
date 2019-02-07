package com.apple.DBUtil;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class JDBCUtil {
	public static Connection getConnection() {
		// 1.��������
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
			System.out.println("��������ʧ��");
		}
		// ��������
		String url = "jdbc:mysql://127.0.0.1:3306/applemall";
		String user = "root";
		String password = "coffee";
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
			System.out.println("���ݿ�����ʧ��");
		}
		return con;
	}

	// �ر�
	public static void close(ResultSet rs, PreparedStatement pstm,
			Connection con) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pstm != null) {
			try {
				pstm.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
	/**
	 * @param sql   sql���
	 * @param params	ִ�в���
	 * @return  
	 */
	public List<Map<String,Object>> findResults(String sql,List<?> params) throws SQLException{
		List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
		PreparedStatement pst=getConnection().prepareStatement(sql);//����PreparedStatement����
		int index=1;
		//���ò���
		if(params!=null&&!params.isEmpty()){//�в���
			for (int i = 0; i < params.size(); i++) {//ѭ�����ò���
				pst.setObject(index++,params.get(i));//���ò���
			}
		}
		//���ؽ����
		ResultSet resultSet=pst.executeQuery();
		//��ȡ�ֶ�
		ResultSetMetaData metaData=resultSet.getMetaData();
		int a=metaData.getColumnCount();//��ȡ�����е�����
	
		while(resultSet.next()){
			Map<String,Object> map=new HashMap<String, Object>();
			for(int i=0;i<a;i++){
				String clos_name=metaData.getColumnName(i+1);//��ȡ������
								Object object=resultSet.getObject(clos_name);//���������ƻ�ȡ�е�����
				if(object==null){
					object="";
				}
				map.put(clos_name, object);//����Ӧ�������ƺ����ݴ����Map������
			}
			list.add(map);
		}
//		close(resultSet, null, null);
		return list;
	}
	
	
	
	public static void main(String[] args) {
		new JDBCUtil().getConnection();
	}
}