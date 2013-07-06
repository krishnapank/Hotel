<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<title>Hotel Entry Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">

<style> 
 .uneditable-input1 {
    width: 177px;
}

.thumbnailsOffers
{
	margin-left:-20px;
	list-style:none;
	*zoom:1;
	height:0px;

}
.offerThumb
{
 	border: 1px solid #000000;
    height: 95px;
    margin: 1px 5px 0 0;
}
</style>

 <style type="text/css">

fieldset.group  { 
  margin: 0; 
  padding: 0; 
  margin-bottom: 1.25em; 
  padding: .125em; 
} 

fieldset.group legend { 
  margin: 0; 
  padding: 0; 
  font-weight: bold; 
  margin-left: 20px; 
  font-size: 100%; 
  color: black; 
} 


ul.checkbox  { 
  margin: 0; 
  padding: 0; 
  margin-left: 20px; 
  list-style: none; 
} 

ul.checkbox li input { 
  margin-right: .25em; 
} 

ul.checkbox li { 
  border: 1px transparent solid; 
} 

ul.checkbox li label { 
  margin-left: ; 
} 
ul.checkbox li:hover, 
ul.checkbox li.focus  { 
  background-color: lightyellow; 
  border: 1px gray solid; 
  width: 12em; 
} 


  </style>
  
  <style>
  .fileDiv {
  float: left;
    height: 90px;
    margin-left: 10px;
    width: 80px;
  
  }
  
    .offerFileDiv {
    float: right;
    height: 90px;
    margin-left: 4px;
    width: 80px;
    margin-top: 0px;
  
  }
  .thumb {
    height: 75px;
    border: 1px solid #000;
    margin: 10px 5px 0 0;
  }
</style>
  
</head>
<!---->
<body style="background-color: light-blue;">


  <form:form class="form-horizontal" id="form1" action="save.do" method="POST" modelAttribute="hotelDetailBean" enctype="multipart/form-data">
  <div align="center" style="height: 50px;padding-top: 10px;"><b>Hotel Entry Details</b></div>
    <div class="row-fluid">
    
    <div class="span4">
	 
	<!-- div for name start-->
	<div class="control-group">	
    <label class="control-label" for="name" path="name" >Name</label>
    <div class="controls">
   <!--  <input type="text" id="name" placeholder="Name"> -->
     <input type="text" id="name" placeholder="Name"  name="hotelName"/>
    </div>	
    </div>
	<!-- div for name end-->
	
	<!-- div for address start-->
    <div class="control-group">
    <label class="control-label" for="address">Address</label>
    <div class="controls">
    <input type="text" id="address" placeholder="Address" name="address">
    </div>
    </div>
	<!-- div for address end-->
	
	<!-- div for city start-->
	    <div class="control-group">
    <label class="control-label" for="city">City</label>
    <div class="controls">
    <input type="text" id="city" placeholder="City" name="city">
    </div>
    </div>
	<!-- div for city end-->
	
	<!-- div for state start-->
	    <div class="control-group">
    <label class="control-label" for="state">State</label>
    <div class="controls">
    <input type="text" id="state" placeholder="State" name="state">
    </div>
    </div>
	<!-- div for state end-->
	   
	   <!-- div for country start-->
       <div class="control-group">
    <label class="control-label" for="country">Country</label>
    <div class="controls">
    <input type="text" id="country" placeholder="Country" name="country">
    </div>
    </div>
	<!-- div for country end-->
	
	<!-- div for pin start-->
	    <div class="control-group">
    <label class="control-label" for="zipCode">Pin</label>
    <div class="controls">
    <input type="text" id="zipCode" placeholder="Pin" name="zipCode">
    </div>
    </div>
 
   <!-- div for pin end-->
   
   <!-- div for phone start-->
       <div class="control-group">
    <label class="control-label" for="hotelPhoneNumber">Phone</label>
    <div class="controls">
    <input type="text" id="hotelPhoneNumber" placeholder="Phone" name="hotelPhoneNumber">
    </div>
    </div>
	<!-- div for phone end-->
	
	
	<!-- div for fax start-->
	      <div class="control-group">
    <label class="control-label" for="hotelFaxNumber">Fax</label>
    <div class="controls">
    <input type="text" id="hotelFaxNumber" placeholder="Fax" name="hotelFaxNumber">
    </div>
    </div>
	<!-- div for fax end-->
	
	
	<!-- div for email end-->
		       <div class="control-group">
    <label class="control-label" for="email">Email</label>
    <div class="controls">
    <input type="text" id="email" placeholder="Email" name="email">
    </div>
    </div>
	<!-- div for email end-->
	
	<!-- div for website start-->
		       <div class="control-group">
    <label class="control-label" for="website">Website</label>
    <div class="controls">
    <input type="text" id="website" placeholder="Website">
    </div>
    </div>
	
	<!-- div for website end-->
	
	<!-- div for reservations start-->
				       <div class="control-group">
    <label class="control-label" for="reservations">Reservations</label>
    <div class="controls">
    <input type="text" id="reservations" placeholder="Reservations" name ="reservations">
    </div>
    </div>
	<!-- div for reservations end-->
	
	
		<!-- div for 24 hour check out time start-->
				       <div class="control-group">
    <label class="control-label" for="checkouthours">24 Hours Check Out</label>
    <div class="controls">
   	
	    <label class="checkbox inline">
    <input type="checkbox" id="theCheckIn" name="theCheckIn"  onClick="clearGroup(this); value="option1"> Yes
    </label>
    <label class="checkbox inline">
    <input type="checkbox" id="theCheckIn"  name="theCheckIn"  onClick="clearGroup(this); value="option2"> No
    </label>
    <label class="checkbox inline">
    <input type="checkbox" id="theCheckIn" name="theCheckIn"  onClick="clearGroup(this); value="option3"> Members Only
    </label>
    </div>
    </div>
	<!-- div for 24 hour check out time end-->
	
	
    </div>
	
	<!-- div for hotel category start-->
	   <div class="span8">		
	<div class="control-group">	
    <label class="control-label" for="category">Hotel Category</label>
    <div class="controls">  
 <select id="hotelCategory" placeholder="Hotel Category" name="hotelCategory">
