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
@Table(name="hotel_banquet_type_detail")
public class HotelBanquetDetail extends AbstractEntity<HotelBanquetDetail> {

	private String name;
	private String capacity;
	private String banquets_resv_num;
	
	@ManyToMany(fetch= FetchType.LAZY)	
	@JoinTable(name = "hotelDetail_banquetDetail",  joinColumns = { @JoinColumn(name = "banquetDetail_id")},
	inverseJoinColumns={@JoinColumn(name = "hotel_id")})
	private Set<HotelDetail> hotelDetails = new HashSet<HotelDetail>();
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getBanquets_resv_num() {
		return banquets_resv_num;
	}
	public void setBanquets_resv_num(String banquets_resv_num) {
		this.banquets_resv_num = banquets_resv_num;
	}
	public Set<HotelDetail> getHotelDetails() {
		return hotelDetails;
	}
	public void setHotelDetails(Set<HotelDetail> hotelDetails) {
		this.hotelDetails = hotelDetails;
	}
	
	
	
}
