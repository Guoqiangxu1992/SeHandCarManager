/**
 * 
 */
package com.xu.manager.bean;

/**
* @author Create By Xuguoqiang
* @date   2016年7月27日--上午9:03:47--
*
*/
/**
 * @author summer
 *
 */
public class Tpermission {
	
	private Long id;
	private Integer pid;
	private String name;
	private String permission;
	private String value;
	private Integer position;
	private Integer lev;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public Integer getPosition() {
		return position;
	}
	public void setPosition(Integer position) {
		this.position = position;
	}
	public Integer getLev() {
		return lev;
	}
	public void setLev(Integer lev) {
		this.lev = lev;
	}


}
