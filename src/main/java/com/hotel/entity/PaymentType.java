package com.hotel.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table(name="payment_type")
public class PaymentType extends AbstractBaseEntity<PaymentType> {

	private String paymentType;
	
	@ManyToMany(fetch= FetchType.LAZY)	
	@JoinTable(name = "hotelDetail_paymentType",  joinColumns = { @JoinColumn(name = "paymentType_id")},
	inverseJoinColumns={@JoinColumn(name = "hotel_id")})	
	/*@ManyToMany(mappedBy="paymentTypes")*/
	private Set<HotelDetail> hotelDetails;	
	
	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public Set<HotelDetail> getHotelDetails() {
		return hotelDetails;
	}

	public void setHotelDetails(Set<HotelDetail> hotelDetails) {
		this.hotelDetails = hotelDetails;
	}

}
