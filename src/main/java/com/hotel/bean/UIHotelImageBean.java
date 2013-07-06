/**
 * 
 */
package com.hotel.bean;

import org.apache.commons.codec.binary.Base64;

/**
 * @author vivekgupta
 * 
 */
public class UIHotelImageBean {

	private String imageName;
	private String imageByteStringData;
	private byte[] imageByteData;

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getImageByteStringData() {
		if (imageByteStringData != null
				&& imageByteStringData.trim().length() != 0) {
			setImageByteData(imageByteStringData);
		}
		return imageByteStringData;
	}

	public void setImageByteStringData(String imageByteStringData) {
		if (imageByteStringData != null
				&& imageByteStringData.trim().length() != 0) {
			setImageByteData(imageByteStringData);
		}
		this.imageByteStringData = imageByteStringData;
	}

	private void setImageByteData(String imageByteStringData) {
		int dataIndex = imageByteStringData.indexOf("base64") + 7;
		String fileData = imageByteStringData.substring(dataIndex,
				imageByteStringData.length());
		this.imageByteData = Base64.decodeBase64(fileData);
	}

	public byte[] getImageByteData() {
		return imageByteData;
	}

}
