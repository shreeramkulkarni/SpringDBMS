package com.panchaved.enitity;

import java.util.Date;

import org.springframework.stereotype.Component;


public class Patient {
	private String patientName;
	

	private int patientId;
	private String gender;
	private long phoneNo;
	private String bloodGroup;
	

	private java.util.Date dob;
	private String address;
	private String district;
	private String state;

	public Patient(int patientId, String patientName, String gender, long phoneNo, String bloodGroup, Date dob, String address,
			String district, String state) {
		super();
		this.setPatientId(patientId);
		this.patientName = patientName;
		this.gender = gender;
		this.phoneNo = phoneNo;
		this.bloodGroup = bloodGroup;
		this.dob = dob;
		this.address = address;
		this.district = district;
		this.state = state;
	}

	@Override
	public String toString() {
		return "Patient [patientId=" + patientId + ", patientName=" + patientName + ", gender=" + gender + ", phoneNo="
				+ phoneNo + ", bloodGroup=" + bloodGroup + ", dob=" + dob + ", address=" + address + ", district="
				+ district + ", state=" + state + "]";
	}

	public Patient() {}

	
	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	
	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	
	public String getGender(){
		return gender;
	}

	public void setGender(String gender){
		this.gender=gender;
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
	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
}
