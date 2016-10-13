/**
 * 
 */
package com.xu.manager.carInfo.dto;

import java.sql.Date;

/**
* @author Create By Xuguoqiang
* @date   2016年10月13日--下午11:33:14--
*
*/
public class CarInformationDto {
       private String carName;
       private Integer variableBox;
       private Date startTime;
       private Date endTimel;
       private Long ownerId;
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
	 * @return the startTime
	 */
	public Date getStartTime() {
		return startTime;
	}
	/**
	 * @param startTime the startTime to set
	 */
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	/**
	 * @return the endTimel
	 */
	public Date getEndTimel() {
		return endTimel;
	}
	/**
	 * @param endTimel the endTimel to set
	 */
	public void setEndTimel(Date endTimel) {
		this.endTimel = endTimel;
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
}
