/**
 * 
 */
package com.hotel.converter;

import java.util.ArrayList;
import java.util.List;

import com.hotel.bean.UIBanquetDetailBean;
import com.hotel.entity.HotelBanquetDetail;
import com.hotel.entity.HotelDetail;

/**
 * @author vivekgupta
 *
 */
public class BanquetDetailConverter {
	
	public static UIBanquetDetailBean getUIBanquetDetailBean(HotelBanquetDetail hotelBanquetDetail){
		UIBanquetDetailBean uiBanquetDetailBean = new UIBanquetDetailBean();
		uiBanquetDetailBean.setId(hotelBanquetDetail.getId());
		uiBanquetDetailBean.setBanquets_resv_num(hotelBanquetDetail.getBanquets_resv_num());
		uiBanquetDetailBean.setCapacity(hotelBanquetDetail.getCapacity());
		uiBanquetDetailBean.setName(hotelBanquetDetail.getName());
		return uiBanquetDetailBean;
	}
	
	public static List<UIBanquetDetailBean> getUIBanquetDetailBeans(List<HotelBanquetDetail> hotelBanquetDetails){
		List<UIBanquetDetailBean> uianquetDetailBeans = new ArrayList<UIBanquetDetailBean>();
		for (HotelBanquetDetail hotelBanquetDetail : hotelBanquetDetails) {
			uianquetDetailBeans.add(getUIBanquetDetailBean(hotelBanquetDetail));
		}		
		return uianquetDetailBeans;
	}
	
	public static HotelBanquetDetail getBanquetDetailEntity(UIBanquetDetailBean uiBanquetDetailBean){
		HotelBanquetDetail hotelBanquetDetail = new HotelBanquetDetail();
		hotelBanquetDetail.setId(uiBanquetDetailBean.getId());
		hotelBanquetDetail.setBanquets_resv_num(uiBanquetDetailBean.getBanquets_resv_num());
		hotelBanquetDetail.setCapacity(uiBanquetDetailBean.getCapacity());
		hotelBanquetDetail.setId(uiBanquetDetailBean.getId());
		hotelBanquetDetail.setName(uiBanquetDetailBean.getName());
		return hotelBanquetDetail;
	}
	
	public static List<HotelBanquetDetail> getBanquetDetailEntities(List<UIBanquetDetailBean> uiBanquetDetailBeas, HotelDetail hotelDetail){
		List<HotelBanquetDetail> hotelBanquetDetails = new ArrayList<HotelBanquetDetail>();
		if(uiBanquetDetailBeas != null) {
			for (UIBanquetDetailBean uiBanquetDetailBean : uiBanquetDetailBeas) {
				HotelBanquetDetail hotelBanquetDetail = getBanquetDetailEntity(uiBanquetDetailBean);
				//hotelBanquetDetail.getHotelDetails().add(hotelDetail);
				hotelBanquetDetails.add(hotelBanquetDetail);
			}		
		}
		return hotelBanquetDetails;
	}

}
