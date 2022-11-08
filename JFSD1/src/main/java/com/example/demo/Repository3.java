package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Repository3 extends JpaRepository<Details,Integer>{
	
	List<Details> findByUsername(String username);
	List<Details> findByDistrict(String district);
}
