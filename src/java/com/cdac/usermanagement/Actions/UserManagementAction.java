
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.usermanagement.Actions;

import com.cdac.common.util.CurrentDateProvider;
import com.cdac.common.util.ServerMessageDTO;
import com.cdac.usermanagement.Service.AdminService;
import com.cdac.exceptions.AppException;
import com.cdac.usermanagement.DAO.AdminDAO;
import com.cdac.usermanagement.DTO.CwcCreateGroupDTO;
import com.cdac.usermanagement.DTO.CwcDetailCompositeDTO;
import com.cdac.usermanagement.DTO.HomeDetailsDTO;
import com.cdac.usermanagement.DTO.RuChDTO;
import com.cdac.usermanagement.ORM.CwcDetail;
import com.cdac.usermanagement.ORM.CwcHome;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.HomeMaster;


import com.cdac.usermanagement.ORM.RoleMaster;
import com.cdac.usermanagement.ORM.UserDetail;
import com.cdac.usermanagement.ORM.UserMaster;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;

/**
 *
 * @author NEELAVA
 */

public class UserManagementAction extends ActionSupport implements ModelDriven,ServletRequestAware,ServletResponseAware,SessionAware
{

    /***************Variables***********************/
    
    private String message;

    //----------Common for all methods
     private HttpServletRequest request;
     private HttpServletResponse response;
     private Map session;

     //spring DI
     private AdminService adminService;
     


    //---------For addUser
    private UserMaster userMaster =new UserMaster();
    private String userDistrictId;
    private String userHomeId;
    private String uidAvailable;

    //--------For modifyUserMain
    private String userId;
    private UserMaster user;

    //--------For modifyUserSub
    private String userIdToModify;
    private UserMaster userToModify=new UserMaster();

    //--------For deleteUserMain
     private List deleteList=new ArrayList();
     private String deleteId[];
     private String buttonVal;

     //------For deleteUserSub
     private String checkbox[];
     private List deleteList_sub=new ArrayList();

    //-------For userFetch
    private String Operation;  //it sees for which operation this action is called...ANUPAM ADDED THIS
    private List users=new ArrayList(); //here we will put all the users

    //------For addRole
    private String roleName;

    //------View Role
    private List roles=new ArrayList<RoleMaster>();

    //------for add home   
     private String stateId;     
     private String districtId;
     private String homeCat;
     private String genderId;
     private String homeAddress;

     //-----for pre populating the catagories in AddProductCatSubcat
     private List   catagories;
     private String newCatagory;
     private String existingCatagory;

     //-----for homeListFetch
     //will be adding a list containg homes
     private String roleHomeId;
     //private List userListOfAHome=new ArrayList<UserDetail>();
     private Map<String,List<Integer>> userMapOfAHome=new HashMap<String,List<Integer>>();
     private List roleList;

     //-----for assignRole
     private String[] usersOfHome;
     private int[] rolesOfHome;

     //-----for assigning a singlr role
     private String userOfHome;
     private int roleOfHome;
     private String roleStartDate;
     private String roleEndDate;

     //----for pre populating the districte prePopulateDistrict()
     private List<DistrictMaster> districtList=new ArrayList<DistrictMaster>();

     //----for populating the homes in a district populateHomesInADistrict()
     private List<String> homesInADistrict=new ArrayList<String>();

     //---- for populating all the homes populateAllHomes()
     private List<HomeDetails> homes=new ArrayList<HomeDetails>();


     //----for password change changePassword()
     private String oldPassword;
     private String newPassword;
     private String retypedPassword;


     //-----for user detail operations
     private List<UserDetail> userDetailList=new ArrayList<UserDetail>();
     
     //assign home
     private List<UserMaster> userMasterList=new ArrayList<UserMaster>();
     private List<RuChDTO> ruchDTOList=new ArrayList<RuChDTO>();
     private String ruchId;
     private String homeType;
     private List<UserMaster> userList;
     private String[] userIds;
     
     
     //------multiple home multiple user login mgmt
     private Map<String, Map<String, List<Integer>>> userHomeRoleMap;
     private int roleId;
     private String homeId;
     
     
     //------user type
     
     private String userType;  
    private String[] cwcRoles;
    
    private CwcHome cwcHome;    
    private List<CwcDetail> cwcDetails;
    
    private int[] cwcId_arr;
    private String [] userId_arr;
    private String [] lastModfiedDate_arr;
    
    private int cwcId;
    
    
    //-----photo uploading code
    private String photoId;
    private File photoFile;
    private String photoFileContentType;
    private String photoFileFileName;
    
    
    //for displaying a photo
    private String imagePath;
    
    private HomeDetails homeDetails;
    
    private HomeDetailsDTO homeDetailsDTO;
    
   
    //--------Customise message
    
    private List<UserDetail> udl;
    
     private ServerMessageDTO serverMessage = new ServerMessageDTO();
    

    public ServerMessageDTO getServerMessage() {
        return serverMessage;
    }

    public void setServerMessage(ServerMessageDTO serverMessage) {
        this.serverMessage = serverMessage;
    }
    

    public List<UserDetail> getUdl() {
        return udl;
    }

    public void setUdl(List<UserDetail> udl) {
        this.udl = udl;
    }
    
    
    

    
    
    

    
    

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public File getPhotoFile() {
        return photoFile;
    }

    public void setPhotoFile(File photoFile) {
        this.photoFile = photoFile;
    }

    public String getPhotoFileContentType() {
        return photoFileContentType;
    }

    public void setPhotoFileContentType(String photoFileContentType) {
        this.photoFileContentType = photoFileContentType;
    }

    public String getPhotoFileFileName() {
        return photoFileFileName;
    }

    public void setPhotoFileFileName(String photoFileFileName) {
        this.photoFileFileName = photoFileFileName;
    }
    
    
    

    public String getPhotoId() {
        return photoId;
    }

    public void setPhotoId(String photoId) {
        this.photoId = photoId;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public HomeDetails getHomeDetails() {
        return homeDetails;
    }

    public void setHomeDetails(HomeDetails homeDetails) {
        this.homeDetails = homeDetails;
    }

    public HomeDetailsDTO getHomeDetailsDTO() {
        return homeDetailsDTO;
    }

    public void setHomeDetailsDTO(HomeDetailsDTO homeDetailsDTO) {
        this.homeDetailsDTO = homeDetailsDTO;
    }

    public List<UserDetail> getUserDetailList() {
        return userDetailList;
    }

    public void setUserDetailList(List<UserDetail> userDetailList) {
        this.userDetailList = userDetailList;
    }
    
    
    
    
    
    

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }
    
    
    
     

   
     
   
     
     
     public Map<String, Map<String, List<Integer>>> getUserHomeRoleMap() {
        return userHomeRoleMap;
    }

    public void setUserHomeRoleMap(Map<String, Map<String, List<Integer>>> userHomeRoleMap) {
        this.userHomeRoleMap = userHomeRoleMap;
    }
     
     
     
     
     
     
     

    public String[] getUserIds() {
        return userIds;
    }

