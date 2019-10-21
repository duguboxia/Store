package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil4pre {
		  Connection connection=null;
		  PreparedStatement preparedStatement=null;
		  ResultSet  rSet=null;
		  public JDBCUtil4pre() {
			  getConnection();
		  }
		  
		  public void getConnection() {
			  try {
				String url = "jdbc:mysql://localhost:3306/store?useUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull";
					Class.forName("com.mysql.jdbc.Driver");
					connection = DriverManager.getConnection(url, "root", "root");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  }
		  public int updateData(String sql,Object[]params) {//����ɾ���ĵķ���
			 int result=-1;
			  try {
				preparedStatement=connection.prepareStatement(sql);
				  if(params!=null) {
					  for(int i=0;i<params.length;i++) {
						  preparedStatement.setObject(i+1, params[i]); 
					  }
				  }
				  result=  preparedStatement.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 return result; 
			  
		  }
		  
		  public ResultSet QueryData(String sql,Object[] params) {//��ѯ
				 
				  try {
					preparedStatement = connection.prepareStatement(sql);
					  if(params!=null) {
						  for(int i=0;i<params.length;i++) {
							  preparedStatement.setObject(i+1, params[i]); 
						  }
					  }
					  rSet =  preparedStatement.executeQuery();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 return rSet; 
				  
			  }
		  public void close() {
				try {
					if (rSet != null) {
						rSet.close();
					}
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

		  }
}