package EWILL;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class SendEmail {

	public static void main(String [] args) {    
		// Recipient's email ID needs to be mentioned.
		String to = "gupta16sakshi@gmail.com";

		// Sender's email ID needs to be mentioned
		String from = "sakshi813gupta@gmail.com";

		// Assuming you are sending email from localhost
		String host = "localhost:8080";

		// Get system properties
		Properties properties = System.getProperties();

		properties.setProperty("mail.user", "sakshi813gupta@gmail.com");
		properties.setProperty("mail.password", "chiku*813");
		// Setup mail server
		properties.setProperty("mail.smtp.host", host);

		// Get the default Session object.
		Session session = Session.getDefaultInstance(properties);

		try {
			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(from));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Set Subject: header field
			message.setSubject("This is the Subject Line!");

			// Now set the actual message
			message.setText("This is actual message");

			// Send message
			Transport.send(message);
			System.out.println("Sent message successfully....");
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}
	}
}

