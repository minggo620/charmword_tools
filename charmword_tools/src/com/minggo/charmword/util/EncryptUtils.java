package com.minggo.charmword.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.spec.AlgorithmParameterSpec;

import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

/**
 * 加密工具
 * 
 * @author minggo
 * @date 2014-9-15 上午11:28:00
 */
public class EncryptUtils {

	public static final String ALGORITHM_DES = "DES/CBC/PKCS5Padding";

	/**
	 * md5加密
	 * 
	 * @param str
	 * @return
	 */
	public String getMD5Str(String str) {

		MessageDigest md5 = null;
		try {
			md5 = MessageDigest.getInstance("MD5");
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}

		char[] charArray = str.toCharArray();
		byte[] byteArray = new byte[charArray.length];

		for (int i = 0; i < charArray.length; i++) {
			byteArray[i] = (byte) charArray[i];
		}
		byte[] md5Bytes = md5.digest(byteArray);

		StringBuffer hexValue = new StringBuffer();
		for (int i = 0; i < md5Bytes.length; i++) {
			int val = ((int) md5Bytes[i]) & 0xff;
			if (val < 16) {
				hexValue.append("0");
			}
			hexValue.append(Integer.toHexString(val));
		}
		return hexValue.toString();

	}

	/**
	 * DES算法，加密
	 * 
	 * @param data
	 *            待加密字符串
	 * @param key
	 *            加密私钥，长度不能够小于8位
	 * @return 加密后的字节数组，一般结合Base64编码使用
	 * @throws InvalidAlgorithmParameterException
	 * @throws Exception
	 */
	public static String encode(String key, String data) {
		if (data == null)
			return null;
		try {
			DESKeySpec dks = new DESKeySpec(key.getBytes());
			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			// key的长度不能够小于8位字节
			Key secretKey = keyFactory.generateSecret(dks);
			Cipher cipher = Cipher.getInstance(ALGORITHM_DES);
			IvParameterSpec iv = new IvParameterSpec(key.getBytes());
			AlgorithmParameterSpec paramSpec = iv;
			cipher.init(Cipher.ENCRYPT_MODE, secretKey, paramSpec);
			byte[] bytes = cipher.doFinal(data.getBytes());
			return byte2hex(bytes);
		} catch (Exception e) {
			e.printStackTrace();
			return data;
		}
	}

	/**
	 * DES算法，解密
	 * 
	 * @param data
	 *            待解密字符串
	 * @param key
	 *            解密私钥，长度不能够小于8位
	 * @return 解密后的字节数组
	 * @throws Exception
	 *             异常
	 */
	public static String decode(String key, String data) {
		if (data == null)
			return null;
		try {
			DESKeySpec dks = new DESKeySpec(key.getBytes());
			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			// key的长度不能够小于8位字节
			Key secretKey = keyFactory.generateSecret(dks);
			Cipher cipher = Cipher.getInstance(ALGORITHM_DES);
			IvParameterSpec iv = new IvParameterSpec(key.getBytes());
			AlgorithmParameterSpec paramSpec = iv;
			cipher.init(Cipher.DECRYPT_MODE, secretKey, paramSpec);
			return new String(cipher.doFinal(hex2byte(data.getBytes())));
		} catch (Exception e) {
			e.printStackTrace();
			return data;
		}
	}

	/**
	 * 二行制转字符串
	 * 
	 * @param b
	 * @return
	 */
	private static String byte2hex(byte[] b) {
		StringBuilder hs = new StringBuilder();
		String stmp;
		for (int n = 0; b != null && n < b.length; n++) {
			stmp = Integer.toHexString(b[n] & 0XFF);
			if (stmp.length() == 1)
				hs.append('0');
			hs.append(stmp);
		}
		return hs.toString().toUpperCase();
	}

	private static byte[] hex2byte(byte[] b) {
		if ((b.length % 2) != 0)
			throw new IllegalArgumentException();
		byte[] b2 = new byte[b.length / 2];
		for (int n = 0; n < b.length; n += 2) {
			String item = new String(b, n, 2);
			b2[n / 2] = (byte) Integer.parseInt(item, 16);
		}
		return b2;
	}

	// static boolean debug =false ;
	// 加密KEY不能随便改动
	static final byte[] KEYVALUE = "minggo620".getBytes();
	static final int BUFFERLEN = 512;

	/**
	 * 对文件进行加密
	 * 
	 * @param String
	 *            oldFile 原始要加密的文件
	 * @param String
	 *            newFile 加密后的文件
	 * @return
	 */
	public static void encryptFile(String oldFile, String newFile) throws Exception {
		FileInputStream in = new FileInputStream(oldFile);
		File file = new File(newFile);
		if (!file.exists())
			file.createNewFile();
		FileOutputStream out = new FileOutputStream(file);
		int c, pos, keylen;
		pos = 0;
		keylen = KEYVALUE.length;
		byte buffer[] = new byte[BUFFERLEN];
		while ((c = in.read(buffer)) != -1) {
			for (int i = 0; i < c; i++) {
				buffer[i] ^= KEYVALUE[pos];
				out.write(buffer[i]);
				pos++;
				if (pos == keylen)
					pos = 0;
			}
		}
		in.close();
		out.close();
	}

	/**
	 * 对文件进行解密
	 * 
	 * @param String
	 *            oldFile 原始要解密的文件
	 * @param String
	 *            newFile 解密后的文件
	 * @return
	 */
	public static void decryptFile(String oldFile, String newFile) throws Exception {
		FileInputStream in = new FileInputStream(oldFile);
		File file = new File(newFile);
		if (!file.exists())
			file.createNewFile();
		FileOutputStream out = new FileOutputStream(file);
		int c, pos, keylen;
		pos = 0;
		keylen = KEYVALUE.length;
		byte buffer[] = new byte[BUFFERLEN];
		while ((c = in.read(buffer)) != -1) {
			for (int i = 0; i < c; i++) {
				buffer[i] ^= KEYVALUE[pos];
				out.write(buffer[i]);
				pos++;
				if (pos == keylen)
					pos = 0;
			}
		}
		in.close();
		out.close();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		try {
			// debug =false ;
			String oldFile = new String("F://charmword.db");
			String newFile = new String("F://test/charmword.db");
			encryptFile(oldFile, newFile);
			System.out.println("ok");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
