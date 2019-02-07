<%@ page language="java" import="com.rxmitra.utils.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String pincode = request.getParameter("pincode");
/* System.out.println(new Pincode().getPincodeData(pincode)); */
out.println(new Pincode().getPincodeData(pincode));
%>
