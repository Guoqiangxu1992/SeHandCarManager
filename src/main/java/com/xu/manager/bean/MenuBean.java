/**
 * 
 */
package com.xu.manager.bean;

/**
* @author Create By Xuguoqiang
* @date   2016年7月30日--下午12:30:31--
*
*/
public class MenuBean {
	private String id;
	private String pid;
	private String MenuName;
	private String permission;
	private Integer lev;
	private String url;
	private String possion;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getMenuName() {
		return MenuName;
	}
	public void setMenuName(String menuName) {
		MenuName = menuName;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public Integer getLev() {
		return lev;
	}
	public void setLev(Integer lev) {
		this.lev = lev;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPossion() {
		return possion;
	}
	public void setPossion(String possion) {
		this.possion = possion;
	}

}
