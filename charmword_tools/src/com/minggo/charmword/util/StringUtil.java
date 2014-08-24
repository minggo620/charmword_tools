package com.minggo.charmword.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

public class StringUtil {

	/**
	 * 搜索类型1：可可英语网，2：有道翻译
	 * 
	 * @param in
	 * @param type
	 * @return
	 */
	public static final String toString(InputStream in, int type) {
		if (in == null) {
			System.err.println("输入流为空");
			return "";
		} else {
			InputStreamReader isr = null;
			BufferedReader bfr = null;
			StringBuilder stb = new StringBuilder();

			try {
				if (type == 2) {
					isr = new InputStreamReader(in, "UTF-8");
				} else if (type == 1) {
					//isr = new InputStreamReader(in, "GBK");
					isr = new InputStreamReader(in, "UTF-8");//金山

				}
				bfr = new BufferedReader(isr);

				String temp;
				boolean start = false;
				String example = "";
				while ((temp = bfr.readLine()) != null) {
					if (type == 1) {
						/*
						 * if (temp.contains("[")) {//获取音标 //String photistic =
						 * temp.substring(temp.indexOf("["), temp.indexOf("]"));
						 * String phontis = temp.substring(temp.indexOf("[")+1,
						 * temp.indexOf("]")); String ascii[] =
						 * phontis.split(";"); String result = "["; for (String
						 * string : ascii) { result+=
						 * String.valueOf((char)Integer
						 * .parseInt(string.replace("&#", ""))); } result+="]";
						 * 
						 * return result; }
						 */
						if (!start) {// 获取例子
							if (!example.equals("")) {
								System.out.println("1111111111111111");
								
							}
							if (temp.contains("<dl class=\"vDef_list\">")) {
								//example = "";
								System.out.println("22222222222");
								System.out.println(temp);
								start = true;
							}
						} else {
							if (temp.contains("<a class=\"ico_sound\" title=")) {
								start = false;
								System.out.println("44444444");
								return example;
							} else {
								System.out.println("3333333");
								System.out.println(temp);
								example += temp;
							}
						}

					} else if (type == 2) {
						// <span class="phonetic">[weit]</span>
						if (temp.contains("<span class=\"phonetic\">")) {
							String phontis = temp.substring(temp.indexOf("["), temp.indexOf("]") + 1);
							return phontis;
						} else {
							// System.out.println(temp);
						}
					}
				}
				return null;
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				try {
					if (in != null) {
						in.close();
					}
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					try {
						if (isr != null) {
							isr.close();
						}
					} catch (IOException e) {
						e.printStackTrace();
					} finally {
						try {
							if (bfr != null) {
								bfr.close();
							}
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			}

			return stb.toString();
		}
	}
}
