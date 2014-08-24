package com.minggo.charmword.http;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;


public class HttpGetMethod {
	private HttpClient httpClient;
	private HttpGet get;
	private HttpListener listener;
	private HttpResponse response;
	private String result;
	public HttpGetMethod(HttpGet get,HttpListener listener){
		httpClient = HttpClientFactory.getInstance();
		this.get = get;
		this.listener = listener;
	}
	public void requestData(){
		try {
			httpClient = new DefaultHttpClient();
			response = httpClient.execute(get);
			
			if (response.getStatusLine().getStatusCode()==HttpStatus.SC_OK) {
				//String result = StringUtil.toString(response.getEntity().getContent());
				//File file = new File("F://test.apk");
				
				listener.onResult("200");
				
			}else if (response.getStatusLine().getStatusCode()==302) {
				//String result = StringUtil.toString(response.getEntity().getContent());
				listener.onResult("302");
			}else{
				System.err.println(response.getStatusLine().getStatusCode());
			}
		}catch (IllegalStateException e) {
			listener.onError(e.toString());
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
