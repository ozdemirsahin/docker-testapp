package com.jaxws.endpoint;

import javax.xml.ws.Endpoint;
import com.jaxws.ws.HelloWorldImpl;

//Endpoint publisher
public class HelloWorldPublisher {

    public static void main(String[] args) {
        Endpoint.publish("http://0.0.0.0:9999/ws/hello", new HelloWorldImpl());
    }
}

