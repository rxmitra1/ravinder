<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" import="com.rxmitra.bean.*" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   
<!-- <script type="text/javascript">
    $(function () {
        $("#myCheck").click(function () {
            if ($(this).is(":checked")) {
                $("#salesDiscount").removeAttr("disabled");
                $("#salesDiscount").focus();
                
              
            } else {
                $("#salesDiscount").attr("disabled", "disabled");
                
               
            }
        });
    });
</script>
<script type="text/javascript">
    $(function () {
        $("#myCheck").click(function () {
            if ($(this).is(":checked")) {
                $("#sellingPrice").removeAttr("disabled");
                $("#sellingPrice").focus();
                
              
            } else {
                $("#sellingPrice").attr("disabled", "disabled");
                
               
            }
        });
    });
</script> -->


</head>
<body>

	<%
		String from = null;
		try {
			from = request.getParameter("from");
			if (from == null) {
				from = request.getAttribute("from").toString();
			}
		} catch (Exception e) {

		}
	%>

	<section style="background-color:#febf10; height:3px;"></section>
	<jsp:include page="./Employee_top.jsp" />

	<div class="page-container">

		<div class="sidebar-menu">
			<jsp:include page="./EmployeeMenu.jsp">
				<jsp:param value="<%=from%>" name="from" />
			</jsp:include></div>

		<div class="rightsidebar-menu"></div>
		<div class="left-content">
			<div class="mother-grid-inner"></div>

			<div class="inner-block">
				<div class="inbox">
					<div class="profile_details"></div>
					<div class="col-md-12 mailbox-content  tab-content tab-content-in">
						<div class="panel panel-orange" style="padding: 2px 13px;">

							<div class="for4">

								<div class="">
									<%
										String shopid = (String) request.getParameter("shopid");
									%>

									<form action="./setSalesPrice?update=yes" method="post">
								
								<div colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">
	                                 <tr>
	                                   <th >SET SALES PRICE</th>
	                                 </tr>
	                                 </div>
	                                 <br />
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">SKU ID :</label> <input type="text"
											class="form-control" name="skuid" id="skuid"
											placeholder="Enter Your SKU ID" />
									</div>
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">MANUFACTURER:</label> <input type="text"
											class="form-control" name="manufacturer" id="manufacturer"
											placeholder="Enter Your manufacturer" />
									</div>
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">PRODUCT NAME :</label> <input type="text"
											class="form-control" name="productName" id="productName"
											placeholder="Enter Your Product Name" />
									</div>
									

									<div class="form-group col-md-2 col-sm-2">
										<label for="pincode" style="color: #fff;">SK</label><br>
											<button type="submit" class="btn btn-success btn-block"
												name="sub" id="box"
												style="font-size: 20px; line-height: 19px;">Search
											</button>
									</div>
									
								</form>
								</div>
								
								
								
								
								
								 <div class="col-lg-12" id="form7">
								 <div align="center">
								
                                <font style='color: blue; font-weight: 600; font-size: medium;'>${ updateSuccess}</font>
                          </div>
						<form action="./updateSetSalesBySkuid" method="get" onsubmit="return validateForm()">
		
										<table class="table table-bordered">
											<tr>
												<th colspan="14"
													style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px;">SET
													SALES PRICE</th>
											</tr>

											<tr>
											
												<td style="font-weight: 500;">INVOICE NO</td>
												<td style="font-weight: 500;">MANUFACTURER</td>
												<td style="font-weight: 500;">PRODUCT NAME</td>
												<td style="font-weight: 500;">WEIGHT</td>
												<td style="font-weight: 500;">PACKAGE TYPE</td>

												<td style="font-weight: 500;">EXPIRY DATE</td>
												<td style="font-weight: 500;">PURCHASE PRICE</td>
												<td style="font-weight: 500;">DISCOUNT PRICE</td>
												<td style="font-weight: 500;">ACTUAL PRICE</td>

												<td style="font-weight: 500;">MRP</td>
												<td style="font-weight: 500;">SALES DISCOUNT</td>
												<td style="font-weight: 500;">SELLING PRICE</td>
												<td style="font-weight: 500;">UPDATE HERE</td>
											
											</tr>
											<%
											int i=0;
											int j=1;
											%>
											
		<c:forEach items="${VendorInvoiceList}"
												var="VendorInvoiceList">
												
												<%
												i++;
												%>
	            <tr id="${VendorInvoiceList.addInvoiceId }row1" >
	            
        				<td data-title="Class" class="numeric" id="name_row1">
        				${VendorInvoiceList.invoiceNo}
        				</td>
        				<td data-title="Year" class="numeric" id="country_row1">
        				${VendorInvoiceList.manufacturer}
        				</td>
        				<td data-title="Institution" class="numeric" id="age_row1">
        				${VendorInvoiceList.productName}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.weight}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.packageType}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.expiryDate}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.purchasePrice}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.discountPrice}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.actualPrice}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.mrp}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.salesDiscount}
        				</td>
        				<td data-title="Address" class="numeric" id="age1_row1">
        			${VendorInvoiceList.sellingPrice}
        				</td>
        				
        				<div class="col-md-12">
        				<td data-title="" class="numeric">
						<div class="col-md-2" id="edit_button1" >
						<input type="checkbox" id="s<%=i%>" class="myCheck" name="checkProducts" value="${VendorInvoiceList.addInvoiceId }" onclick="edit_row('${VendorInvoiceList.addInvoiceId }')"  style="width: 18px; height: 18px;">
						
						</input>
						</div>
						
						</td>
						</div>	
        			</tr>
        						
					<script>
	$(document).ready(function(){
	    $("#s<%=i%>").click(function(){
	        $("#${VendorInvoiceList.addInvoiceId }row1").hide();
	    });
	    $("#s<%=i%>").click(function(){
	        $("#${VendorInvoiceList.addInvoiceId }show").show();
	    });
	});
	</script>							
												
					<tr  style="display:none;" id="${VendorInvoiceList.addInvoiceId }show">
        			<div class="col-md-2">
        			                                <td colspan=""><input type="text" class="form-control"
														name="productName" required
														value="${VendorInvoiceList.invoiceNo}" size="15" readonly="readonly" />
														<input type="hidden" class="form-control"
														name="addInvoiceIds" required
														value="${VendorInvoiceList.addInvoiceId}" size="15"  />
														</td>
														
        				                            <td colspan=""><input type="text" class="form-control"
														name="manufacturer" required
														value="${VendorInvoiceList.manufacturer}" size="15" readonly="readonly"/></td>
														
													<td colspan=""><input type="text" class="form-control"
														name="productName" required
														value="${VendorInvoiceList.productName}" size="15" readonly="readonly"/></td>
														
													<td colspan=""><input type="text" class="form-control"
														name="weight" required value="${VendorInvoiceList.weight}"
														size="15" readonly="readonly"/></td>
														
													<td colspan=""><input type="text" class="form-control"
														name="packageType" required
														value="${VendorInvoiceList.packageType}" size="15" readonly="readonly"/></td>
										
													<td colspan=""><input type="text" class="form-control"
														name="expiryDate" required
														value="${VendorInvoiceList.expiryDate}" size="15" readonly="readonly"/></td>
														
													<td colspan=""><input type="text" class="form-control"
														name="purchasePrice" required
														value="${VendorInvoiceList.purchasePrice}" size="15" readonly="readonly"/></td>
														
													<td colspan=""><input type="text" class="form-control"
														name="discountPrice" required
														value="${VendorInvoiceList.discountPrice}" size="15" readonly="readonly"/></td>
														
													<td colspan=""><input type="text" class="form-control"
														name="actualPrice" required
														value="${VendorInvoiceList.actualPrice}" size="15" readonly="readonly"/></td>

													<td colspan=""><input type="text" class="form-control"
														name="mrp" required value="${VendorInvoiceList.mrp}"
														size="15" readonly="readonly"/></td>
														
													<td colspan=""><input type="text" class="form-control"
														id="salesDiscount1" name="salesDiscount" required
														value="${VendorInvoiceList.salesDiscount}" size="15"  /></td>
														
													<td colspan=""><input type="text" class="form-control"
														id="sellingPrice1" name="sellingPrice" required
														value="${VendorInvoiceList.sellingPrice}" size="15"/></td>
                                                             
        				
						<div class="col-md-12">
        				<td data-title="" class="numeric">
						<div class="col-md-2" id="edit_button1" >
