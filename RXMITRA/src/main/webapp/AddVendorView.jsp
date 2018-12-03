<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"  %>
    <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rx Mitra</title>
</head>
<body>
<h2>The Vendor Details are Registered Successfully....</h2>

Inserted Record
<%!
int i;
HttpSession session;
%>
i=${vendorDetails.SEQ_VENDOR_ID }

<%

session=request.getSession(true);
session.setAttribute("key",i);

%>
<a href="/Rythumitra/displayProcess">Display Vedor Details</a><br>
<a href="/Rythumitra/add">Add Another Vendor</a>
</body>
</html>