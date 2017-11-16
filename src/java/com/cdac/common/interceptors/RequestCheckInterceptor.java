/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.common.interceptors;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;



/**
 *
 * @author ANUPAM
 */
public class RequestCheckInterceptor implements Interceptor{
    
        String result = null;
        String className = null;
        long startingTime = 0;
        long endingTime = 0;


    public void destroy() {
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> Destroy");
    } 

    public void init() {
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> init");
    }

    public String intercept(ActionInvocation invocation) throws Exception {
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> intercept"+ActionContext.getContext().getSession().get("userid"));
        
             if(ActionContext.getContext().getSession().get("userid")!=null){
                
                invocation.invoke();
                //System.out.println(result);
             }
             else
             {
             result="logout";
             }
                
                return result;

    }

    
}
