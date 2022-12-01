package com.example.demo;

import javax.persistence.*;

@Entity
@Table(name="slabs")
public class Slabs {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String slabno;
	int minunit;
	int maxunit;
	float costperunit;
	float units;
	
	public float getUnits() {
		return units;
	}
	public void setUnits(float units) {
		this.units = units;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSlabno() {
		return slabno;
	}
	public void setSlabno(String slabno) {
		this.slabno = slabno;
	}
	public int getMinunit() {
		return minunit;
	}
	public void setMinunit(int minunit) {
		this.minunit = minunit;
	}
	public int getMaxunit() {
		return maxunit;
	}
	public void setMaxunit(int maxunit) {
		this.maxunit = maxunit;
	}
	public float getCostperunit() {
		return costperunit;
	}
	public void setCostperunit(float costperunit) {
		this.costperunit = costperunit;
	}
}