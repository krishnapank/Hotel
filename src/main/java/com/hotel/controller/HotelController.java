package com.hotel.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.hotel.bean.UIBanquetDetailBean;
import com.hotel.bean.UIBedTypeBean;
import com.hotel.bean.UIHotelDetailBean;
import com.hotel.bean.UIHotelImageBean;
import com.hotel.bean.UIPaymentTypeBean;
import com.hotel.bean.UIRestaurantDetailBean;
import com.hotel.converter.BedTypeConverter;
import com.hotel.converter.HotelDetailConverter;
import com.hotel.converter.PaymentTypeConverter;
import com.hotel.entity.HotelDetail;
import com.hotel.entity.HotelFacilityTypeDetail;
import com.hotel.json.JSONUtil;
import com.hotel.service.HotelBedTypeService;
import com.hotel.service.HotelDetailService;
import com.hotel.service.HotelFacilityService;
import com.hotel.service.PaymentTypeService;




@Controller
@RequestMapping(value="/hotel")
public class HotelController {
	

	@Autowired	
	private JSONUtil jsonUtil;
	@Resource
	private HotelDetailService hotelDetailService;
	@Resource
	private HotelFacilityService hotelFacilityService;
	@Resource
	private PaymentTypeService paymentTypeService;
	@Resource
	private HotelBedTypeService hotelBedTypeService;
	
	@Autowired
	private ServletContext servletContext;
	String relativeWebPath = "/WEB-INF/uploads";
	