    public void setUserIds(String[] userIds) {
        this.userIds = userIds;
    }
   

    public List<UserMaster> getUserList() {
        return userList;
    }

    public void setUserList(List<UserMaster> userList) {
        this.userList = userList;
    }
     
     
     





     public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public List<UserMaster> getUserMasterList() {
        return userMasterList;
    }

    public void setUserMasterList(List<UserMaster> userMasterList) {
        this.userMasterList = userMasterList;
    }

    public List<RuChDTO> getRuchDTOList() {
        return ruchDTOList;
    }

    public void setRuchDTOList(List<RuChDTO> ruchDTOList) {
        this.ruchDTOList = ruchDTOList;
    }

    public String getRuchId() {
        return ruchId;
    }

    public void setRuchId(String ruchId) {
        this.ruchId = ruchId;
    }

    public String getHomeType() {
        return homeType;
    }

    public void setHomeType(String homeType) {
        this.homeType = homeType;
    }
    
     
 
     





    public String getOperation() {
        return Operation;
    }

    public void setOperation(String Operation) {
        this.Operation = Operation;
    }

    public AdminService getAdminService() {
        return adminService;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }

    public String getButtonVal() {
        return buttonVal;
    }

    public void setButtonVal(String buttonVal) {
        this.buttonVal = buttonVal;
    }

