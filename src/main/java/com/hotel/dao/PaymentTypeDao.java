/**
 * 
 */
package com.hotel.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.hotel.entity.PaymentType;

/**
 * @author vivekgupta
 *
 */


@Repository
@Scope("prototype")
public class PaymentTypeDao extends AbstractDao<PaymentType>{
	private PaymentTypeDao() {
        super(PaymentType.class);
    }
		
	public List<PaymentType> getPaymentTypes() {	
		return super.findAll();
	}	
	
	public PaymentType findById(Long id) {	
		return super.findById(id);
	}	
}
