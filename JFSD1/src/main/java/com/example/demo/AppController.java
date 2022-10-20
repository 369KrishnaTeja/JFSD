package com.example.demo;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AppController {
	
	@Autowired
	Repository1 r;
	@Autowired
	Repository2 r1;
	
	User e;
	Electricity t;
	@GetMapping("/")
	public String demo(Model m)
	{
		m.addAttribute("command",new User());
		return "demo";
	}
	
	
	@GetMapping("/formd")
	public String formd(Model m)
	{
		m.addAttribute("command",new Electricity());
		return "details";
	}
	
	@PostMapping("/details")
	@ResponseBody
	public Electricity details(@ModelAttribute("k") Electricity k,Model m)
	{
		m.addAttribute("command",new Electricity());
		t=k;
		r1.save(k);
		return k;
	}
	
	@GetMapping("/details1")
	@ResponseBody
	public Electricity details1(Model m)
	{
		m.addAttribute("command",new User());
		return t;
	}
	
	@GetMapping("/details2")
	@ResponseBody
	public User details2(Model m)
	{
		m.addAttribute("command",new User());
		return e;
	}
	
	@GetMapping("/form")
	public String form(Model m)
	{
		m.addAttribute("command",new User());
		return "reg";
	}
	
	@GetMapping("/formlog")
	public String formlog(Model m)
	{
		m.addAttribute("command",new User());
		return "login";
	}
	
	@GetMapping("/home")
	public String home(Model m)
	{
		m.addAttribute("us",e.getUsername());
		return "home";
	}
	
	@GetMapping("/profile")
	public String profile(Model m)
	{
		m.addAttribute("us",e.getUsername());
		m.addAttribute("em",e.getEmail());
		m.addAttribute("ph",e.getPhoneno());
		return "profile";
	}
	
	  @PostMapping("/insert")
	  public String insert(@ModelAttribute("g") User g,Model m)
	  {
		  m.addAttribute("command",new User());
		  r.save(g);
		  return "login";
	  }
	  
	  @PostMapping("/login1")
	  public String login1(@ModelAttribute("g") User g,Model m)
	  {
		  List<User> u=r.findAll();
		  for(int i=0;i<r.count();i++)
		  {
			  User x=u.get(i);
			  if(g.getUsername().equals(x.getUsername())&&g.getPassword().equals(x.getPassword()))
			  {
				  m.addAttribute("us",g.getUsername());
				  e=x;
				  return "home";
			  }
		  }
		  return "redirect:/formlog";
	  }
	 
//	    @RequestMapping(value="/login/{username}/{password}",method=RequestMethod.POST)
//		public String login(@PathVariable("username") String username,@PathVariable("password") String password)
//		{
//	    	System.out.println(username);
//		  List<User> u=r.findAll();
//		  System.out.println(username);
//		  for(int i=0;i<r.count();i++)
//		  {
//			  User x=u.get(i);
//			  if(username==x.getUsername()&&password==x.getPassword())
//			  {
//				  return "home";
//			  }
//		  }
//		  return "redirect:/form";
//		}
}
