/**
 * 
 */
package com.hotel.converter;

import java.util.ArrayList;
import java.util.List;

import com.hotel.bean.UIRestaurantDetailBean;
import com.hotel.entity.HotelDetail;
import com.hotel.entity.HotelRestaurantDetail;

/**
 * @author vivekgupta
 *
 */
public class RestaurantDetailConverter {
	
	public static UIRestaurantDetailBean getUIRestaurantDetailBean(HotelRestaurantDetail hotelRestaurantDetail){
		UIRestaurantDetailBean uiRestaurantDetailBean = new UIRestaurantDetailBean();
		uiRestaurantDetailBean.setId(hotelRestaurantDetail.getId());
		uiRestaurantDetailBean.setName(hotelRestaurantDetail.getName());
		uiRestaurantDetailBean.setOpenTime(hotelRestaurantDetail.getOpenTime());
		uiRestaurantDetailBean.setCloseTime(hotelRestaurantDetail.getCloseTime());
		uiRestaurantDetailBean.setRestaurants_resv_ext(hotelRestaurantDetail.getRestaurants_resv_ext());
		uiRestaurantDetailBean.setRestaurants_resv_num(hotelRestaurantDetail.getRestaurants_resv_num());
		uiRestaurantDetailBean.setType(hotelRestaurantDetail.getType());
		return uiRestaurantDetailBean;
	}
	
	public static List<UIRestaurantDetailBean> getUIRestaurantDetailBeans(List<HotelRestaurantDetail> hotelRestaurantDetails){
		List<UIRestaurantDetailBean> uiRestaurantDetailBeans = new ArrayList<UIRestaurantDetailBean>();
		for (HotelRestaurantDetail hotelRestaurantDetail : hotelRestaurantDetails) {
			uiRestaurantDetailBeans.add(getUIRestaurantDetailBean(hotelRestaurantDetail));
		}		
		return uiRestaurantDetailBeans;
	}
	
	public static HotelRestaurantDetail getHotelRestaurantDetailEntity(UIRestaurantDetailBean uiRestaurantDetailBean){
		HotelRestaurantDetail restaurantDetail = new HotelRestaurantDetail();
		restaurantDetail.setId(uiRestaurantDetailBean.getId());
		restaurantDetail.setCloseTime(uiRestaurantDetailBean.getCloseTime());
		restaurantDetail.setName(uiRestaurantDetailBean.getName());
		restaurantDetail.setOpenTime(uiRestaurantDetailBean.getOpenTime());
		restaurantDetail.setRestaurants_resv_ext(uiRestaurantDetailBean.getRestaurants_resv_ext());
		restaurantDetail.setRestaurants_resv_num(uiRestaurantDetailBean.getRestaurants_resv_num());
		restaurantDetail.setType(uiRestaurantDetailBean.getType());
		return restaurantDetail;
	}
	
	public static List<HotelRestaurantDetail> getHotelRestaurantDetailEntities(List<UIRestaurantDetailBean> uiRestaurantDetailBeans, HotelDetail hotelDetail){
		List<HotelRestaurantDetail> hotelRestaurantDetails = new ArrayList<HotelRestaurantDetail>();
		if(uiRestaurantDetailBeans != null ){
			for (UIRestaurantDetailBean uiRestaurantDetailBean : uiRestaurantDetailBeans) {
				HotelRestaurantDetail restaurantDetail = getHotelRestaurantDetailEntity(uiRestaurantDetailBean);
			//	restaurantDetail.getHotelDetails().add(hotelDetail);
				hotelRestaurantDetails.add(restaurantDetail);
			}
		}				
		return hotelRestaurantDetails;
	}

}
