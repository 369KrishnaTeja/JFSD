package com.example.demo;
import com.sinch.xms.*;
import com.sinch.xms.api.*;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import java.io.File;
import java.lang.Math;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class AppController {
	
	@Autowired
	Repository1 r;
	@Autowired
	Repository2 r1;
	@Autowired
	private JavaMailSender mailSender;
	
	String num;
	String te;
	User e;
	Electricity t;
	
	static double rand;
	static int rd;
	static String mail1;
	
	@GetMapping("/")
	public String welcome(Model m)
	{
		m.addAttribute("command",new User());
		return "welcome";
	}
	
	@GetMapping("/about")
	public String about()
	{
		return "about";
	}
	
	@GetMapping("/forgotmail1")
	public String forgotmail1(Model m)
	{
		m.addAttribute("command",new User());
		return "forgotmail";
	}
	
	@GetMapping("/newpass1")
	public String newpass1(Model m)
	{
		m.addAttribute("command",new User());
		return "newpass";
	}
	
	@GetMapping("/newpass2")
	public String newpass2(Model m,@ModelAttribute("g") User g)
	{
		if(g.getPassword().equals(g.getPhoneno()))
		{
			List<User> x=r.findAll();
			for(int i=0;i<x.size();i++)
			{
				if(x.get(i).getEmail().equals(mail1))
				{
					x.get(i).setPassword(g.getPassword());
					r.save(x.get(i));
				}
			}
			m.addAttribute("l","Password reset success");
			m.addAttribute("command",new User());
			return "login";
		}
		m.addAttribute("l","Two passwords didnt match re-enter");
		m.addAttribute("command",new User());
		return "newpass";
	}

	
	@GetMapping("/forgotdet1")
	public String forgotdet1(Model m,@ModelAttribute("g") User g)
	{
		List<User> x=r.findAll();
		for(int i=0;i<x.size();i++)
		{
			if(x.get(i).getEmail().equals(g.getEmail()))
			{
				m.addAttribute("command",new User());
				mail1=g.getEmail();
				String from = "sdpProjectGroup@gmail.com";
				String to = g.getEmail();
				m.addAttribute("q","An link has been sent to your mail");
		        SimpleMailMessage msg = new SimpleMailMessage();
				msg.setFrom(from);
				msg.setTo(to);
				msg.setSubject("Reset Password");
				StringBuilder htmlBuilder = new StringBuilder();
				htmlBuilder.append("<html>");
				htmlBuilder.append("<a href='localhost:8080/newpass1'>Click Here</a>");
				htmlBuilder.append("</html>");
				String html = htmlBuilder.toString();
				msg.setText("Dear User,\n\"You are receiving this mail because you requested for reset password.\n\"Please click on the hyper link below\n"+html);
				mailSender.send(msg);
			}
			else
			{
				m.addAttribute("command",new User());
				m.addAttribute("q","Wrong Mail please enter valid one");
			}
		}
		return "forgotmail";
	}
	
	@GetMapping("/formd")
	public String formd(Model m)
	{
		m.addAttribute("command",new Electricity());
		return "details";
	}
	@GetMapping("/ele")
	public String calculate(Model m)
	{
		ResponseEntity<Electricity> response=new RestTemplate().getForEntity("http://localhost:8080/details1/", Electricity.class);
		ResponseEntity<User> response1=new RestTemplate().getForEntity("http://localhost:8080/details2/", User.class);
		Electricity c1=response.getBody();
		User c2=response1.getBody();
		m.addAttribute("us",c2.getUsername());
		m.addAttribute("em",c2.getEmail());
		m.addAttribute("ph",c2.getPhoneno());
		m.addAttribute("cost",(c1.getHour()*c1.getTotalPower()*6.15)/1000);
		return "bill";
	}
	
	@PostMapping("/details")
	public String details(@ModelAttribute("k") Electricity k,Model m)
	{
		m.addAttribute("command",new Electricity());
		t=k;
		r1.save(k);
		return "redirect:/ele";
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
	@GetMapping("/pdfGen")
	public String pdfGen(Model m)
	{
		m.addAttribute("command",new User());
		return "pdfGenerator";
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
		m.addAttribute("un",e.getUsername());
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
		  te=null;
		  m.addAttribute("command",new User());
		  r.save(g);
		  te = g.getEmail();
		  num = g.getPhoneno();
		  return "redirect:/send_text_email";
	  }
	  
	  @GetMapping("/delete111/{id}")
	  @ResponseBody
	  public String delete111(@PathVariable int id)
	  {
		  @SuppressWarnings("deprecation")
		  User c=r.getById(id);
		  r.deleteById(id);
		  return c.getUsername();
	  }
	  
	  @GetMapping("/update111/{id}/{name}/{email}/{phone}/{pass}")
	  @ResponseBody
	  public String update111(@PathVariable int id,@PathVariable String name,@PathVariable String email,@PathVariable String phone,@PathVariable String pass)
	  {
		  @SuppressWarnings("deprecation")
		  User c=r.getById(id);
		  c.setUsername(name);
		  c.setEmail(email);
		  c.setPhoneno(phone);
		  c.setPassword(pass);
		  r.save(c);
		  return c.getUsername();
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
				  m.addAttribute("un",g.getUsername());
				  e=x;
				  return "home";
			  }
		  }
		  return "redirect:/formlog";
	  }
	  @GetMapping("/logout")
	  public String logout()
	  {		
		  te=null;
		  e = null;
		  return "redirect:/";
	  }
	  
	  @GetMapping("/captcha")
	  public String captcha(@ModelAttribute("rval") Captcha val)
	  {		
		  
		  if(val.getRval()==rd) 
		  {
			  return "redirect:/";
		  }
		return "verifyPg";
	  }
	  
	  @GetMapping("/getall")
	  @ResponseBody
	  public List<User> getall()
	  {
		  return r.findAll();
	  }
	  
	  @GetMapping("/verifyCode")
	  public String captcha1(Model m)
	  {		
	  		m.addAttribute("command",new Captcha());
		  
		  return "verifyPg";
	  }
	  @GetMapping("/send_text_email")
		public String sendPlainTextEmail(@ModelAttribute("g") User g,Model model) {
		    rand = Math.random();
			rand = rand*1000000;
			rd = (int)rand;
			String from = "sdpProjectGroup@gmail.com";
			String to = te;
			String SENDER = "+919493487080"; //Your sinch number
			String[] RECIPIENTS = { "+91"+num }; //your mobile phone number
			System.out.println("+91"+num);
			final String SERVICE_PLAN_ID = "aed646ca26c944d8b4768429a76d212c";
			final String TOKEN = "cb8b0d2faac74e2b8b00a40bbd904480";
			ApiConnection conn = ApiConnection
					.builder()
					.servicePlanId(SERVICE_PLAN_ID)
					.token(TOKEN)
					.start();
			MtBatchTextSmsCreate message = SinchSMSApi
							.batchTextSms()
							.sender(SENDER)
							.addRecipient(RECIPIENTS)
							.body("Dear User,You have successfully registered to our webiste EEE System.")
							.build();
			
			try {
				// if there is something wrong with the batch
				// it will be exposed in APIError
				MtBatchTextSmsResult batch = conn.createBatch(message);
				System.out.println(batch.id());
				} catch (Exception e) {
				System.out.println(e.getMessage());
				}
				System.out.println("you sent:" + message.body());
				
				
	        SimpleMailMessage msg = new SimpleMailMessage();
			msg.setFrom(from);
			msg.setTo(to);
			msg.setSubject("Successful Registration");
			msg.setText("Dear User,\n\"You are receiving this mail because you just registered successfully into our EEE System.\n\"We are very happy for you to join us!! \nPlease Enter the verification Code that is there below to verify your account\n"+rd);
			
			mailSender.send(msg);
		       System.out.println("Random Number:" + rd);

			model.addAttribute("message", "A plain text email has been sent");
			
			return "redirect:/verifyCode";
		}
//	  @GetMapping("/send_email_inline_image")
//		public String sendHTMLEmailWithInlineImage(Model model) throws MessagingException {
//			
//			String from = "sdp2biddingsys@gmail.com";
//			String to = "klucse2000030199@gmail.com";
//			
//			MimeMessage message = mailSender.createMimeMessage();
//			MimeMessageHelper helper = new MimeMessageHelper(message, true);
//			
//			helper.setSubject("Here's your pic");
//			helper.setFrom(from);
//			helper.setTo(to);
//			
//			String content = "<b>Dear guru</b>,<br><i>Please look at this nice picture:.</i>"
//								+ "<br><img src='cid:image001'/><br><b>Best Regards</b>"; 
//			helper.setText(content, true);
//			
//			FileSystemResource resource = new FileSystemResource(new File("g:\\MyEbooks\\Freelance for Programmers\\images\\admiration.png"));
//			helper.addInline("image001", resource);
//
//			mailSender.send(message);
//			
//			model.addAttribute("message", "An HTML email with inline image has been sent");
//			return "result";		
//		}	
	 
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