package com.minggo.charmword.http;

import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;


public class HttpClientFactory {
	private static HttpClient httpClient;
	private HttpClientFactory(){
		
	}
	public static HttpClient getInstance(){
		if (httpClient==null) {
			httpClient = new DefaultHttpClient();
		}
		return httpClient;
	}
}