    public String[] getCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String[] checkbox) {
        this.checkbox = checkbox;
    }

    public String[] getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(String[] deleteId) {
        this.deleteId = deleteId;
    }

    public List getDeleteList() {
        return deleteList;
    }

    public void setDeleteList(List deleteList) {
        this.deleteList = deleteList;
    }

    public List getDeleteList_sub() {
        return deleteList_sub;
    }

    public void setDeleteList_sub(List deleteList_sub) {
        this.deleteList_sub = deleteList_sub;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public List getRoles() {
        return roles;
    }

    public void setRoles(List roles) {
        this.roles = roles;
    }

    public UserMaster getUser() {
        return user;
    }

    public void setUser(UserMaster user) {
        this.user = user;
    }

    public String getUserId() {
        //System.out.println("###########################USERMANAGEMENTACTION-----Constructor---g9etting userId= "+userId);
        return userId;
    }

    public void setUserId(String userId) {
        //System.out.println("###########################USERMANAGEMENTACTION-----Constructor---setting userId= "+userId);
        this.userId = userId;
    }

    public String getUserIdToModify() {
        return userIdToModify;
    }

    public void setUserIdToModify(String userIdToModify) {
        this.userIdToModify = userIdToModify;
    }

    public UserMaster getUserMaster() {
        return userMaster;
    }

    public void setUserMaster(UserMaster userMaster) {
        this.userMaster = userMaster;
    }

    public UserMaster getUserToModify() {
        return userToModify;
    }

    public void setUserToModify(UserMaster userToModify) {
        this.userToModify = userToModify;
    }

    public List getUsers() {
        return users;
    }

    public void setUsers(List users) {
        this.users = users;
    }




    //private String Operation;  //it sees for which operation this action is called...ANUPAM ADDED THIS

    //----------getter setter for home management
public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId;
    }

    public String getGenderId() {
        return genderId;
    }

    public void setGenderId(String genderId) {
        this.genderId = genderId;
    }

    public String getHomeCat() {
        return homeCat;
    }

    public void setHomeCat(String homeCat) {
        this.homeCat = homeCat;
    }

    public String getStateId() {
        return stateId;
    }

    public void setStateId(String stateId) {
        this.stateId = stateId;
    }

    public List getCatagories() {
        return catagories;
    }

    public void setCatagories(List catagories) {
        this.catagories = catagories;
    }

    public String getExistingCatagory() {
        return existingCatagory;
    }

    public void setExistingCatagory(String existingCatagory) {
        this.existingCatagory = existingCatagory;
    }

    public String getNewCatagory() {
        return newCatagory;
    }

    public void setNewCatagory(String newCatagory) {
        this.newCatagory = newCatagory;
    }




    public String getUserDistrictId() {
        return userDistrictId;
    }

    public void setUserDistrictId(String userDistrictId) {
        this.userDistrictId = userDistrictId;
    }

    public String getUserHomeId() {
        return userHomeId;
    }

    public void setUserHomeId(String userHomeId) {
        this.userHomeId = userHomeId;
    }



    public String getRoleHomeId() {
        return roleHomeId;
    }

    public void setRoleHomeId(String roleHomeId) {
        this.roleHomeId = roleHomeId;
    }

    public List getRoleList() {
        return roleList;
    }

    public void setRoleList(List roleList) {
        this.roleList = roleList;
    }





  

   





    public int[] getRolesOfHome() {
        return rolesOfHome;
    }

    public void setRolesOfHome(int[] rolesOfHome) {
        this.rolesOfHome = rolesOfHome;
    }

    public String[] getUsersOfHome() {
        return usersOfHome;
    }

    public void setUsersOfHome(String[] usersOfHome) {
        this.usersOfHome = usersOfHome;
    }

    public Map<String, List<Integer>> getUserMapOfAHome() {
        return userMapOfAHome;
    }

    public void setUserMapOfAHome(Map<String, List<Integer>> userMapOfAHome) {
        this.userMapOfAHome = userMapOfAHome;
    }




    public List<DistrictMaster> getDistrictList() {
        return districtList;
    }

    public void setDistrictList(List<DistrictMaster> districtList) {
        this.districtList = districtList;
    }


    
    public List<String> getHomesInADistrict() {
        return homesInADistrict;
    }

    public void setHomesInADistrict(List<String> homesInADistrict) {
        this.homesInADistrict = homesInADistrict;
    }

    public List<HomeDetails> getHomes() {
        return homes;
    }

    public void setHomes(List<HomeDetails> homes) {
        this.homes = homes;
    }




    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword.trim();
    }

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword.trim();
    }

    public String getRetypedPassword() {
        return retypedPassword;
    }

    public void setRetypedPassword(String retypedPassword) {
        this.retypedPassword = retypedPassword.trim();
    }





    public String getRoleEndDate() {
        return roleEndDate;
    }

    public void setRoleEndDate(String roleEndDate) {
        this.roleEndDate = roleEndDate;
    }

    public int getRoleOfHome() {
        return roleOfHome;
    }

    public void setRoleOfHome(int roleOfHome) {
        this.roleOfHome = roleOfHome;
    }

    public String getRoleStartDate() {
        return roleStartDate;
    }

    public void setRoleStartDate(String roleStartDate) {
        this.roleStartDate = roleStartDate;
    }

    public String getUserOfHome() {
        return userOfHome;
    }

    public void setUserOfHome(String userOfHome) {
        this.userOfHome = userOfHome;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String[] getCwcRoles() {
        return cwcRoles;
    }

    public void setCwcRoles(String[] cwcRoles) {
        this.cwcRoles = cwcRoles;
    }

    public String getUidAvailable() {
        return uidAvailable;
    }

    public void setUidAvailable(String uidAvailable) {
        this.uidAvailable = uidAvailable;
    }

    public List<CwcDetail> getCwcDetails() {
        return cwcDetails;
    }

    public void setCwcDetails(List<CwcDetail> cwcDetails) {
        this.cwcDetails = cwcDetails;
    }

    public CwcHome getCwcHome() {
        return cwcHome;
    }

    public void setCwcHome(CwcHome cwcHome) {
        this.cwcHome = cwcHome;
    }

    public int[] getCwcId_arr() {
        return cwcId_arr;
    }

    public void setCwcId_arr(int[] cwcId_arr) {
        this.cwcId_arr = cwcId_arr;
    }

    public String[] getLastModfiedDate_arr() {
        return lastModfiedDate_arr;
    }

    public void setLastModfiedDate_arr(String[] lastModfiedDate_arr) {
        this.lastModfiedDate_arr = lastModfiedDate_arr;
    }

    public String[] getUserId_arr() {
        return userId_arr;
    }

    public void setUserId_arr(String[] userId_arr) {
        this.userId_arr = userId_arr;
    }

    public int getCwcId() {
        return cwcId;
    }

    public void setCwcId(int cwcId) {
        this.cwcId = cwcId;
    }
    
    
    






  
   





    /****************Varibales*********************/







    public UserManagementAction() {
        //System.out.println("###########################USERMANAGEMENTACTION-----Constructor");
    }

    //method for checking the expirary date
    public String roleExpiryDateChecker(){
        
        System.out.println("USER LOGING ACTION**************************+++++++++++++++++++++===================="+ActionContext.getContext());
      System.out.println("USER VALIDATE LOGING ACTION***************************+++++++++++++++++++++===================="+ActionContext.getContext().getSession());
    
        String result="success";
        
        try {
            
        String userId=ActionContext.getContext().getSession().get("userid").toString().trim();
       System.out.println("************************"+userId+"--"+ getHomeId()+"--" +getRoleId()+"********************");
            result=adminService.isRoleExpired(userId, getHomeId().trim(), getRoleId())?"error":"success";
       
            System.out.println("******************************************** "+result);
            if(result.equalsIgnoreCase("success"))
            setMessage("");
        else if(result.equalsIgnoreCase("error"))
            setMessage("Sorry !!! The role is expired kindly contact the admininstrator.");
        } 
        
        catch (NullPointerException e) {
            
            System.out.println("NPE********************************************roleExpiryDateChecker");
            e.printStackTrace();
            result="error";
            setMessage("Your Session Has Expired , Kindly Relog In.");
            
        }
        
        

    return result;
        
        
    }
   



    
    /*----------Method for adding a user------START---------*/
    
    public String goToUserPage()
    {
        String result="error";
        //Map<Integer,String> roleMap=new HashMap<Integer, String>();       
        
        try{
          System.out.println("----------------------------------------roleId = "+getRoleId());
          System.out.println("----------------------------------------HomeId = "+getHomeId());
                    
                    switch(getRoleId())
         {
             case 0: 
                 System.out.println("inside admin");
                 result= "admin";                 
                 break; //admin

             case 1:System.out.println("inside heaMASTER"); result= "headmaster";break; //head master

             case 2: result= "caseworker"; break;//caseworker

             case 3: result= "deputysuper";break; //deputy super

             case 4: result= "super"; break;//super

             case 5: result= "dpo"; break;//dpo

             case 6: result= "doctor"; break; //doctor

             case 7: result= "counselor"; break;

            default: result= "error";

         }
             //set home id in session
                    ActionContext.getContext().getSession().put("homeid", getHomeId().trim());
                    
             //set home type in session
                    String hometype=getHomeId().substring(7,9);
                    ActionContext.getContext().getSession().put("hometype",hometype);
                    
                             
                    
             //set roleid in the session for making reset password and modify details unique for every one
                    ActionContext.getContext().getSession().put("roleid", getRoleId());
                    
             //Log the login information                    
                    adminService.logLastLogInOfUser(ActionContext.getContext().getSession().get("userid").toString().trim(), getRoleId(), getHomeId());
                    
                    //adminService.getUserDetailsInSlotOfTen(0, 10);
         
        }
        catch (NullPointerException e) {
            
            System.out.println("NPE********************************************roleExpiryDateChecker");
            e.printStackTrace();
            result="error";
            setMessage("Your Session Has Expired , Kindly Relog In.");
        
        }        
        catch(Exception e)
        {
        result= "error";
        e.printStackTrace();
        }
    return result;
    
    }
    
    public String logout()
    {
    String result="error";
    
        try {
           
            ActionContext.getContext().getSession().clear();
            
            request.getSession().invalidate();
            
            System.out.println("EVEN AFTER INVALIDATING ===== > "+request.getSession().getAttribute("userid"));
            result="success";
            
        } catch (Exception e) {
            System.out.println(" error in logout");
            e.printStackTrace();
            result="error";
        }
       System.out.println("  value to be returned from logout  "+result); 
    return result;
    }
    
    
    
    
    
    
    public String addUser()
    {

      String resultString="error";
     HttpSession httpSession=request.getSession(false);

     

      if(httpSession!=null)
      {

     try
     {

         System.out.println("values of users district and home ----> "+userDistrictId+" ---- " +userHomeId);


         userMaster.setRegDate(CurrentDateProvider.getCurrentDate());
         boolean result = adminService.addUser(userMaster);
        
     System.out.println("Inside AddUserAction ---- value recieved from service----> "+result);
     if(result==true){
         setMessage("User Registration completed Successfully.Kindly wait for the admininstrator to activate your account.");
          resultString="success";}
     }
     catch(Exception e)
     {  
         setMessage("User Registration Failed.");
         e.printStackTrace();
         System.out.println("---------------Error Inside AddUserAction--------------------------");
         e.getMessage();
         System.out.println("********************************************************************");
     }
     }
    return resultString;


    }
    
    /*------------------The following method adds a user in a secure wayafter captcha verification-----
     
         Public Key: 	     6LfVK-USAAAAAMZ_keoD_WPrM7p6YDSXcdLsxajz
         (Use this in the JavaScript code that is served to your users)
     
         Private Key: 	     6LfVK-USAAAAAJnEMuTZPgvdnUyGRRCBPo_sv03J
         (Use this when communicating between your server and our server. Be sure to keep it a secret.)
     
     ----------------------------------------------------------------------------------------------------*/
    
    public String addUserSecure(){
    String result = "error";
    
    String remoteAddr = request.getRemoteAddr();
        ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
        reCaptcha.setPrivateKey("6LfVK-USAAAAAJnEMuTZPgvdnUyGRRCBPo_sv03J"); //put this value in web application context and send it

        String challenge = request.getParameter("recaptcha_challenge_field");
        String uresponse = request.getParameter("recaptcha_response_field");
        ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, uresponse);

        if (reCaptchaResponse.isValid()) {
          //add user
            result = addUser();
            
        } else {
           
        }

    
    return result;
    }
    
    /*----------Method for adding a user------END---------*/

    //in case of individual user the this method will help to modify the user
    
    public String modifyMyDetails()throws AppException
    {
    //set the current user name
        userMaster.setUserId(ActionContext.getContext().getSession().get("userid").toString());
        System.out.println("-----------------------------------Inside modifyMyDetails() userID---> "+userMaster.getUserId());
        return modifyUserMain();
    }
    
    

    /*---------Main Method for modifying user------START---------------
     This method will poplulate the perticular user details to the form
     */

    public String modifyUserMain() throws AppException
    {
        System.out.println("----------------------------------Inside modifyUserMain() userID---> "+userMaster.getUserId());

        user=adminService.viewUserMaster(userMaster.getUserId());
        curretUserImage();

        //explicit clean up
        //adminService=null;

        return SUCCESS;


    }

    /*---------Main Method for modifying user------END------------*/



    /*-------------------Sub method for modify user---START-----------
     This method will update the changed values
     */
    public String modifyUserSub() throws AppException
    {

     
        boolean result = adminService.updateUserMaster(userMaster);
        System.out.println("Inside ModifyUserSubAction ......udating --> "+result);

        setMessage(getText("global.err.userDetModSucc"));

        return SUCCESS;
    }
    /*-------------------Sub method for modify user----END----------*/


