package com.minggo.charmword.http;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

import com.minggo.charmword.util.KekePhoneticsUtil;
import com.minggo.charmword.util.YoudaoPhoneticsUtil;


public class WordHttpGetMethod {
	private HttpClient httpClient;
	private HttpGet get;
	private HttpListener listener;
	private HttpResponse response;
	private String result;
	public WordHttpGetMethod(HttpGet get,HttpListener listener){
		httpClient = HttpClientFactory.getInstance();
		this.get = get;
		this.listener = listener;
	}
	/**
	 * 搜索类型1：可可英语网，2：有道翻译
	 * @param type
	 */
	public void requestData(int type){
		try {
			httpClient = new DefaultHttpClient();
			response = httpClient.execute(get);
			
			if (response.getStatusLine().getStatusCode()==HttpStatus.SC_OK) {
				if (type==1) {
					result = KekePhoneticsUtil.toString(response.getEntity().getContent(),type);
				}else if (type==2) {
					result = YoudaoPhoneticsUtil.toString(response.getEntity().getContent(),type);
				}
				//System.out.println(result);
				//File file = new File("F://test.apk");
				
				listener.onResult(result);
				
			}else if (response.getStatusLine().getStatusCode()==302) {
				//String result = StringUtil.toString(response.getEntity().getContent());
				listener.onResult("302");
			}else{
				System.err.println(response.getStatusLine().getStatusCode());
			}
		}catch (IllegalStateException e) {
			listener.onError(e.toString());
			return;
		} catch (ClientProtocolException e) {
			e.printStackTrace();
			return;
		} catch (IOException e) {
			e.printStackTrace();
			return;
		}
	}
}
