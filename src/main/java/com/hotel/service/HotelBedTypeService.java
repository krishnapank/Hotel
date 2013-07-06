/**
 * 
 */
package com.hotel.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.hotel.dao.HotelBedTypeDao;
import com.hotel.entity.HotelBedTypeDetail;

/**
 * @author vivekgupta
 *
 */
@Service
@Transactional
public class HotelBedTypeService {
	
	@Resource
	private HotelBedTypeDao hotelBedTypeDao; 
	
	public List<HotelBedTypeDetail> getBedTypes() {	
		return hotelBedTypeDao.getBedTypes();
	}	
	
	public HotelBedTypeDetail findById(Long id) {
		return hotelBedTypeDao.findById(id);
	}

}