/*----------------Main method for deleting a user---------START-----
 * This method will accepet a single user or a group of user and delete them
 */

    public String deleteUserMain()
    {
      String result=null;
      System.out.println("#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$>>>> "+buttonVal);

      if(buttonVal.equalsIgnoreCase("confirm"))

      {

    for(int i=0;i<deleteId.length;i++)
    {
    System.out.println("---------------------------------------->>> "+deleteId[i])  ;
    deleteList.add(deleteId[i]);
    }
    setDeleteList(deleteList);



    try{
     System.out.println("***************************************>>> "+deleteList);
     boolean resultboo=adminService.deleteUserMaster(deleteList);

             if (resultboo==true)
             {
             result="deleteSuccess";
             }
             else if(resultboo==false)
                 {
                result="deleteError";
                 }
       }


                catch(Exception e)
                {
                    e.printStackTrace();
                    result="deleteError";
                }





      }

      else if(buttonVal.equalsIgnoreCase("cancel"))
      {

        result="deleteCancel";

      }

    /*

*/
return result;

    }

 /*--------------Main method for deleting a user----------END------*/


 /*--------------Sub method for deleting a user----------START------
  This method will populate the list for deleting the user
  */
 public String deleteUserSub()
 {
        //1.get all the values from string and put it in an array
        for(int i=0;i<checkbox.length;i++)
        {
        System.out.println("--------------------------------------> "+checkbox[i]);
        deleteList.add(checkbox[i]);
        }
        setDeleteList(deleteList);
        return "confirmSuccess";
 }
 /*--------------Sub method for deleting a user----------END------*/


 /*--------------method for fetching user list----------START------
  This method will fetch the user value and set the mode of viewing
  */

 public String userFetch() throws AppException
 {
  List vendors=adminService.viewUserMaster();

    setUsers(vendors);//puting the vendors in list

    System.out.println("User view..."+vendors);

    if(Operation.equalsIgnoreCase("Modify"))
    {

      return "ModifyFetchUserSuccess";
    }
    else if(Operation.equalsIgnoreCase("View"))
    {
      return "ViewFetchSuccess";
    }
    else if(Operation.equalsIgnoreCase("Update"))
    {
      System.out.println("Inside if of update");
      return "UpdateFetchSuccess";
    }
    else if(Operation.equalsIgnoreCase("delete"))
    {
      return "DeleteFetchSuccess";
    }

    else
    {
      return "error";
    }

 }

/*--------------method for fetching user list----------END------*/
 
 /*------------method for adding a role---------------START------
  This method will add a new role
  */

 public String addRole()
 {
 String result=null;
      //this class will take the action of adding the role to the database
      try{
          System.out.println("Inside Action class ========================================= Role name ----> "+getRoleName());
          boolean insertResult=adminService.addRole(roleName);

          //clean up
          //adminService=null;

          if(insertResult==true)
              result="AddRoleSuccess";
          else if(insertResult==false)
              result="AddRoleError";

      }
      catch(Exception e)
      {
          e.printStackTrace();
          result="AddRoleError";
      }
     return result;

 }
/*--------------method for addind a role----------END------*/

/*--------------method for viewing list of role---------START------*/
public String viewRole() throws AppException
{
 roles=adminService.viewRoleMaster();
      setRoles(roles);

   
     return "ViewRoleSuccess";

}
/*--------------method for viewing a role---------END------*/


/***********************User Management*********************/
public String addHome() throws AppException
{
    String result="error";

if(homeCat.trim().equalsIgnoreCase("RUCH"))
    result=adminService.addRUAndCH(stateId, districtId, homeCat, genderId, homeAddress);
else
   result= adminService.addHome(stateId,districtId,homeCat,genderId,homeAddress);

if(result.equalsIgnoreCase("success"))
            setMessage("Home added Successfully.");
        else if(result.equalsIgnoreCase("error"))
            setMessage("Could NOT add home.");

    return result;
}




/*-----------------write add catagory code here
public List populateCatagory()
    {
    return adminService.

    }

public String saveCatagory()
        {


        }

-----------------------*/

public String homeListFetch()
{
    String result=null;
    System.out.println("inside home list fetch  --- roleHomeId= "+getRoleHomeId());
    try{
        if(getRoleHomeId().equalsIgnoreCase("none")){

            //here fetch the home list either from database or from session
            populateAllHomes();
           result="homeFetchSuccess";

        }
        else{
            System.out.println("********************** "+getRoleHomeId());
            //fetch the userIds of the specified home
            //setUserListOfAHome(adminService.getUserListOfSpecificHome(getRoleHomeId()));

              setUserMapOfAHome(adminService.getUserMapOfSpecificHome(getRoleHomeId()));
              
            //fetch the role and role ids from role table
            setRoleList(adminService.viewRoleMaster());

            result="homeFetchSuccess";

        }
    

    }

    catch(Exception e){
    
    result="homeFetchError";
    }

return result;
}

public String usersMapAndRoleListFetcher() //for role reassign
{
String result="homeFetchError";
//get an session
session=ActionContext.getContext().getSession();

    try {
        System.out.println("Inside usersMapAndRoleListFetcher()");
        //fetch the user map
        setUserMapOfAHome(adminService.getUserMapOfSpecificHome(getRoleHomeId()));

        //put the user map in the session;
        session.put("userMap", getUserMapOfAHome());

        //fetch the role list
        setRoleList(adminService.viewRoleMaster());

        //convert role list into roleMap
        Map<Integer,String> roleMap=new HashMap<Integer, String>();
        Iterator i=getRoleList().iterator();

                    while(i.hasNext())
                    {
                    RoleMaster localRole=(RoleMaster)i.next();
                    int localRoleId=localRole.getRoleId();

                    if(localRoleId!=0 && localRoleId!=-1)
                        {
                        roleMap.put(localRoleId, localRole.getRoleName());
                        }

                    }

        //put the role list in the session
        session.put("roleMap", roleMap);

        result="homeFetchSuccess";

    } catch (Exception e) {
        result="homeFetchError";
        e.printStackTrace();


    }

return result;

}

