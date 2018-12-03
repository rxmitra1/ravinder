package com.rxmitra.exception;

public class VendorException extends Exception {

	String message=null;

	public VendorException(String message) {
		super();
		this.message = message;
	}
	
	public VendorException() {
		super();
	}
	
	
	public String toString() {
		return "VendorException [message=" + message + "]";
	}
}
