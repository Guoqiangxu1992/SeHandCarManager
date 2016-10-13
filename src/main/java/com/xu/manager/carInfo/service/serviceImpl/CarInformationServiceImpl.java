/**
 * 
 */
package com.xu.manager.carInfo.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xu.manager.bean.Pagination;
import com.xu.manager.carInfo.dao.CarInformationDao;
import com.xu.manager.carInfo.dto.CarInformationDto;
import com.xu.manager.carInfo.service.CarInformationService;

/**
* @author Create By Xuguoqiang
* @date   2016年10月13日--下午11:42:46--
*
*/
/**
 * @author summer
 *
 */
@Service("carInformationService")
@Scope("prototype")
@Transactional
public class CarInformationServiceImpl implements CarInformationService{
	
	@Autowired
	private CarInformationDao carInformationDao;

	@Override
	public Pagination getCarInformation(CarInformationDto carInfoDto) {
		return carInformationDao.getCarInformation(carInfoDto);
	}

}
