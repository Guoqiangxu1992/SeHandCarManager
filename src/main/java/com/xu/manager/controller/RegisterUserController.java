/**
 * 
 */
package com.xu.manager.controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xu.manager.Dto.LoginUserDto;
import com.xu.manager.bean.LoginUser;
import com.xu.manager.bean.Pagination;
import com.xu.manager.service.AccountService;
import com.xu.manager.service.LoginUserService;
import com.xu.manager.serviceImpl.AccountServiceImpl;

import net.sf.json.JSONObject;

/**
* @author Create By Xuguoqiang
* @date   2016年8月2日--下午8:32:43--
*
*/
/**
 * @author summer
 *
 */
@Controller
@Scope("prototype")
@RequestMapping("/user")
public class RegisterUserController extends BaseController{
	@Autowired
	private AccountService accountService;
	@Autowired
	private LoginUserService loginUserService;

	@RequestMapping("/register.do")
	@ResponseBody
	public int userRegister(LoginUser loginUser, Model model) {
           try{
        	   int result = accountService.saveUser(getPasswordUser(loginUser));
        	   if(result==1){
        		   return 1;//注册成功
        	   }
           }catch(Exception e){
        	   e.printStackTrace();
           }		   
		   return 0;

	}
	// 对用户密码加密，并且等到salt相当于盐
	public LoginUser getPasswordUser(LoginUser loginUser) {
		LoginUser loginUserReturn = AccountServiceImpl.encryptPassword(loginUser);
		loginUser.setPassword(loginUserReturn.getPassword());
		loginUser.setSalt(loginUserReturn.getSalt());
		return loginUser;
	}
	
	@RequestMapping("/BuyUserManager.do")
	public ModelAndView userManagerView(){
		return new ModelAndView("/system/user/userEdit");
	}
	
	
	@RequestMapping(value="/loginUserList.do",method=RequestMethod.POST)
	@ResponseBody
	public String loginUserList(LoginUserDto loginUserDto,Model model){
		Pagination pagination = new Pagination();
		JSONObject jsonResult = new JSONObject();
		List<LoginUserDto> LoginUserDtoList = null;
		if(loginUserDto!=null){
			try{
				loginUserDto.setLimit(loginUserDto.getPgLimit());
				loginUserDto.setPgNumber(loginUserDto.getPgCurrentPage());;
				Pagination descOutsourcerpg= loginUserService.queryList(loginUserDto);
			      if(descOutsourcerpg!=null){
			    	  if(CollectionUtils.isNotEmpty(descOutsourcerpg.getResultList())){
			    		  LoginUserDtoList = descOutsourcerpg.getResultList();
			    	  }
			      }
			  	// 把数据装到jsonResult中
					 jsonResult = com.xu.manager.ClassUtil.JsonUtils.toGridJson(descOutsourcerpg.getTotalCount(),
							LoginUserDtoList);
					 String json = jsonResult.toString();
				return json;
			}catch(Exception e){
				e.printStackTrace();   
			}
		}
		
		return null;
		
	}
     
}
