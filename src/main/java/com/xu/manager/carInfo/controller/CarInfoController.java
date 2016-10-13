/**
 * 
 */
package com.xu.manager.carInfo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xu.manager.bean.LoginUser;
import com.xu.manager.bean.Pagination;
import com.xu.manager.carInfo.dto.CarInformationDto;
import com.xu.manager.carInfo.model.CarInformation;
import com.xu.manager.carInfo.service.CarInformationService;
import com.xu.manager.controller.BaseController;

/**
* @author Create By Xuguoqiang
* @date   2016年10月13日--下午10:01:34--
*
*/
@Controller
@Scope("prototype")
@RequestMapping("/car")
public class CarInfoController extends BaseController{
	
	@Autowired 
	private CarInformationService carInformationService;
	
	@RequestMapping(value = "/EditCarManager.do")
	public ModelAndView initEditCarInfo(){
		return new ModelAndView("/system/car/editCar");
		
	}
	
	@RequestMapping(value = "/getCarInformation.do")
	public String getCarInformation(HttpSession session){
		LoginUser loginUser = (LoginUser) session.getAttribute("SESSION_LOGIN_USER");
		CarInformationDto carInfoDto = new CarInformationDto();
		carInfoDto.setOwnerId(Long.parseLong(loginUser.getUserId()));
		Pagination carpagination = carInformationService.getCarInformation(carInfoDto);
		System.out.println(loginUser.getLoginName());
		return null;
		
	}
	

}
