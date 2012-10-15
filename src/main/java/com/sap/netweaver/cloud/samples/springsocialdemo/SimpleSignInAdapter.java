package com.sap.netweaver.cloud.samples.springsocialdemo;

import org.springframework.social.connect.Connection;
import org.springframework.social.connect.web.SignInAdapter;
import org.springframework.web.context.request.NativeWebRequest;

public class SimpleSignInAdapter implements SignInAdapter {

	
	public SimpleSignInAdapter() 
	{
	}

	public String signIn(String localUserId, Connection<?> connection, NativeWebRequest request) {
		
		return "connected";
	}
}