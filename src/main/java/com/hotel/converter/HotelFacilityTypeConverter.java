/**
 * 
 */
package com.hotel.converter;

import java.util.ArrayList;
import java.util.List;

import com.hotel.bean.UIFacilityTypeDetailBean;
import com.hotel.entity.HotelDetail;
import com.hotel.entity.HotelFacilityTypeDetail;

/**
 * @author vivekgupta
 *
 */
public class HotelFacilityTypeConverter {
	
	public static UIFacilityTypeDetailBean getUIFacilityTypeBean(HotelFacilityTypeDetail facilityTypeDetail){
		UIFacilityTypeDetailBean uiFacilityTypeDetailBean = new UIFacilityTypeDetailBean();
		uiFacilityTypeDetailBean.setId(facilityTypeDetail.getId());
		uiFacilityTypeDetailBean.setFacilityType(facilityTypeDetail.getFacilityType());
		return uiFacilityTypeDetailBean;
	}
	
	public static List<UIFacilityTypeDetailBean> getUIFacilityTypeBeans(List<HotelFacilityTypeDetail> facilityTypeDetails){
		List<UIFacilityTypeDetailBean> uiFacilityTypeBeans = new ArrayList<UIFacilityTypeDetailBean>();
		for (HotelFacilityTypeDetail hotelBedDetail : facilityTypeDetails) {
			uiFacilityTypeBeans.add(getUIFacilityTypeBean(hotelBedDetail));
		}		
		return uiFacilityTypeBeans;
	}
	
	public static HotelFacilityTypeDetail getFacilityTypeEntity(UIFacilityTypeDetailBean uiFacilityTypeDetailBean){
		HotelFacilityTypeDetail facilityTypeDetail = new HotelFacilityTypeDetail();
		facilityTypeDetail.setId(uiFacilityTypeDetailBean.getId());
		facilityTypeDetail.setFacilityType(uiFacilityTypeDetailBean.getFacilityType());
		return facilityTypeDetail;
	}
	
	public static List<HotelFacilityTypeDetail> getFacilityTypeEntities(List<UIFacilityTypeDetailBean> uiFacilityTypeDetailBeans, HotelDetail hotelDetail){
		List<HotelFacilityTypeDetail> facilityTypes = new ArrayList<HotelFacilityTypeDetail>();
		if(uiFacilityTypeDetailBeans != null) {
			for (UIFacilityTypeDetailBean uiFacilityTypeDetailBean : uiFacilityTypeDetailBeans) {
				HotelFacilityTypeDetail facilityTypeDetail = getFacilityTypeEntity(uiFacilityTypeDetailBean);
			//	facilityTypeDetail.getHotelDetails().add(hotelDetail);
				facilityTypes.add(facilityTypeDetail);
			}		
		}
		return facilityTypes;
	}

}
