/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.common.interceptors;

import com.cdac.usermanagement.Service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
/**
 *
 * @author ANUPAM
 */
public class RoleCheckInterceptor implements Interceptor{
private Map<Integer , Set> roleActions =Collections.EMPTY_MAP;
private static String result="logout";

private AdminService adminService;

    public AdminService getAdminService() {
        return adminService;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }


        

    public void setRoleActions(Map<Integer, Set> roleActions) {
        this.roleActions = roleActions;
    }



    public void destroy() {
        //throw new UnsupportedOperationException("Not supported yet.");
    }

    public void init() {
        //throw new UnsupportedOperationException("Not supported yet.");
        //System.out.println("INIT--------------intercepted by RoleCheckInterceptor---------------");
       
        
    }

    public String intercept(ActionInvocation ai) throws Exception {
        String requestedAction = null;
        try {
            requestedAction = ActionContext.getContext().getName();  
            
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> intercept"+ActionContext.getContext().getSession().keySet());
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> intercept HOME_ID"+ActionContext.getContext().getSession().get("homeid"));
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> intercept USER_ID"+ActionContext.getContext().getSession().get("userid"));
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> intercept ROLE_ID"+ActionContext.getContext().getSession().get("roleid"));
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> intercept HOME_TYPE"+ActionContext.getContext().getSession().get("hometype"));
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> intercept CURRENT USER"+ActionContext.getContext().getSession().get("currentUser"));
        //System.out.println("\n--------------intercepted by RoleCheckInterceptor---------------ACTION NAME = "+requestedAction);
        
         
         
         //home based authorization check
        
         if(requestedAction.equalsIgnoreCase("UM-Role-Exp-Check"))
         {   
             String sessionUserId = ActionContext.getContext().getSession().get("userid").toString().trim(); 
             Map<String, Map<String, List<Integer>>> userHomeRoleMap = adminService.getUserHomeRoleMap(sessionUserId);
             
             Map<String,List<Integer>> homeRoleMap = userHomeRoleMap.get(sessionUserId);
             
         String homeId = ((String[])ActionContext.getContext().getParameters().get("homeId"))[0];
         int roleId = Integer.parseInt(((String[])ActionContext.getContext().getParameters().get("roleId"))[0]);
         
         //System.out.println("--------------intercepted by RoleCheckInterceptor---------------homeid and roleid in request = "+homeId+" --- "+roleId);
         //System.out.println("--------------intercepted by RoleCheckInterceptor--------------- "+homeRoleMap.containsKey(homeId));
         //System.out.println("--------------intercepted by RoleCheckInterceptor--------------- "+homeRoleMap.get(homeId).contains(roleId));
          
         
         
         if(homeRoleMap.containsKey(homeId) && homeRoleMap.get(homeId).contains(roleId))
           {
           return ai.invoke();
           }
            else
            {
            return "logout";
            }
         
         }
        
         int roleid = Integer.parseInt(ActionContext.getContext().getSession().get("roleid").toString());        
        
//        System.out.println("--------------intercepted by RoleCheckInterceptor---------------roleid = "+roleid);
//        System.out.println("--------------intercepted by RoleCheckInterceptor---------------roleid = "+requestedAction);
//        System.out.println("--------------intercepted by RoleCheckInterceptor---------------ActionSet "+AccessPolicy.roleActions.get(roleid));
        
        //Role based Authorization check 
        if(AccessPolicy.roleActions.get(roleid).contains(requestedAction))
        {
        //System.out.println("ANUPAM'S INTERCEPTOR---------------------------> invoking action in role check int");    
        return ai.invoke();
        }
        } catch (Exception e) {
        //System.out.println("-----ERROR---------intercepted by RoleCheckInterceptor------------ ACTION = "+requestedAction);
        
        e.printStackTrace();
        }
        
        
        
       return  "logout";
        
        //return result;
    }

   

      
}
