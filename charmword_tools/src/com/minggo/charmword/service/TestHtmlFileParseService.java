package com.minggo.charmword.service;

import java.util.List;

import org.apache.http.client.methods.HttpGet;

import com.minggo.charmword.dao.WordDaoManager;
import com.minggo.charmword.http.HttpListener;
import com.minggo.charmword.http.WordHttpGetMethod;
import com.minggo.charmword.model.Word;
import com.minggo.charmword.util.ConnectDB;

/**
 * 解析网络上的上的音标、例句
 * 
 * @author minggo
 * @time 2014-8-23 S下午4:04:45
 */
public class TestHtmlFileParseService {

	private ConnectDB connectDB = new ConnectDB();

	private static HttpGet httpGet;
	private static WordHttpGetMethod getMethod;

	private void openThread() {
		new Thread(new Runnable() {

			@Override
			public void run() {

				// word = wordList.get(1);
				// String url = "http://dict.kekenet.com/en/" + word.word;//可可网
				String url = "http://dict.youdao.com/search?le=eng&q=wait";// 有道翻译
				// String url = "http://www.iciba.com/"+word.word;//金山翻译
				System.out.println(url);
				httpGet = new HttpGet(url);
				getMethod = new WordHttpGetMethod(httpGet, new HttpListener() {
					@Override
					public void onResult(String result) {
						System.out.println("例句--->"+result);
					}

					@Override
					public void onError(String error) {

					}
				});
				getMethod.requestData(2);
			}

		}).start();

	}

	

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new TestHtmlFileParseService().openThread();
	}

}
