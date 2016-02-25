package com.cn.lpd.webservice;

import javax.jws.WebService;

@WebService(endpointInterface = "com.cn.lpd.webservice.helloWorld")
public class helloWorldImpl implements helloWorld{
	public String sayHello(String text) {
        return "Hello : " + text;
    }
}
