package com.hotel.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="hotel_offer_detail")
public class HotelOfferDetail extends AbstractEntity<HotelOfferDetail> {
	
	private String name;
	private String offerDetail;
	
	@ManyToMany(fetch= FetchType.LAZY)	
	@JoinTable(name = "hotelDetail_offerDetail",  joinColumns = { @JoinColumn(name = "offerDetail_id")},
	inverseJoinColumns={@JoinColumn(name = "hotel_id")})
	private Set<HotelDetail> hotelDetails;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOfferDetail() {
		return offerDetail;
	}
	public void setOfferDetail(String offerDetail) {
		this.offerDetail = offerDetail;
	}
	
}
