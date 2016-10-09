/**
 * 
 */
package com.xu.manager.dao;

import java.util.List;
import java.util.Map;

import com.xu.manager.bean.MenuBean;

/**
* @author Create By Xuguoqiang
* @date   2016年7月30日--下午1:24:24--
*
*/

public interface MenuDao {

	/**
	 * @param name
	 * @return
	 */
	public List<Map<String, MenuBean>> getMenuByName(String name);

}