<option>Luxury Resort</option>
<option>Business Hotel</option>
<option>Leisure Hotel</option>

</select>
    </div>	
    </div>
	</div>
	<!-- div for hotel category end-->
	
	<!-- div for start rating stsrt-->
	    <div class="span8">		
	<div class="control-group">	
    <label class="control-label" for="rating">Star Rating</label>
    <div class="controls">
  
 <select id="rating" placeholder="Star Rating" name="rating">
<option>5 Star</option>
<option>4 Star</option>
<option>3 Star</option>
</select>
    </div>	
    </div>
	</div>
	<!-- div for star rating end-->
	
	
	
	<!-- div for hotel descrition start-->
	    <div class="span8">	
	
	<div class="control-group">
	
    <label class="control-label" for="description">Hotel Description</label>
    <div class="controls">
 
<textarea rows="3" id="description" placeholder="Hotel Description" name="description"></textarea>
    </div>	
    </div>
	</div>
	
	<!-- div for hotel description end-->
	
	
	<!-- div for check in time start-->
	
<!-- 		
	     <div class="input-append bootstrap-timepicker">
            <input id="timepicker1" type="text" class="input-small" style="height: 30px;">
            <span class="add-on"><i class="icon-time"></i></span>
     </div> -->
		    <div class="span8">	
	

     
	<div class="control-group">
	
    <label class="control-label" for="intime">Check In Time</label>
   <!--  <div class="controls">	   -->  
    
     <div class="input-append bootstrap-timepicker" style="padding-left: 20px;">
            <input id="timepicker1" type="text" class="input-small" style="height: 30px;">
            <span class="add-on"><i class="icon-time"></i></span>
     </div>
 
  
 <!-- <select id="intime"  name="inTime"  placeholder="Check In Time">
<option>00</option>
<option>01</option>
<option>02</option>
<option>03</option>
<option>04</option>
<option>05</option>
<option>06</option>
<option>07</option>
<option>08</option>
<option>09</option>
<option>10</option>
<option>11</option>
<option>12</option>
<option>13</option>
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
<option>21</option>
<option>22</option>
<option>23</option>
<option>24</option>
</select> -->


  <!--   </div>	 -->
    </div>
	</div>
	
	<!-- div for check in time end-->
	
	<!-- div for cechk out time start-->
			    <div class="span8">	
	
	<div class="control-group">
	
    <label class="control-label" for="outtime">Check Out Time</label>
