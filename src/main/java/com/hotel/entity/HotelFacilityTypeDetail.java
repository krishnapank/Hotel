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
@Table(name="hotel_facility_type_detail")
public class HotelFacilityTypeDetail extends AbstractBaseEntity<HotelFacilityTypeDetail> {

	private String facilityType;

	@ManyToMany(fetch= FetchType.LAZY)	
	@JoinTable(name = "hotelDetail_facilityDetail",  joinColumns = { @JoinColumn(name = "facilitiesDetail_id")},
	inverseJoinColumns={@JoinColumn(name = "hotel_id")})
	private Set<HotelDetail> hotelDetails = new HashSet<HotelDetail>();
	
	

	public String getFacilityType() {
		return facilityType;
	}

	public void setFacilityType(String facilityType) {
		this.facilityType = facilityType;
	}

	public Set<HotelDetail> getHotelDetails() {
		return hotelDetails;
	}

	public void setHotelDetails(Set<HotelDetail> hotelDetails) {
		this.hotelDetails = hotelDetails;
	}	  

	
	
}
