/**
 * 
 */
package com.hotel.converter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.hotel.bean.UIBedTypeBean;
import com.hotel.entity.HotelBedTypeDetail;
import com.hotel.entity.HotelDetail;

/**
 * @author vivekgupta
 *
 */
public class BedTypeConverter {

	
	public static UIBedTypeBean getUIBedTypeBean(HotelBedTypeDetail hotelBedDetail){
		UIBedTypeBean uiBedTypeBean = new UIBedTypeBean();
		uiBedTypeBean.setId(hotelBedDetail.getId());
		uiBedTypeBean.setBedType(hotelBedDetail.getBedType());
		return uiBedTypeBean;
	}
	
	public static List<UIBedTypeBean> getUIBedTypeBeans(List<HotelBedTypeDetail> hotelBedDetails){
		List<UIBedTypeBean> uiPaymentTypeBeans = new ArrayList<UIBedTypeBean>();
		for (HotelBedTypeDetail hotelBedDetail : hotelBedDetails) {
			uiPaymentTypeBeans.add(getUIBedTypeBean(hotelBedDetail));
		}		
		return uiPaymentTypeBeans;
	}
	
	public static HotelBedTypeDetail getHotelBedTypeEntity(UIBedTypeBean uiBedTypeBean){
		HotelBedTypeDetail bedTypeDetail = new HotelBedTypeDetail();
		bedTypeDetail.setId(uiBedTypeBean.getId());
		bedTypeDetail.setBedType(uiBedTypeBean.getBedType());
		return bedTypeDetail;
	}
	
	public static Set<HotelBedTypeDetail> getHotelBedTypeEntities(List<UIBedTypeBean> uiBedTypeBeans, HotelDetail hotelDetail){
		Set<HotelBedTypeDetail> bedTypes = new HashSet<HotelBedTypeDetail>();
		if(uiBedTypeBeans != null) {
			for (UIBedTypeBean uiBedTypeBean : uiBedTypeBeans) {				
				HotelBedTypeDetail bedTypeDetail = getHotelBedTypeEntity(uiBedTypeBean);
				//bedTypeDetail.getHotelDetails().add(hotelDetail);
				bedTypes.add(bedTypeDetail);
			}		
		}
		return bedTypes;
	}
}

