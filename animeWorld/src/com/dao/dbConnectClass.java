package com.dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class dbConnectClass {

	public Connection conn = null;
	public dbConnectClass(){
		try {
		      Class.forName("com.mysql.jdbc.Driver");      
		     
		     System.out.println("Success loading Mysql Driver!");
		    }
		    catch (Exception e) {
		      System.out.print("Error loading Mysql Driver!");
		      e.printStackTrace();
		    }
	}
	
	//create connection
	public Connection getConnection(){
		try {
			this.conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/java","java","pass");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return this.conn;
	}
	
	//close connection
	public void closeConnection() throws SQLException{
		if(this.conn != null){
			this.conn.close();
		}
	}
}