public String UserRoleFetcherForReassign()
{
System.out.println("userId received ----- "+request.getParameter("userId"));

return "success";

}

public String assignRole()throws AppException
{
    String result=null;
       
            /*
            here i should receive the following
            1.The home id
            2.an array containing all the user of that home
            3.another array containing all the roleIds
            here we will call a service method to
            insert or update values in database
             */
            return adminService.assignRoleToUsersOfAHome(getRoleHomeId(),getUsersOfHome(), getRolesOfHome());
    


}

public String assignOneRole()
{
    /*
     private String userOfHome;
     private int roleOfHome;
     private String roleStartDate;
     private String roleEndDate;
     */
    System.out.println("--"+getUserOfHome()+"--"+getRoleOfHome()+"--"+getRoleHomeId()+"---"+getRoleStartDate()+"---"+getRoleEndDate());
return adminService.assignRoleToUserOfAHome(getUserOfHome(),getRoleOfHome(),getRoleHomeId(),getRoleStartDate(),getRoleEndDate());
}




public String prePopulateDistrict()
{
   String result="error";
    try {
        List<DistrictMaster> disList=adminService.getDistrictList();
        
        for (int i = 0; i < disList.size(); i++) {
            String rb_dis = disList.get(i).getStateName()+"."+disList.get(i).getDistrictId();
            disList.get(i).setDistrictName(getText("global.district."+rb_dis));
        }
        
        setDistrictList(disList);
        result="success";
    } catch (Exception e) {
        e.printStackTrace();
    }

return result;


}


public String prePopulateDistrictWithOutCWC()
{

   String result="error";
    try {
        setDistrictList(adminService.getDistrictsWithOutCWC());
        result="success";
    } catch (Exception e) {
        e.printStackTrace();
    }

return result;
}

public String populateHomesInADistrict()
{
System.out.println("*** Inside populateHomesInADistrict() *** districtId="+getUserDistrictId());
String result="error";

    try {
        setHomesInADistrict(adminService.getHomesInADistrictList(getUserDistrictId()));
        result="success";
    } catch (Exception e) {
        e.printStackTrace();
    }
System.out.println(" return value from populateHomesInADistrict()----------------------> "+result);
return result;

}


public String populateAllHomes()
{
System.out.println("---------------------inside populate all homes-------------");
String result="error";

    try {
        setHomes(adminService.getAllHomes());
        result="success";
    } catch (Exception e) {
    result="error";
    e.printStackTrace();
    }
return result;

}


public String changePassword() throws AppException
{
    //String result="error";
    System.out.println("UserManagementAction changePassword() session ---------------1-----> "+session);
        //get current user from session
    session=ActionContext.getContext().getSession();
    System.out.println("UserManagementAction changePassword() session ---------------2-----> "+session);
    String currentUserId=session.get("currentUser").toString().trim();
    
    System.out.println("current user from session---------------------> "+currentUserId);


//server side validation START
    String result="error";
    
    if(getOldPassword().equals(null)||getOldPassword().equals(""))
                    {
                        System.out.println("SERVER SIDE VALIDATION----> Old password value is empty");
                        return result;
                    }
                    else if(getNewPassword().equals(null)||getNewPassword().equals(""))
                    {
                        System.out.println("SERVER SIDE VALIDATION----> New password value is empty");
                       return result;
                    }
                    else if(getRetypedPassword().equals(null)||getRetypedPassword().equals(""))
                    {
                        System.out.println("SERVER SIDE VALIDATION----> Retype password value is empty");
                        return result;
                    }
                    else if(!getNewPassword().equals(getRetypedPassword()))
                        {
                        System.out.println("SERVER SIDE VALIDATION----> New password value not equal to Retyped password value ");
                            return result;
                        }
     
    
//Server side validation END



    
result = adminService.changePassword(currentUserId, oldPassword, newPassword);

if(result.equalsIgnoreCase("success"))
{
setMessage(getText("global.msg.passChange"));
}
else if(result.equalsIgnoreCase("error"))
{
setMessage(getText("global.msg.confirmOldPass"));
}

return result;

}

public String deleteRoleFromUserDetails()throws AppException
{
System.out.println("---- Inside deleteRoleFromUserDetails() method ----");
//get the home id
    String homeId=getRoleHomeId();

 //get the userId
    String userId=request.getParameter("userId");

 //get the role array
    int arraySize=getRolesOfHome().length;
    List<UserDetail> roleListToBeDeleted=new ArrayList<UserDetail>();

    for(int i=0;i<arraySize;i++)
    {
    UserDetail ud=new UserDetail(userId, getRolesOfHome()[i], homeId);
    ud.setStatus("inactive"); //anupam added on 24th may 2011
    roleListToBeDeleted.add(ud);
    System.out.println("UserDetail object ========> "+ud);
    }

//call service method to delete

    String result= adminService.deleteRolesFromUserDetails(roleListToBeDeleted);

    System.out.println("---- Inside deleteRoleFromUserDetails() method ----return value = "+result);
   return result;



}

public String checkDuplicateUser()
{
System.out.println("-----------------------------> "+request.getParameter("userId"));        
String result = adminService.checkDuplicateUser(request.getParameter("userId"));

            if(result.equalsIgnoreCase("success"))
            {
              setUidAvailable("no");                      
            }
            else if(result.equalsIgnoreCase("error"))
            {
              setUidAvailable("yes");
            }
            else if(result.equalsIgnoreCase("first"))
            {
            setUidAvailable("unknown");
            }
            
System.out.println("UserManagementAction-------------------> uid= "+request.getParameter("userId")+" available= "+result);        

return result;
}

public String populateHomeBasedoOnDistrictAndType()
{
    String result="error";
    
    try {
       
            //setUserList(adminService.getHomeLessUsers());
            setHomesInADistrict(adminService.getHomesBasedOnDistAndType(getDistrictId(),getHomeType()));//here set the oh, sh list
            setUserList(adminService.getHomeLessUsers());
            
            System.out.println("---- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ---- List "+getUserList());
        result="success";
        
    } catch (Exception e) {
        
        System.out.println("---- Inside populateHomeBasedoOnDistrictAndType() method ---- ERROR");
        e.printStackTrace();
       
    }
      
    return result;


}

