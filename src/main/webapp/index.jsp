

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
</head>
<!---->
<body style="background-color: light-blue;">
	<div class="checkbox inline">
   
	
			<!-- div for facilities start-->
				       <div class="control-group">
    <label for="facilities">Facilities</label>
    <div class="controls">
   	
	    <label >
    <input type="checkbox" id="facilityType" value="facilities1"> In Room Dinning
    </label>
   <label>
    <input type="checkbox" id="facilityType" value="facilities2"> Pets Allowed
    </label>
   <label>
    <input type="checkbox" id="facilityType" value="facilities3"> Spa
    </label>
	
	   <label>
    <input type="checkbox" id="facilityType" value="facilities4"> Swimming Pool
    </label>
	
		   <label>
    <input type="checkbox" id="facilityType" value="facilities5"> Beauty Salon
    </label>
	
			   <label>
    <input type="checkbox" id="facilityType" value="facilities6"> IDD
    </label>
	
				   <label>
    <input type="checkbox" id="facilityType" value="facilities7"> Babysitter on Call
    </label>
	
				   <label>
    <input type="checkbox" id="facilityType" value="facilities8"> Lockers
    </label>
	
					   <label>
    <input type="checkbox" id="facilityType" value="facilities9"> Business Centre
    </label>
	
						   <label>
    <input type="checkbox" id="facilityType" value="facilities10"> Postal
    </label>
	
						   <label>
    <input type="checkbox" id="facilityType" value="facilities11"> Doctor on Call
    </label>
						   <label>
    <input type="checkbox" id="facilityType" value="facilities12"> Sauna & Steam
    </label>
						   <label>
    <input type="checkbox" id="facilityType" value="facilities13"> In Room Safe
    </label>
	
						   <label>
    <input type="checkbox" id="facilityType" value="facilities14"> Wi-Fi in Rooms
    </label>
	
						   <label>
    <input type="checkbox" id="facilityType" value="facilities15"> Club Lounge
    </label>
	
  


    </div>
	<!-- div for  facilities end-->
	
	</div>
	</div>

<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
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
</body>

</html>