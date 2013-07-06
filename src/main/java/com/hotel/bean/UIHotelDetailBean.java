/**
 * 
 */
package com.hotel.bean;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author vivekgupta
 *
 */
public class UIHotelDetailBean {
	private String hotelName;
	private String address;
	private String city;
	private String state;
	private String zipCode;
	private String country;
	private String hotelPhoneNumber;
	private String hotelFaxNumber;
	private String email;
	private String website;
	private String sports;
	
	private String reservations;	
	private String theCheckIn;
	private String hotelCategory;
	private String rating;
	private String description;
	private String inTime;
	private String outTime;
	private String contactPerson;
	
	private String airportName;
	private String railwayName;
	private String tubeName;
	private String toReach;
	private String airportCode;
	private String busStation;
	private String taxiStand;
			
	
	
	// offer images
	private MultipartFile offerImageFile1;
	private MultipartFile offerImageFile2;
	private MultipartFile offerImageFile3;
	private MultipartFile offerImageFile4;
	private MultipartFile offerImageFile5;
	private MultipartFile mainImageFile;
	private String offerDesc1;
	private String offerDesc2;
	private String offerDesc3;
	private String offerDesc4;
	private String offerDesc5;
	
	private List<UIHotelImageBean> hotelMainImageFileData;
	private List<UIHotelImageBean> otherImagesFilesData;
	private List<UIHotelImageBean> hotelOfferImageFilesData;
	private List<UIPaymentTypeBean> paymentTypes;
	private List<UIFacilityTypeDetailBean> facilities;
	private List<UIBedTypeBean> bedTypes;
	private List<UIRestaurantDetailBean> restaurants ;
	private List<UIBanquetDetailBean>  banquets;
	//private List<MultipartFile> otherfiles;
	
	
	
