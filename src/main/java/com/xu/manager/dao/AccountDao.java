/**
 * 
 */
package com.xu.manager.dao;

import com.xu.manager.bean.LoginUser;
import com.xu.manager.bean.RegisterUser;

/**
* @author Create By Xuguoqiang
* @date   2016年8月2日--下午9:31:10--
*
*/
/**
 * @author summer
 *
 */
public interface AccountDao {

	/**
	 * @param register 
	 * @return
	 */
	public int insertRegister(RegisterUser register);

	/**
	 * @param loginUser
	 * @return
	 */
	public int insertLoginUser(LoginUser loginUser);

	/**
	 * @param id
	 * @return
	 */
	public int insertLoginUserRole(Integer id);

	/**
	 * @param loginUser
	 * @return
	 */
	public int insertLoginUserRole(LoginUser loginUser);

}
