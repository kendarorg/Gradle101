package org.kendar;

import java.io.IOException;
import java.util.Properties;

public class HelloWorld {
    public static void main(String[] args) {
    	HelloWorldService service = new HelloWorldService();
    	service.printHello();
    	
    	Properties props = new Properties();
	    try 
	    {
	        props.load(HelloWorld.class.getClassLoader().getResourceAsStream("environment.properties"));
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    System.out.println("I use maxThreads: " + props.getProperty("maxThreads"));
    }
}
