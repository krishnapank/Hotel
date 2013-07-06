package com.hotel.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.hotel.entity.HotelFacilityTypeDetail;

@Repository
@Scope("prototype")
public class HotelFacilityDao extends AbstractDao<HotelFacilityTypeDetail>{
	private HotelFacilityDao() {
        super(HotelFacilityTypeDetail.class);
    }
	
	

	public List<HotelFacilityTypeDetail> getFacilities() {	
		return super.findAll();
	}	
}
