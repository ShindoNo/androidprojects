package com.example.testandroid;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import android.net.Uri;

public class GenerateSignature {

	/**
	 * Sort map by keys
	 * @param map
	 * @return
	 */
	private static Map sortByKeys(Map map) {
		LinkedList linkedlist = new LinkedList(map.keySet());
		Collections.sort(linkedlist);
		LinkedHashMap linkedhashmap = new LinkedHashMap();
		Comparable comparable;
		for (Iterator iterator = linkedlist.iterator(); iterator.hasNext(); linkedhashmap.put(comparable,
				map.get(comparable)))
			comparable = (Comparable) iterator.next();

		return linkedhashmap;
	}

	/**
	 * Create http request
	 * @param s
	 * @param map
	 * @return
	 */
	public static String createHTTPRequest(String s, Map map) {
		Map map1 = sortByKeys(map);
		String s1 = "?";
		LinkedList linkedlist = new LinkedList(map1.keySet());
		int i = 0;
		int j = linkedlist.size();
		Iterator iterator = linkedlist.iterator();
		while (iterator.hasNext()) {
			String s2 = (String) iterator.next();
			if (i < j - 1)
				s1 = (new StringBuilder()).append(s1)
						.append(s2)
						.append("=")
						.append((String) map1.get(s2))
						.append("&")
						.toString();
			else
				s1 = (new StringBuilder()).append(s1).append(s2).append("=").append((String) map1.get(s2)).toString();
			i++;
		}
		return (new StringBuilder()).append(s).append(s1).toString();
	}

	/**
	 * Convert byte array to hex
	 * @param abyte0
	 * @return
	 */
	public static String toHexString(byte abyte0[]) {
		StringBuilder stringbuilder = new StringBuilder(2 * abyte0.length);
		Formatter formatter = new Formatter(stringbuilder);
		int i = abyte0.length;
		for (int j = 0; j < i; j++) {
			byte byte0 = abyte0[j];
			Object aobj[] = new Object[1];
			aobj[0] = Byte.valueOf(byte0);
			formatter.format("%02x", aobj);
		}

		formatter.close();
		return stringbuilder.toString();
	}

	/**
	 * Generate Signature
	 * @param s
	 * @param s1
	 * @return
	 * @throws SignatureException
	 */
	public static String hashMac(String s, String s1) throws SignatureException {
		String s2;
		try {
			SecretKeySpec secretkeyspec = new SecretKeySpec(s1.getBytes(), "hmacSHA256");
			Mac mac = Mac.getInstance(secretkeyspec.getAlgorithm());
			mac.init(secretkeyspec);
			s2 = toHexString(mac.doFinal(s.getBytes()));
		} catch (NoSuchAlgorithmException nosuchalgorithmexception) {
			throw new SignatureException("error building signature, no such algorithm in device hmacSHA256");
		} catch (InvalidKeyException invalidkeyexception) {
			throw new SignatureException("error building signature, invalid key hmacSHA256");
		}
		return s2;
	}

	/**
	 * Generate Url
	 * @param map
	 * @param s
	 * @return
	 * @throws Exception
	 */
	public static String cookPOIURL(Map map) throws Exception {
		String s1 = createHTTPRequest("http://nhanha.coccoc.com/api/search", map);
		Uri uri = Uri.parse(s1);
		String s2 = (new StringBuilder()).append(uri.getPath()).append("?").append(uri.getQuery()).toString();
		
//		map = sortByKeys(map);
//		String s2 = createHTTPRequest("http://nhanha.coccoc.com/api/search", map);
		
		String s4;
		try {
			String s3 = hashMac(s2, "b3154acf3a3a1919e716a");
			s4 = (new StringBuilder()).append(createHTTPRequest("http://nhanha.coccoc.com/api/search", map))
					.append("&signature=")
					.append(s3)
					.toString();
		} catch (Exception exception) {
			exception.printStackTrace();
//			return s1;
			return s2;
		}
		return s4;
	}

}
