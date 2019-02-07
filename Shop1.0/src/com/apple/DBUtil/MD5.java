package com.apple.DBUtil;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
	public static String parseStrToMd5(String str) {
		String reStr = null;
		try {
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			byte[] bytes = md5.digest(str.getBytes());
			StringBuffer stringbuffer = new StringBuffer();
			for (byte b : bytes) {
				int br = b & 0xff;
				if (br < 16) {
					stringbuffer.append(Integer.toHexString(br));
				}
				stringbuffer.append(Integer.toHexString(br));
			}
			reStr = stringbuffer.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return reStr;
	}
}