<!--     <div class="controls"> -->
    
         <div class="input-append bootstrap-timepicker" style="padding-left: 20px;">
            <input id="timepicker2" type="text" class="input-small" style="height: 30px;">
            <span class="add-on"><i class="icon-time"></i></span>
<!--      </div> -->
 
<!--   
 <select id="outtime" name="outTime"  placeholder="Check Out Time">
<option>00</option>
<option>01</option>
<option>02</option>
<option>03</option>
<option>04</option>
<option>05</option>
<option>06</option>
<option>07</option>
<option>08</option>
<option>09</option>
<option>10</option>
<option>11</option>
<option>12</option>
<option>13</option>
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
<option>21</option>
<option>22</option>
<option>23</option>
<option>24</option>
</select> -->
    </div>	
    </div>
	</div>
	
	<!-- div for check out time end-->
	
	
		<!-- div for hotel contact person start-->
	    <div class="span8">	
	
	<div class="control-group">
	
    <label class="control-label" for="contactperson">Hotel Contact Person</label>
    <div class="controls">
 
  <input type="text" id="contactPerson" placeholder="Hotel Contact Person" name="contactPerson" >
    </div>	
    </div>
	</div>
	
	<!-- div for hotel contact person end-->
	
    </div>
	
	
	
	
	<div class="row-fluid">
    <div class="span4">
	
	<!-- div for nearest airport start-->
	<div class="control-group">	
    <label class="control-label" for="airportname">Nearest Airport</label>
    <div class="controls">
    <input type="text" id="airportname" name="airportname" placeholder="Nearest Airport">
    </div>	
    </div>
	<!-- div for nearest airport end-->
	
	<!-- div for Nearest Railway Station start-->
    <div class="control-group">
    <label class="control-label" for="railwayname">Nearest Railway Station</label>
    <div class="controls">
    <input type="text" id="railwayname" name="railwayname" placeholder="Nearest Railway Station">
    </div>
    </div>
	<!-- div for Nearest Railway Station end-->
	
	<!-- div for Nearest Tube Station start-->
	    <div class="control-group">
    <label class="control-label" for="tubename">Nearest Tube Station</label>
    <div class="controls">
    <input type="text" id="tubename" name="tubename" placeholder="Nearest Tube Station">
    </div>
    </div>
	<!-- div for Nearest Tube Station end-->
	
	<!-- div for How To Reach start-->
	    <div class="control-group">
    <label class="control-label" for="toreach">How To Reach</label>
    <div class="controls">
    <textarea rows="2" id="toreach" name="toreach" placeholder="How To Reach"></textarea>
    </div>
    </div>
	<!-- div for How To Reach end-->	
    </div>
	
	<!-- div for airport codes start-->
	   <div class="span8">		
	<div class="control-group">	
   <label class="control-label" for="airportcode">Airport code</label>
    <div class="controls">
	
    <input type="text" id="airportcode" name="airportcode" placeholder="Airport code">
	
    </div>	
    </div>
	</div>
	<!-- div for aiport code end-->
	
	<!-- div for Nearest Bus Station start-->
		   <div class="span8">		
	<div class="control-group">	
   <label class="control-label" for="busstation">Nearest Bus Station</label>
    <div class="controls">
    <input type="text" id="busstation" name="busstation" placeholder="Nearest Bus Station">
    </div>	
    </div>
	</div>
	<!-- div for Nearest Bus Station end-->
	
	
	
		<!-- div for Nearest Taxi Stand start-->
		   <div class="span8">		
	<div class="control-group">	
   <label class="control-label" for="taxistand">Nearest Taxi Stand</label>
    <div class="controls">
    <input type="text" id="taxistand"  name="taxiStand"  placeholder="Nearest Taxi Stand">
    </div>	
    </div>
	</div>
	<!-- div for Nearest Taxi Stand end-->
    </div>
	
	<hr color="#000000">
	
	<!-- created separate div for payemt options--> 
	
	<div class="row-fluid">
	    <div class="span8">	
			<!-- div for payment types start-->
			<div class="control-group">
		  		<label class="control-label" for="paymenttypes">Payemt Types</label>
		       	<div class="controls">
		      		<c:forEach items="${paymentTypes}" var="item" varStatus="status">
				   		<label class="checkbox inline">
				    		<input type="checkbox" id="payType${item.id}" name="payType[]" class="paymentType_Checkbox" value="${item.paymentType}" > ${item.paymentType}
				    	</label>
			   		</c:forEach>
		    	</div>
		    </div>
			<!-- div for  payment types end-->		
		</div>
	</div>
	
	
	
	<hr color="#000000">	
	<!-- created separate div for facilities options--> 
	
	<div class="row-fluid">
    	<div class="span12" >	
			<!-- div for facilities start-->
			<div class="control-group">
    			<label class="control-label" for="facilities">Facilities</label>
    			<!-- <p class="pull-left">Payment Types</p> -->
  				<div class="controls">
  				<ul class="thumbnails" style="float:left;">
					<c:forEach items="${hotelFacilities}" var="item" varStatus="status">
					<li style="width: 200px;margin-bottom:1px;margin-left:-2px;" >	
						<label class="checkbox inline">
						
						<input type="checkbox" id="facilityType${item.id}" name="facilityType[]" class="facilities_Checkbox" value="${item.facilityType}" > ${item.facilityType}
 						
 						</label>
 						</li>
					</c:forEach>
					</ul>
   				</div>
   			</div>
			<!-- div for  facilities end-->
		</div>
	</div>
	
	
	<hr color="#000000">	
	<!-- created separate div for bed type options--> 
	
	<div class="row-fluid">
    	<div class="span9">
			<!-- div for bed type start-->
		    <div class="control-group">
    			<label class="control-label" for="facilities">Bed Types Available</label>
    			<div class="controls">
    				<c:forEach items="${bedTypes}" var="item" varStatus="status">
						<label class="checkbox inline">
							<input type="checkbox" id="bedType${item.id}" name="bedType[]" class="bedType_Checkbox" value="${item.bedType}" > ${item.bedType}
 						</label>
					</c:forEach>   				     
    			</div>
    		</div>
			<!-- div for  bed type end-->
		</div>
	</div>
	
	
	
	
	<hr color="#000000">	