public String getHomeLessUsers()
{
String result="error";
    try {
        setUsers(adminService.getHomeLessUsers());
        result="success";
    } catch (Exception e) {
        e.printStackTrace();
    }

return result;

}

    public String assignHome()
    {
       
        String result="error";
        
        result=adminService.assignHome(getRoleHomeId(), getUserIds());
        System.out.println("result from assign home service------------------------------------------------> "+result);
        if(result.equalsIgnoreCase("assignRoleSuccess"))
            setMessage("Home assigned Successfully.");
        else if(result.equalsIgnoreCase("error"))
            setMessage("Could NOT assign home.");
        
        return result;
        

    }
    
    
    public String getUserHomesRolesMap()
            {
            String result="error";
            
                try {
                    setUserHomeRoleMap(adminService.getUserHomeRoleMap(getUserId()));
                    result="success";
                } catch (Exception e) {
                    System.out.println("-------------in side ACTION getUserHomeRolemap()---------- ");
                    e.printStackTrace();
                }
            
            return result;
            }
    
    public String viewHomeDetails()
    {
        //String result="error";
        if(!getHomeId().equalsIgnoreCase("-1"))
        setHomeDetailsDTO(adminService.getHomeDetails(getHomeId()));
         
       return "success";
    
    }
    
   
    
    /********************** cwc/jjb activity START*********************************/
    public String populateHomeBasedoOnDistrictAndTypeWithCWCorDPOmembers()
{
    String result="error";
    
    try {
       
            //setUserList(adminService.getHomeLessUsers());
            //setHomesInADistrict(adminService.getHomesBasedOnDistAndType(getDistrictId(),getHomeType()));//here set the oh, sh list
            //setUserList(adminService.getHomeLessUsers());
            setUserList(adminService.getNonEmployeeList(request.getParameter("userType").trim()));
            
            System.out.println("---- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ---- List "+getUserList());
        result="success";
        
    } catch (Exception e) {
        
        System.out.println("---- Inside populateHomeBasedoOnDistrictAndType() method ---- ERROR");
        e.printStackTrace();
       
    }
      
    return result;


}
    public String cwcCreateGroup()
    {
       /*
          private String districtId;
    private String roleHomeId;
    private String userType;
    private String[] userIds;
    private String[] cwcRoles;
    private String roleStartDate;
     private String roleEndDate;
         */
        
        CwcCreateGroupDTO cwcDTO=new CwcCreateGroupDTO();
        cwcDTO.setCwcRoles(getCwcRoles());
        cwcDTO.setDistrictId(getDistrictId());
        //cwcDTO.setRoleHomeId(getRoleHomeId());
        cwcDTO.setUserIds(getUserIds());
        cwcDTO.setUserType(getUserType());
        cwcDTO.setRoleStartDate(getRoleStartDate());
        cwcDTO.setRoleEndDate(getRoleEndDate());
        cwcDTO.setStatus("active");
        cwcDTO.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        
        
        System.out.println("------------------Value of CwcCreateGroupDTO ----------------------");
        System.out.println(cwcDTO);
        
        
        return adminService.saveCWCGroup(cwcDTO);
   
    }
    
    public String fetchDPOList()
    {
        String result="error";
        try {
           setUserList(adminService.getNonEmployeeList("dpo")); 
           result="success";
        } catch (Exception e) {
            
            e.printStackTrace();
        }
    
        return result;
    }
    
    public String approveDPO()
    {
    System.out.println("-------------------> "+userId);
    System.out.println("-------------------> "+getUserId());
    return adminService.approveDPO(request.getParameter("userId").trim());
        
    }
    
    
    public String setOperation()
    {
    System.out.println("---------------------inside Action settion operation = "+getOperation());    
    setOperation(getOperation());
    
    return "success";
    }
    
    public String prePopulateDistrictWithCwc()
    {
    System.out.println("inside ------------------------------------ prePopulateDistrictWithCwc()");    
    setDistrictList(adminService.getDistrictsWithCWC());    
    return "success";
    }
    
    public String removeCwcMember_init()
    {
    //1)gather the cwc id with the active status in a district.
       setCwcHome(adminService.getCwcHomesByDistrictIdAndActiveStatus(getDistrictId()).get(0));
       
    //2)get the cwcdetail list based on the cwc id
       setCwcDetails(adminService.getCwcDetailsBasedOnCwcId(getCwcHome().getCwcId()));
       
    return "success";   
    }
    
    /**
     * This method will gather the details necessary for constructing the 
     * composite primary keys for CwcDetails ie cwcId[] , userId[] and lastModifiedDate[]
     * and then send them for the deletion to the service layer
     * @return success on deletion error otherwise.
     */
    public String removeCwcMember_do()
    {
    
        String result="error";
        
    CwcDetailCompositeDTO cwcDetailCompositeDTO=new CwcDetailCompositeDTO();
    
    cwcDetailCompositeDTO.setCwcId_arr(getCwcId_arr());
    cwcDetailCompositeDTO.setUserId_arr(getUserId_arr());
    cwcDetailCompositeDTO.setLastModfiedDate_arr(getLastModfiedDate_arr());
    
    result = adminService.removeCwcMembers(cwcDetailCompositeDTO);
    
        if(result.equalsIgnoreCase("success"))
                {
                setMessage("CWC member removed from group successfully.");
                }
                else if(result.equalsIgnoreCase("error"))
                {
                setMessage("CWC member could NOT be removed.");
                }
        return result;
  
    }
    
    
    public String populateDetailsForAddCwcMember()
    {
     //1)set the cwc_jjb members available   
    setUserList(adminService.getNonEmployeeList("cwc_jjb")); 
    
    //2)gather the cwc id with the active status in a district.
       setCwcHome(adminService.getCwcHomesByDistrictIdAndActiveStatus(getDistrictId()).get(0));
       
    //3)get the cwcdetail list based on the cwc id
       setCwcDetails(adminService.getCwcDetailsBasedOnCwcId(getCwcHome().getCwcId()));
     
       return "success";
    
    }
    
    public String cwcAddNewMembers()
    {
    
        /*
         cwcId	
        cwcRoles
        roleEndDate	
        roleStartDate	
        userIds
         */
         CwcCreateGroupDTO cwcDTO=new CwcCreateGroupDTO();
        cwcDTO.setCwcRoles(getCwcRoles());
        //cwcDTO.setDistrictId(getDistrictId());
        //cwcDTO.setRoleHomeId(getRoleHomeId());
        cwcDTO.setUserIds(getUserIds());
        //cwcDTO.setUserType(getUserType());
        cwcDTO.setRoleStartDate(getRoleStartDate());
        cwcDTO.setRoleEndDate(getRoleEndDate());
        cwcDTO.setStatus("active");
        cwcDTO.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        
        
        System.out.println("------------------Value of CwcCreateGroupDTO ----------------------");
        System.out.println(cwcDTO);
        
        
        return adminService.addCwcMembers(getCwcId(), cwcDTO);
    
    
    
    }
    
    public String cwcDissolveGroup_init()
    {
    setCwcHome(adminService.getCwcHomesByDistrictIdAndActiveStatus(getDistrictId()).get(0));
    
    setCwcDetails(adminService.getCwcDetailsBasedOnCwcId(getCwcHome().getCwcId()));
    
    return "success";
    
    }
    
    public String cwcDissolveGroup_do()
    {
        String result="error";
        
    setCwcHome(adminService.getCwcHomesByDistrictIdAndActiveStatus(getDistrictId()).get(0));
    
    setCwcDetails(adminService.getCwcDetailsBasedOnCwcId(getCwcHome().getCwcId()));
    
    result = adminService.dissovleCwcGroup(cwcHome, cwcDetails);
    
                if(result.equalsIgnoreCase("success"))
                {
                setMessage("CWC Group Dissolved successfully.");
                }
                else if(result.equalsIgnoreCase("error"))
                {
                setMessage("CWC Group Could not be dissolved.");
                }
    
                return result;
    }
    
    
    
    //--------------------Photo Upload
     public String addPhoto()
     {
         String result="error";
         
         //String filePath = request.getServletContext().getRealPath("/") +"/"+"photos";
         //anupam changed it on 16-01-2012 START
         //String filePath = request.getServletContext().getRealPath("/") +"/"+"images";
         //anupam changed it on 16-01-2012 END
         /*added by swetha on 11-07-2012 START*/
         //String filePath="C:/Testpics/";/*specifying the path in windows*/
         //String filePath=System.getProperty("user.dir")+"/files";/*specifying the path in the server*/
         //String filePath="/files";/*specifying the path in windows and linux*/
         
         //String filePath=request.getServletContext().getInitParameter("fileUploadPath");/*specifying the path in windows and linux in web.xml*/
        
         String filePath=request.getSession().getServletContext().getInitParameter("fileUploadPath");// changed by anupam on 8-11-2012
         
         /*added by swetha on 11-07-2012 END*/
         System.out.println("Server path:" + filePath);
         /*
         if(adminService.savePhoto(getPhotoId(), getPhotoFile()).equalsIgnoreCase("success"))
                 {
                     setMessage("Photo uploaded success fully");
                     return "addPhoto-success";
                 }
         else
         {
             setMessage("Uploading photo failed");
                     return "addPhoto-failure";
         }*/
         
         System.out.println("ACTION----------------------------------------------fileLocation = "+filePath);
         System.out.println("ACTION----------------------------------------------photoName = "+getPhotoId());
         System.out.println("ACTION----------------------------------------------photoFile = "+getPhotoFile());
         System.out.println("ACTION----------------------------------------------PhotoFileContentType = "+getPhotoFileContentType());
         System.out.println("ACTION----------------------------------------------PhotoFileFileName = "+getPhotoFileFileName());
         
         System.out.println("REQUEST----------------------------------------------photoName = "+request.getParameter("photoId"));
         System.out.println("REQUEST----------------------------------------------photoFile = "+request.getParameter("photoFile"));
         
        
         result=adminService.savePhoto(filePath , getPhotoId()+".jpg", getPhotoFile());
         
         System.out.println("from service = "+ result);
         
         if(result.equalsIgnoreCase("success"))
                {
                setMessage("photo added successfully");
                 serverMessage.setMessageType("success");
                 serverMessage.setMessageValue("Photo of profile id "+getPhotoId()+" added successfully");
                 
                    System.out.println("-----------------"+getServerMessage());
                }
                else if(result.equalsIgnoreCase("error"))
                {
                setMessage("photo added faliure.");
                 serverMessage.setMessageType("error");
                 serverMessage.setMessageValue("Photo of profile id "+getPhotoId()+" Could NOT be added.");
                 System.out.println("-----------------"+getServerMessage());
                }
    
                return result;
         
         
     }
     
     
     public String curretUserImage()
     {
     System.out.println("-------------===============================> inside get photo");    
     //String filePath =request.getContextPath()+("/"+"photos");// request.getRealPath("/"+"WEB-INF/classes/photos/");
     /*added by swetha on 12-07-2012 START*/
     //String filePath="C:/Testpics";/*specifying the path in windows*/
     //String filePath=System.getProperty("user.dir")+"/files";/*specifying the path in the server*/
     //String filePath="/files";/*specifying the path in windows and linux*/

     
     //String filePath=request.getServletContext().getInitParameter("fileUploadPath");/*specifying the path in windows and linux in web.xml*/
     
     String filePath=request.getSession().getServletContext().getInitParameter("fileUploadPath"); // Anupam added to resolve EE 5 and EE 6 conflict
     
     /*added by swetha on 12-07-2012 END*/
     filePath=filePath+"/"+ActionContext.getContext().getSession().get("userid")+".jpg";
     System.out.println("Server path:" + filePath);
     setImagePath(filePath);
     System.out.println("-------------===============================> inside get photo --- "+imagePath);    
     return "success";
     }
    
   /********************** cwc/jjb activity END*********************************/

     public void setServletRequest(HttpServletRequest hsr) {
        //throw new UnsupportedOperationException("Not supported yet.");
        request=hsr;
    }

    public void setServletResponse(HttpServletResponse hsr) {
       response=hsr;
    }

   public void setSession(Map session){
   session = this.getSession();
  }

  public Map getSession(){
    return session;
  }

    public Object getModel() {
        return userMaster;
    }

