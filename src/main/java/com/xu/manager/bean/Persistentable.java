/**
 * 
 */
package com.xu.manager.bean;

/**
* @author Create By Xuguoqiang
* @date   2016年7月26日--下午1:46:33--
*
*/

public abstract class Persistentable {
	
		private Integer id;
		private String token;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getToken() {
			return token;
		}

		public void setToken(String token) {
			this.token = token;
		}

}