<!-- created separate div for bed type options--> 	
 	<div class="control-group">
  		<label class="control-label" for="hotelrestaurants">Hotel Restaurants</label>
	</div>
	<div class="restaurant_detail_class">
	<ul class="thumbnails" style="float:left;">
		<c:forEach items="${restaurantDetailBeans}" var="item" varStatus="status">
		<li >
	   		<div class="form-inline" style="padding-left:50px;">	
			<!-- div for bed type start-->
		
		  		<input type="text" class="input-append resname" id="restName${item.id}" name="restName[]" 
		  			placeholder="Name of The Restaurant" value="${item.name}">    
		    	<input type="text"  class="input-append restype" id="resTyep${item.id}" name="resType[]" 
		    		placeholder="Cusine Type (indian,Chinese)" value="${item.type}">	
		  		<label>Open From  </label>  
		  		         <div class="input-append bootstrap-timepicker" style="padding-left: 2px;">
            <input id="openFrom${item.id}" name="openFrom[]"  type="text" class="input-small"  style="height: 30px;" onclick="openFrom(this);">
            <span class="add-on"><i class="icon-time"></i></span>
            </div>
		<%-- 		<select id="openFrom${item.id}" name="openFrom[]" class="openfrom" style="width:auto;">
					<option>00</option>
					<option>01</option>
					<option>02</option>
					<option>03</option>
					<option>04</option>
					<option>05</option>
					<option>06</option>
					<option>07</option>
					<option>08</option>
					<option>09</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
					<option>13</option>
					<option>14</option>
					<option>15</option>
					<option>16</option>
					<option>17</option>
					<option>18</option>
					<option>19</option>
					<option>20</option>
					<option>21</option>
					<option>22</option>
					<option>23</option>
					<option>24</option>
				</select> --%>
		
		  		<label>Till  </label>  
		  		
		  				         <div class="input-append bootstrap-timepicker" style="padding-left: 2px;">
            <input id="till${item.id}"  name="till[]"  type="text" class="input-small"  style="height: 30px;">
            <span class="add-on"><i class="icon-time"></i></span>
            </div>
	<%-- 			<select id="till${item.id}"  name="till[]" class="tillfrom" style="width:auto;">
					<option>00</option>
					<option>01</option>
					<option>02</option>
					<option>03</option>
					<option>04</option>
					<option>05</option>
					<option>06</option>
					<option>07</option>
					<option>08</option>
					<option>09</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
					<option>13</option>
					<option>14</option>
					<option>15</option>
					<option>16</option>
					<option>17</option>
					<option>18</option>
					<option>19</option>
					<option>20</option>
					<option>21</option>
					<option>22</option>
					<option>23</option>
					<option>24</option>
				</select> --%>
	
	    		<label>Reservations</label>  
	 			<input  style="width:150x;" type="text" id="restNo${item.id}" name="restNo[]" class="restno"
	 				placeholder="Reservations" value="${item.restaurants_resv_num}">
				<label>Ext.  </label>
				<input class="input-small" type="text" id="restExtNo${item.id}" name="restExtNo[]" class="restextno" 
					placeholder="Ext." value="${item.restaurants_resv_ext}">				
			</div>
			</li>
		</c:forEach>	
		</ul>
	</div>
	


	<hr color="#000000">
		<!-- created separate div for banquets options--> 
		<div style="padding-left:50px;">
    		<label  for="hotelbanquets">Banquets and Conference Facilities</label>
  		</div>
  			<div class="row">
		<div class="span20">
  		<div class="banquet_detail_class">
  			<ul class="thumbnails" style="float:right;">
  			<c:forEach items="${banquetDetailBeans}" var="item" varStatus="status">  
  			<li>			
				<div class="form-inline" style="padding-left:50px; padding-top:10px;">
					<input type="text" class="input-append banquetname" id="banquetName${item.id}"
					 	name="banquetName[]" placeholder="Name of The Hall" value="${item.name}">
					 <input type="text"  class="input-append banquetcapacity" id="banquetCapacity${item.id}" 
					 	name="banquetCapacity[]" placeholder="Capacity(Persons)" value="${item.capacity}">
					 <label>Reservations</label>  
					 <input  style="width:150x;" type="text" class="banquetno" id="banquetNo${item.id}" name="banquetNo[]" 
					 	placeholder="Reservations" value="${item.banquets_resv_num}">	
				</div>
				</li>
			</c:forEach>
			</ul>
		</div>
		</div>
		</div>






