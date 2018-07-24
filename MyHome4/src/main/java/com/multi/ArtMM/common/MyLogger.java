package com.multi.ArtMM.common;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.util.StopWatch;

import com.sun.media.jfxmedia.logging.Logger;

@Aspect
public class MyLogger {
	protected Log log=LogFactory.getLog(MyLogger.class);
	
	@Around("execution(* com.multi.ArtMM..*(..))")
	public Object logPrint(ProceedingJoinPoint point)
	              throws Throwable{
		
		String type = 
			point.getSignature().getDeclaringTypeName();
		//클래스 이름에 Controller  가 들어가 있으면
		String name="";
		String msg="";
		
		//StopWatch sw = new StopWatch();
		
		long startTime = System.currentTimeMillis();
		
		if(type.indexOf("Controller")>-1)
		{
			name= "Controller :  " + type;
		}
		else if( type.indexOf("ServiceImpl")>-1)
		{
			name= "Service :  " + type;
		}
		else if(type.indexOf("DaoImpl")>-1)
		{
			name= "Dao :  " + type;
		}
		long endTime = System.currentTimeMillis();
		
		msg = String.format("걸린시간 : %d", endTime-startTime);
		log.debug("****** TimeCount ********** " );
		log.debug(name + " : "  + (endTime-startTime));
		
		return point.proceed();
	}
}


