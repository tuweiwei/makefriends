package com.briup.run.common.util.ip;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class TestIPSeeker {
 
	/**
	 * @param args
	 */
	private static String strIP;
	public static void main(String[] args) {
		IPSeeker seeker = IPSeeker.getInstance();
		String ip = "218.9.252.74";
		try {
			
			 strIP=InetAddress.getLocalHost().getHostAddress();
			System.out.println(strIP);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String country = seeker.getCountry(strIP);
		String area = seeker.getArea(ip);
		System.out.println( country+"*******" + area);
	}
}
