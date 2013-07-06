/**
 * 
 */
package com.hotel.converter;

import java.util.ArrayList;
import java.util.List;

import com.hotel.bean.UIPaymentTypeBean;
import com.hotel.entity.HotelDetail;
import com.hotel.entity.PaymentType;

/**
 * @author vivekgupta
 *
 */
public class PaymentTypeConverter {
	
	public static UIPaymentTypeBean getUIPaymentTypeBean(PaymentType paymentType){
		UIPaymentTypeBean uiPaymentTypeBean = new UIPaymentTypeBean();
		uiPaymentTypeBean.setId(paymentType.getId());
		uiPaymentTypeBean.setPaymentType(paymentType.getPaymentType());
		return uiPaymentTypeBean;
	}
	
	
	
	public static List<UIPaymentTypeBean> getUIPaymentTypeBeans(List<PaymentType> paymentTypes){
		List<UIPaymentTypeBean> uiPaymentTypeBeans = new ArrayList<UIPaymentTypeBean>();
		for (PaymentType paymentType : paymentTypes) {
			uiPaymentTypeBeans.add(getUIPaymentTypeBean(paymentType));
		}		
		return uiPaymentTypeBeans;
	}
	
	public static PaymentType getPaymentTypeEntity(UIPaymentTypeBean uiPaymentTypeBean){
		PaymentType paymentType = new PaymentType();
		paymentType.setId(uiPaymentTypeBean.getId());
		paymentType.setPaymentType(uiPaymentTypeBean.getPaymentType());
		return paymentType;
	}
	
	public static List<PaymentType> getPaymentTypeEntities(List<UIPaymentTypeBean> uiPaymentTypeBeans, HotelDetail hotelDetail){
		List<PaymentType> paymentTypes = new ArrayList<PaymentType>();
		if(uiPaymentTypeBeans != null) {
			for (UIPaymentTypeBean uiPaymentTypeBean : uiPaymentTypeBeans) {
				PaymentType paymentType = getPaymentTypeEntity(uiPaymentTypeBean); 
				//paymentType.getHotelDetails().add(hotelDetail);
				paymentTypes.add(paymentType);
			}		
		}
		return paymentTypes;
	}

}
