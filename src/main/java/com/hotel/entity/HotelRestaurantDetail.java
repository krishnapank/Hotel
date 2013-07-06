package com.hotel.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="hotel_restaurant_detail")
public class HotelRestaurantDetail extends AbstractEntity<HotelRestaurantDetail>{

	private String name;
	private String type;
	private String openTime;
	private String closeTime;
	private String restaurants_resv_num;
	private String restaurants_resv_ext;
	
	
	@ManyToMany(fetch= FetchType.LAZY)	
	@JoinTable(name = "hotelDetail_restaurantDetail",  joinColumns = { @JoinColumn(name = "restaurantDetail_id")},
	inverseJoinColumns={@JoinColumn(name = "hotel_id")})
	private Set<HotelDetail> hotelDetails = new HashSet<HotelDetail>();
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getOpenTime() {
		return openTime;
	}
	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}
	public String getCloseTime() {
		return closeTime;
	}
	public void setCloseTime(String closeTime) {
		this.closeTime = closeTime;
	}
	public String getRestaurants_resv_num() {
		return restaurants_resv_num;
	}
	public void setRestaurants_resv_num(String restaurants_resv_num) {
		this.restaurants_resv_num = restaurants_resv_num;
	}
	public String getRestaurants_resv_ext() {
		return restaurants_resv_ext;
	}
	public void setRestaurants_resv_ext(String restaurants_resv_ext) {
		this.restaurants_resv_ext = restaurants_resv_ext;
	}
	public Set<HotelDetail> getHotelDetails() {
		return hotelDetails;
	}
	public void setHotelDetails(Set<HotelDetail> hotelDetails) {
		this.hotelDetails = hotelDetails;
	}
	
	
}
