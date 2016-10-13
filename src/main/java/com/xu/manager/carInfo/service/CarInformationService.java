/**
 * 
 */
package com.xu.manager.carInfo.service;

import com.xu.manager.bean.Pagination;
import com.xu.manager.carInfo.dto.CarInformationDto;

/**
* @author Create By Xuguoqiang
* @date   2016年10月13日--下午11:40:29--
*
*/
/**
 * @author summer
 *
 */
public interface CarInformationService {

	/**
	 * @param carInfoDto
	 * @return
	 */
	Pagination getCarInformation(CarInformationDto carInfoDto);

}
