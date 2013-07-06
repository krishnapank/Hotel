/**
 * 
 */
package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.hotel.dao.PaymentTypeDao;
import com.hotel.entity.PaymentType;

/**
 * @author vivekgupta
 *
 */


@Service
@Transactional
public class PaymentTypeService {
	@Resource
	private PaymentTypeDao paymentTypeDao; 
	
	public List<PaymentType> getPaymentTypes() {	
		return paymentTypeDao.getPaymentTypes();
	}	

	public PaymentType findById(Long id) {	
		return paymentTypeDao.findById(id);
	}
}
