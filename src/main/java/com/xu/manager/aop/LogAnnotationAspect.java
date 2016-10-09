/**
 * 
 */
package com.xu.manager.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

/**
* @author Create By Xuguoqiang
* @date   2016年8月2日--上午11:03:57--
*
*/
	/**    
	 * 日志切面类    
	 */    
	@Aspect  //定义切面类     
	public class LogAnnotationAspect {     
	    @SuppressWarnings("unused")     
	    //定义切入点     
	    @Pointcut("execution(* com.zxf.service.*.*(..))")     
	    private void allMethod(){}     
	    //针对指定的切入点表达式选择的切入点应用前置通知     
	    @Before("execution(* com. zxf.service.*.*(..))")     
	    public void before(JoinPoint call) {     
	             
	        String className = call.getTarget().getClass().getName();     
	        String methodName = call.getSignature().getName();     
	         System.out.println("*************************************************************************************************");
	         System.out.println("*****************************【注解-前置通知】:" + className + "类的"  + methodName + "方法开始了***");     
	    }     
	    //访问命名切入点来应用后置通知     
	    @AfterReturning("allMethod()")     
	    public void afterReturn() {     
	        System.out.println("*****************************【注解-后置通知】:方法正常结束了******************************************");     
	    }     
	         
	    //应用最终通知     
	    @After("allMethod()")     
	    public void after(){     
	        System.out.println("*****************************【注解-最终通知】:不管方法有没有正常执行完成,"  + "一定会返回的***************");     
	    }     
	         
	    //应用异常抛出后通知     
	    @AfterThrowing("allMethod()")     
	    public void afterThrowing() {     
	        System.out.println("******************************【注解-异常抛出后通知】:方法执行时出异常了******************************");     
	    }     
	         
	    //应用周围通知     
	    //@Around("allMethod()")     
	    public Object doAround(ProceedingJoinPoint call) throws Throwable{     
	        Object result = null;     
	        this.before(call);//相当于前置通知     
	        try {     
	            result = call.proceed();     
	            this.afterReturn(); //相当于后置通知     
	        } catch (Throwable e) {     
	            this.afterThrowing();  //相当于异常抛出后通知     
	            throw e;     
	        }finally{     
	            this.after();  //相当于最终通知     
	        }     
	             
	        return result;     
	    }     
	}    

