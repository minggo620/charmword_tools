package com.minggo.charmword.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

public class YoudaoPhoneticsUtil {

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
				isr = new InputStreamReader(in, "UTF-8");
				bfr = new BufferedReader(isr);

				String temp;
				boolean start = false;
				String example = "";
				while ((temp = bfr.readLine()) != null) {

					// <span class="phonetic">[weit]</span>
					if (temp.contains("<span class=\"phonetic\">")) {
						String phontis = temp.substring(temp.indexOf("["), temp.indexOf("]") + 1);
						return phontis;
					} else {
						// System.out.println(temp);
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
