package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_details")
public class UserDetailsEntity {

	@Column(name="First_Name", length=50, nullable=false)
	String firstName;
	
	@Column(name="Last_Name", length=50, nullable=false)
	String lastName;
	
	@Column(name="Age", length=2, nullable=false)
	int age;
	
	@Column(name="Gender", nullable=false)
	String gender;
	
	@Column(name="Contact_Number", length=10, nullable=false)
	String contactNumber;
	
	@Id
	@Column(name="Email", length=15)
	String email;
	
	@Column(name="Password", nullable=false)
	String password;
	
	@Column(name="Weight", length=3, nullable=false)
	int weight;
	
	@Column(name="State", nullable=false)
	String state;
	
	@Column(name="Area", nullable=false)
	String area;
	
	@Column(name="Pincode", length=6, nullable=false)
	int pinCode;
	
	@Column(name="Blood_Group", nullable=false)
	String bloodGroup;
	
	
	
	public String getFirstName() {
		return firstName;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public String getLastName() {
		return lastName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getContactNumber() {
		return contactNumber;
	}



	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public int getWeight() {
		return weight;
	}



	public void setWeight(int weight) {
		this.weight = weight;
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



	public int getPinCode() {
		return pinCode;
	}



	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}



	public String getBloodGroup() {
		return bloodGroup;
	}



	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}


	

	public UserDetailsEntity(String firstName, String lastName, int age, String gender, String contactNumber, String password,
			int weight, String state, String area, int pinCode, String bloodGroup) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.contactNumber = contactNumber;
		this.password = password;
		this.weight = weight;
		this.state = state;
		this.area = area;
		this.pinCode = pinCode;
		this.bloodGroup = bloodGroup;
	}



	public UserDetailsEntity(String firstName, String lastName, int age, String gender, String contactNumber, String email,
			String password, int weight, String state, String area, int pinCode, String bloodGroup) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.contactNumber = contactNumber;
		this.email = email;
		this.password = password;
		this.weight = weight;
		this.state = state;
		this.area = area;
		this.pinCode = pinCode;
		this.bloodGroup = bloodGroup;
	}



	@Override
	public String toString() {
		return "UserDetailsEntity [firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + ", gender=" + gender
				+ ", contactNumber=" + contactNumber + ", email=" + email + ", password=" + password + ", weight="
				+ weight + ", state=" + state + ", area=" + area + ", pinCode=" + pinCode + ", bloodGroup=" + bloodGroup
				+ "]";
	}



	public UserDetailsEntity() {
		// TODO Auto-generated constructor stub
	}

}
