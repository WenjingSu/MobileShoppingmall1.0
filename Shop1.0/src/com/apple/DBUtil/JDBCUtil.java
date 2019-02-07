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
		// 1.加载驱动
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
			System.out.println("加载驱动失败");
		}
		// 创建连接
		String url = "jdbc:mysql://127.0.0.1:3306/applemall";
		String user = "root";
		String password = "coffee";
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
			System.out.println("数据库连接失败");
		}
		return con;
	}

	// 关闭
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
	 * @param sql   sql语句
	 * @param params	执行参数
	 * @return  
	 */
	public List<Map<String,Object>> findResults(String sql,List<?> params) throws SQLException{
		List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
		PreparedStatement pst=getConnection().prepareStatement(sql);//创建PreparedStatement对象
		int index=1;
		//设置参数
		if(params!=null&&!params.isEmpty()){//有参数
			for (int i = 0; i < params.size(); i++) {//循环设置参数
				pst.setObject(index++,params.get(i));//设置参数
			}
		}
		//返回结果集
		ResultSet resultSet=pst.executeQuery();
		//获取字段
		ResultSetMetaData metaData=resultSet.getMetaData();
		int a=metaData.getColumnCount();//获取表中列的数量
	
		while(resultSet.next()){
			Map<String,Object> map=new HashMap<String, Object>();
			for(int i=0;i<a;i++){
				String clos_name=metaData.getColumnName(i+1);//获取列名称
								Object object=resultSet.getObject(clos_name);//根据列名称获取列的内容
				if(object==null){
					object="";
				}
				map.put(clos_name, object);//将对应的列名称和内容存放在Map集合中
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