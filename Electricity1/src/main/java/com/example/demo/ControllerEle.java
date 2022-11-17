package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.services.translate.AmazonTranslate;
import com.amazonaws.services.translate.AmazonTranslateClient;
import com.amazonaws.services.translate.model.TranslateTextRequest;
import com.amazonaws.services.translate.model.TranslateTextResult;
import com.sinch.xms.ApiConnection;
import com.sinch.xms.SinchSMSApi;
import com.sinch.xms.api.MtBatchTextSmsCreate;
import com.sinch.xms.api.MtBatchTextSmsResult;
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
		
		
		String REGION = "us-east-1";
		AWSCredentialsProvider awsCreds = DefaultAWSCredentialsProviderChain.getInstance();
		        
        AmazonTranslate translate = AmazonTranslateClient.builder()
                .withCredentials(new AWSStaticCredentialsProvider(awsCreds.getCredentials()))
                .withRegion(REGION)
                .build();
 
        TranslateTextRequest request = new TranslateTextRequest()
                .withText("Hey this is EEE website!!!\nThis is your bill and you can pay it from our payment gateway.\nYour Bill - "+(c1.getHour()*c1.getTotalPower()*6.15)/1000)
                .withSourceLanguageCode("en")
                .withTargetLanguageCode("te");
        TranslateTextResult result  = translate.translateText(request);
        System.out.println(result.getTranslatedText());

        
        String SENDER = "+919493487080"; //Your sinch number
		String[] RECIPIENTS = { "+91"+ c2.getPhoneno()}; //your mobile phone number
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
						.body(result.getTranslatedText())
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