<hr color="#000000">
	<!-- div for sports start-->
	
	<div style="padding-left:50px;">
    <label  for="sports">Sports and Adventure Activities</label>
  
    </div>
	
 <div style="padding-left:50px;  padding-top:10px; width:200px;">
 
<textarea style="width: 800px; height: 67px; " cols="200" rows="5" id="sports" name="sports" placeholder="Sports and Adventure Activities"></textarea>
    </div>	

	
	<!-- div for sports end-->
	
		<!-- div for hotel images start-->
	
	<div style="padding-left:50px;padding-top:30px;">
    <label  for="hotelbanquets">Hotel Images(max image size 2 MB)</label>
  
    </div>
	
   <div class="form-inline" style="padding-left:80px;  padding-top:10px;">
	<div class="row">
		<div class="span6">
			<ul class="thumbnails">
				<li><label>Main Image</label></li>
				<li style="padding-left:10px;">	<input type="file" id="mainfile" name="mainImageFile"  value="Browse" />
				</li>
			</ul>
		</div>
		<div class="span7"> <ul class="thumbnails" id="list"></ul></div>
	</div>
	<div class="row">
	
		<div class="span6">
			<ul class="thumbnails">
				<li><label>Other Images</label></li>
				<li><input type="file" name="otherImagefiles[]" id="otherfiles" multiple="multiple" /></li>
			</ul>
		</div>
		<div class="span7"> <ul class="thumbnails" id="otherfileslist"></ul></div>
	</div>   
  
 
<!--  <input type="text" class="input-append" id="mainimage" placeholder="Main Image">   <input type="button"  value="Browse">  -->  

</div>	
 
 
<!--    <div class="form-inline" style="padding-left:50px;  padding-top:10px;">

 
 
      </div>	 -->
	
	<!-- div for hotel images end-->
	
	
	
	
		<hr color="#000000">
	<!-- div for hotel images offers start-->
	
 	<div style="padding-left:50px;">
    <label  for="hotelbanquets">Hotel Offers</label>
  
    </div>
	 
	 <!-- offer select one starts -->
   <div class="form-horizontal" style="padding-left:80px;  padding-top:10px;">
