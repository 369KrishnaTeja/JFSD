package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;

@Controller
@ResponseBody
public class ControllerEle
{
	@GetMapping("/ele")
	public String calculate()
	{
		ResponseEntity<Electricity> response=new RestTemplate().getForEntity("http://localhost:8080/details1/", Electricity.class);
		ResponseEntity<User> response1=new RestTemplate().getForEntity("http://localhost:8080/details2/", User.class);
		Electricity c1=response.getBody();
		User c2=response1.getBody();
		return "<h3>Username : </h3>"+c2.getUsername()+"<br>"+"<h3>Email : </h3>"+c2.getEmail()+"<br>"+"<h3>Phone No. : </h3>"+c2.getPhoneno()+"<br>"+"<h3>Total Bill : </h3>"+" Your Bill: "+(c1.getHour()*c1.getTotalPower()*6.15)/1000;
	}
}
