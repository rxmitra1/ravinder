<%@ page language="java" import="com.rxmitra.bean.*,java.util.*,com.rxmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />
    <link href="./jquery.multiselect.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="./jquery.multiselect.js"></script>
    
     <style type="text/css">
    
    .multiselect {
  width: 250px;
}

.selectBox {

  position: relative;
}

.selectBox select {
  width: 100%;
 height: 30px;
}

.overSelect {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
}

#checkboxes {
 
  border: 1px #dadada solid;
}

#checkboxes label {
  display: block;
}

#checkboxes label:hover {
  background-color: #1e90ff;
}
    
    
    
    </style>
    
</head>


<script type="text/javascript">

var expanded = false;

function showCheckboxes() {
  var checkboxes = document.getElementById("checkboxes");
  if (!expanded) {
    checkboxes.style.display = "block";
    expanded = true;
  } else {
    checkboxes.style.display = "none";
    expanded = false;
  }
}

</script>
<body>

	
	
	<div class="multiselect">
    <div class="selectBox" onclick="showCheckboxes()"  style="height: 30px;
    line-height: 30px; width:250px">
      <select>
        <option>Select Brands</option>
      </select>
      <div class="overSelect"></div>
    </div>
 
    <div id="checkboxes">
    <c:forEach items="${s }" var="s">
      <label for="${s}">
        <input type="checkbox" name="brandName" id="${s}" value="${s }"/> ${s}</label>
          </c:forEach>
      
    </div>
	</div>
	
	
</body>
</html>