	public List<UIFacilityTypeDetailBean> getFacilities() {
		return facilities;
	}
	public List<UIBanquetDetailBean> getBanquets() {
		return banquets;
	}
	public void setBanquets(List<UIBanquetDetailBean> banquets) {
		this.banquets = banquets;
	}
	public List<UIRestaurantDetailBean> getRestaurants() {
		return restaurants;
	}
	public void setRestaurants(List<UIRestaurantDetailBean> restaurants) {
		this.restaurants = restaurants;
	}
	public List<UIBedTypeBean> getBedTypes() {
		return bedTypes;
	}
	public void setBedTypes(List<UIBedTypeBean> bedTypes) {
		this.bedTypes = bedTypes;
	}
	public void setFacilities(List<UIFacilityTypeDetailBean> facilities) {
		this.facilities = facilities;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getHotelPhoneNumber() {
		return hotelPhoneNumber;
	}
	public void setHotelPhoneNumber(String hotelPhoneNumber) {
		this.hotelPhoneNumber = hotelPhoneNumber;
	}
	public String getHotelFaxNumber() {
		return hotelFaxNumber;
	}
	public void setHotelFaxNumber(String hotelFaxNumber) {
		this.hotelFaxNumber = hotelFaxNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public MultipartFile getMainImageFile() {
		return mainImageFile;
	}
	public void setMainImageFile(MultipartFile mainImageFile) {
		this.mainImageFile = mainImageFile;
	}
	public String getReservations() {
		return reservations;
	}
	public void setReservations(String reservations) {
		this.reservations = reservations;
	}
	public String getTheCheckIn() {
		return theCheckIn;
	}
	public void setTheCheckIn(String theCheckIn) {
		this.theCheckIn = theCheckIn;
	}
	public String getHotelCategory() {
		return hotelCategory;
	}
	public void setHotelCategory(String hotelCategory) {
		this.hotelCategory = hotelCategory;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getInTime() {
		return inTime;
	}
	public void setInTime(String inTime) {
		this.inTime = inTime;
	}
	public String getOutTime() {
		return outTime;
	}
	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}
	public String getContactPerson() {
		return contactPerson;
	}
	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}
	public String getAirportName() {
		return airportName;
	}
	public void setAirportName(String airportName) {
		this.airportName = airportName;
	}
	public String getRailwayName() {
		return railwayName;
	}
	public void setRailwayName(String railwayName) {
		this.railwayName = railwayName;
	}
	public String getTubeName() {
		return tubeName;
	}
	public void setTubeName(String tubeName) {
		this.tubeName = tubeName;
	}
	public String getToReach() {
		return toReach;
	}
	public void setToReach(String toReach) {
		this.toReach = toReach;
	}
	public String getAirportCode() {
		return airportCode;
	}
	public void setAirportCode(String airportCode) {
		this.airportCode = airportCode;
	}
	public String getBusStation() {
		return busStation;
	}
	public void setBusStation(String busStation) {
		this.busStation = busStation;
	}
	public String getTaxiStand() {
		return taxiStand;
	}
	public void setTaxiStand(String taxiStand) {
		this.taxiStand = taxiStand;
	}


	
	public String getSports() {
		return sports;
	}
	public void setSports(String sports) {
		this.sports = sports;
	}
	public MultipartFile getOfferImageFile1() {
		return offerImageFile1;
	}
	public void setOfferImageFile1(MultipartFile offerImageFile1) {
		this.offerImageFile1 = offerImageFile1;
	}
	public MultipartFile getOfferImageFile2() {
		return offerImageFile2;
	}
	public void setOfferImageFile2(MultipartFile offerImageFile2) {
		this.offerImageFile2 = offerImageFile2;
	}
	public MultipartFile getOfferImageFile3() {
		return offerImageFile3;
	}
	public void setOfferImageFile3(MultipartFile offerImageFile3) {
		this.offerImageFile3 = offerImageFile3;
	}
	public MultipartFile getOfferImageFile4() {
		return offerImageFile4;
	}
	public void setOfferImageFile4(MultipartFile offerImageFile4) {
		this.offerImageFile4 = offerImageFile4;
	}
	public MultipartFile getOfferImageFile5() {
		return offerImageFile5;
	}
	public void setOfferImageFile5(MultipartFile offerImageFile5) {
		this.offerImageFile5 = offerImageFile5;
	}
	public String getOfferDesc1() {
		return offerDesc1;
	}
	public void setOfferDesc1(String offerDesc1) {
		this.offerDesc1 = offerDesc1;
	}
	public String getOfferDesc2() {
		return offerDesc2;
	}
	public void setOfferDesc2(String offerDesc2) {
		this.offerDesc2 = offerDesc2;
	}
	public String getOfferDesc3() {
		return offerDesc3;
	}
	public void setOfferDesc3(String offerDesc3) {
		this.offerDesc3 = offerDesc3;
	}
	public String getOfferDesc4() {
		return offerDesc4;
	}
	public void setOfferDesc4(String offerDesc4) {
		this.offerDesc4 = offerDesc4;
	}
	public String getOfferDesc5() {
		return offerDesc5;
	}
	public void setOfferDesc5(String offerDesc5) {
		this.offerDesc5 = offerDesc5;
	}
	public List<UIHotelImageBean> getHotelMainImageFileData() {
		return hotelMainImageFileData;
	}
	public void setHotelMainImageFileData(List<UIHotelImageBean> hotelMainImageFileData) {
		this.hotelMainImageFileData = hotelMainImageFileData;
	}
	public List<UIHotelImageBean> getOtherImagesFilesData() {
		return otherImagesFilesData;
	}
	public void setOtherImagesFilesData(List<UIHotelImageBean> otherImagesFilesData) {
		this.otherImagesFilesData = otherImagesFilesData;
	}
	public List<UIHotelImageBean> getHotelOfferImageFilesData() {
		return hotelOfferImageFilesData;
	}
	public void setHotelOfferImageFilesData(
			List<UIHotelImageBean> hotelOfferImageFilesData) {
		this.hotelOfferImageFilesData = hotelOfferImageFilesData;
	}
	public List<UIPaymentTypeBean> getPaymentTypes() {
		return paymentTypes;
	}
	public void setPaymentTypes(List<UIPaymentTypeBean> paymentTypes) {
		this.paymentTypes = paymentTypes;
	}
	
	
	
}

