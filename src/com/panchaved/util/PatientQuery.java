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


	static PreparedStatement insertQueryPatient(String limit) {

		return pstm;
	}

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

}