public String getUserDetailsOfLogIn() throws AppException{

    //setUserDetailList(adminService.getUserDetailsInSlotOfTen(0, 10));
    setUdl(adminService.getUserDetailsInSlotOfTen(0, 10));
    //setUsers(adminService.viewUserMaster());
    
    
    System.out.println("in action ------------------------"+getUdl());
    
    //System.out.println("in action ------------------------"+getUsers());
    
    return "success";

}
    
   private String chname;

    public String getChname() {
        return chname;
    }

    public void setChname(String chname) {
        this.chname = chname;
    }
   
    private Map<String,String> chMap;

    public Map<String, String> getChMap() {
        return chMap;
    }

    public void setChMap(Map<String, String> chMap) {
        this.chMap = chMap;
    }
    
    
    
    public String checkFoundChild()
    {
       chMap =  adminService.checkFoundChild(chname);
        
        return SUCCESS;
    }
    
    private String childName;
    private String childSurname;
    private String fatherName;
    private String motherName;
    private String genderfound;
    
    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public String getChildSurname() {
        return childSurname;
    }

    public void setChildSurname(String childSurname) {
        this.childSurname = childSurname;
    }

    
    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getGenderfound() {
        return genderfound;
    }

    public void setGenderfound(String genderfound) {
        this.genderfound = genderfound;
    }

  
    
   
