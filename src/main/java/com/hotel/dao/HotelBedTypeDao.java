/**
 * 
 */
package com.hotel.dao;

import java.util.List;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import com.hotel.entity.HotelBedTypeDetail;

/**
 * @author vivekgupta
 *
 */

@Repository
@Scope("prototype")
public class HotelBedTypeDao extends AbstractDao<HotelBedTypeDetail>{
	private HotelBedTypeDao() {
        super(HotelBedTypeDetail.class);
    }
	
	public HotelBedTypeDetail findById(Long id) {
		return super.findById(id);
	}

	public List<HotelBedTypeDetail> getBedTypes() {	
		return super.findAll();
	}	
}