	@RequestMapping("/add.do")
	public String doForward1(Map<String, Object> map) {
		List<HotelFacilityTypeDetail> hotelFacilities = hotelFacilityService.getFacilities();
		List<UIPaymentTypeBean> paymentTypes = PaymentTypeConverter.getUIPaymentTypeBeans(paymentTypeService.getPaymentTypes());		
		List<UIBedTypeBean> bedTypes = BedTypeConverter.getUIBedTypeBeans(hotelBedTypeService.getBedTypes());
		List<UIRestaurantDetailBean> restaurantDetailBeans = new ArrayList<UIRestaurantDetailBean>();
		for (int i = 0; i < 10; i++) {
			UIRestaurantDetailBean uiestaurantDetail = new UIRestaurantDetailBean();
			restaurantDetailBeans.add(uiestaurantDetail);
		}
		
		List<UIBanquetDetailBean> banquetDetailBeans = new ArrayList<UIBanquetDetailBean>();
		for (int i = 0; i < 5; i++) {
			UIBanquetDetailBean uiBanquetDetailBean = new UIBanquetDetailBean();
			banquetDetailBeans.add(uiBanquetDetailBean);
		}
		
		map.put("hotelFacilities", hotelFacilities);
		map.put("paymentTypes", paymentTypes);
		map.put("bedTypes", bedTypes);
		map.put("restaurantDetailBeans", restaurantDetailBeans);
		map.put("banquetDetailBeans", banquetDetailBeans);
		return "hotel_detail_form";
		
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/save.do")
    public String doForward(@RequestParam(value = "hotelDetailJsonString") String hotelDetailJsonString) {
		 
		 try {
			List<UIHotelDetailBean> hotelDetailList = jsonUtil.getObjectsFromJson(hotelDetailJsonString, new TypeReference<List<UIHotelDetailBean>>() {});
			UIHotelDetailBean hotelDetailBean = hotelDetailList.get(0);
			
			HotelDetail hotelDetail = HotelDetailConverter.getHotelDetailEntity(hotelDetailBean);
			/*for (UIPaymentTypeBean uiPaymentTypeBean : hotelDetailBean.getPaymentTypes()) {
				hotelDetail.getPaymentTypes().add(paymentTypeService.findById(uiPaymentTypeBean.getId()));
				
			}	*/	
			hotelDetailService.save(hotelDetail);

			String hotelImageDir = hotelDetail.getHotelName().replaceAll("[-+^:,\"\\s]", "_")+"_"+hotelDetail.getId();
			
			
			String absoluteFilePath = servletContext.getRealPath(relativeWebPath);
			
			String mainImage = absoluteFilePath + "/" + hotelImageDir + "/main_image/";
			String otherImages = absoluteFilePath + "/" + hotelImageDir + "/other_images/";
			String offerImages = absoluteFilePath + "/" + hotelImageDir + "/offer_images/";
			
			createDir(mainImage);		
			createDir(otherImages);		
			createDir(offerImages);
			
			try {
				List<UIHotelImageBean> hotelMainImages = hotelDetailBean.getHotelMainImageFileData();
				if(hotelMainImages != null && hotelMainImages.size() != 0){
					UIHotelImageBean hotelMainImage = hotelMainImages.get(0);
					if(hotelMainImage != null) {
						writeFile(hotelMainImage.getImageName(), mainImage, hotelMainImage.getImageByteData());
					}
				}
				
			} catch (Exception e) {			
				e.printStackTrace();
			}
			
			try {
				List<UIHotelImageBean> hotelOtherImages = hotelDetailBean.getOtherImagesFilesData();
				for (UIHotelImageBean hotelOtherImage : hotelOtherImages) {
					writeFile(hotelOtherImage.getImageName(), otherImages, hotelOtherImage.getImageByteData());
				}			
			} catch (Exception e) {			
				e.printStackTrace();
			}
			
			try {
				List<UIHotelImageBean> hotelOfferImages = hotelDetailBean.getHotelOfferImageFilesData();
				for (UIHotelImageBean hotelOfferrImage : hotelOfferImages) {
					writeFile(hotelOfferrImage.getImageName(), offerImages, hotelOfferrImage.getImageByteData());
				}	
				
			} catch (Exception e) {			
				e.printStackTrace();
			}
			
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
		 
			// request.getParameter("otherHotelsImages")
		 /*HotelDetail hotelDetail = HotelDetailConverter.getEntryBean(hotelDetailBean);
		 
		 //Base64.decodeBase64(base64String);
		 
		 hotelDetailService.save(hotelDetail);
		
		String hotelImageDir = hotelDetail.getHotelName().replaceAll("[-+^:,\"\\s]", "_")+"_"+hotelDetail.getId();
		
		String relativeWebPath = "/WEB-INF/uploads";
		String absoluteFilePath = servletContext.getRealPath(relativeWebPath);
		
		String mainImage = absoluteFilePath + "/" + hotelImageDir + "/main_image/";
		String otherImages = absoluteFilePath + "/" + hotelImageDir + "/other_images/";
		String offerImages = absoluteFilePath + "/" + hotelImageDir + "/offer_images/";
		
		createDir(mainImage);		
		createDir(otherImages);		
		createDir(offerImages);
		 
		try {
			writeFile(hotelDetailBean.getMainImageFile().getOriginalFilename(), mainImage, 
					 hotelDetailBean.getMainImageFile().getBytes());
		} catch (Exception e) {			
			e.printStackTrace();
		}
		
		try {
			for (MultipartFile multipartFile : otherImagefiles) {
				writeFile(multipartFile.getOriginalFilename(), otherImages, 
						multipartFile.getBytes());
			}			
		} catch (Exception e) {			
			e.printStackTrace();
		}
		
		try {
			// todo modify iterator code for offer images
			for (MultipartFile multipartFile : otherImagefiles) {
				writeFile(multipartFile.getOriginalFilename(), offerImages, 
						multipartFile.getBytes());
			}	
			
		} catch (Exception e) {			
			e.printStackTrace();
		}*/
		
		
		return "/welcome.jsp";
		 
	 
	}
	
	// controller mapping for the view of hotel details created on 2013-07-04
	@RequestMapping("/view.do")
	public String doView(Map<String, Object> map) {
	
		Long i = 1L;
		HotelDetail ht = hotelDetailService.getHotelDetailsById(i);
		UIHotelDetailBean uIHotelDetailBean =  HotelDetailConverter.getUIHotelDetailBean(ht);
		
		
		map.put("uIHotelDetailBean", uIHotelDetailBean);
		//return modelAndView;
		
		//ModelAndView mvHotel = new ModelAndView("hotelDetail");
		//mvHotel.addObject("hotelDetail", carManager.getCarList());

		return "hotel_view";
		
	}
	 

	private void writeFile(String fileName, String fileUrl, byte [] fileData) {
		FileOutputStream outputStream = null;
		String newFileName = fileName.replaceAll("[-+^:,\"\\s]", "_");
		String filePath = fileUrl + "/" + newFileName;
		try {
			outputStream = new FileOutputStream(filePath);
			outputStream.write(fileData);
			outputStream.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	 
	private void createDir(String location) {
		try {
			File dir = new File(location);
			if(!dir.exists()) {
				dir.mkdirs();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
		
	

}