<div class="controls-row">
 	
 <div class="span8">
 	    				    <input type="file" id="offerfile1" name="offerImageFile1"  value="Browse" placeholder="Offer Image">
				<!--  <input type="text" class="input-append" id="offerdetail1" placeholder="Offer Detail"/>   -->
				  <div style="padding-top:10px; float:left;">
				   <textarea style="width: 294px; height: 100px; " cols="200" rows="100" id="offerdetail1" name="sports" placeholder="Offer Detail"></textarea>
				  <div id="offerlist1" class="offerFileDiv" ></div>
				</div>
	
</div>

<div class="span6">
 	    				    <input type="file" id="offerfile2" name="offerImageFile2"  value="Browse" placeholder="Offer Image">
				<!--  <input type="text" class="input-append" id="offerdetail1" placeholder="Offer Detail"/>   -->
				  <div style="padding-top:10px; float:left;">
				   <textarea style="width: 294px; height: 100px; " cols="200" rows="100" id="offerdetail2" name="sports" placeholder="Offer Detail"></textarea>
				  <div id="offerlist2" class="offerFileDiv" ></div>
				</div>
		
		</div>
 </div>




 <ul class="thumbnails">
 <li>
	 <!-- offer select three starts -->
 	<div class="span7">
			<ul class="thumbnails">
			 	
				<li>	<input type="file" id="offerfile3" name="offerImageFile3"  value="Browse" placeholder="Offer Image">
				 <input type="text" class="input-append" id="offerdetail3" placeholder="Offer Detail"/>  
				</li>
			</ul>
		</div>
		<div class="span1" style="padding-top:0px;"> <ul class="thumbnails" id="offerlist3"></ul></div>
		
<!-- </div>
 -->

</li>
</ul>

	 <!-- offer select four starts -->
  <!--  <div class="form-inline" style="padding-left:50px;  padding-top:10px;"> -->

 <ul class="thumbnails">
 <li>
 	<div class="span7">
			<ul class="thumbnails">
			 	
				<li>	<input type="file" id="offerfile4" name="offerImageFile4"  value="Browse" placeholder="Offer Image">
				 <input type="text" class="input-append" id="offerdetail4" placeholder="Offer Detail"/>  
				</li>
			</ul>
		</div>
		<div class="span1" style="padding-top:0px;"> <ul class="thumbnails" id="offerlist4"></ul></div>
<!-- </div> -->
</li>
</ul>

	 <!-- offer select five starts -->
  <!--  <div class="form-inline" style="padding-left:50px;  padding-top:10px;"> -->

  <ul class="thumbnails">
 <li>
 	<div class="span7">
			<ul class="thumbnails">
			 	
				<li>	<input type="file" id="offerfile5" name="offerImageFile5"  value="Browse" placeholder="Offer Image">
				 <input type="text" class="input-append" id="offerdetail5" placeholder="Offer Detail"/>  
				</li>
			</ul>
		</div>
		<div class="span1" style="padding-top:0px;"> <ul class="thumbnails" id="offerlist5"></ul></div>
<!-- </div> -->

</li>
</ul>

	 <!-- offer select six starts -->
   <!-- <div class="form-inline" style="padding-left:50px;  padding-top:10px;"> -->

  <ul class="thumbnails">
 <li>
 	<div class="span7">
			<ul class="thumbnails">
			 	
				<li>	<input type="file" id="offerfile6" name="offerImageFile6"  value="Browse" placeholder="Offer Image">
				 <input type="text" class="input-append" id="offerdetail6" placeholder="Offer Detail"/>  
				</li>
			</ul>
		</div>
		<div class="span1" style="padding-top:0px;"> <ul class="thumbnails" id="offerlist6"></ul></div>
<!-- </div> -->

</li>
</ul>
	 <!-- offer select seven starts -->
   <!-- <div class="form-inline" style="padding-left:50px;  padding-top:10px;"> -->

  <ul class="thumbnails">
 <li>
 	<div class="span7">
			<ul class="thumbnails">
			 	
				<li>	<input type="file" id="offerfile7" name="offerImageFile7"  value="Browse" placeholder="Offer Image">
				 <input type="text" class="input-append" id="offerdetail7" placeholder="Offer Detail"/>  
				</li>
			</ul>
		</div>
		<div class="span1" style="padding-top:0px;"> <ul class="thumbnails" id="offerlist7"></ul></div>
