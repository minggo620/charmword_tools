package com.minggo.charmword.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.minggo.charmword.model.Word;
import com.minggo.charmword.util.ConnectDB;

/**
 * 处理单词数据
 * 
 * @author minggo
 * @time 2014-8-23 S下午2:36:46
 */
public class WordDaoManager {

	public boolean addWord(ConnectDB connectDb, Word word) {
		boolean flag = false;
		// 先取出角色名对应的角色id
		String sql = "insert into word values (null,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		Connection conn = connectDb.getConnectDB();
		pstmt = connectDb.preparestmt(conn, sql);
		try {

			pstmt.setInt(1, word.wordId);
			pstmt.setString(2, word.word);
			pstmt.setString(3, word.phonetics);
			pstmt.setString(4, word.voicePath);
			pstmt.setString(5, word.explain);
			pstmt.setString(6, word.wordType);
			pstmt.setString(7, word.example);
			pstmt.setString(8, word.exampleExplain);
			pstmt.setString(9, word.exampleExplain);
			pstmt.setString(10, word.exampleExplain);

			int result = pstmt.executeUpdate();
			if (result != 0) {
				flag = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connectDb.closePreparedStatement(pstmt);
			connectDb.closeConnection(conn);
		}
		return flag;
	}
	/**
	 * 获取所有的单词[手动自由改变]
	 * @return
	 */
	public List<Word> getAllWordNoPhonetics(ConnectDB connectDb){
		List<Word> wordList = new ArrayList<Word>();
		String sql = "select * from word where phonetics is null or phonetics=' '";
		//String sql = "select * from word where example is null";
		PreparedStatement pstmt = null;
		Connection conn = connectDb.getConnectDB();
		pstmt = connectDb.preparestmt(conn, sql);
		ResultSet rs = null;
		try {
			
			 rs = pstmt.executeQuery();
			
			while(rs.next()){
				Word word = new Word();
				word.wordId = rs.getInt("wordId");
				word.word = rs.getString("word");
				word.phonetics = rs.getString("phonetics");
				word.explain = rs.getString("explain");
				word.example = rs.getString("example");
				word.exampleExplain = rs.getString("exampleExplain");
				word.wordType = rs.getString("wordType");
				wordList.add(word);
			}
		}catch (SQLException e1) {
			e1.printStackTrace();
		}finally{
			connectDb.closeResultSet(rs);
			connectDb.closePreparedStatement(pstmt);
			connectDb.closeConnection(conn);
		}
		return wordList;
	}
	
	/**
	 * 获取所有的单词
	 * @return
	 */
	public List<Word> getAllWord(ConnectDB connectDb){
		List<Word> wordList = new ArrayList<Word>();
		String sql = "select * from word";
		//String sql = "select * from word where example is null";
		PreparedStatement pstmt = null;
		Connection conn = connectDb.getConnectDB();
		pstmt = connectDb.preparestmt(conn, sql);
		ResultSet rs = null;
		try {
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Word word = new Word();
				word.wordId = rs.getInt("wordId");
				word.word = rs.getString("word");
				word.phonetics = rs.getString("phonetics");
				word.explain = rs.getString("explain");
				word.example = rs.getString("example");
				word.exampleExplain = rs.getString("exampleExplain");
				word.wordType = rs.getString("wordType");
				wordList.add(word);
			}
		}catch (SQLException e1) {
			e1.printStackTrace();
		}finally{
			connectDb.closeResultSet(rs);
			connectDb.closePreparedStatement(pstmt);
			connectDb.closeConnection(conn);
		}
		return wordList;
	}
	
	/**
	 * 更新单词音标
	 * @param connectDb
	 * @param id
	 * @param password
	 * @return
	 */
	public boolean updatePhonetics(ConnectDB connectDb,Word word) {
		boolean flag = false;
		String sql = "update word set phonetics=? where wordID=?";
		PreparedStatement pstmt = null;
		Connection conn = connectDb.getConnectDB();
		pstmt = connectDb.preparestmt(conn, sql);
		try {
			pstmt.setString(1, word.phonetics);
			pstmt.setInt(2, word.wordId);
			int result = pstmt.executeUpdate();
			if(result != 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			connectDb.closePreparedStatement(pstmt);
			connectDb.closeConnection(conn);
		}
		return flag;
	}
	/**
	 * 更新单词英文例子
	 * @param connectDb
	 * @param id
	 * @param password
	 * @return
	 */
	public boolean updateExampleEN(ConnectDB connectDb,Word word) {
		boolean flag = false;
		String sql = "update word set example=? where wordID=?";
		PreparedStatement pstmt = null;
		Connection conn = connectDb.getConnectDB();
		pstmt = connectDb.preparestmt(conn, sql);
		try {
			pstmt.setString(1, word.example);
			pstmt.setInt(2, word.wordId);
			int result = pstmt.executeUpdate();
			if(result != 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			connectDb.closePreparedStatement(pstmt);
			connectDb.closeConnection(conn);
		}
		return flag;
	}
}
