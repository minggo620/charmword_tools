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
public class KekePhoneticsGetService {

	private ConnectDB connectDB = new ConnectDB();
	private WordDaoManager wordDaoManager = new WordDaoManager();

	private static HttpGet httpGet;
	private static WordHttpGetMethod getMethod;
	private List<Word> wordList;

	/**
	 * 开多线程执行
	 * 
	 * @return
	 */
	private boolean parseHtml() {
		getWordList();
		/*openThread(0,200);
		openThread(200,400);
		openThread(400,600);*/
		openThread(0,wordList.size());
		
		return true;
	}
	
	private void openThread(final int start,final int end){
		new Thread(new Runnable() {

			@Override
			public void run() {
				if (wordList != null && !wordList.isEmpty()) {
					//subList(start, end)
					
					for (final Word word : wordList.subList(start, end)) {
						//word = wordList.get(1);
						String url = "http://dict.kekenet.com/en/" + word.word;//可可网
						System.out.println(url);
						httpGet = new HttpGet(url);
						getMethod = new WordHttpGetMethod(httpGet, new HttpListener() {
							@Override
							public void onResult(String result) {
								if (result!=null&&!word.equals("")) {
									System.out.println(word.word+"--->"+result);
									word.phonetics = result;
									wordDaoManager.updatePhonetics(connectDB, word);
								}
							}
							@Override
							public void onError(String error) {
								
							}
						});
						getMethod.requestData(1);
					}
				}
			}
		}).start();
		
	}

	/**
	 * 获取数据库的单词
	 */
	private void getWordList() {
		wordList = wordDaoManager.getAllWordNoPhonetics(connectDB);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new KekePhoneticsGetService().parseHtml();
	}

}
