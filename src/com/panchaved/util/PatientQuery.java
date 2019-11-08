package com.panchaved.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

public class PatientQuery {

	static Statement stm;
	static PreparedStatement pstm;
	private static Connection con = DbConnect.Connect();
	static ResultSet rs;

	public static ResultSet selectQueryPatient(String offset) {
		try {
			String sql ="select * from patient limit "+offset+",20";
			pstm = con.prepareStatement(sql);
			return pstm.executeQuery();
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	public static PreparedStatement insertQueryPatient() {
		try {
			String sql ="insert into patient values(?,?,?,?,?,?,?,?,?,?,?)";
			pstm = con.prepareStatement(sql);
			
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return pstm;
	}
	

}
