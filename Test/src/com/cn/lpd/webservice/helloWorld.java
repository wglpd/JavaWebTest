package com.cn.lpd.webservice;

import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
public interface helloWorld {
	public String sayHello(@WebParam(name = "arg0") String text);
}
