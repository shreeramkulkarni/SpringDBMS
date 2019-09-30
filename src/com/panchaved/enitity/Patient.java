package com.panchaved.enitity;

import java.util.Date;

public class Patient {
	
	private String patientName;
	private String gender;
	private int phoneNo;
	private String bloodGroup;
	private java.util.Date dob;
	private String address;
	private String district;
	private String state;

	public Patient(String patientName, String gender, int phoneNo, String bloodGroup, Date dob, String address,
			String district, String state) {
		super();
		this.patientName = patientName;
		this.gender = gender;
		this.phoneNo = phoneNo;
		this.bloodGroup = bloodGroup;
		this.dob = dob;
		this.address = address;
		this.district = district;
		this.state = state;
	}

	
	public String getPatientname(){
		return patientName;
	}

	public void setPatientname(String patientName){
		this.patientName=patientName;
	}

	public String getGender(){
		return gender;
	}

	public void setGender(String gender){
		this.gender=gender;
	}

	public int getPhoneno(){
		return phoneNo;
	}

	public void setPhoneno(int phoneNo){
		this.phoneNo=phoneNo;
	}

	public String getBloodgroup(){
		return bloodGroup;
	}

	public void setBloodgroup(String bloodGroup){
		this.bloodGroup=bloodGroup;
	}

	public java.util.Date getDob(){
		return dob;
	}

	public void setDob(java.util.Date dob){
		this.dob=dob;
	}

	public String getAddress(){
		return address;
	}

	public void setAddress(String address){
		this.address=address;
	}

	public String getDistrict(){
		return district;
	}

	public void setDistrict(String district){
		this.district=district;
	}

	public String getState(){
		return state;
	}

	public void setState(String state){
		this.state=state;
	}
}
