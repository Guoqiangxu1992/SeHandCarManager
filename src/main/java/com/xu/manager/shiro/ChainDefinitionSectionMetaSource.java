/**
 * 
 */
package com.xu.manager.shiro;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.config.Ini;
import org.apache.shiro.config.Ini.Section;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xu.manager.bean.Tpermission;
import com.xu.manager.dao.PemissionDao;

/**
* @author Create By Xuguoqiang
* @date   2016年7月27日--上午8:57:43--
*
*/
@Component
public class ChainDefinitionSectionMetaSource implements FactoryBean<Ini.Section> {
	
	// shiro默认的链接定义 写在xml上的。
		private String filterChainDefinitions;
		@Autowired
        private PemissionDao pemissionDao;
	@Override
	public Section getObject() throws Exception {
		Ini ini = new Ini();
		// 加载默认的url
		ini.load(filterChainDefinitions);
		System.out.println(filterChainDefinitions);
		
		Ini.Section section = ini.getSection(Ini.DEFAULT_SECTION_NAME);
		
		//查询数据库中  路径对应需要的权限.
		List<Tpermission> lst = pemissionDao.selectPemission();
		for(Tpermission per : lst){
			//访问某一路径，需要对应的权限
			if(StringUtils.isNotEmpty(per.getValue())&&StringUtils.isNotEmpty(per.getPermission()))
				section.put(per.getValue(), "perms["+per.getPermission()+"]");
			
		}
		
		section.put("/**", "anon");
		for(String s : section.keySet()){
			System.out.println(s + "----"+ section.get(s)+"--------22222---section");
		}
		System.out.println("11111111111111111111111");
		
		return section;
	}

	@Override
	public Class<?> getObjectType() {
		return null;
	}

	@Override
	public boolean isSingleton() {
		// TODO Auto-generated method stub
		return false;
	}

	public String getFilterChainDefinitions() {
		return filterChainDefinitions;
	}

	public void setFilterChainDefinitions(String filterChainDefinitions) {
		this.filterChainDefinitions = filterChainDefinitions;
	}
   public static void main(String args[]){
	   ChainDefinitionSectionMetaSource s = new ChainDefinitionSectionMetaSource();
	   try {
		s.getObject();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
}
