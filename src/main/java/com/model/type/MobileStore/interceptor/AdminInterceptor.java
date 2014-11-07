package com.model.type.MobileStore.interceptor;

import java.util.Map;


import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class AdminInterceptor extends AbstractInterceptor {


	@SuppressWarnings("rawtypes")
	@Override
	public String intercept(ActionInvocation ar) throws Exception {
		
			Map session = ar.getInvocationContext().getSession();
			if(null==session.get("username")){
				
				return Action.ERROR;
			}
			
			return ar.invoke();
		
		
		}

}
