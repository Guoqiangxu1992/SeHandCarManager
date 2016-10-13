/**
 * 
 */
package com.xu.manager.carInfo.dao;

import org.apache.ibatis.annotations.Param;

import com.xu.manager.bean.Pagination;
import com.xu.manager.carInfo.dto.CarInformationDto;

/**
* @author Create By Xuguoqiang
* @date   2016年10月13日--下午11:45:47--
*
*/
/**
 * @author summer
 *
 */
public interface CarInformationDao {

	/**
	 * @param carInfoDto
	 * @return
	 */
	Pagination getCarInformation(@Param("carInfoDto") CarInformationDto carInfoDto);

}
