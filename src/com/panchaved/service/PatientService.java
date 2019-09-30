package com.panchaved.service;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.panchaved.util.*;
public class PatientService {
	public Connection con=null;
	public void registerPatient() {
		
		Connection con = DbConnect.Connect();
		try {
			Statement stmt = con.createStatement();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}
