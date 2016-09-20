package com.testapp;

import java.io.*;
import java.net.*;
import java.util.Scanner;

public class Server extends Thread{
	private ServerSocket serverSocket;
	
	public Server(int port) throws IOException{
		serverSocket = new ServerSocket(port);
	}
	
	public void run(){
		System.out.println("Waiting for client on port ...");
		
		while(true)
		{
			try
			{
				Socket server = serverSocket.accept();
				DataInputStream in = new DataInputStream (server.getInputStream ());
				System.out.println("Client : "+in.readUTF());
				DataOutputStream out = new DataOutputStream(server.getOutputStream());
				out.writeUTF("reply server");
				server.close();
			}catch(SocketTimeoutException s) {
				System.out.println("Socket timed out!");
				break;
			}catch(IOException e) {
				e.printStackTrace();
				break;
			}
		}
	}

	public static void main(String[] args){
		int port = Integer.parseInt("8800");
		try{
			Thread t = new Server(port);
			t.start();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
}
