/**
 * 
 */
package com.hotel.converter;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import com.hotel.bean.UIHotelDetailBean;
import com.hotel.bean.UIPaymentTypeBean;
import com.hotel.entity.HotelBanquetDetail;
import com.hotel.entity.HotelBedTypeDetail;
import com.hotel.entity.HotelDetail;
import com.hotel.entity.HotelFacilityTypeDetail;
import com.hotel.entity.HotelRestaurantDetail;
import com.hotel.entity.PaymentType;

/**
 * @author vivekgupta
 *
 */
public class HotelDetailConverter {
	
	public static HotelDetail getHotelDetailEntity(UIHotelDetailBean uiHotelDetail){
		HotelDetail hotelDetail = new HotelDetail();
		hotelDetail.setHotelName(uiHotelDetail.getHotelName());
		hotelDetail.setAddress(uiHotelDetail.getAddress());
		hotelDetail.setCity(uiHotelDetail.getCity());
		
		hotelDetail.setState(uiHotelDetail.getState());
		hotelDetail.setCountry(uiHotelDetail.getCountry());
		hotelDetail.setZipCode(uiHotelDetail.getZipCode());
		hotelDetail.setPhoneNumber(uiHotelDetail.getHotelPhoneNumber());
		hotelDetail.setFaxNumber(uiHotelDetail.getHotelFaxNumber());
		hotelDetail.setEmail(uiHotelDetail.getEmail());
		hotelDetail.setWebSiteUrl(uiHotelDetail.getWebsite());
		
		hotelDetail.setHotelReservations(uiHotelDetail.getReservations());
		hotelDetail.setHotelCategory(uiHotelDetail.getHotelCategory());
		hotelDetail.setRating(uiHotelDetail.getRating());
		hotelDetail.setDescription(uiHotelDetail.getDescription());
		hotelDetail.setCheckIntime(uiHotelDetail.getInTime());
		hotelDetail.setCheckOuttime(uiHotelDetail.getOutTime());
		
		hotelDetail.setContactPersonName(uiHotelDetail.getContactPerson());
		hotelDetail.setCheckOutType(uiHotelDetail.getTheCheckIn());
		hotelDetail.setAirportName(uiHotelDetail.getAirportName());
		hotelDetail.setAirportCode(uiHotelDetail.getAirportCode());
		hotelDetail.setRailwayStationName(uiHotelDetail.getRailwayName());
		hotelDetail.setBusStationName(uiHotelDetail.getBusStation());
		hotelDetail.setTubeStationName(uiHotelDetail.getTubeName());
		hotelDetail.setTaxiStandName(uiHotelDetail.getTaxiStand());
		hotelDetail.setDirection(uiHotelDetail.getToReach());
		hotelDetail.setSports(uiHotelDetail.getSports());
		Set<PaymentType> paymentTypes = new HashSet<PaymentType>();		
		paymentTypes.addAll(PaymentTypeConverter.getPaymentTypeEntities(uiHotelDetail.getPaymentTypes(), hotelDetail));
		
		Set<HotelBedTypeDetail> bedTypes = new HashSet<HotelBedTypeDetail>();		
		bedTypes.addAll(BedTypeConverter.getHotelBedTypeEntities(uiHotelDetail.getBedTypes(), hotelDetail));	
		
		Set<HotelFacilityTypeDetail> facilites = new HashSet<HotelFacilityTypeDetail>();
		facilites.addAll(HotelFacilityTypeConverter.getFacilityTypeEntities(uiHotelDetail.getFacilities(), hotelDetail));
	
		Set<HotelRestaurantDetail> restaurants = new HashSet<HotelRestaurantDetail>();
		restaurants.addAll(RestaurantDetailConverter.getHotelRestaurantDetailEntities(uiHotelDetail.getRestaurants(), hotelDetail));
		
		Set<HotelBanquetDetail> banquetDetails = new HashSet<HotelBanquetDetail>();
		banquetDetails.addAll(BanquetDetailConverter.getBanquetDetailEntities(uiHotelDetail.getBanquets(), hotelDetail));
		
		hotelDetail.setPaymentTypes(paymentTypes);
		hotelDetail.setBedTypes(bedTypes);
		hotelDetail.setBanquets(banquetDetails);
		hotelDetail.setRestaurants(restaurants);
		hotelDetail.setFacilites(facilites);		
		
		return hotelDetail;
	}
	
	public static UIHotelDetailBean getUIHotelDetailBean(HotelDetail ht) {
	
		UIHotelDetailBean uIHotelDetailBean =new UIHotelDetailBean();
		uIHotelDetailBean.setHotelName(ht.getHotelName());
		uIHotelDetailBean.setAddress(ht.getAddress());
		uIHotelDetailBean.setCity(ht.getCity());
		uIHotelDetailBean.setState(ht.getState());
		uIHotelDetailBean.setCountry(ht.getCountry());
		uIHotelDetailBean.setZipCode(ht.getZipCode());
		uIHotelDetailBean.setHotelPhoneNumber(ht.getPhoneNumber());
		uIHotelDetailBean.setHotelFaxNumber(ht.getFaxNumber());
		uIHotelDetailBean.setEmail(ht.getState());
		uIHotelDetailBean.setWebsite(ht.getWebSiteUrl());
		uIHotelDetailBean.setReservations(ht.getHotelReservations());
		uIHotelDetailBean.setTheCheckIn(ht.getCheckOutType());
		uIHotelDetailBean.setAirportName(ht.getAirportName());
		uIHotelDetailBean.setRailwayName(ht.getRailwayStationName());
		uIHotelDetailBean.setTubeName(ht.getTubeStationName());
		uIHotelDetailBean.setToReach(ht.getDirection());
		
		//right side of data
		uIHotelDetailBean.setHotelCategory(ht.getHotelCategory());
		uIHotelDetailBean.setRating(ht.getRating());
		uIHotelDetailBean.setDescription(ht.getDescription());
		uIHotelDetailBean.setInTime(ht.getCheckIntime());
		uIHotelDetailBean.setOutTime(ht.getCheckOuttime());
		uIHotelDetailBean.setContactPerson(ht.getContactPersonName());
		uIHotelDetailBean.setAirportCode(ht.getAirportCode());
		uIHotelDetailBean.setBusStation(ht.getBusStationName());
		uIHotelDetailBean.setTaxiStand(ht.getTaxiStandName());
		
		
		// middle body data
		ArrayList payTypeList = new ArrayList ();
		payTypeList.addAll(ht.getPaymentTypes());		
		uIHotelDetailBean.setPaymentTypes(payTypeList);
		
		ArrayList facilityTypeList = new ArrayList ();
		facilityTypeList.addAll(ht.getFacilites());		
		uIHotelDetailBean.setFacilities(facilityTypeList);
		
		ArrayList bedTypeList = new ArrayList ();
		bedTypeList.addAll(ht.getBedTypes());		
		uIHotelDetailBean.setBedTypes(bedTypeList);
		
		ArrayList restaurantTypeList = new ArrayList ();
		restaurantTypeList.addAll(ht.getRestaurants());		
		uIHotelDetailBean.setRestaurants(restaurantTypeList);
		
		ArrayList banquetsTypeList = new ArrayList ();
		banquetsTypeList.addAll(ht.getBanquets());		
		uIHotelDetailBean.setBanquets(banquetsTypeList);
		
		
		uIHotelDetailBean.setSports(ht.getSports());
		// hotel images
		//uIHotelDetailBean.setHotelMainImageFileData(ht.getH);
		
		return uIHotelDetailBean;
		
		
		
	}

}
