<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<%=request.getContextPath() %>/bootstrap-responsive.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<title>Hotel Entry Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<style> 
 .uneditable-input1 {
    width: 177px;
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
  .thumb {
    height: 75px;
    border: 1px solid #000;
    margin: 10px 5px 0 0;
  }
  
  .controls.readonly
{
  padding-top: 5px;
}
</style>
  
</head>
<!---->
<body style="background-color: light-blue;" align="center">


  <form:form class="form-horizontal" id="form1" action="save.do" method="POST" modelAttribute="hotelDetailBean" enctype="multipart/form-data">
  <div align="center" style="height: 50px;padding-top: 10px;"><b>Hotel View Details</b></div>
    <div class="row-fluid">
    
    <div class="span4">
	 
	<!-- div for name start-->
	<div class="control-group">	
    <label class="control-label" for="name" path="name" >Name:</label>
    <div class="controls readonly">   
    ${uIHotelDetailBean.hotelName}
    </div>	
    </div>
	<!-- div for name end-->
	
	<!-- div for address start-->
    <div class="control-group">
    <label class="control-label" for="address">Address:</label>
    <div class="controls readonly">  
  <!--   <input type="text" id="address" placeholder="Address" name="address"> -->
  ${uIHotelDetailBean.address}
    </div>
    </div>
	<!-- div for address end-->
	
	<!-- div for city start-->
	    <div class="control-group">
    <label class="control-label" for="city">City:</label>
   <div class="controls readonly">  
    <!-- <input type="text" id="city" placeholder="City" name="city"> -->
    ${uIHotelDetailBean.city}
    </div>
    </div>
	<!-- div for city end-->
	
	<!-- div for state start-->
	    <div class="control-group">
    <label class="control-label" for="state">State:</label>
   <div class="controls readonly">  
<!--     <input type="text" id="state" placeholder="State" name="state"> -->
   ${uIHotelDetailBean.state}
    </div>
    </div>
	<!-- div for state end-->
	   
	   <!-- div for country start-->
       <div class="control-group">
    <label class="control-label" for="country">Country:</label>
   <div class="controls readonly">  
   <!--  <input type="text" id="country" placeholder="Country" name="country"> -->
     ${uIHotelDetailBean.country}
    </div>
    </div>
	<!-- div for country end-->
	
	<!-- div for pin start-->
	    <div class="control-group">
    <label class="control-label" for="zipCode">Pin:</label>
   <div class="controls readonly">  
    <!-- <input type="text" id="zipCode" placeholder="Pin" name="zipCode"> -->
     ${uIHotelDetailBean.zipCode}
    </div>
    </div>
 
   <!-- div for pin end-->
   
   <!-- div for phone start-->
       <div class="control-group">
    <label class="control-label" for="hotelPhoneNumber">Phone:</label>
    <div class="controls readonly">  
   <!--  <input type="text" id="hotelPhoneNumber" placeholder="Phone" name="hotelPhoneNumber"> -->
   ${uIHotelDetailBean.hotelPhoneNumber}
    </div>
    </div>
	<!-- div for phone end-->
	
	
	<!-- div for fax start-->
	      <div class="control-group">
    <label class="control-label" for="hotelFaxNumber">Fax:</label>
    <div class="controls readonly">  
  <!--   <input type="text" id="hotelFaxNumber" placeholder="Fax" name="hotelFaxNumber"> -->
    ${uIHotelDetailBean.hotelFaxNumber}
    </div>
    </div>
	<!-- div for fax end-->
	
	
	<!-- div for email end-->
		       <div class="control-group">
    <label class="control-label" for="email">Email:</label>
   <div class="controls readonly">  
   <!--  <input type="text" id="email" placeholder="Email" name="email"> -->
   ${uIHotelDetailBean.email}
    </div>
    </div>
	<!-- div for email end-->
	
	<!-- div for website start-->
		       <div class="control-group">
    <label class="control-label" for="website">Website:</label>
    <div class="controls readonly">  
<!--     <input type="text" id="website" placeholder="Website"> -->
  ${uIHotelDetailBean.website}
    </div>
    </div>
	
	<!-- div for website end-->
	
	<!-- div for reservations start-->
				       <div class="control-group">
    <label class="control-label" for="reservations">Reservations:</label>
   <div class="controls readonly">  
  <!--   <input type="text" id="reservations" placeholder="Reservations" name ="reservations"> -->
   ${uIHotelDetailBean.reservations}
    </div>
    </div>
	<!-- div for reservations end-->
	
	
		<!-- div for 24 hour check out time start-->
				       <div class="control-group">
    <label class="control-label" for="checkouthours">24 Hours Check Out:</label>
  <div class="controls readonly">  
   	
     ${uIHotelDetailBean.theCheckIn}

    </div>
    </div>
	<!-- div for 24 hour check out time end-->
	
	
    </div>
	
	<!-- div for hotel category start-->
	   <div class="span8">		
	<div class="control-group">	
    <label class="control-label" for="category">Hotel Category:</label>
    <div class="controls readonly">  
   ${uIHotelDetailBean.hotelCategory}
    </div>	
    </div>
	</div>
	<!-- div for hotel category end-->
	
	<!-- div for start rating stsrt-->
	    <div class="span8">		
	<div class="control-group">	
    <label class="control-label" for="rating">Star Rating:</label>
   <div class="controls readonly">  
  
  ${uIHotelDetailBean.rating}
    </div>	
    </div>
	</div>
	<!-- div for star rating end-->
	
	
	
	<!-- div for hotel descrition start-->
	    <div class="span8">	
	
	<div class="control-group">
	
    <label class="control-label" for="description">Hotel Description:</label>
   <div class="controls readonly">  
 
<!-- <textarea rows="3" id="description" placeholder="Hotel Description" name="description"></textarea> -->
  ${uIHotelDetailBean.description}
    </div>	
    </div>
	</div>
	
	<!-- div for hotel description end-->
	
	
	<!-- div for check in time start-->
		    <div class="span8">	
	
	<div class="control-group">  
	
    <label class="control-label" for="intime">Check In Time:</label>
    <div class="controls readonly"> 
  ${uIHotelDetailBean.inTime}
    </div>	
    </div>
	</div>
	
	<!-- div for check in time end-->
	
	<!-- div for cechk out time start-->
			    <div class="span8">	
	
	<div class="control-group">
	
    <label class="control-label" for="outtime">Check Out Time:</label>
   <div class="controls readonly">  
 
  ${uIHotelDetailBean.outTime}
    </div>	
    </div>
	</div>
	
	<!-- div for check out time end-->
	
	
		<!-- div for hotel contact person start-->
	    <div class="span8">	
	
	<div class="control-group">
	
    <label class="control-label" for="contactperson">Hotel Contact Person:</label>
  <div class="controls readonly">  
 
 <!--  <input type="text" id="contactPerson" placeholder="Hotel Contact Person" name="contactPerson" > -->
  ${uIHotelDetailBean.contactPerson}
    </div>	
    </div>
	</div>
	
	<!-- div for hotel contact person end-->
	
    </div>
	
	
	
	
	<div class="row-fluid">
    <div class="span4">
	
	<!-- div for nearest airport start-->
	<div class="control-group">	
    <label class="control-label" for="airportname">Nearest Airport:</label>
   <div class="controls readonly">  
   <!--  <input type="text" id="airportname" name="airportname" placeholder="Nearest Airport"> -->
   ${uIHotelDetailBean.airportName}
    </div>	
    </div>
	<!-- div for nearest airport end-->
	
	<!-- div for Nearest Railway Station start-->
    <div class="control-group">
    <label class="control-label" for="railwayname">Nearest Railway Station:</label>
    <div class="controls readonly">  
   <!--  <input type="text" id="railwayname" name="railwayname" placeholder="Nearest Railway Station"> -->
   ${uIHotelDetailBean.railwayName}
    </div>
    </div>
	<!-- div for Nearest Railway Station end-->
	
	<!-- div for Nearest Tube Station start-->
	    <div class="control-group">
    <label class="control-label" for="tubename">Nearest Tube Station:</label>
   <div class="controls readonly">  
    <!-- <input type="text" id="tubename" name="tubename" placeholder="Nearest Tube Station"> -->
  ${uIHotelDetailBean.tubeName}
    </div>
    </div>
	<!-- div for Nearest Tube Station end-->
	
	<!-- div for How To Reach start-->
	    <div class="control-group">
    <label class="control-label" for="toreach">How To Reach</label>
  <div class="controls readonly">  
   <!--  <textarea rows="2" id="toreach" name="toreach" placeholder="How To Reach"></textarea> -->
  ${uIHotelDetailBean.toReach}
    </div>
    </div>
	<!-- div for How To Reach end-->	
    </div>
	
	<!-- div for airport codes start-->
	   <div class="span8">		
	<div class="control-group">	
   <label class="control-label" for="aiportcode">Airport code:</label>
    <div class="controls readonly">  
	
 <!--    <input type="text" id="aiportcode" name="aiportcode" placeholder="Airport code"> -->
  ${uIHotelDetailBean.airportCode}
	
    </div>	
    </div>
	</div>
	<!-- div for aiport code end-->
	
	<!-- div for Nearest Bus Station start-->
		   <div class="span8">		
	<div class="control-group">	
   <label class="control-label" for="busstation">Nearest Bus Station</label>
  <div class="controls readonly">  
   <!--  <input type="text" id="busstation" name="busstation" placeholder="Nearest Bus Station"> -->
   ${uIHotelDetailBean.busStation}
    </div>	
    </div>
	</div>
	<!-- div for Nearest Bus Station end-->
	
	
	
		<!-- div for Nearest Taxi Stand start-->
		   <div class="span8">		
	<div class="control-group">	
   <label class="control-label" for="taxistand">Nearest Taxi Stand:</label>
    <div class="controls readonly">  
   <!--  <input type="text" id="taxistand"  name="taxiStand"  placeholder="Nearest Taxi Stand"> -->
   ${uIHotelDetailBean.taxiStand}
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
		       	<div class="controls readonly">
		       
		      		 <c:forEach var="nameObj" items="${uIHotelDetailBean.paymentTypes}">
        			   <c:out value="${nameObj.paymentType}"></c:out>
         			   
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
    				<div class="controls readonly">
		       
		      		 <c:forEach var="nameObj" items="${uIHotelDetailBean.facilities}">
        			   <c:out value="${nameObj.facilities}"></c:out>
         			   
					 </c:forEach>
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
    			   <div class="controls readonly">
		       
		      		 <c:forEach var="nameObj" items="${uIHotelDetailBean.bedTypes}">
        			   <c:out value="${nameObj.bedTypes}"></c:out>
         			   
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
    
   
     	  <c:forEach var="nameObj" items="${uIHotelDetailBean.restaurants}">
     	   <div class="controls readonly">
          <b>   Name of The Restaurant  </b><c:out value="${nameObj.name}"></c:out>
      	  <b>	Cusine Type (indian,Chinese)  </b><c:out value="${nameObj.type}"></c:out>
      	  <b>	Open From  </b><c:out value="${nameObj.openTime}"></c:out>
      	  <b>	Till  </b><c:out value="${nameObj.closeTime}"></c:out>
      	  <b>	Reservations  </b><c:out value="${nameObj.restaurants_resv_num}"></c:out>
      	  <b>	Ext.  </b><c:out value="${nameObj.restaurants_resv_ext}"></c:out>
      	    </div>
      </c:forEach>


   
   	<hr color="#000000">
		<!-- created separate div for banquets options--> 
		<div style="padding-left:50px;">
    		<label  for="hotelbanquets">Banquets and Conference Facilities</label>
  		</div>
      <div class="controls readonly">
	  <c:forEach var="nameObj" items="${uIHotelDetailBean.banquets}">
      	 <c:out value="${nameObj.name}"></c:out>
      	 <c:out value="${nameObj.capacity}"></c:out>
      	 <c:out value="${nameObj.banquets_resv_num}"></c:out>

      </c:forEach>
   </div>


<hr color="#000000">
	<!-- div for sports start-->
	
	<div style="padding-left:50px;">
    <label  for="sports">Sports and Adventure Activities</label>
  
    </div>
      <div class="controls readonly">
	    ${uIHotelDetailBean.sports}
   </div>
 		<hr color="#000000">
	<div style="padding-left:50px;padding-top:30px;">
    <label  for="hotelbanquets">Hotel Images</label>
  
    </div>
    		<hr color="#000000">
	<!-- div for hotel images offers start-->
	
 	<div style="padding-left:50px;">
    <label  for="hotelbanquets">Hotel Offers</label>
  
    </div>
    
<div class="form-inline" style="padding-top:50px;padding-left:350px;" align="center" >

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
          var filediv = document.createElement('div');
          filespan.innerHTML = theFile.name;
          var imgspan = document.createElement('span');
          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
                            '" title="', escape(theFile.name), '"/>'].join('');
          filediv.appendChild(imgspan);
          filediv.appendChild(filespan);
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
	          var filediv = document.createElement('div');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          filediv.appendChild(filespan);
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
  
  
  function offerFileSelect(evt) {
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
	          var filediv = document.createElement('div');
	          filespan.innerHTML = theFile.name;
	          var imgspan = document.createElement('span');
	          imgspan.innerHTML = ['<img class="thumb" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/>'].join('');
	          filediv.appendChild(imgspan);
	          filediv.appendChild(filespan);
	          filediv.setAttribute("class", "fileDiv");
	        //  alert(theFile.name);
	          document.getElementById('offerfileslist').insertBefore(filediv, null);
	          
	          var object = {};
	          object.filename = theFile.name;	          
	          object.data = e.target.result;
	          hotelOfferImages.push(object);  
	          
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	    }
	  }
  
  var otherHotelsImages = [];
  var hotelMainImages = [];
  var hotelOfferImages = [];
  document.getElementById('otherfiles').addEventListener('change', handleFileSelect, false);
  document.getElementById('mainfile').addEventListener('change', singleFileSelect, false);
  document.getElementById('offerfiles').addEventListener('change', offerFileSelect, false);
</script>
</body>

</html>