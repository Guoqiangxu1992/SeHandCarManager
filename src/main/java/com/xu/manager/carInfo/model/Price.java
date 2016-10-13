/**
 * 
 */
package com.xu.manager.carInfo.model;

import java.io.Serializable;

/**
* @author Create By Xuguoqiang
* @date   2016年10月13日--下午11:30:40--
*
*/
public class Price implements Serializable {
     /**
	 * 
	 */
	private static final long serialVersionUID = 3533695633319282834L;
	private Long id;
     private Long carId;
     private Double carPrice;
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
	 * @return the carPrice
	 */
	public Double getCarPrice() {
		return carPrice;
	}
	/**
	 * @param carPrice the carPrice to set
	 */
	public void setCarPrice(Double carPrice) {
		this.carPrice = carPrice;
	}
}
