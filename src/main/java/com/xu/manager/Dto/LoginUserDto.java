/**
 * 
 */
package com.xu.manager.Dto;

import java.util.Date;

/**
* @author Create By Xuguoqiang
* @date   2016年8月7日--下午6:27:10--
*
*/

public class LoginUserDto extends BaseDto{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2149586613058930325L;
	private String loginName;
	private String roleId;
   private Date startTime;
	private Date endTime;

	
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

}
