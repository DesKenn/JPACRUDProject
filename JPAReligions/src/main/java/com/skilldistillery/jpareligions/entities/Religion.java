package com.skilldistillery.jpareligions.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Religion {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String origin;
	
	@Column(name = "date_established")
	private String dateEstablished;
	private String founder;
	
	public Religion() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getDateEstablished() {
		return dateEstablished;
	}

	public void setDateEstablished(String dateEstablished) {
		this.dateEstablished = dateEstablished;
	}

	public String getFounder() {
		return founder;
	}

	public void setFounder(String founder) {
		this.founder = founder;
	}

	@Override
	public String toString() {
		return "Religion [id=" + id + ", name=" + name + ", origin=" + origin + ", dateEstablished=" + dateEstablished
				+ ", founder=" + founder + "]";
	}

	
}
