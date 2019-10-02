package com.panchaved.util;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

public class AddPatientQuery {
	static Statement stm;
	static  PreparedStatement pstm=null;
	private static Connection con = DbConnect.Connect();
	static ResultSet rs;
	
	public static boolean insertPatient(Integer id, String patname, String gender, long contact, String bloodgrp,Date dob,String address,String district,String state,String remarks)
	{
		try {
			String sql ="insert into patient values(?,?,?,?,?,?,?,?,?,?,?)";
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, id);
			pstm.setString(2, patname);
			pstm.setString(3, gender);
			pstm.setLong(4, contact);
			pstm.setString(5, bloodgrp);
			pstm.setDate(6, dob);;
			pstm.setString(7, address);
			pstm.setString(8, district);
			pstm.setString(9, state);
			pstm.setString(10, remarks);
			pstm.setString(11, "");
//			rs = pstm.executeQuery();
//			if(rs.next()) {
				return true;
//			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return false;
	}
}
