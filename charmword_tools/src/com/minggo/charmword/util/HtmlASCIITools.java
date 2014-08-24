package com.minggo.charmword.util;
/**
 * 将html的ascii码转成符号
 * @author minggo
 * @time 2014-8-23 S下午4:16:14
 */
public class HtmlASCIITools {

	public static String changeStr(String htmlAscii){
		return String.valueOf(((char)Integer.parseInt(htmlAscii.substring(2))));
	}
	
	public static void main(String abc[]){
		System.out.println(changeStr("&#105"));
	}
}
