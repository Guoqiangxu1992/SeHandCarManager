/**
 * 
 */
package com.xu.manager.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/**
* @author Create By Xuguoqiang
* @date   2016年7月29日--下午6:50:13--
*
*/
/**
 * @author summer
 *
 */
public class BaseController extends BaseClass{
	
	   
    /**
     * 分页参数-每页最大数
     */
    private Integer pgLimit;
    
    /**
     * 分页参数-当前页数
     */
    private Integer pgCurrentPage;
    
	private int page;// 第几页
	private int rows;// 行数

	/**
	 * 获得request当中的所有参数
	 * 
	 * @param request
	 * @return
	 * @author wangt 2014年7月24日 下午4:54:57
	 */
	public Map<String, String> getRequestParams(HttpServletRequest request) {
		final Log logger = LogFactory.getLog(getClass());
		Map<String, String> m = new HashMap<String, String>();
		// 获得表单提交请求参数名枚举
		Enumeration pNames = request.getParameterNames();
		while (pNames.hasMoreElements()) {
			// 取得表单参数名
			String name = (String) pNames.nextElement();
			// 取得表单参数值
			String value = request.getParameter(name);
			// 用于乱码 的转换
			logger.info("key:  " + name + "   value:  " + value);
			if (org.apache.commons.lang.StringUtils.isNotEmpty(value)) {
				m.put(name, value);
			}
		}
		return m;

	}
	
	
	
	  /**
		 * 把对象输出到页面
		 * 
		 * @param obj
		 */
		public void ajaxPrintPage(javax.servlet.http.HttpServletResponse response,Object obj) {
			response.setCharacterEncoding("UTF-8");
			PrintWriter writer = null;
			try {
				try {
					writer = response.getWriter();
					if (null == obj){
						writer.print("");}
					else{
						writer.print(obj.toString());}
				} catch (IOException e) {
					logger.error("ajax print page error:", e);
				}
			} finally {
				if (writer != null) {
					writer.flush();
					writer.close();
				}
			}
		}



	public Integer getPgLimit() {
		return pgLimit;
	}



	public void setPgLimit(Integer pgLimit) {
		this.pgLimit = pgLimit;
	}



	public Integer getPgCurrentPage() {
		return pgCurrentPage;
	}



	public void setPgCurrentPage(Integer pgCurrentPage) {
		this.pgCurrentPage = pgCurrentPage;
	}



	public int getPage() {
		return page;
	}



	public void setPage(int page) {
		this.page = page;
	}



	public int getRows() {
		return rows;
	}



	public void setRows(int rows) {
		this.rows = rows;
	}
		

}
