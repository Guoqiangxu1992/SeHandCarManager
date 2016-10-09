/**
 * 
 */
package com.xu.manager.ClassUtil;

import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.util.Map.Entry;



/**
* @author Create By Xuguoqiang
* @date   2016年9月28日--下午10:04:01--
*
*/
/**
 * @author summer
 *
 */
public class JsonUtils {
	
	
	/**
	 * 将数据集转化为json对象
		{                                                      
			"total":2,                                                      
			"rows":[                                                          
				{"code":"001","name":"Name 1","addr":"Address 11","col4":"col4 data"},         
				{"code":"010","name":"Name 10","addr":"Address 78","col4":"col4 data"}     
			]                                                          
		}
	 * @param totalCount
	 * @param obj
	 * @return
	 */
		public static String object2json(Object obj) {
	        StringBuilder json = new StringBuilder();
	        if (obj == null) {
	          json.append("\"\"");
	        } else if (obj instanceof String || obj instanceof Integer || obj instanceof Float
	            || obj instanceof Boolean || obj instanceof Short || obj instanceof Double
	            || obj instanceof Long || obj instanceof BigDecimal || obj instanceof BigInteger
	            || obj instanceof Byte) {
	          json.append("\"").append(string2json(obj.toString())).append("\"");
	        } else if (obj instanceof Object[]) {
	          json.append(array2json((Object[]) obj));
	        } else if (obj instanceof List) {
	          json.append(list2json((List<?>) obj));
	        } else if (obj instanceof Map) {
	          json.append(map2json((Map<?, ?>) obj));
	        } else if (obj instanceof Set) {
	          json.append(set2json((Set<?>) obj));
	        }else if (obj instanceof Date) {
	          json.append(Date2json((Date)obj));
	        } else {
	          json.append(bean2json(obj));
	        }
	        return json.toString();
	}
	
	public static String bean2json(Object bean) {
	        StringBuilder json = new StringBuilder();
	        json.append("{");
	        PropertyDescriptor[] props = null;
	        try {
	          props = Introspector.getBeanInfo(bean.getClass(), Object.class).getPropertyDescriptors();
	        } catch (IntrospectionException e) {}
	        if (props != null) {
	          for (int i = 0; i < props.length; i++) {
	            try {
	              String name = object2json(props[i].getName());
	              String value = object2json(props[i].getReadMethod().invoke(bean));
	              json.append(name);
	              json.append(":");
	              json.append(value);
	              json.append(",");
	            } catch (Exception e) {}
	          }
	          json.setCharAt(json.length() - 1, '}');
	        } else {
	          json.append("}");
	        }
	        return json.toString();
	}
	
	public static String list2json(List<?> list) {
	        StringBuilder json = new StringBuilder();
	        json.append("[");
	        if (list != null && list.size() > 0) {
	          for (Object obj : list) {
	            json.append(object2json(obj));
	            json.append(",");
	          }
	          json.setCharAt(json.length() - 1, ']');
	        } else {
	          json.append("]");
	        }
	        return json.toString();
	}
	
	public static String array2json(Object[] array) {
	        StringBuilder json = new StringBuilder();
	        json.append("[");
	        if (array != null && array.length > 0) {
	          for (Object obj : array) {
	            json.append(object2json(obj));
	            json.append(",");
	          }
	          json.setCharAt(json.length() - 1, ']');
	        } else {
	          json.append("]");
	        }
	        return json.toString();
			}
	
		public static String map2json(Map<?, ?> map) {
	        StringBuilder json = new StringBuilder();
	        json.append("{");
	        if (map != null && map.size() > 0) {
	       	Iterator ite = map.entrySet().iterator();
				while(ite.hasNext()){
					Map.Entry<Object, Object> entry = (Entry<Object, Object>) ite.next();
					Object key = entry.getKey();//map中的key
					Object value = entry.getValue();//上面key对应的value
					json.append(object2json(key));
	                json.append(":");
	                json.append(object2json(value));
	                json.append(",");
				}
	          json.setCharAt(json.length() - 1, '}');
	        } else {
	          json.append("}");
	        }
	        return json.toString();
	}
	
	public static String set2json(Set<?> set) {
	        StringBuilder json = new StringBuilder();
	        json.append("[");
	        if (set != null && set.size() > 0) {
	          for (Object obj : set) {
	            json.append(object2json(obj));
	            json.append(",");
	          }
	          json.setCharAt(json.length() - 1, ']');
	        } else {
	          json.append("]");
	        }
	        return json.toString();
	}
	
	public static String string2json(String s) {
	        if (s == null)
	          return "";
	        StringBuilder sb = new StringBuilder();
	        for (int i = 0; i < s.length(); i++) {
	          char ch = s.charAt(i);
	          switch (ch) {
	          case '"':
	            sb.append("\\\"");
	            break;
	          case '\\':
	            sb.append("\\\\");
	            break;
	          case '\b':
	            sb.append("\\b");
	            break;
	          case '\f':
	            sb.append("\\f");
	            break;
	          case '\n':
	            sb.append("\\n");
	            break;
	          case '\r':
	            sb.append("\\r");
	            break;
	          case '\t':
	            sb.append("\\t");
	            break;
	          case '/':
	            sb.append("\\/");
	            break;
	          default:
	            if (ch >= '\u0000' && ch <= '\u001F') {
	              String ss = Integer.toHexString(ch);
	              sb.append("\\u");
	              for (int k = 0; k < 4 - ss.length(); k++) {
	                sb.append('0');
	              }
	              sb.append(ss.toUpperCase());
	            } else {
	              sb.append(ch);
	            }
	          }
	        }
	        return sb.toString();
	}
	
	public static String Date2json(Date date) {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	return "\""+string2json(sdf.format(date))+"\"";
	
	}
	public static JSONObject toGridJson(int totalCount,Object obj){
		//如果数据集对象为null做个特殊处理
		if(null==obj){
			JSONObject jsonResult = new JSONObject();
			jsonResult.put("total", totalCount);
			jsonResult.put("rows", new JSONArray());
			return jsonResult;
		}
		if(!Collection.class.isAssignableFrom(obj.getClass())){
			JSONObject jsonResult = new JSONObject();
			jsonResult.put("total", totalCount);
			jsonResult.put("rows", new JSONArray());
			return jsonResult;
		}
		JSONArray jsonArray = JSONArray.fromObject(obj);
		JSONObject jsonResult = new JSONObject();
		jsonResult.put("total", totalCount);
		jsonResult.put("rows", jsonArray);
		return jsonResult;
	}
	

}
