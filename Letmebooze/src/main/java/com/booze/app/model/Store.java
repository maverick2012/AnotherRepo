/**
 * 
 */
package com.booze.app.model;

import java.util.List;

/**
 * @author Sushant Kumar Singh
 *
 */
public class Store {

	private long id;
	private String name = null;
	private String email = null;
	private String startTime = null;
	private String endTime = null;
	private int minimumAmount = 0;
	private int maximumAmount = 0;
	private String imageLocation = null;
	private String deliveryTime = null;
	private String holidayDeliveryTime = null;
	private String holidayStartTime = null;
	private String holidayEndTime = null;
	private List <Product> product = null;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getMinimumAmount() {
		return minimumAmount;
	}
	public void setMinimumAmount(int minimumAmount) {
		this.minimumAmount = minimumAmount;
	}
	public int getMaximumAmount() {
		return maximumAmount;
	}
	public void setMaximumAmount(int maximumAmount) {
		this.maximumAmount = maximumAmount;
	}
	public String getImageLocation() {
		return imageLocation;
	}
	public void setImageLocation(String imageLocation) {
		this.imageLocation = imageLocation;
	}
	public String getDeliveryTime() {
		return deliveryTime;
	}
	public void setDeliveryTime(String deliveryTime) {
		this.deliveryTime = deliveryTime;
	}
	public String getHolidayDeliveryTime() {
		return holidayDeliveryTime;
	}
	public void setHolidayDeliveryTime(String holidayDeliveryTime) {
		this.holidayDeliveryTime = holidayDeliveryTime;
	}
	public String getHolidayStartTime() {
		return holidayStartTime;
	}
	public void setHolidayStartTime(String holidayStartTime) {
		this.holidayStartTime = holidayStartTime;
	}
	public String getHolidayEndTime() {
		return holidayEndTime;
	}
	public void setHolidayEndTime(String holidayEndTime) {
		this.holidayEndTime = holidayEndTime;
	}
	public List <Product> getProduct() {
		return product;
	}
	public void setProduct(List <Product> product) {
		this.product = product;
	}
}
