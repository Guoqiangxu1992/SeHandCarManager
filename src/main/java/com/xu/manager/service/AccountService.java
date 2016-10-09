/**
 * 
 */
package com.xu.manager.service;

import com.xu.manager.bean.LoginUser;
import com.xu.manager.bean.RegisterUser;

/**
* @author Create By Xuguoqiang
* @date   2016年7月31日--下午3:44:48--
*
*/

public interface AccountService {
	
	/**
	 * 保存新建用户以及其角色
	 * @param LoginUser
	 * @param 
	 * @author  
	 */

	/**
	 * @param register
	 * @return
	 */
	public int saveUser(LoginUser loginUser);

}
