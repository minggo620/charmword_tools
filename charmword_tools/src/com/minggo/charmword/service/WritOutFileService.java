package com.minggo.charmword.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.minggo.charmword.dao.WordDaoManager;
import com.minggo.charmword.model.Word;
import com.minggo.charmword.util.ConnectDB;

/**
 * 把mysql数据整理出txt
 * @author minggo
 * @time 2014-8-23 S下午9:07:59
 */
public class WritOutFileService {
	
	private WordDaoManager wordDaoManager = new WordDaoManager();
	private ConnectDB connectDB = new ConnectDB();
	private List<Word> wordList = new ArrayList<Word>();
	/**
	 * 获取所有的单词
	 */
	private void writeAllWord(){
		wordList = wordDaoManager.getAllWord(connectDB);
		
		if (wordList!=null&&!wordList.isEmpty()) {
			try {
				FileOutputStream outputStream = new FileOutputStream(new File("四级高频词汇-整理"));
				System.out.println("正在写入...");
				for (Word word : wordList) {
					String str = word.wordId+"$"+word.word+"$"+word.phonetics+"$"+word.explain+"\n";
					outputStream.write(str.getBytes("UTF-8"));
				}
				outputStream.flush();
				outputStream.close();
				System.out.println("写入完成!");
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new WritOutFileService().writeAllWord();
	}

}
