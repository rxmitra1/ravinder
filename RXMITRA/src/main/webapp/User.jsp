<%@ page language="java" import="com.rxmitra.bean.*,com.rxmitra.utils.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user=null;
try
{
  if(session.getAttribute("referenceid")!=null)
  {
	user=session.getAttribute("referenceid").toString();
  }
  else
	  if(session.getAttribute("referenceid")==null)
	{
		response.sendRedirect("./LoginPage.jsp");
	}
}
catch(Exception e)
{
	response.sendRedirect("./LoginPage.jsp");
}
%>
<%-- <%=emp.getEMPLOYEE_NAME() %> --%>
</body>
</html>