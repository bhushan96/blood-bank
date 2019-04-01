package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="blood_requirement")
public class BloodRequirementEntity {

@Column(name="state",nullable=false)
String state;
@Column(name="area",nullable=false)
String area;
@Column(name="pincode",nullable=false)
String pincode;
@Column(name="blood_group",length=20,nullable=false)
String blood_group;

@Id
@Column(name="contact",nullable=false,length=10)
String contact;

public BloodRequirementEntity(String state, String area, String pincode, String blood_group) {
	super();
	this.state = state;
	this.area = area;
	this.pincode = pincode;
	this.blood_group = blood_group;
}
public BloodRequirementEntity() {
	
}
public BloodRequirementEntity(String state, String area, String pincode, String blood_group, String contact) {
	super();
	this.state = state;
	this.area = area;
	this.pincode = pincode;
	this.blood_group = blood_group;
	this.contact = contact;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public String getPincode() {
	return pincode;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
public String getBlood_group() {
	return blood_group;
}
public void setBlood_group(String blood_group) {
	this.blood_group = blood_group;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
}
