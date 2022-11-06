package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ele")

public class Electricity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	int Uniqueid;
	
	public int getUniqueid() {
		return Uniqueid;
	}
	public void setUniqueid(int uniqueid) {
		Uniqueid = uniqueid;
	}
	int TotalPower;
	float hour;
	public int getTotalPower() {
		return TotalPower;
	}
	public void setTotalPower(int totalPower) {
		TotalPower = totalPower;
	}
	public float getHour() {
		return hour;
	}
	public void setHour(float hour) {
		this.hour = hour;
	}
	
}