<!-- </div> -->
</li>
</ul>
	 <!-- offer select eight starts -->
   <!-- <div class="form-inline" style="padding-left:50px;  padding-top:10px;"> -->

  <ul class="thumbnails">
 <li>
 	<div class="span7">
			<ul class="thumbnails">
			 	
				<li>	<input type="file" id="offerfile8" name="offerImageFile8"  value="Browse" placeholder="Offer Image">
				 <input type="text" class="input-append" id="offerdetail8" placeholder="Offer Detail"/>  
				</li>
			</ul>
		</div>
		<div class="span1" style="padding-top:0px;"> <ul class="thumbnails" id="offerlist8"></ul></div>
		
		</li>
		</ul>
<!-- </div> -->

	 <!-- offer select nine starts -->
<!--    <div class="form-inline" style="padding-left:50px;  padding-top:10px;"> -->

  <ul class="thumbnails">
 <li>
 	<div class="span7">
			<ul class="thumbnails">
			 	
				<li>	<input type="file" id="offerfile9" name="offerImageFile9"  value="Browse" placeholder="Offer Image">
				 <input type="text" class="input-append" id="offerdetail9" placeholder="Offer Detail"/>  
				</li>
			</ul>
		</div>
		<div class="span1" style="padding-top:0px;"> <ul class="thumbnails" id="offerlist9"></ul></div>
		
		</li>
		</ul>
<!-- </div> -->

	 <!-- offer select ten starts -->
<!--    <div class="form-inline" style="padding-left:50px;  padding-top:10px;"> -->

  <ul class="thumbnails">
 <li>
 	<div class="span7">
			<ul class="thumbnails">
			 	
				<li>	<input type="file" id="offerfile10" name="offerImageFile10"  value="Browse" placeholder="Offer Image">
				 <input type="text" class="input-append" id="offerdetail10" placeholder="Offer Detail"/>  
				</li>
			</ul>
		</div>
		<div class="span1" style="padding-top:0px;"> <ul class="thumbnails" id="offerlist10"></ul></div>

</li>
</ul>
</div>
<!--  <input type="text" class="input-append" id="offers1" placeholder="Upload Image">   <input type="button"  value="Browse">  -->
<!--  <input type="file" id="offerfiles" name="file"  value="Browse" />
   <output id="offerfileslist"></output>  
  <input type="text" class="input-append" id="offerdetail1" placeholder="Offer Detail">    -->
<!--   </div>	 -->
 
 
<!--    <div class="form-inline" style="padding-left:50px;  padding-top:10px;">
 
 <input type="text" class="input-append" id="offers2" placeholder="Upload Image">   <input type="button"  value="Browse"> 
 <input type="text" class="input-append" id="offerdetail2" placeholder="Offer Detail">    </div>	 -->
	
	<!-- div for hotel images offers end-->

<div class="form-inline" style="padding-top:50px;padding-left:500px;" align="center" >

	<ul class="thumbnails">
			<li>
				<button class="btn" type="button" id="saveHotelDetailButton">Save & Exit</button> 
				<button class="btn" type="button">Save & Enter New</button>
				<input type="hidden" value="<%=request.getContextPath()%>" id="contextPath"/>
				
			</li>
	</ul>

</div>

</form:form>
<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap-timepicker.min.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery-form.js"></script>
<script src="<%=request.getContextPath() %>/js/hotelform.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	hotelForm.init();
});

function clearGroup(elem) {
    var group = document.theForm.theGroup;
    for (var i=0; i<group.length; i++) {
        if (group[i] != elem) {
            group[i].checked = false;
        }
    }
}

//Using JQuery selectors to add onFocus and onBlur event handlers

$(document).ready( function() {

  // Add the "focus" value to class attribute 
  $('ul.checkbox li').focusin( function() {
    $(this).addClass('focus');
  }
  );

  // Remove the "focus" value to class attribute 
  $('ul.checkbox li').focusout( function() {
    $(this).removeClass('focus');
  }
  );

}
);
</script>

 <script type="text/javascript">
 function openFrom(obj)
 {
	 alert("jhiihih");
 	alert("jhiihih"+obj);
 	$(obj).timepicker();
 }
            $('#timepicker1').timepicker();
            $('#timepicker2').timepicker();
           
            
           
            
</script>

