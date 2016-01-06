package com.cn.lpd.common;

public class MyException extends Exception{
	
	/**
	 * 异常处理类
	 * 
	 * @author L
	 * @since 
	 */
	private static final long serialVersionUID = 1498301983193113146L;

	public MyException(){}
	
	public MyException(String message){
		super(message);
	}
}
