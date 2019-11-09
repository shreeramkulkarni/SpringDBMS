package com.panchaved.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.catalina.tribes.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.panchaved.enitity.Doctor;
import com.panchaved.enitity.Patient;
import com.panchaved.util.DoctorQuery;
import com.panchaved.util.PatientQuery;

@Component
public class DoctorService {
	
	public ArrayList<Doctor> doctors;

	public DoctorService() {
		super();
		this.doctors = new ArrayList<Doctor>();
	}
	
	
	public boolean insertDoctor(int doctorId, String doctorName, String doctorMobile, Date doctorDOB, String doctorQualification,
			String doctorAddress, String doctorCity)
	{
		try {
			PreparedStatement pstm = DoctorQuery.insertQueryDoctor();
			
			pstm.setInt(1, doctorId);
			pstm.setString(2, doctorName);
			pstm.setString(3, doctorMobile);
			pstm.setDate(4, (java.sql.Date) doctorDOB);
			pstm.setString(5, doctorQualification);
			pstm.setString(6, doctorAddress);
			pstm.setString(7, doctorCity);
			
			int count = pstm.executeUpdate();
			if(count!=0) {
				return true; 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return false;
	}
	
	public List getAllRecords(int page) {
		int o = (page-1) * 20;
		System.out.println(Integer.toString(o));
		ResultSet rs = DoctorQuery.selectQueryDoctor(Integer.toString(o));
		doctors.clear();
		System.out.println(Arrays.toString(doctors.toArray()));
		try {
			while(rs.next()) {
				
				int doctorId = rs.getInt(1);
				String doctorName = rs.getString(2);
				String doctorMobile = rs.getString(3);
				java.util.Date doctorDOB = rs.getDate(4);
				String  doctorQualification = rs.getString(5); 
				String doctorAddress =rs.getString(6);
				String doctorCity =rs.getString(7);
				Doctor doctor = new Doctor(doctorId, doctorName, doctorMobile, doctorDOB, doctorQualification,
						doctorAddress, doctorCity);
				doctors.add(doctor);
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
		return doctors;
	}


	public boolean updateDoc(Doctor doc) {
		
		
		try {
			System.out.println("doc"+doc);
			PreparedStatement pstm = DoctorQuery.updateQueryDoctor();
			
			pstm.setString(1, doc.getDoctorName());
			pstm.setString(2, doc.getDoctorMobile());
			pstm.setDate(3, doc.getDoctorDOB());
			pstm.setString(4, doc.getDoctorQualification());
			pstm.setString(5, doc.getDoctorAddress());
			pstm.setString(6, doc.getDoctorCity());
			pstm.setInt(7, doc.getDoctorId());
			int count = pstm.executeUpdate();
			if(count!=0) {
				return true; 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return false;
		
	}


	public Doctor getSelectedDoctor(Integer id) {
		// TODO Auto-generated method stub
		ResultSet rs = DoctorQuery.selectWQueryDoctor(id);
		doctors.clear();
		Doctor doctor =null;
		
		try {
			while(rs.next()) {
				
				int doctorId = rs.getInt(1);
				String doctorName = rs.getString(2);
				String doctorMobile = rs.getString(3);
				java.util.Date doctorDOB = rs.getDate(4);
				String  doctorQualification = rs.getString(5); 
				String doctorAddress =rs.getString(6);
				String doctorCity =rs.getString(7);
				doctor = new Doctor(doctorId, doctorName, doctorMobile, doctorDOB, doctorQualification,
						doctorAddress, doctorCity);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(doctor.toString());
		return doctor;
	}
	
	
}