<script>
  function handleFileSelect(evt) {
    var files = evt.target.files; // FileList object

    // Loop through the FileList and render image files as thumbnails.
    for (var i = 0, f; f = files[i]; i++) {

      // Only process image files.
      if (!f.type.match('image.*')) {
        continue;
      }
	
      var reader = new FileReader();

      // Closure to capture the file information.
      reader.onload = (function(theFile) {
        return function(e) {
          // Render thumbnail.
          var filespan = document.createElement('span');
          var filediv = document.createElement('li');
          filespan.innerHTML = theFile.name;
          var imgspan = document.createElement('span');
          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
                            '" title="', escape(theFile.name), '"/>'].join('');
          filediv.appendChild(imgspan);
        
          filediv.setAttribute("class", "fileDiv");
        //  alert(theFile.name);
          document.getElementById('otherfileslist').insertBefore(filediv, null);
         
          alert(theFile.name);
          var object = {};          
          object.filename = theFile.name;          
          object.data = e.target.result;
          otherHotelsImages.push(object);         
         
        };
      })(f);

      // Read in the image file as a data URL.
      reader.readAsDataURL(f);
    }
  }

  function singleFileSelect(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];
	    

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	                 
	          filediv.setAttribute("class", "fileDiv");
	          document.getElementById('list').innerHTML = "";
	          document.getElementById('list').appendChild(filediv);
	      
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelMainImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	    
	  }
  
  /* Offer selct One javascript */
  
  function offerFileSelect1(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('div');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="offerThumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	         // filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          //filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist1').innerHTML = "";
	          document.getElementById('offerlist1').appendChild(imgspan);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  
  function offerFileSelect2(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('div');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="offerThumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	         // filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          //filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist2').innerHTML = "";
	          document.getElementById('offerlist2').appendChild(imgspan);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  
  
  function offerFileSelect3(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist3').innerHTML = "";
	           document.getElementById('offerlist3').appendChild(filediv);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  
  
  
  function offerFileSelect4(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist4').innerHTML = "";
	          document.getElementById('offerlist4').appendChild(filediv);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  
  
  function offerFileSelect5(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist5').innerHTML = "";
	          document.getElementById('offerlist5').appendChild(filediv);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  
  
  
  function offerFileSelect6(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist6').innerHTML = "";
	          document.getElementById('offerlist6').appendChild(filediv);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  
  
  function offerFileSelect7(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist7').innerHTML = "";
	          document.getElementById('offerlist7').appendChild(filediv);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  
  
  function offerFileSelect8(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist8').innerHTML = "";
	          document.getElementById('offerlist8').appendChild(filediv);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  function offerFileSelect9(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist9').innerHTML = "";
	          document.getElementById('offerlist9').appendChild(filediv);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  function offerFileSelect10(evt) {
	    var files = evt.target.files; // FileList object
	    f = files[0];

	    // Loop through the FileList and render image files as thumbnails.
	  /*   for (var i = 0, f; f = files[i]; i++) { */
			
	      // Only process image files.
	 /*      if (!f.type.match('image.*')) {
	        continue;
	      } */

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	        return function(e) {
	          // Render thumbnail.
	          var filespan = document.createElement('span');
	          var filediv = document.createElement('li');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          //filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	           document.getElementById('offerlist10').innerHTML = "";
	          document.getElementById('offerlist10').appendChild(filediv);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	   // }
	  }
  
  var otherHotelsImages = [];
  var hotelMainImages = [];
  var hotelOfferImages = [];
  document.getElementById('otherfiles').addEventListener('change', handleFileSelect, false);
  document.getElementById('mainfile').addEventListener('change', singleFileSelect, false);
//  document.getElementById('offerfiles').addEventListener('change', offerFileSelect, false);
  document.getElementById('offerfile1').addEventListener('change', offerFileSelect1, false);
  document.getElementById('offerfile2').addEventListener('change', offerFileSelect2, false);
  document.getElementById('offerfile3').addEventListener('change', offerFileSelect3, false);
  document.getElementById('offerfile4').addEventListener('change', offerFileSelect4, false);
  document.getElementById('offerfile5').addEventListener('change', offerFileSelect5, false);
  document.getElementById('offerfile6').addEventListener('change', offerFileSelect6, false);
  document.getElementById('offerfile7').addEventListener('change', offerFileSelect7, false);
  document.getElementById('offerfile8').addEventListener('change', offerFileSelect8, false);
  document.getElementById('offerfile9').addEventListener('change', offerFileSelect9, false);
  document.getElementById('offerfile10').addEventListener('change', offerFileSelect10, false);
</script>
</body>

</html>