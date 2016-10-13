/**
 * 
 */
package com.xu.manager.carInfo.model;

import java.io.Serializable;
import java.util.Date;

/**
* @author Create By Xuguoqiang
* @date   2016年10月13日--下午11:22:53--
*
*/

public class CarInformation implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8497379673305602473L;
	
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * @return the carId
	 */
	public Long getCarId() {
		return carId;
	}
	/**
	 * @param carId the carId to set
	 */
	public void setCarId(Long carId) {
		this.carId = carId;
	}
	/**
	 * @return the carName
	 */
	public String getCarName() {
		return carName;
	}
	/**
	 * @param carName the carName to set
	 */
	public void setCarName(String carName) {
		this.carName = carName;
	}
	/**
	 * @return the carType
	 */
	public String getCarType() {
		return carType;
	}
	/**
	 * @param carType the carType to set
	 */
	public void setCarType(String carType) {
		this.carType = carType;
	}
	/**
	 * @return the carTypeId
	 */
	public Long getCarTypeId() {
		return carTypeId;
	}
	/**
	 * @param carTypeId the carTypeId to set
	 */
	public void setCarTypeId(Long carTypeId) {
		this.carTypeId = carTypeId;
	}
	/**
	 * @return the carNameId
	 */
	public Long getCarNameId() {
		return carNameId;
	}
	/**
	 * @param carNameId the carNameId to set
	 */
	public void setCarNameId(Long carNameId) {
		this.carNameId = carNameId;
	}
	/**
	 * @return the travelAge
	 */
	public Long getTravelAge() {
		return travelAge;
	}
	/**
	 * @param travelAge the travelAge to set
	 */
	public void setTravelAge(Long travelAge) {
		this.travelAge = travelAge;
	}
	/**
	 * @return the variableBox
	 */
	public Integer getVariableBox() {
		return variableBox;
	}
	/**
	 * @param variableBox the variableBox to set
	 */
	public void setVariableBox(Integer variableBox) {
		this.variableBox = variableBox;
	}
	/**
	 * @return the displaceMent
	 */
	public Integer getDisplaceMent() {
		return displaceMent;
	}
	/**
	 * @param displaceMent the displaceMent to set
	 */
	public void setDisplaceMent(Integer displaceMent) {
		this.displaceMent = displaceMent;
	}
	/**
	 * @return the color
	 */
	public String getColor() {
		return color;
	}
	/**
	 * @param color the color to set
	 */
	public void setColor(String color) {
		this.color = color;
	}
	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}
	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
	/**
	 * @return the carDate
	 */
	public Date getCarDate() {
		return carDate;
	}
	/**
	 * @param carDate the carDate to set
	 */
	public void setCarDate(Date carDate) {
		this.carDate = carDate;
	}
	/**
	 * @return the carAge
	 */
	public Integer getCarAge() {
		return carAge;
	}
	/**
	 * @param carAge the carAge to set
	 */
	public void setCarAge(Integer carAge) {
		this.carAge = carAge;
	}
	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	/**
	 * @return the ownerId
	 */
	public Long getOwnerId() {
		return ownerId;
	}
	/**
	 * @param ownerId the ownerId to set
	 */
	public void setOwnerId(Long ownerId) {
		this.ownerId = ownerId;
	}
	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private Long id;
	private Long carId;
	private String carName;
	private String carType;
	private Long carTypeId;
	private Long carNameId;
	private Long travelAge;
	private Integer variableBox;//变速箱
	private Integer displaceMent;//排量
	private String color;
	private String country;
	private Date carDate;//上牌日期
	private Integer carAge;
	private Integer status;
	private Long ownerId;//拥有者id

}
