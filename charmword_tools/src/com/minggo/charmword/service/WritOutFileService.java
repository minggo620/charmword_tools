package com.minggo.charmword.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
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
				FileOutputStream outputStream = new FileOutputStream(new File("四级高频词汇-整理.txt"));
				System.out.println("正在写入...");
				for (Word word : wordList) {
					String str = word.wordId+"§"+word.word+"§"+word.phonetics+"§"+word.explain+"\n";
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
	 * 把整理的单词写到数据
	 */
	private void insertAllWord2Databse(){
		File file = new File("四级高频词汇-整理.txt");
		if (file.exists() && file.isFile()) {

			try {
				//FileOutputStream outputStream = new FileOutputStream("四级高频词汇-result.txt");
				InputStreamReader read = new InputStreamReader(new FileInputStream(file),"UTF-8");// 考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				System.out.println("正在导入数据库...");
				while ((lineTxt = bufferedReader.readLine()) != null) {
					String words[] = lineTxt.split("§");
					
					Word word = new Word();
					word.wordId = Integer.valueOf(words[0]);
					word.word = words[1];
					word.phonetics = words[2];
					word.explain = words[3];
					word.wordType = "1";
					word.isnew = 0;
					word.remembered = 0;
					wordDaoManager.addWord(connectDB, word);
				}
				read.close();

			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			System.out.println("导入数据库完成!");
		} else {
			System.out.println("文件路径不对");
		}
	}

	private void testplit(){
		String textStr = "1§alter§['ɔ:ltə]§v.改变，改动，变更";
		String []abc = textStr.split("§");
		for (String string : abc) {
			System.out.println(string);
		}
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//new WritOutFileService().writeAllWord();
		new WritOutFileService().insertAllWord2Databse();
		//new WritOutFileService().testplit();
	}

}
