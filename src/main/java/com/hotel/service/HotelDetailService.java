package com.hotel.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.dao.HotelDetailDao;
import com.hotel.entity.HotelDetail;

@Service
public class HotelDetailService {
	
	@Resource
	private HotelDetailDao hotelDetailDao; 
	
	
	@Transactional
	public void save(HotelDetail hotelDetail) {	
		hotelDetailDao.save(hotelDetail);
	}
	
	// get hotel by ID
	public HotelDetail getHotelDetailsById(Long hotelId) {	
		return hotelDetailDao.getHotelDetailsById(hotelId);
	}


}



