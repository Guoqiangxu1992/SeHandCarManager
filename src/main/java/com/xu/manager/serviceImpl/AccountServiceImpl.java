/**
 * 
 */
package com.xu.manager.serviceImpl;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Encodes;

import com.alibaba.druid.support.logging.Log;
import com.xu.manager.ClassUtil.DateFormat;
import com.xu.manager.bean.LoginUser;
import com.xu.manager.bean.RegisterUser;
import com.xu.manager.dao.AccountDao;
import com.xu.manager.dao.LoginUserDao;
import com.xu.manager.service.AccountService;

/**
* @author Create By Xuguoqiang
* @date   2016年7月31日--下午3:42:51--
*
*/
@Service("accountService")
@Scope("prototype")
@Transactional
public class AccountServiceImpl  implements AccountService{

	/** 加密策略 */
	public static final String HASH_ALGORITHM = "SHA-1";
	/** 迭代次数 */
	public static final int HASH_INTERATIONS = 1024;
	/** 盐长 */
	private static final int SALT_SIZE = 8;
	
	@Autowired
	private AccountDao accountDao;
	
	@Autowired
	private LoginUserDao loginUserDao;
	
	/**
	 * 设定安全的密码，生成随机的salt并经过1024次 sha-1 hash
	 */
	public static LoginUser encryptPassword(LoginUser loginUser) {
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		loginUser.setSalt(Encodes.encodeHex(salt));

		byte[] hashPassword = Digests.sha1(loginUser.getPassword().getBytes(),	salt, HASH_INTERATIONS);
		loginUser.setPassword(Encodes.encodeHex(hashPassword));
		System.out.println(loginUser.getPassword());
		System.out.println(loginUser.getSalt());
		return loginUser;
	}
	
	public static void main(String args[]){
		LoginUser l = new LoginUser();
		l.setLoginName("user");
		l.setPassword("111111");
		encryptPassword(l);
	}
	/* (non-Javadoc)
	 * @see com.xu.manager.service.AccountService#saveUser(com.xu.manager.bean.RegisterUser)
	 */
	@Override
	public int saveUser(LoginUser loginUser) {
		Logger log = Logger.getLogger(getClass());
		loginUser.setMakeTime(new Date());
		int result = 0;
			try{
				 result = accountDao.insertLoginUser(loginUser);
				 if(result==1){
					 Integer userId = loginUserDao.findUserByUsername(loginUser.getLoginName()).getId();
					 loginUser.setUserId(String.valueOf(userId));
					  result  = accountDao.insertLoginUserRole(loginUser);
				 }
			}catch(Exception e){
				log.info("注册失败异常"+e);
				throw new RuntimeException();
			}
		return result;
	}
	

}
