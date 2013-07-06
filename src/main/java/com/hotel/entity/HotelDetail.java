package com.hotel.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="hotel_detail")
public class HotelDetail extends AbstractEntity<HotelDetail>{
	
	private String hotelName;
	private String address;
	private String city;
	private String state;
	private String country;
	private String zipCode;
	private String phoneNumber;
	private String faxNumber;
	private String email;
	private String webSiteUrl;
	private String hotelReservations;
	private String hotelCategory;
	private String rating;
	private String checkOuttime;
	private String checkIntime;
	private String contactPersonName;
	private String description;
    private String checkOutType;  
    private String sports;    
    private String airportName;
	private String airportCode;
	private String railwayStationName;
	private String busStationName;
	private String tubeStationName;
	private String taxiStandName;
	private String direction;
    

	@ManyToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
	@JoinTable(name="hotelDetail_paymentType", 
				joinColumns={@JoinColumn(name="hotel_id")}, 
				inverseJoinColumns={@JoinColumn(name="paymentType_id")})
    private Set<PaymentType> paymentTypes = new HashSet<PaymentType>(); 
    
    
    @ManyToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
   	@JoinTable(name="hotelDetail_facilityDetail", 
   				joinColumns={@JoinColumn(name="hotel_id")}, 
   				inverseJoinColumns={@JoinColumn(name="facilitiesDetail_id")})
    private Set<HotelFacilityTypeDetail> facilites = new HashSet<HotelFacilityTypeDetail>();
    
    
    @ManyToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
   	@JoinTable(name="hotelDetail_bedType", 
   				joinColumns={@JoinColumn(name="hotel_id")}, 
   				inverseJoinColumns={@JoinColumn(name="bedType_id")})
    private Set<HotelBedTypeDetail> bedTypes = new HashSet<HotelBedTypeDetail>();
    
    
    @ManyToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
   	@JoinTable(name="hotelDetail_restaurantDetail", 
   				joinColumns={@JoinColumn(name="hotel_id")}, 
   				inverseJoinColumns={@JoinColumn(name="restaurantDetail_id")})
    private Set<HotelRestaurantDetail> restaurants = new HashSet<HotelRestaurantDetail>();
    
    
    @ManyToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
   	@JoinTable(name="hotelDetail_banquetDetail", 
   				joinColumns={@JoinColumn(name="hotel_id")}, 
   				inverseJoinColumns={@JoinColumn(name="banquetDetail_id")})
    
    private Set<HotelBanquetDetail> banquets = new HashSet<HotelBanquetDetail>();
    
    @ManyToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
   	@JoinTable(name="hotelDetail_offerDetail", 
   				joinColumns={@JoinColumn(name="hotel_id")}, 
   				inverseJoinColumns={@JoinColumn(name="offerDetail_id")})
    private Set<HotelOfferDetail> offers = new HashSet<HotelOfferDetail>();
    
       
   
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getFaxNumber() {
		return faxNumber;
	}
	public void setFaxNumber(String faxNumber) {
		this.faxNumber = faxNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWebSiteUrl() {
		return webSiteUrl;
	}
	public void setWebSiteUrl(String webSiteUrl) {
		this.webSiteUrl = webSiteUrl;
	}
	public String getHotelReservations() {
		return hotelReservations;
	}
	public void setHotelReservations(String hotelReservations) {
		this.hotelReservations = hotelReservations;
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
	public String getCheckOuttime() {
		return checkOuttime;
	}
	public void setCheckOuttime(String checkOuttime) {
		this.checkOuttime = checkOuttime;
	}
	public String getCheckIntime() {
		return checkIntime;
	}
	public void setCheckIntime(String checkIntime) {
		this.checkIntime = checkIntime;
	}
	public String getContactPersonName() {
		return contactPersonName;
	}
	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCheckOutType() {
		return checkOutType;
	}
	public void setCheckOutType(String checkOutType) {
		this.checkOutType = checkOutType;
	}
	public String getSports() {
		return sports;
	}
	public void setSports(String sports) {
		this.sports = sports;
	}
	public Set<PaymentType> getPaymentTypes() {
		return paymentTypes;
	}
	public void setPaymentTypes(Set<PaymentType> paymentTypes) {
		this.paymentTypes = paymentTypes;
	}
	public Set<HotelFacilityTypeDetail> getFacilites() {
		return facilites;
	}
	public void setFacilites(Set<HotelFacilityTypeDetail> facilites) {
		this.facilites = facilites;
	}
	public Set<HotelBedTypeDetail> getBedTypes() {
		return bedTypes;
	}
	public void setBedTypes(Set<HotelBedTypeDetail> bedTypes) {
		this.bedTypes = bedTypes;
	}
	public Set<HotelRestaurantDetail> getRestaurants() {
		return restaurants;
	}
	public void setRestaurants(Set<HotelRestaurantDetail> restaurants) {
		this.restaurants = restaurants;
	}
	public Set<HotelBanquetDetail> getBanquets() {
		return banquets;
	}
	public void setBanquets(Set<HotelBanquetDetail> banquets) {
		this.banquets = banquets;
	}
	public Set<HotelOfferDetail> getOffers() {
		return offers;
	}
	public void setOffers(Set<HotelOfferDetail> offers) {
		this.offers = offers;
	}
	public String getAirportName() {
		return airportName;
	}
	public void setAirportName(String airportName) {
		this.airportName = airportName;
	}
	public String getAirportCode() {
		return airportCode;
	}
	public void setAirportCode(String airportCode) {
		this.airportCode = airportCode;
	}
	public String getRailwayStationName() {
		return railwayStationName;
	}
	public void setRailwayStationName(String railwayStationName) {
		this.railwayStationName = railwayStationName;
	}
	public String getBusStationName() {
		return busStationName;
	}
	public void setBusStationName(String busStationName) {
		this.busStationName = busStationName;
	}
	public String getTubeStationName() {
		return tubeStationName;
	}
	public void setTubeStationName(String tubeStationName) {
		this.tubeStationName = tubeStationName;
	}
	public String getTaxiStandName() {
		return taxiStandName;
	}
	public void setTaxiStandName(String taxiStandName) {
		this.taxiStandName = taxiStandName;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
        
	
	
}
