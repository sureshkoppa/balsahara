 package com.cdac.usermanagement.Actions;
import com.cdac.usermanagement.Service.AdminService;
import com.cdac.exceptions.AppException;
//import com.cdac.usermanagement.BP.UserMasterBPOP;
import com.cdac.usermanagement.ORM.UserDetail;
import com.cdac.usermanagement.ORM.UserDetailPK;
import com.cdac.usermanagement.ORM.UserMaster;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.io.IOException;
import java.util.List;

import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class ValidateLoginAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,SessionAware
{
 /**
   * This is the main action called from the Struts framework.
   * @param mapping The ActionMapping used to select this instance.
   * @param form The optional ActionForm bean for this request.
   * @param request The HTTP Request we are processing.
   * @param response The HTTP Response we are processing.
   * @return 
   * @throws java.io.IOException
   * @throws javax.servlet.ServletException
   */
private HttpServletRequest request;
  private HttpServletResponse response;
private Map session;



private String userId;
private String message;

//------multiple home multiple user login mgmt
     private Map<String, Map<String, List<Integer>>> userHomeRoleMap;
     private Map<Integer,String> roleMap;









//-----------Spring DI
     private AdminService adminService;

    public AdminService getAdminService() {
        return adminService;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }

    public Map<String, Map<String, List<Integer>>> getUserHomeRoleMap() {
        return userHomeRoleMap;
    }

    public void setUserHomeRoleMap(Map<String, Map<String, List<Integer>>> userHomeRoleMap) {
        this.userHomeRoleMap = userHomeRoleMap;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Map<Integer, String> getRoleMap() {
        return roleMap;
    }

    public void setRoleMap(Map<Integer, String> roleMap) {
        this.roleMap = roleMap;
    }

    
    
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
 
    
    
    

    
  public String execute() throws AppException
  {
      String result="error";
    

     //HttpSession httpSession=request.getSession(false);
    // System.out.println("First session..."+httpSession.toString());
    //String validate=request.getParameter("validate");
    //System.out.println("Validate in Validate Login Action---------------------------------->>>>>"+validate);
    String userId=request.getParameter("userId_txt").trim();
    String passwd=request.getParameter("passwd_txt").trim();
    System.out.println("UserId.."+userId);
   

    
     String isValid="";
   
     isValid=adminService.isLoginValid(userId, passwd);
   
    
    if (isValid.equals(userId))
    {
        System.out.println("Inside isLoginValid() -----Log in successsful ");

         //get the user details
         //UserMaster user=adminService.viewUserMaster(userId);

         //get UserDetails
         UserDetail userDetails=adminService.getUserDetails(userId);
         System.out.println("userDetails object from service #############################---> "+userDetails);
         UserDetailPK userDetailPK=userDetails.getUserDetailPK();
         
         String userIdFromPK=null;
         
         //-----check whether user is already activated or not----START
         try {
            userIdFromPK=userDetailPK.getUserId();
            System.out.println("userDetailsPK object from userDetails #############################---> "+userDetailPK);
        } catch (NullPointerException e) {
            System.out.println("NPE--------------------------------------:-)");
            setMessage("Sorry!!! "+userId+" your account is NOT activated yet.Please try later.");
            return "error";
        }
         //-----check whether user is already activated or not----END
        

         getSession().put("userid",userIdFromPK );
         //getSession().put("homeid", userDetailPK.getHomeId());

         //System.out.println("Validate login action session --------------------> "+httpSession);

         //add the userid in the session
         ActionContext.getContext().getSession().put("currentUser", userDetailPK.getUserId()); 
         //httpSession.setAttribute("currentUser", userDetailPK.getUserId());

         //--------------If the user is not specific to any home------START 
         /*
          This block of code will handel if the user is not an employee of home
          and he is admin, DPO , CWC chairman or management 
          */
         if(userDetailPK.getHomeId().equalsIgnoreCase("adminHome")){
         
             String nonEmpResult="error";
             getSession().put("roleid",userDetailPK.getRoleId()); //put the roleid will used for modify and reset password 
             
             switch(userDetailPK.getRoleId())
             {  
                 case 0:
                     //admin
                     nonEmpResult="admin";
                     break;
                 case -1:
                     //will think later
                     break;
                     
                 case -2:
                     //cwc member
                     nonEmpResult="cwc_jjb";
                     break;
                     
                 case -3:
                     nonEmpResult="cwc_jjb";
                     //cwc chairperson
                     break;
                
                 case -4:
                     //dpo
                     nonEmpResult="dpo";
                     break;
                     
                 case -5:
                     //manager
                     break;
                  case -6:
                      nonEmpResult="dcpu";
                     //dcpu
                     break;     
                     
             
             }
             
             
             
         return nonEmpResult;
             
         }
             
         //--------------If the user is not specific to any home------END 
         
            
            
                try {
                    setUserHomeRoleMap(adminService.getUserHomeRoleMap(userId));
                    
//                   Locale locale=get.getContext().getLocale();
//                   
//                    System.out.println("validate login action======locale---->"+locale.getCountry());
                    
                    setRoleMap(adminService.getRoleMap());
                    result="success";
                } catch (Exception e) {
                    System.out.println("-------------in side ACTION getUserHomeRolemap()---------- ");
                    setMessage("Login Failed");
                    e.printStackTrace();
                }
                
                /**/
                
                
                
                
            
            result="success";

    }
    else
    {
      System.out.println("--------------------------->>>>in Error");
         setMessage(getText("msg.loginFail"));
         result =  "error";
    }
    
    
    return result;
  }
  
  public String switchHomeRole()
  {
      String result="error";
  //get the current user id from session
      
      //System.out.println("VALIDATE LOGING ACTION**************************+++++++++++++++++++++===================="+ActionContext.getContext());
      //System.out.println("VALIDATE LOGING ACTION***************************++++++++++++++++++++===================="+ActionContext.getContext().getSession());
      
      
      System.out.println("rl--"+ActionContext.getContext().getLocale().getLanguage());
      String userId=ActionContext.getContext().getSession().get("userid").toString().trim();
  
  //remove the other session variables
      ActionContext.getContext().getSession().remove("homeid");
      ActionContext.getContext().getSession().remove("hometype");
      ActionContext.getContext().getSession().remove("roleid");
      
      try {
          setUserHomeRoleMap(adminService.getUserHomeRoleMap(userId));
          setRoleMap(adminService.getRoleMap());
          result="success";
      } catch (Exception e) {
          System.out.println("--------------------------->>>>Error in switchHomeRole");
         e.printStackTrace();
          setMessage("Unable to Switch Role , Please log in once again.");
         
      }
      
      return result;
  
  }

public String en() {
//english
Locale locale = new Locale("en", "EN");
  session.put("org.apache.tiles.LOCALE", locale);
  return switchHomeRole();
}

public String hi() {
//hindi
System.out.println("hindi");
//Locale locale = new Locale("hi", "IN");
Locale locale = new Locale("hi");
  session.put("org.apache.tiles.LOCALE", locale);
  return switchHomeRole();
}

public String te() {
//telugu
Locale locale = new Locale("te", "IN");
  session.put("org.apache.tiles.LOCALE", locale);
  
  return switchHomeRole();
}


  public void setServletRequest(HttpServletRequest request){
    this.request = request;
  }

  public HttpServletRequest getServletRequest(){
    return request;
  }

  public void setServletResponse(HttpServletResponse response){
    this.response = response;
  }

  public HttpServletResponse getServletResponse(){
    return response;
  }


    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

  
  
}