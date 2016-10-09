/**
 * 
 */
package com.xu.manager.service;

import java.util.List;
import java.util.Set;

import com.xu.manager.Dto.LoginUserDto;
import com.xu.manager.bean.LoginUser;
import com.xu.manager.bean.Pagination;

/**
* @author Create By Xuguoqiang
* @date   2016年7月26日--下午2:45:34--
*
*/
public interface LoginUserService {

	/**
	 * @param username
	 * @return
	 */
	public LoginUser findUserByUsername(String username);

	/**
	 * @param loginName
	 * @return
	 */
	public Set<String> findRoles(String loginName);

	/**
	 * @param loginName
	 * @return
	 */
	public Set<String> findPermissions(String loginName);

	/**
	 * @param loginUserDto
	 * @return
	 */
	public Pagination queryList(LoginUserDto loginUserDto);


}
