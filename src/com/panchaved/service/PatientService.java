package com.panchaved.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.panchaved.enitity.Patient;
import com.panchaved.util.DbConnect;
import com.panchaved.util.PatientQuery;

@Component
public class PatientService {
	
	public List<Patient> patients;
	public PatientService() {
	patients = new ArrayList<Patient>();
	//patient.add(new Patient("sa", "a", 88, "a", new Date("2014-02-14"), "a", "a", "aaa"));
	}
	public Connection con=null;
	public void registerPatient() 
	{
		
		Connection con = DbConnect.Connect();
		try {
			Statement stmt = con.createStatement();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	

	public static boolean insertPatient(Integer id, String patname, String gender, long contact, String bloodgrp,Date dob,String address,String district,String state,String remarks)
	{
		try {
			String sql ="insert into patient values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstm = PatientQuery.insertQueryPatient();
			pstm.setInt(1, id);
			pstm.setString(2, patname);
			pstm.setString(3, gender);
			pstm.setLong(4, contact);
			pstm.setString(5, bloodgrp);
			pstm.setDate(6, (java.sql.Date) dob);
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
	
	public ArrayList<Patient> getAllRecords(int page) {
		int o = (page-1) * 20;
		System.out.println(Integer.toString(o));
		ResultSet rs = PatientQuery.selectQueryPatient(Integer.toString(o));
		patients.clear();
		try {
			while(rs.next()) {
				int patientId = rs.getInt(1);
				String patientName = rs.getString("patientName");
				String gender = rs.getString(3);
				long phoneNo = rs.getLong(4);
				String bloodGroup = rs.getString(5); 
				java.util.Date dob = rs.getDate(6);
				String address =rs.getString(7);
				String district =rs.getString(8);
				String state = rs.getString(9);
				Patient patient = new Patient(patientId, patientName, gender, phoneNo, bloodGroup, (java.sql.Date) dob, address, district, state);
				patients.add(patient);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return (ArrayList<Patient>) patients;
	}

	
}