<%-- 						<input id="s<%=i%>" class="myCheck" onclick="edit_row('${VendorInvoiceList.addInvoiceId }')"  style="width: 18px; height: 18px;">
 --%>						<i class="fa fa-check"></i>
						</input>
						</div>
						
						</td>
						</div>
						
						
						
						</div>
						</tr>							
												
						</c:forEach>						
												
												
												
												
												
												
										
                                                        
                                                 <%--  <td colspan=""><input class="myCheck" id="c" type="checkbox"
														name="addInvoiceIds"
														value="${VendorInvoiceList.addInvoiceId }" 
														onclick="EnableDisableTextBox(this)" style="width: 18px; height: 18px;" />
														
                                                        
													</td>
											</c:forEach>
                                        --%>
                                                       
										 
											
             

													
													

		</tr>


										






										</table>

										<input type="submit" value="Update" id="text"
											style=" width: 100px; float: right;"
											class="btn btn-block btn-primary" name="other_text" disabled="disabled" />
											
										
							</form>
							
							
							Pages  <form action="./setSalesPrice?update=yes" method="post">
        				  <input type="hidden" name="pageid" value="1">
        				  
        				  <button type="submit" class="btn btn-link">1</button>
        				  </form>
							
							
							
							
							
							<!-- <a href="/RXMITRA/setSalesPrice?pageid=1">1</a> <a
									href="/RXMITRA/setSalesPrice?pageid=2">2</a> <a
									href="/RXMITRA/setSalesPrice?pageid=3">3</a> <a
									href="/RXMITRA/setSalesPrice?pageid=4">4</a> <a
									href="/RXMITRA/setSalesPrice?pageid=5">5</a> -->
							
																<div class="row">
                                <div class="col-md-11">
                                </div>
								<div class="col-md-1">
								
								
								
								</div>
								
								</div>
								
								
								</div> 
								
                             

							</div>
							<div class="clearfix"></div>

						</div>
					</div>
				</div>
			</div>

			<div class="copyrights">
				<p>
					© 2017 Kosur Rythu Mitra. All Rights Reserved | Design by <a
						href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
				</p>
			</div>
		</div>
		<!--COPY rights end here-->

		<script language="javascript">
			populateCountries("country", "state");
		</script>
		<script language="javascript">
			populateCountries("country1", "state1");
		</script>
		<!--slider menu-->

		<div class="clearfix"></div>
	</div>

	<!--slide bar menu end here-->
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}
					toggle = !toggle;
				});
	</script>
 <script type="text/javascript">
        $(function () {
            $('.myCheck').change(function () {
                if ($(this).is(":checked")) {
                    $('#text').removeAttr('disabled');
                }
                else {
                    var isChecked = false;
                    $('.myCheck').each(function () {
                        if ($(this).is(":checked")) {
                            $('#text').removeAttr('disabled');
                            isChecked = true;
                        }
                    });
                    if (!isChecked) {
                        $('#text').attr('disabled', 'disabled');
                    }
                }
 
 
            })
        });
    </script>
    <!--  <script type="text/javascript">
        $(function () {
            $('.myCheck').change(function () {
                if ($(this).is(":checked")) {
                    $('#sellingPrice1').removeAttr('disabled');
                }
                else {
                    var isChecked = false;
                    $('.myCheck').each(function () {
                        if ($(this).is(":checked")) {
                            $('#sellingPrice1').removeAttr('disabled');
                            isChecked = true;
                        }
                    });
                    if (!isChecked) {
                        $('#sellingPrice1').attr('disabled', 'disabled');
                    }
                }
 
 
            })
        });
    </script>
     <script type="text/javascript">
        $(function () {
            $('.myCheck').change(function () {
                if ($(this).is(":checked")) {
                    $('#salesDiscount1').removeAttr('disabled');
                }
                else {
                    var isChecked = false;
                    $('.myCheck').each(function () {
                        if ($(this).is(":checked")) {
                            $('#salesDiscount1').removeAttr('disabled');
                            isChecked = true;
                        }
                    });
                    if (!isChecked) {
                        $('#salesDiscount1').attr('disabled', 'disabled');
                    }
                }
 
 
            })
        });
    </script> -->
    
    
     
  
	<!-- <script>
		function myFunction() {
			alert(document.getElementById("myCheck").checked);
			var checkBox = document.getElementById("myCheck");
			var text = document.getElementById("text");
			if (checkBox.checked == true) {
				text.style.display = "block";
			} else {
				text.style.display = "none";
			}
		}
	</script>  -->
	<!--scrolling js-->
	<script src="dashboard-js/js/jquery.nicescroll.js"></script>
	<script src="dashboard-js/js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="dashboard-js/js/bootstrap.js">
		
	</script>
	<!-- mother grid end here-->
</body>
</html>
