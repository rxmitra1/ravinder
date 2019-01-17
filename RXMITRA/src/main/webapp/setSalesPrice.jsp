<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
                          <font style='color: blue; font-weight: 600; font-size: medium;'>${ updateSuccess}</font>
								<div class="col-lg-12" id="form7">
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

int i=1;
int j=1;
int k=1;
%>
											<c:forEach items="${VendorInvoiceList}"
												var="VendorInvoiceList">
                                             <%
                                             i++;
                                             k++;
                                             j++;
                                            
                                             %>

												<tr>
													<td colspan=""><input type="text" class="form-control"
														name="invoiceNo" required
														value="${VendorInvoiceList.invoiceNo}" size="15" readonly="readonly" /> <input
														type="hidden" name="addInvoiceId" required
														value="${VendorInvoiceList.addInvoiceId }" maxlength="30" />
														<input type="hidden" name="skuid" required
														value="${VendorInvoiceList.skuid }" maxlength="30" /> <input
														type="hidden" name="quantity" required
														value="${VendorInvoiceList.quantity }" maxlength="30" />
														<input type="hidden" name="batchId" required
														value="${VendorInvoiceList.batchId }" maxlength="30" /> <input
														type="hidden" name="discountPrice" required
														value="${VendorInvoiceList.discountPrice }" maxlength="30" />
														<input type="hidden" name="invoiceUploadDate" required
														value="${VendorInvoiceList.invoiceUploadDate }"
														maxlength="30" /> <input type="hidden" name="invoiceDate"
														required value="${VendorInvoiceList.invoiceDate }"
														maxlength="30" /> <input type="hidden" name="vendorid"
														required value="${VendorInvoiceList.vendorid }"
														maxlength="30" /></td>




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
														id="i<%=i%>" name="salesDiscount" required
														value="${VendorInvoiceList.salesDiscount}" size="15"  disabled="disabled" /></td>
														
													<td colspan=""><input type="text" class="form-control"
														id="k<%=k%>" name="sellingPrice" required
														value="${VendorInvoiceList.sellingPrice}" size="15" disabled="disabled" /></td>
                                                          </div>   
                                                        
                                                   <td colspan=""><input class="myCheck" id="j<%=j%>" type="checkbox"
														name="addInvoiceIds"
														value="${VendorInvoiceList.addInvoiceId }" 
														onclick="EnableDisableTextBox(this)" style="width: 18px; height: 18px;" />
														
                                                        
													</td>
   
                                                       
     <script type="text/javascript">
    function EnableDisableTextBox(j<%=j%>) {
       
    		 var salesDiscount1 = document.getElementById("i<%=j%>");
    	        var sellingPrice1 = document.getElementById("k<%=k%>");
    	        salesDiscount1.disabled = c<%=j%>.checked ? false : true;
    	        if (!salesDiscount1.disabled) {
    	        	salesDiscount1.focus();
    	        }
    	        sellingPrice1.disabled = c<%=j%>.checked ? false : true;
    	        if (!sellingPrice1.disabled) {
    	        	sellingPrice1.focus();
    	        }
    		
    	
       
    }
 </script>    
                                                          
                                                       


													
													

												</tr>


											</c:forEach>







										</table>

										<input type="submit" value="Update" id="text"
											style=" width: 100px; float: right;"
											class="btn btn-block btn-primary" name="other_text" disabled="disabled" />
											
											
											<c:forEach items="${count }" var="count">
											
											<form action="./setSalesPrice" method="post">
        				                          <input type="hidden" name="page" value="${count}">
        				                          <button type="submit" class="btn btn-link"><c:out value="${count}"/></button>
        				                  </form>
											
											
											</c:forEach>
										
									</form>
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
   
	<!--scrolling js-->
	<script src="dashboard-js/js/jquery.nicescroll.js"></script>
	<script src="dashboard-js/js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="dashboard-js/js/bootstrap.js">
		
	</script>
	<!-- mother grid end here-->
</body>
</html>
