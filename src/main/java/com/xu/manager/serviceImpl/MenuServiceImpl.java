/**
 * 
 */
package com.xu.manager.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xu.manager.bean.MenuBean;
import com.xu.manager.dao.MenuDao;
import com.xu.manager.service.MenuService;

/**
* @author Create By Xuguoqiang
* @date   2016年7月30日--下午1:20:24--
*
*/
/**
 * @author summer
 *
 */
@Service("menuService")
@Scope("prototype")
public class MenuServiceImpl implements MenuService{
	
	@Autowired
	private MenuDao menuDao; 
	
	@Override
	public List<Map<String, MenuBean>> getMenuByName(String name) {
		
		List<Map<String, MenuBean>> list = menuDao.getMenuByName(name);
		return list;
	}
	

}
