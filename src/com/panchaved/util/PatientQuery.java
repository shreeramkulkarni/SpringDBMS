package com.panchaved.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

public class PatientQuery {

    static Statement stm;
    static PreparedStatement pstm;
    private static Connection con;
    static ResultSet rs;

	
	static PreparedStatement insertQueryPatient() {
		
		return pstm;
	}
}
