package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.dao.HotelDetailDao;
import com.hotel.dao.HotelFacilityDao;
import com.hotel.entity.HotelFacilityTypeDetail;
@Service
@Transactional
public class HotelFacilityService {
	@Resource
	private HotelFacilityDao hotelFacilityDao; 
	public List<HotelFacilityTypeDetail> getFacilities() {	
		return hotelFacilityDao.getFacilities();
	}	
}
