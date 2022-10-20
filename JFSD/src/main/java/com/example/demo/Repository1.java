package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Repository1 extends JpaRepository<User,Integer>{
	
	List<User> findByUsername(String username);
}
