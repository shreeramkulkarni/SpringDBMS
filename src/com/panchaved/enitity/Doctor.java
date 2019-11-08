package com.panchaved.enitity;

import java.util.Date;


public class Doctor {

	
	private int doctorId;
	private String doctorName;
	private String doctorMobile;
	private java.sql.Date doctorDOB;
	private String doctorQualification;
	private String doctorAddress;
	private String doctorCity;
	
	public Doctor() {}
	
	public Doctor(int doctorId,String doctorName, String doctorMobile, Date doctorDOB, String doctorQualification,
			String doctorAddress, String doctorCity) {
		super();
		this.doctorId = doctorId;
		this.doctorName = doctorName;
		this.doctorMobile = doctorMobile;
		this.doctorDOB = (java.sql.Date) doctorDOB;
		this.doctorQualification = doctorQualification;
		this.doctorAddress = doctorAddress;
		this.doctorCity = doctorCity;
	}
	
	
	public int getDoctorId() {
		return doctorId;
	}


	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}


	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getDoctorMobile() {
		return doctorMobile;
	}
	public void setDoctorMobile(String doctorMobile) {
		this.doctorMobile = doctorMobile;
	}
	public java.sql.Date getDoctorDOB() {
		return doctorDOB;
	}
	public void setDoctorDOB(Date doctorDOB) {
		this.doctorDOB = (java.sql.Date)doctorDOB;
	}
	public String getDoctorQualification() {
		return doctorQualification;
	}
	public void setDoctorQualification(String doctorQualification) {
		this.doctorQualification = doctorQualification;
	}
	public String getDoctorAddress() {
		return doctorAddress;
	}
	public void setDoctorAddress(String doctorAddress) {
		this.doctorAddress = doctorAddress;
	}
	public String getDoctorCity() {
		return doctorCity;
	}
	public void setDoctorCity(String doctorCity) {
		this.doctorCity = doctorCity;
	}
	
	@Override
	public String toString() {
		return "Doctor [doctorId=" + doctorId + ", doctorName=" + doctorName + ", doctorMobile=" + doctorMobile
				+ ", doctorDOB=" + doctorDOB + ", doctorQualification=" + doctorQualification + ", doctorAddress="
				+ doctorAddress + ", doctorCity=" + doctorCity + "]";
	}
}
