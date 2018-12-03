package com.rxmitra.utils;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import com.rxmitra.bean.UserRegistration;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;


@PropertySource(value = { "classpath:localResources.properties" })
public class SendSmsToMobile {

	@Autowired
	private static Environment env;
	
	 public static final String ACCOUNT_SID = env.getProperty("ACCOUNT_SID");
	    public static final String AUTH_TOKEN = env.getProperty("AUTH_TOKEN");
	    public static final String TWILIO_NUMBER =env.getProperty("TWILIO_NUMBER");
	    Message message=null;
	public Message sendSMS(UserRegistration reg,String msg) {
	    try {
	        TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);

	        // Build a filter for the MessageList
	        List<NameValuePair> params = new ArrayList<NameValuePair>();
	        params.add(new BasicNameValuePair("Body", msg));
	        params.add(new BasicNameValuePair("To", reg.getMobileNo())); //Add real number here
	        params.add(new BasicNameValuePair("From", TWILIO_NUMBER));

	        MessageFactory messageFactory = client.getAccount().getMessageFactory();
	         message = messageFactory.create(params);
	        System.out.println(message.getSid());
	    } 
	    catch (TwilioRestException e) {
	        System.out.println(e.getErrorMessage());
	    }
	    return message;
	}
	
}
