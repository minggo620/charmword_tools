package com.minggo.charmword.service;

import java.io.IOException;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.minggo.charmword.dao.WordDaoManager;
import com.minggo.charmword.model.Word;
import com.minggo.charmword.util.ConnectDB;

public class YouDaoExampleService {
	
	private List<Word> wordList;
	private ConnectDB connectDB = new ConnectDB();
	private WordDaoManager wordDaoManager = new WordDaoManager();
	
	/**
	 * 解析
	 * 
	 * @return
	 */
	private boolean parseHtml() {
		getWordList();
		/*openThread(0,1000);
		openThread(1000,2000);
		openThread(2000,3000);
		openThread(3000,wordList.size());*/
		openThread(0,wordList.size());
		
		return true;
	}
	
	/**
	 * 获取数据库的单词
	 */
	private void getWordList() {
		wordList = wordDaoManager.getAllWordCoreNoExample(connectDB);
	}
	
	private void openThread(final int start,final int end){
		new Thread(new Runnable() {

			@Override
			public void run() {
				if (wordList != null && !wordList.isEmpty()) {
					//subList(start, end)
					System.out.println("===========开始添加例句====================");
					for (final Word word : wordList.subList(start, end)) {
						//word = wordList.get(1);
						String url = "http://dict.youdao.com/search?le=eng&q="+word.word+"&keyfrom=hao360";//有道翻译
						System.out.println(url);
						Document doc;
						try {
							doc = Jsoup.connect(url).get();
							Element elements = doc.getElementById("bilingual");
							if (elements!=null) {
								Elements links = elements.getElementsByTag("p");
								word.example = links.get(0).text();
								word.exampleExplain = links.get(1).text();
								System.out.println("example-->"+word.example+",exampleExplain-->"+word.exampleExplain);
								wordDaoManager.updateCoreExample(connectDB, word);
							}else{
								System.out.println(word.word+"没有例句");
							}
							
							
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
					System.out.println("===========完成添加例句====================");
				}
			}
		}).start();
		
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new YouDaoExampleService().parseHtml();
	}

}