private String identificationMarks;
private String ageofchild;
private String  childNature;
private String childNatureOthers;
private String disabled;
private String natureDisability;
private String religion;
private String religion_other;
private String  caste;
private String subcaste;
private String fatherOccup;
private String motherOccup;
private String noBrothers;
private String noSister;
private String languagesKnown;
private String addrParents;
private String education;
private String belongdet;
private String identifiedProb;
private String placefound;
private String admitedby;
private String admissiondate;
private String detailOfcaller;
private String servicereq;
private String serviceother;
private String athorisedperson;
private String athorisedage;
private String athorisedcontact;
private String athorisedaddress;
private String dpcudet;
private String labour;
private String labourtype;
private String workadd;
private String workacarried;
private String salary;
private String remarks;

    public String getAdmissiondate() {
        return admissiondate;
    }

    public void setAdmissiondate(String admissiondate) {
        this.admissiondate = admissiondate;
    }
 
    public String getIdentificationMarks() {
        return identificationMarks;
    }

    public void setIdentificationMarks(String identificationMarks) {
        this.identificationMarks = identificationMarks;
    }

    public String getAgeofchild() {
        return ageofchild;
    }

    public void setAgeofchild(String ageofchild) {
        this.ageofchild = ageofchild;
    }

    public String getChildNature() {
        return childNature;
    }

    public void setChildNature(String childNature) {
        this.childNature = childNature;
    }

    public String getChildNatureOthers() {
        return childNatureOthers;
    }

    public void setChildNatureOthers(String childNatureOthers) {
        this.childNatureOthers = childNatureOthers;
    }

    public String getDisabled() {
        return disabled;
    }

    public void setDisabled(String disabled) {
        this.disabled = disabled;
    }

    public String getNatureDisability() {
        return natureDisability;
    }

    public void setNatureDisability(String natureDisability) {
        this.natureDisability = natureDisability;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getReligion_other() {
        return religion_other;
    }

    public void setReligion_other(String religion_other) {
        this.religion_other = religion_other;
    }

    public String getCaste() {
        return caste;
    }

    public void setCaste(String caste) {
        this.caste = caste;
    }

    public String getSubcaste() {
        return subcaste;
    }

    public void setSubcaste(String subcaste) {
        this.subcaste = subcaste;
    }

    public String getFatherOccup() {
        return fatherOccup;
    }

    public void setFatherOccup(String fatherOccup) {
        this.fatherOccup = fatherOccup;
    }

    public String getMotherOccup() {
        return motherOccup;
    }

    public void setMotherOccup(String motherOccup) {
        this.motherOccup = motherOccup;
    }

    public String getNoBrothers() {
        return noBrothers;
    }

    public void setNoBrothers(String noBrothers) {
        this.noBrothers = noBrothers;
    }

    public String getNoSister() {
        return noSister;
    }

    public void setNoSister(String noSister) {
        this.noSister = noSister;
    }

    public String getLanguagesKnown() {
        return languagesKnown;
    }

    public void setLanguagesKnown(String languagesKnown) {
        this.languagesKnown = languagesKnown;
    }

    public String getAddrParents() {
        return addrParents;
    }

    public void setAddrParents(String addrParents) {
        this.addrParents = addrParents;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getBelongdet() {
        return belongdet;
    }

    public void setBelongdet(String belongdet) {
        this.belongdet = belongdet;
    }

    public String getIdentifiedProb() {
        return identifiedProb;
    }

    public void setIdentifiedProb(String identifiedProb) {
        this.identifiedProb = identifiedProb;
    }

    public String getPlacefound() {
        return placefound;
    }

    public void setPlacefound(String placefound) {
        this.placefound = placefound;
    }

    public String getAdmitedby() {
        return admitedby;
    }

    public void setAdmitedby(String admitedby) {
        this.admitedby = admitedby;
    }

    public String getDetailOfcaller() {
        return detailOfcaller;
    }

    public void setDetailOfcaller(String detailOfcaller) {
        this.detailOfcaller = detailOfcaller;
    }

    public String getServicereq() {
        return servicereq;
    }

    public void setServicereq(String servicereq) {
        this.servicereq = servicereq;
    }

    public String getServiceother() {
        return serviceother;
    }

    public void setServiceother(String serviceother) {
        this.serviceother = serviceother;
    }

    public String getAthorisedperson() {
        return athorisedperson;
    }

    public void setAthorisedperson(String athorisedperson) {
        this.athorisedperson = athorisedperson;
    }

    public String getAthorisedage() {
        return athorisedage;
    }

    public void setAthorisedage(String athorisedage) {
        this.athorisedage = athorisedage;
    }

    public String getAthorisedcontact() {
        return athorisedcontact;
    }

    public void setAthorisedcontact(String athorisedcontact) {
        this.athorisedcontact = athorisedcontact;
    }

    public String getAthorisedaddress() {
        return athorisedaddress;
    }

    public void setAthorisedaddress(String athorisedaddress) {
        this.athorisedaddress = athorisedaddress;
    }

    public String getDpcudet() {
        return dpcudet;
    }

    public void setDpcudet(String dpcudet) {
        this.dpcudet = dpcudet;
    }

    public String getLabour() {
        return labour;
    }

    public void setLabour(String labour) {
        this.labour = labour;
    }

    public String getLabourtype() {
        return labourtype;
    }

    public void setLabourtype(String labourtype) {
        this.labourtype = labourtype;
    }

    public String getWorkadd() {
        return workadd;
    }

    public void setWorkadd(String workadd) {
        this.workadd = workadd;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    
    
    
    
    public String saveFChild()
    {
        
        System.out.println("saveFChild saveFChild =========saveFChild");
        System.out.println("gender"+genderfound);
      
        System.out.println("childname = "+childName+" childsurname = "+childSurname+" gender="+genderfound);
        System.out.println("IdentifiactionMArks = "+identificationMarks+"\nageof child ="+ageofchild+"\nchildNature = "+childNature+"\nchilnature others ="+childNatureOthers+
                "\ndisabled = "+disabled+"\nnatureDisability = "+natureDisability+"\nreligion ="+religion+"religion_other "+religion_other+"\n caste ="+caste+"\n subcaste "+subcaste+
                "\n fathername ="+fatherName+"\n fatherocc "+fatherOccup+"mothername ="+motherName+"motheroccu ="+motherOccup+"\n no Bro ="+noBrothers+"\nno of sis ="+noSister+
                "\n langugae  known"+languagesKnown+"\n  addresparents = "+addrParents +"\n educatin ="+education+"\n belonging deta"+belongdet+"\n identified prob"+identifiedProb+
                "\n placefound ="+placefound+"\n admittedby ="+admitedby+"\n admission date ="+admissiondate + "\n details of caller"+detailOfcaller+"\n service req"+servicereq+
                "\nservice other ="+serviceother + "\n author person"+athorisedperson+"\n  author age"+athorisedage+"\n author contact = "+athorisedcontact+"\n author addre"+athorisedaddress+
                "\n dpcu det ="+dpcudet +"\n labour ="+labour+"\n labour type ="+labourtype +"\n workadd ="+workadd+"\n workcarried ="+workacarried+"\n salary ="+salary +"\n remarks ="+remarks);
        
        
 String profid =  adminService.saveFChildDet(childName,fatherName,motherName,genderfound,identificationMarks,ageofchild,childNature,childNatureOthers,disabled,natureDisability,religion,religion_other,caste,subcaste,
         fatherOccup,motherOccup,noBrothers,noSister,languagesKnown,addrParents,education,belongdet,identifiedProb,placefound,admitedby,admissiondate,detailOfcaller,servicereq,serviceother,athorisedperson,athorisedage,athorisedcontact,
         athorisedaddress,dpcudet,labour,labourtype,workadd,workacarried,salary,remarks);
       addActionMessage("Profile Saved.The Profile Id is:"+profid);
       
       return SUCCESS;
    }
}
