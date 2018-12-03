<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${lstUser}" var="lv">
<tr>
<td>
<c:out value="${lv.addInvoiceId }"></c:out>
<c:out value="${lv.invoiceNo }"></c:out>
<c:out value="${lv.productId }"></c:out>
<c:out value="${lv.productName }"></c:out>
<c:out value="${lv.weight }"></c:out>
<c:out value="${lv.packageType}"></c:out>
<c:out value="${lv.batchId }"></c:out>
<c:out value="${lv.expiryDate }"></c:out>
<c:out value="${lv.price }"></c:out>
<c:out value="${lv.purchasePrice }"></c:out>

</td>
</tr><br>
</c:forEach>
</body>
</html>