<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isErrorPage="true" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.rxmitra.utils.*,com.rxmitra.dao.*,com.rxmitra.service.*,com.rxmitra.bean.*,java.util.*"
	isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX Mitra | Received Request</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<style>
.table-striped > tbody > tr:nth-of-type(odd) {
    background-color: #ffffff !important;
}
.table-bordered {
    border: 1px solid #fbfafa !important;
}
.box{ 
    font-size: 23px;
    color: #5aa320;
    text-decoration: underline;
    }
    label {
    color: #5aa320 !important;
    font-size: 17px !important;
    font-weight: normal !important;
}
#one{
    font-size: 20px;
    color: #5aa320;
    text-decoration: underline;
    }
    .modal-header {
    min-height: 7px;
    padding: 9px !important;
    border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
    padding: 0rem;
    margin: 3rem 1rem 0rem auto;
    margin-top: 2px;
    font-size: 34px;
    color: #000;
}
.modal-title {
    line-height: 1.42857143;
    font-size: 24px;
    margin: 1px 10px;
    color: #4CAF50;
}
#tw1{
font-size: 21px;
    color: #5aa320;
    text-decoration: underline;
    }
</style>



 <script>
     var counter = 1;
     var limit = 6;
     function addInput(divName){
       
     
          if (counter == limit)  {
               alert("You have reached the limit of adding " + counter + " inputs");
          }
          
          else {
           
           var newdiv = document.createElement('div');
           newdiv.innerHTML = '<div class="col-md-12" style="padding: 0 0; margin: 9px 0%;"><div class="col-md-3"><input type="text" name="employeeId" class="form-control" id="" value="" placeholder="Your Medicine Name"></div><div class="col-md-3" style="padding-right: 0px;"><input type="text" name="employeeId" class="form-control" id="" value="" placeholder="Your Quantity"></div><div class="col-md-3" style="padding-right: 0px;"><input type="text" name="employeeId" class="form-control" id="" value="" placeholder="Your Price"></div>';
              document.getElementById(divName).appendChild(newdiv);
              counter++;
          }
     }
          
     </script>
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

		<div class="left-content">
			<div class="mother-grid-inner"></div>

			<div class="inner-block">
				<div class="inbox">
					<div class="profile_details"></div>
					<div class="col-md-12 mailbox-content  tab-content tab-content-in" style="padding-bottom: 0px;">


						<div class="">
							<jsp:include page="./User.jsp"></jsp:include>
                          <h4 class="box"> Received Request</h4>
                      <br>
                    <div class="col-md-10">
                    
                   	<div class="form-group col-lg-3">
					<label>Form Date :</label>
					<input type="date" name="employeeId" class="form-control" id="" value="" placeholder="DD/MM/YYYY">
				    </div>
                     
                    <div class="form-group col-lg-3">
					<label>To Date :</label>
					<input type="date" name="employeeName" class="form-control" id="" value="" placeholder="DDMM/YYYY"]>
				    </div>
				    
				    <div class="form-group col-lg-3">
					<label>Pincode :</label>
					<input type="text" name="pincode" class="form-control" id="" value="" placeholder="Enter Your pincode">
				    </div>
				    
				    <div class="form-group col-lg-3">
					<label>Member Id :</label>
					<input type="text" name="member" class="form-control" id="" value="" placeholder="Your Member Id">
				    </div>
				    </div>
				    
				    <div class="col-md-2">
				    <div class="form-group col-lg-12">
					<label style="color: #fff !important;">g</label>
					<button type="button" class="btn btn-success btn-block">Search</button>
				    </div>
				        
                    </div> 
                             
                           <div class="clearfix"></div>       
                             
                                    <div class="col-md-12">
                               <p><br></p>
                                  <div id="no-more-tables">
            <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		<thead class="cf" style="font-size: 17px; color: #5aa320;">
        			<tr>
        			
        				<th class="numeric">Request Id</th>
        				<th class="numeric">Request Date</th>
        				<th class="numeric">Member Id</th>
        				<th class="numeric">Email Id</th>
        				<th class="numeric">Phone No</th>
        				<th class="numeric">Pincode</th>
        				<th class="numeric">Order Status</th>
        				<th class="numeric">Order Id</th>
        				<th class="numeric">Description</th>
        				
        			
        			</tr>
        		</thead>
        		<tbody>
        			<tr>
        				<td data-title="Request Id" class="numeric"><a href="#demo" data-toggle="collapse" id="one">123</a></td>
        				<td data-title="Request Date" class="numeric">12-12-1994</td>
        				<td data-title="Member Id" class="numeric"><a href="#" data-toggle="modal" data-target="#myModal" id="one">Sta</a></td>
        				<td data-title="Email Id" class="numeric">XYZ</td>
        				<td data-title="Phone No" class="numeric">fsfss</td>
        				<td data-title="Pincode" class="numeric">Aaaaa</td>
        				<td data-title="Order Status" class="numeric">  
                        
                          <select class="form-control">
						  <option value="volvo">Opened</option>
						  <option value="saab">Order Pending</option>
						  <option value="opel">Delivery</option>
						  <option value="audi">Rejected</option>
						  </select>
                        </td>
        				<td data-title="Order Id" class="numeric">200</td>
        				<td data-title="Description" class="numeric">1000</td>
        			</tr>
        			
        		
        		
        		</tbody>
        	</table>
        </div>
                                
             
             <!--================= popup section =============== -->
                <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Received Request</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
         <div class="col-md-12">
                    <div class="form-group col-lg-12">
					<label>Your Name</label>
					<input type="text" name="name" class="form-control"  placeholder="Enter Your Name">
				    </div>
				    
				    <div class="form-group col-lg-12">
					<label>Address</label>
					<textarea class="form-control" rows="2" name="message" required="required"  placeholder="Enter Your Address ........"></textarea>
				    </div>
				    
				    <div class="form-group col-lg-12">
					<label>Contact No</label>
					<input type="text" name="contact" class="form-control" placeholder="Enter Your Contact No">
				    </div>
				    
				    <div class="form-group col-lg-12">
					<label>Pincode :</label>
					<input type="text" name="pincode" class="form-control" id="" value="" placeholder="Enter Your pincode">
				    </div>
				    
				     <div class="col-md-4"></div>
				     <div class="col-md-4">
				    <div class="form-group col-lg-12">
					<button type="button" class="btn btn-success btn-block">Submit</button>
				    </div>
				        
                    </div> 
                    <div class="col-md-4"></div>
				    
         </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
      </div>
      </div>
  
             <!--================ end popup section ============= -->
                               
               <!--========  row section ============ -->
                <div id="demo" class="collapse">
               <div class="col-md-12">
                  <p><br></p>
                   
                    <h4 id="tw1">Doctor Details</h4>
				     <br> 
				    <div class="form-group col-lg-3">
					<label>Refered By :</label>
					<input type="text" name="contact" class="form-control" placeholder="Enter Your Refered By">
				    </div>
				    
				    <div class="form-group col-lg-3">
					<label>Doctor :</label>
					<input type="text" name="pincode" class="form-control" id="" value="" placeholder="Enter Your Doctor">
				    </div>
				    
				    <div class="form-group col-lg-3">
					<label>Address</label>
					<textarea class="form-control" rows="2" name="message" required="required"  placeholder="Enter Your Address ........"></textarea>
				    </div>
       
               </div>
                
              <div class="clearfix"> </div>
               <div class="col-md-12">
                 
                    <h4 id="tw1">Description Details</h4>
				     <br> 
				     <div class="col-md-12" id="dynamicInput">
   
  	             <div class="form-group col-lg-3">
		         <input type="text" name="employeeId" class="form-control" id="" value="" placeholder="Your Medicine Name">
				 </div>
				    
				<div class="form-group col-lg-3">
				<input type="text" name="employeeId" class="form-control" id="" value="" placeholder="Your Quantity">
				</div>
				    
				<div class="form-group col-lg-3">
				<input type="text" name="employeeId" class="form-control" id="" value="" placeholder="Your Price">
				</div>
				
			   <div class="form-group col-lg-2">
				<button type="button" id="more_fields" onclick="addInput('dynamicInput');" class="btn btn-primary btn-block" style="line-height:18px;">Add Quantity</button>
				</div>
				
				</div> </div>
		   <div class="col-md-12">
		    <div class="col-md-5"></div>
		    <div class="col-md-2">
		    <div class="">
		    <br>
		    <button type="button" class="btn btn-success btn-block">Submit</button> 
		    </div>
		    </div>
		    <div class="col-md-5"></div>
		    </div>
		    </div>
   <div class="col-md-12">
     <p><br><br></br></p>
   </div>
              
               
       
               
                
       
        <!--======== end  row section ============ -->
                               
                                </div>
                            
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>

			<div class="copyrights">
				<p>
					Copyright © 2017 Kosur Rythu Mitra. All Rights Reserved | Design by
					<a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
				</p>
			</div>
		</div>
		<!--COPY rights end here--
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
	<!--scrolling js-->
	<script src="dashboard-js/js/jquery.nicescroll.js"></script>
	<script src="dashboard-js/js/scripts.js"></script>
	<!--//scrolling js-->
	
	<script src="dashboard-js/js/bootstrap.js">
		
	</script>

	<!-- mother grid end here-->
</body>
</html>