package com.minggo.charmword.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import com.minggo.charmword.dao.WordDaoManager;
import com.minggo.charmword.model.Word;
import com.minggo.charmword.util.ConnectDB;

/**
 * 整理text源文件
 * 
 * @author minggo
 * @time 2014-8-23 S下午2:01:05
 */
public class TextFileParseService {
	
	private WordDaoManager wordDaoManager = new WordDaoManager();
	private ConnectDB connectDB = new ConnectDB();
	/**
	 * 解析网上没有整理text
	 * 
	 * @return
	 * @throws IOException
	 */
	private boolean parseText() {

		File file = new File("cet-4/四级核心词汇.txt");
		if (file.exists() && file.isFile()) {

			try {
				FileOutputStream outputStream = new FileOutputStream("cet-4/四级核心词汇-result.txt");
				InputStreamReader read = new InputStreamReader(new FileInputStream(file),"UTF-8");// 考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				System.out.println("正在导入数据库...");
				int i = 1;
				while ((lineTxt = bufferedReader.readLine()) != null) {
					//整理后的写入库
					Word word = new Word();
					word.wordId = Integer.valueOf(lineTxt.substring(0, lineTxt.indexOf(".")));
					word.word = lineTxt.substring(lineTxt.indexOf(".")+1, lineTxt.indexOf(" "));
					word.explain = lineTxt.substring(lineTxt.indexOf(" ")+1);
					word.wordType = "2";
					word.isnew = 0;
					word.remembered = 0;
					wordDaoManager.addWord(connectDB, word);
					
					//--------------------------------------------------------
					//System.out.println(lineTxt.substring(0, lineTxt.indexOf(".")));
					//System.out.println(lineTxt.substring(lineTxt.indexOf(".")+1, lineTxt.indexOf(" ")));
					
					//String explain = lineTxt.substring(lineTxt.indexOf(" ")+1);
					//System.out.println(explain);
					/*System.out.println(explain.subSequence(0, explain.lastIndexOf(".")));
					if (explain.contains(".")) {
						System.out.println(explain.subSequence(0, explain.lastIndexOf(".")));
					}*/
					
					//System.out.println(lineTxt);
					//outputStream.write((i+++"."+word.word+" "+word.explain+"\n").getBytes("UTF-8"));
					//----------------------------------------------------------------
				}
				read.close();
				//outputStream.close();

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
		return false;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new TextFileParseService().parseText();
	}

}
