/**
 * @author vivekgupta
 */

var hotelForm = {};
hotelForm.init = function (){
	hotelForm.initButton();
};

hotelForm.initButton = function (){
	$("#saveHotelDetailButton").click(function() {
		hotelForm.save();
	});
};


hotelForm.save = function(){

	var hotelDetailJson = [];
	
	var hotelMainImageData = [];
	var otherHotelsImagesData = []; 
	var hotelOfferImagesData = [];
	 $.each(otherHotelsImages, function(index, file) {		 
		 otherHotelsImagesData.push({
				"imageName":file.filename,
			    "imageByteStringData":file.data
		 }); 
	 });
	 
	 $.each(hotelMainImages, function(index, file) {		 
		 hotelMainImageData.push({
				"imageName":file.filename,
			    "imageByteStringData":file.data
		 }); 
	 });
  
	 $.each(hotelOfferImages, function(index, file) {		 
		 hotelOfferImagesData.push({ 
				"imageName":file.filename,
			    "imageByteStringData":file.data
		 }); 
	 });
	 
	 var paymentTypes = [];
	 $('.paymentType_Checkbox:checked').each(function(){		
		 paymentTypes.push({
			 "id": $(this).attr("id").substring(7),
			 "paymentType":$(this).val()			   
		 });
     });
	 
	 var bedTypes = [];
	 $('.bedType_Checkbox:checked').each(function(){		
		 bedTypes.push({
			 "id": $(this).attr("id").substring(7),
			 "bedType":$(this).val()			   
		 });
     });
	 
	 
	 var facilities = [];
	 $('.facilities_Checkbox:checked').each(function(){		
		 facilities.push({
			    "id": $(this).attr("id").substring(12),
				"facilityType":$(this).val()			   
		 });
     });
	 
	 var restaurants = [];
	 $('.restaurant_detail_class .form-inline').each(function(){	
		
		 restaurants.push({
				"name":$(this).find('.resname').val(),
				"type":  $(this).find('.restype').val(),
				"openTime":$(this).find('.openfrom option:selected').val(),
				"closeTime":$(this).find('.tillfrom option:selected').val(),
				"restaurants_resv_num": $(this).find('.restno').val(),
				"restaurants_resv_ext":	$(this).find('.restextno').val()
		 });	 
     });
	 
	 
	 
	 var banquets = [];
	 $('.banquet_detail_class .form-inline').each(function(){
		 var banquetname = $(this).find('.banquetname').val();
		 if(banquetname != null && banquetname != "" ) {
			 banquets.push({
					"name":$(this).find('.banquetname').val(),
					"capacity":  $(this).find('.banquetcapacity').val(),				
					"restaurants_resv_num": $(this).find('.banquetno').val()
					
			 });	
		 }		  
     });
	
	
	 
	hotelDetailJson.push({
		"hotelName" : $("#name").val(),
		"address" : $("#address").val(),			
		"city" : $("#city").val(),			
		"state" : $("#state").val(),					
		"zipCode" : $("#zipCode").val(),			
		'country' :  $('#country').val(),
		"hotelPhoneNumber" :  $("#hotelPhoneNumber").val(),				
		"hotelFaxNumber" : $("#hotelFaxNumber").val(),
		"email" : $("#email").val(),		
		"website" : $("#website").val(),		
		"reservations":$("#reservations").val(),
		"theCheckIn": $("#theCheckIn:checked").val(),
		"hotelCategory": $("#hotelCategory option:selected").val(),
		"rating":$("#rating option:selected").val(),
		"description":$("#description").val(),
		"inTime": $("#intime option:selected").val(),
		"outTime":$("#outtime option:selected").val(),
		"contactPerson": $("#contactPerson").val(),
		
		"airportName":$("#airportname").val(),
		"railwayName":$("#railwayname").val(),
		"tubeName":$("#tubename").val(),
		"toReach":$("#toreach").val(),
		"airportCode":$("#airportcode").val(),
		"busStation":$("#busstation").val(),
		"taxiStand":$("#taxistand").val(),
		"sports":$("#sports").val(),
		
		"otherImagesFilesData" : otherHotelsImagesData,
		"hotelMainImageFileData":hotelMainImageData,
		"hotelOfferImageFilesData":hotelOfferImagesData,
		"paymentTypes":paymentTypes,
		"facilities" : facilities,
		"restaurants" : restaurants,
		"banquets": banquets,
		"bedTypes":bedTypes
	});
	
	
	var hotelDetailJsonString=JSON.stringify(hotelDetailJson);	
	var url = $("#contextPath ").val() + "/hotel/save.do";
	
	$.ajax({
		type : 'POST',
		url : url,
		data : {
			'hotelDetailJsonString' : function() {
				return hotelDetailJsonString;
			}						
		},
		datatType: "json",		
		success : function(data) {
	
		},
		error : function() {
			alert("Experiencing problems connecting to the server.");
		},
		complete : function() {
			displayModalView(false);
		}
	});
	
};