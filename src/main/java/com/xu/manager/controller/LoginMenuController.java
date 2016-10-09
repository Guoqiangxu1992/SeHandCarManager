/**
 * 
 */
package com.xu.manager.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.xu.manager.bean.LoginUser;
import com.xu.manager.bean.MenuBean;
import com.xu.manager.service.MenuService;

/**
* @author Create By Xuguoqiang
* @date   2016年7月29日--下午2:36:33--
*
*/
@Controller
@Scope("prototype")
@RequestMapping("/menu")
public class LoginMenuController {
	
	@Autowired
	private MenuService menuService;
	/*根据用户名获取菜单*/
	@RequestMapping("/getMenuByName.do")
	@ResponseBody
	public String getMenuByName(LoginUser user,HttpSession session,Model model){
		LoginUser loginUser = (LoginUser) session.getAttribute("SESSION_LOGIN_USER");
		
		List<Map<String, MenuBean>> lst = menuService.getMenuByName(loginUser.getLoginName());
		Gson gson = new Gson();
		String json = gson.toJson(lst);
		return  json;
		
	}

}
