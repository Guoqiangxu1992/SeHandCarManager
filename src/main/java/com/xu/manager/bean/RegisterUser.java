/**
 * 
 */
package com.xu.manager.bean;

import java.util.Date;

/**
* @author Create By Xuguoqiang
* @date   2016年8月2日--下午8:39:16--
*
*/
/**
 * @author summer
 *
 */
public class RegisterUser  extends Persistentable{
	
	private String userId;
	private String loginName;
	private String name;
    private String phone;
    private Integer isDelete = 1;
    private String email;
    private String password;
    private Date makeTime;
    private String operator;
    private Date modifyTime;
    private String modifyOperator;
    private String roleId;
    private String permission;
    private String sex;
    private String salt;//作为密码的秘钥
    private Integer status = 0 ;//1表示注册wan成，2提交材料未审核 3审核完
    private String pictureUrl;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getMakeTime() {
		return makeTime;
	}
	public void setMakeTime(Date date) {
		this.makeTime = date;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public Date getModifyTime() {
		return modifyTime;
	}
	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}
	public String getModifyOperator() {
		return modifyOperator;
	}
	public void setModifyOperator(String modifyOperator) {
		this.modifyOperator = modifyOperator;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}

}
