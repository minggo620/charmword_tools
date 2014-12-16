package com.minggo.charmword.service;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 * 测试解析
 * 
 * @author minggo
 * @time 2014-12-15下午4:41:57
 */
public class JsoupTest {

	public static void main(String[] args) {
		//System.out.println(Integer.parseInt("17670613321849281313"));
		//getAllMenuList(getMenuCount());
		getExample();
	}

	private static void getExample(){
		try {

				Document doc = Jsoup.connect("http://dict.youdao.com/search?le=eng&q=word").get();

				// Element elements = doc.body();
				// System.out.println(elements.text());
				/*Element elements = doc.getElementById("bilingual");
				//Elements links = elements.getElementsByTag("p");
				Elements linkss = elements.getElementsByClass("ol");
				for (Element element : linkss) {
					Elements exampless = element.getElementsByTag("p");
					for (int i = 0; i < 2; i++) {
						System.out.println(exampless.get(i).text());
					}
					for (Element element2 : exampless) {
						System.out.println(element2.text());
					}
					//System.out.println(element.text());
					// System.out.println(element.attr("span"));
					//System.out.println(element.attr("abs:href"));
					//System.out.println(element.after(element.childNode(0)).text());
				}
				*/
				Element elements = doc.getElementById("bilingual");
				Elements links = elements.getElementsByTag("p");
				System.out.println(links.get(0).text());
				System.out.println(links.get(1).text());
			/*	for (int i = 0; i < 3; i++) {
					System.out.println(links.get(i).text());
				}*/
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private static int getMenuCount() {
		try {
			Document doc = Jsoup.connect("http://k.sogou.com/touch/list?md=17670613321849281313&lno=1").get();

			// Element elements = doc.body();
			// System.out.println(elements.text());
			Element pages = doc.getElementById("pagesel");
			Elements pagesLink = pages.getElementsByTag("option");
			System.out.println(pagesLink.get(pagesLink.size() - 1).attr("value"));
			return Integer.parseInt(pagesLink.get(pagesLink.size() - 1).attr("value"));

		} catch (IOException e) {
			e.printStackTrace();
		}

		return 10;
	}

	private static void getAllMenuList(int menuCount) {

		try {
			for (int i = 1; i <= menuCount; i++) {

				Document doc = Jsoup.connect("http://k.sogou.com/touch/list?md=17670613321849281313&lno=" + i).get();

				// Element elements = doc.body();
				// System.out.println(elements.text());
				Element elements = doc.getElementById("sumMenu");
				Elements links = elements.getElementsByTag("a");
				for (Element element : links) {

					// System.out.println(element.attr("span"));
					System.out.println(element.attr("abs:href"));
					System.out.println(element.after(element.childNode(0)).text());
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
