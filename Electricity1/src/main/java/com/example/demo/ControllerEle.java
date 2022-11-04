package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		return "<!DOCTYPE html>\n"
				+ "<html lang=en>\n"
				+ "<head>\n"
				+ "<meta charset=\"ISO-8859-1\">\n"
				+ "<title>Your Electricity Bill</title>\n"
				+ "<script src=\n"
				+ "\"https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js\">\n"
				+ "	</script>\n"
				+ "</head>\n"
				+ "<body id=\"makepdf\">\n"
				+ "<div class=\"container\">\n"
				+ "      <fieldset id=\"makepdf\">\n"
				+ "        <legend>Your Electricity Bill</legend>\n"
				+ "      <div align=\"center\" class=\"container\">\n"
				+ "<h2>Username</h2>\n"
				+ "<p>"+c2.getUsername()+"</p>\n"
				+ "<h2>Email</h2>\n"
				+ "<p>"+c2.getEmail()+"</p>\n"
				+ "<h2>Phone Number</h2>\n"
				+ "<p>"+c2.getPhoneno()+"</p>\n"
				+ "<h2>Consumption Bill</h2>\n"
				+ "<p>"+(c1.getHour()*c1.getTotalPower()*6.15)/1000+"</p>\n"
				+ "<br>\n"
				+ "<br>\n"
				+ "\n"
				+ "</div>\n"
				+ "      </fieldset>\n"
				+ "      <br>\n"
				+ "      <br>\n"
				+ "      <div align=\"center\">\n"
				+ "		<button id=\"button\">Generate PDF</button>\n"
				+ "</div>\n"
				+ "</div>\n"
				+ "\n"
				+ "<style>\n"
				+ "body {\n"
				+ "    display: flex;\n"
				+ "    align-items: center;\n"
				+ "    justify-content: center;\n"
				+ "    height: 100vh;\n"
				+ "    font-family: cursive;\n"
				+ "  }\n"
				+ "\n"
				+ "  label {\n"
				+ "    line-height: 1.9rem;\n"
				+ "  }\n"
				+ "\n"
				+ " fieldset {\n"
				+ "   padding: 20px 40px;\n"
				+ " }\n"
				+ "		.container {\n"
				+ "			border-radius: 7px;\n"
				+ "		}\n"
				+ "\n"
				+ "		\n"
				+ "\n"
				+ "		#button {\n"
				+ "			background-color: #4caf50;\n"
				+ "			border-radius: 5px;\n"
				+ "			color: white;\n"
				+ "		}\n"
				+ "\n"
				+ "		h2 {\n"
				+ "			text-align: center;\n"
				+ "		}\n"
				+ "	</style>\n"
				+ "<script>\n"
				+ "		var button = document.getElementById(\"button\");\n"
				+ "		var makepdf = document.getElementById(\"makepdf\");\n"
				+ "\n"
				+ "		button.addEventListener(\"click\", function () {\n"
				+ "			html2pdf().from(makepdf).save();\n"
				+ "		});\n"
				+ "	</script>\n"
				+ "	\n"
				+ "</body>\n"
				+ "\n"
				+ "</html>";
		//return "<h3>Username : </h3>"+c2.getUsername()+"<br>"+"<h3>Email : </h3>"+c2.getEmail()+"<br>"+"<h3>Phone No. : </h3>"+c2.getPhoneno()+"<br>"+"<h3>Total Bill : </h3>"+" Your Bill: "+(c1.getHour()*c1.getTotalPower()*6.15)/1000;
	}
}
