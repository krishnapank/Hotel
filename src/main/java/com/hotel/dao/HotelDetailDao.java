package com.hotel.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.hotel.entity.HotelDetail;
import com.hotel.entity.HotelFacilityTypeDetail;

@Repository
@Scope("prototype")
public class HotelDetailDao extends AbstractDao<HotelDetail>{
	
	private HotelDetailDao() {
        super(HotelDetail.class);
    }
	
	public void save(HotelDetail hotelDetail) {	
		super.save(hotelDetail);
	}	
	
	// get hotel by ID
	public HotelDetail getHotelDetailsById(Long hotelId) {	
		return super.findById(hotelId);
	}	


}
