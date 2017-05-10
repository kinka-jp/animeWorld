package com.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dto.siteDTO;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class sitesDAO {
	Connection connect = null;
	
	public sitesDAO(){
		try {
	      Class.forName("com.mysql.jdbc.Driver");  
	      System.out.println("Success loading Mysql Driver!");
	    }
	    catch (Exception e) {
	      System.out.print("Error loading Mysql Driver!");
	      e.printStackTrace();
	    }
		try {
			this.connect = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/java","java","pass");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<siteDTO> getSites() throws SQLException{
		siteDTO sitedto = new siteDTO();
		ArrayList<siteDTO> temp = new ArrayList<siteDTO>();
		String sql = "select *from websites";
		if(connect != null){
			Statement stmt = (Statement) connect.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				sitedto.setId(rs.getInt("id"));
				sitedto.setName(rs.getString("name"));
				sitedto.setLink(rs.getString("url"));
				sitedto.setAlexa(rs.getInt("alexa"));
				sitedto.setCountry(rs.getString("country"));
				temp.add(sitedto);
			}
		}
		return temp;
	}
}
