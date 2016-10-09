/**
 * 
 */
package com.xu.manager.serviceImpl;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xu.manager.Dto.LoginUserDto;
import com.xu.manager.bean.LoginUser;
import com.xu.manager.bean.Pagination;
import com.xu.manager.dao.LoginUserDao;
import com.xu.manager.service.LoginUserService;

/**
* @author Create By Xuguoqiang
* @date   2016年7月26日--下午2:50:19--
*
*/
@Service("loginUserService")
@Scope("prototype")
@Transactional
public class LoginUserServiceImpl implements LoginUserService {

	@Autowired
	private LoginUserDao loginUserDao;
	//查询用户基本信息
	@Override
	public LoginUser findUserByUsername(String username) {
		LoginUser userInfo = loginUserDao.findUserByUsername(username);
		return userInfo;
	}
	
	//查询用户脚色信息
	@Override
	public Set<String> findRoles(String loginName) {
		Set<String> roleList = new HashSet<String>();
		roleList = loginUserDao.findRoleByName(loginName);
		return roleList;
	}
	//查询用户权限信息
	@Override
	public Set<String> findPermissions(String loginName) {
		Set<String> permissionList = new HashSet<String>();
		permissionList = loginUserDao.findPermissionByName(loginName);
		return permissionList;
	}

	/* (non-Javadoc)
	 * @see com.xu.manager.service.LoginUserService#queryList(com.xu.manager.bean.LoginUser)
	 */
	@Override
	public Pagination queryList(LoginUserDto loginUserDto) {
		Pagination pagination = new Pagination();
		int count = loginUserDao.countQueryList(loginUserDto);
		if(count>0){
			List<LoginUser> loginUserReturn = loginUserDao.queryList(loginUserDto);
			if(CollectionUtils.isNotEmpty(loginUserReturn)){
				pagination.setResultList(loginUserReturn);
				pagination.setTotalCount(count);
			}
		}
		return pagination;
	}

}
