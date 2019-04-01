package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="feedback")
public class FeedbackEntity {
	

	@Id
	@Column(name="id",length=30,nullable=false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	
	@Column(name="hospital",length=30,nullable=false)
	String hospital;
	
	@Column(name="city",length=30,nullable=false)
	String city;
	
	@Column(name="feedback",length=500,nullable=false)
	String feedback;

	public FeedbackEntity(int id, String hospital, String city, String feedback) {
		super();
		this.id = id;
		this.hospital = hospital;
		this.city = city;
		this.feedback = feedback;
	}

	public FeedbackEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FeedbackEntity(String hospital, String city, String feedback) {
		super();
		this.hospital = hospital;
		this.city = city;
		this.feedback = feedback;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHospital() {
		return hospital;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	@Override
	public String toString() {
		return "FeedbackEntity [id=" + id + ", hospital=" + hospital + ", city=" + city + ", feedback=" + feedback
				+ "]";
	}

	
	
}
