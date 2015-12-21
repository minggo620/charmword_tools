charmword_tools
===============

###获取单词信息爬虫

这个爬虫是用Java写的，主要为了实现自己应用《单词棒》提供数据  

[应用介绍地址](http://zhushou.360.cn/detail/index/soft_id/2735395?recrefer=SE_D_%E5%8D%95%E8%AF%8D%E6%A3%92#prev)

###其中有道单词解析信息获取

`public class YouDaoExampleService {
	
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

}`
