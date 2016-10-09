/**
 * 
 */
package com.xu.manager.shiro;

import java.util.Set;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springside.modules.utils.Encodes;

import com.xu.manager.bean.LoginUser;
import com.xu.manager.service.LoginUserService;

/**
* @author Create By Xuguoqiang
* @date   2016年7月26日--下午2:35:32--
*
*/

public class MyRealm extends AuthorizingRealm{
	
	@Resource
	public LoginUserService loginUserService;
	@Resource
	public com.xu.manager.serviceImpl.AccountServiceImpl accountServiceImpl;

	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String loginName = principals.getPrimaryPrincipal().toString();
		SimpleAuthorizationInfo  info = new SimpleAuthorizationInfo ();
        Set<String> roleName = loginUserService.findRoles(loginName) ;
        Set<String> permissions = loginUserService.findPermissions(loginName) ;
        info.setRoles(roleName);
        info.setStringPermissions(permissions);
        return info;
	}

	/** 
	 * * 首先执行这个登录验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String username = token.getPrincipal().toString();
        LoginUser user = loginUserService.findUserByUsername(username) ;
        if (user != null){
        	//获取到用户表里面的盐，相当于拿到秘钥
        	byte[] salt = Encodes.decodeHex(user.getSalt());
            //将查询到的用户账号和密码存放到 authenticationInfo用于后面的权限判断。第si个参数传入realName。
            AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user.getLoginName(),user.getPassword(),ByteSource.Util.bytes(salt)
                    ,user.getName()) ;
            return authenticationInfo ;
        }else{
            return  null ;
        }
    }
	
	
	/**
	 * 设定Password校验的Hash算法与迭代次数.
	 */
	@PostConstruct
	public void initCredentialsMatcher() {
		HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(accountServiceImpl.HASH_ALGORITHM);
		matcher.setHashIterations(accountServiceImpl.HASH_INTERATIONS);
		setCredentialsMatcher(matcher);
	}

	}
	

