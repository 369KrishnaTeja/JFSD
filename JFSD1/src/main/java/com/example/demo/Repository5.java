package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

public interface Repository5 extends JpaRepository<Query1,Integer>{
	
	@Transactional
	void deleteByUsername(String username);
	Query1 getByUsername(String username);
}
