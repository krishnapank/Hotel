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
@Table(name="hotel_bed_type_detail")
public class HotelBedTypeDetail extends AbstractBaseEntity<HotelBedTypeDetail> {

	private String bedType;
	
	@ManyToMany(fetch= FetchType.LAZY)	
	@JoinTable(name = "hotelDetail_bedType",  joinColumns = { @JoinColumn(name = "bedType_id")},
	inverseJoinColumns={@JoinColumn(name = "hotel_id")})
	private Set<HotelDetail> hotelDetails = new HashSet<HotelDetail>();
	
	public String getBedType() {
		return bedType;
	}

	public void setBedType(String bedType) {
		this.bedType = bedType;
	}

	public Set<HotelDetail> getHotelDetails() {
		return hotelDetails;
	}

	public void setHotelDetails(Set<HotelDetail> hotelDetails) {
		this.hotelDetails = hotelDetails;
	}
	
	
	
}
