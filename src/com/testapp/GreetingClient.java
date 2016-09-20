package com.testapp;

import java.io.*;
import java.net.*;
import java.util.Scanner;

public class GreetingClient{
	
	public void send(String txt){
		String serverName = "192.168.43.58";
		int port = 8800;
		
		try {
			Socket client = new Socket(serverName,port);
			OutputStream outToServer = client.getOutputStream();
			DataOutputStream out = new DataOutputStream(outToServer); 
			out.writeUTF(txt);
			DataInputStream in = new DataInputStream(client.getInputStream());
			System.out.println("Server : "+in.readUTF());
			client.close();
		}catch (IOException e) {
			e.printStackTrace();
		} 
	}
	
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		String msg="";
		while(!msg.equalsIgnoreCase("end")){
			System.out.print("Say : ");
			msg = s.nextLine();
			if(!(msg.equalsIgnoreCase("end"))){
				new GreetingClient().send(msg);
			}
		}
		s.close();
		System.out.println("selesai");
	}
}
