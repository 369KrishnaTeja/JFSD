package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;

@Controller
public class AdminController
{
	int f=0;
	User[] c1;
	Details[] c2;
	Query1[] c3;
	int r;
	@GetMapping("/")
	public String admin(Model m)
	{
		m.addAttribute("command", new Admin());
		return "main";
	}
	
	@Autowired
	private AWSS3Service awsS3Service;
	
	@ResponseBody
	@PostMapping("/upload")
	public String uploadFile(@RequestParam("file") MultipartFile file) {
		awsS3Service.uploadFile(file);
		return "File Upload Success";
	}
	
	
	@GetMapping("/login")
	public String login(Model m,@ModelAttribute("g") Admin g)
	{
		if(g.getUsername().equals("Krishna") && g.getPassword().equals("eee@123"))
		{
			f=1;
			return "redirect:/login1";
		}
		else
		{
			m.addAttribute("command", new Admin());
			return "main";
		}
	}
	
	@GetMapping("/login1")
	public String login1(Model m)
	{
		ResponseEntity<User[]> response=new RestTemplate().getForEntity("http://localhost:8080/getall/",User[].class);
		c1=response.getBody();
		//ModelAndView j=new ModelAndView("ope");
		//j.addObject("h",c1);
		if(f!=0)
		{
			m.addAttribute("h", c1);
			m.addAttribute("command", new User());
			return "ope";
		}
		else
		return null;
	}
	
	@GetMapping("/login2")
	public String login2(Model m)
	{
		ResponseEntity<Details[]> response=new RestTemplate().getForEntity("http://localhost:8080/getall1/",Details[].class);
		c2=response.getBody();
		//ModelAndView j=new ModelAndView("ope");
		//j.addObject("h",c1);
		if(f!=0)
		{
			m.addAttribute("h", c2);
			m.addAttribute("command", new Details());
			return "ope1";
		}
		else
		return null;
	}
	
	@GetMapping("/login3")
	public String login3(Model m)
	{
		ResponseEntity<Query1[]> response=new RestTemplate().getForEntity("http://localhost:8080/getall2/",Query1[].class);
		c3=response.getBody();
		if(f!=0)
		{
			m.addAttribute("h", c3);
			m.addAttribute("command", new Query1());
			return "ope2";
		}
		else
		return null;
	}
	
	
	@GetMapping("/intimate")
	public String intimate(@ModelAttribute("g") Details g)
	{
		new RestTemplate().getForEntity("http://localhost:8080/sendmsg/"+g.getUsername(),Details[].class);
		return "redirect:/login2";
	}
	
	@GetMapping("/getdis")
	public String getdis(Model m,@ModelAttribute("g") Details g)
	{
		Details[] c3=null;
		if(f!=0)
		{
			ResponseEntity<Details[]> response=new RestTemplate().getForEntity("http://localhost:8080/getdis/"+g.getDistrict(),Details[].class);
			c3=response.getBody();
			m.addAttribute("h", c3);
			m.addAttribute("command", new Details());
			return "ope1";
		}
		else
		return null;
	}
	
	@GetMapping("/display1")
	public String display1(Model m)
	{
		m.addAttribute("command",new User());
		return "display";
	}
	
	@GetMapping("/reg1")
	public String reg1(Model m)
	{
		m.addAttribute("command",new User());
		return "reg";
	}
	
	
	@GetMapping("/delete")
	public String delete(@ModelAttribute("f") User f,Model m)
	{
		ResponseEntity<String> res=new RestTemplate().getForEntity("http://localhost:8080/delete111/"+f.getId(),String.class);
		String s=res.getBody()+" Deleted Successfully";
		m.addAttribute("s",s);
		return "display";
	}
	
	@GetMapping("/update")
	public String update(@ModelAttribute("f") User f,Model m)
	{
		for(int i=0;i<c1.length;i++)
		{
			if(c1[i].getId()==f.getId())
			{
				m.addAttribute("command",new User());
				m.addAttribute("id",c1[i].getId());
				r=c1[i].getId();
				m.addAttribute("name",c1[i].getUsername());
				m.addAttribute("email",c1[i].getEmail());
				m.addAttribute("phone",c1[i].getPhoneno());
				m.addAttribute("pass",c1[i].getPassword());
			}
		}
		return "reg";
	}
	
	@GetMapping("/update1")
	public String update1(@ModelAttribute("f") User f,Model m)
	{
		ResponseEntity<String> res=new RestTemplate().getForEntity("http://localhost:8080/update111/"+r+"/"+f.getUsername()+"/"+f.getEmail()+"/"+f.getPhoneno()+"/"+f.getPassword(),String.class);
		String s=res.getBody()+" Updated Successfully";
		m.addAttribute("s",s);
		return "display";
	}
	
	@GetMapping("/update3")
	public String update3(@ModelAttribute("f") Query1 f)
	{
		new RestTemplate().getForEntity("http://localhost:8080/update222/"+f.getUsername()+"/"+f.getReply(),Query1.class);
		return "redirect:/login3";
	}
	
}