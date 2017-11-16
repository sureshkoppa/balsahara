/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.usermanagement.Service;

import com.cdac.common.util.CurrentDateProvider;
import com.cdac.common.util.StringToDate;
import com.cdac.usermanagement.DAO.AdminDAO;
import com.cdac.exceptions.AppException;
import com.cdac.usermanagement.DTO.CwcCreateGroupDTO;
import com.cdac.usermanagement.DTO.CwcDetailCompositeDTO;
import com.cdac.usermanagement.DTO.HomeDetailsDTO;
import com.cdac.usermanagement.DTO.RuChDTO;
import com.cdac.usermanagement.DTO.UserAndRoles;
import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.CwcDetail;
import com.cdac.usermanagement.ORM.CwcDetailPK;
import com.cdac.usermanagement.ORM.CwcHome;
import com.cdac.usermanagement.ORM.CwcMinutes;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.FcChildTemp;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.HomeMaster;

import com.cdac.usermanagement.ORM.UserMaster;

import com.cdac.usermanagement.ORM.RoleMaster;
import com.cdac.usermanagement.ORM.UserDetail;
import com.cdac.usermanagement.ORM.UserDetailPK;
import java.awt.geom.Arc2D;
import java.io.File;
import java.io.IOException;
import java.lang.Integer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import javax.persistence.GeneratedValue;
import javax.persistence.TableGenerator;
import org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException;
import org.apache.commons.io.FileUtils;
//import com.cdac.commons.persistance.HibernateFactory;

/**
 *
 * @author ramu
 */
public class AdminServiceImpl implements AdminService {

    private AdminDAO adminDAO ;

    public AdminDAO getAdminDAO() {
        return adminDAO;
    }

    public void setAdminDAO(AdminDAO adminDAO) {
        this.adminDAO = adminDAO;
    }

  

     public boolean addUser(String userId, String password)throws AppException {
       boolean success = false;

        try {
            System.out.println("-----------------------------> addUser(String userId, String password)");
            UserMaster user=new UserMaster();


           user.setUserId(userId);
           user.setPassword(password);

            adminDAO.save(user);
            //DAO.close();

        } catch (Exception e) {

            e.printStackTrace();
        }
        return success;
    }



  public boolean addUser(String userId, String password,String firstName,String lastName) {
       boolean success = false;

        try {
            System.out.println("-----------------------------> (String userId, String password,String firstName,String lastName)");
            UserMaster user=new UserMaster();


           user.setUserId(userId);
           user.setPassword(password);
           user.setFirstName(firstName);
           user.setLastName(lastName);
           adminDAO.save(user);



        } catch (Exception e) {

            e.printStackTrace();
        }
        return success;
    }


   public boolean addUserDetails(UserDetail vendor) {
        boolean success = false;

        try {
             System.out.println("----------------------------->addUserDetails(UserDetail vendor) ");

             adminDAO.save(vendor);

            success = true;
        } catch (Exception e) {
            //log.debug(e);
            e.printStackTrace();
        }

        return success;
    }




     public boolean updateUserMaster(UserMaster user) throws AppException
	{
         try{
             System.out.println("#######################User to be updated has the following details###################");
             System.out.println("UserID:- "+user.getUserId());
             System.out.println("UserFirstName:- "+user.getFirstName());
             System.out.println("UserLastName:- "+user.getLastName());
             System.out.println("UserPassword:- "+user.getPassword());


         return adminDAO.update(user);

         }

         catch(AppException e)
         {
             System.out.println("inside updateUserMaster ERROR");
             e.getMessage();
             return false;

         }

	}


     //view

     public UserMaster viewUserMaster(String userId)throws AppException
     {
     return adminDAO.view(userId);
     }







   public boolean delete(String uid)throws AppException {

       //use ADminDAO to delete the user with specific number
       return adminDAO.delete(uid);

    }


    public UserMaster viewUserMaster(String userId, boolean close )throws AppException {

        return adminDAO.view(userId, close);


    }

    public boolean checkUniqueString(String field,String value)throws AppException
  {
        return adminDAO.checkUniqueString(field, value);
  }



  public boolean checkUniqueRole(String field,String value)throws AppException
  {
      return adminDAO.checkUniqueRole(field, value);
  }


    public boolean updateUserMaster(UserMaster user,boolean update)throws AppException
	{
          return adminDAO.update(user, update);
	}



     public RoleMaster viewRoleMaster(String userId1)throws AppException {

        return adminDAO.viewRoleMaster(userId1);
    }







     public RoleMaster viewRoleMaster(String userId1,boolean close)throws AppException  {

         return adminDAO.viewRoleMaster(userId1, close);

    }



 public List viewUserMaster() throws AppException{
        //System.out.println("In view of UserDBOP..." + userId);
    return adminDAO.viewUserMaster();
    }



 public List viewRoleMaster()throws AppException {
        //System.out.println("In view of UserDBOP..." + userId);
      return adminDAO.viewRoleMaster();
    }




  public boolean addRolePrivileges(String roleNo, String moduleName, String privilege, String subModule)throws AppException
  {
    return adminDAO.addRolePrivileges(roleNo, moduleName, privilege, subModule);
  }





   public boolean addRole(String roleNo, String roleName)throws AppException
  {
      return adminDAO.addRole(roleNo, roleName);
  }


    public boolean addRole(String roleName)throws AppException
  {
      return adminDAO.addRole(roleName);
  }


   public ArrayList viewPrivilege(String roleId1)throws AppException {
       return adminDAO.viewPrivilege(roleId1);
    }


     public ArrayList viewPrivilege(String roleId1,String module)throws AppException {
      return adminDAO.viewPrivilege(roleId1);
    }


    public String isLoginValid(String userId,String password1)throws AppException
    {
        return adminDAO.isLoginValid(userId, password1);
    }


    public ArrayList getModulesForRole(String roleId)throws AppException
    {
     return adminDAO.getModulesForRole(roleId);
    }


    public ArrayList viewPrivilege(String roleId,String module,String subModule)throws AppException {
        return adminDAO.viewPrivilege(roleId, module, subModule);
    }

   public List viewPrivilege1(String roleId) throws AppException{
        return adminDAO.viewPrivilege1(roleId);
    }

   public List viewPrivilege1(String roleId,String module)throws AppException {
        return adminDAO.viewPrivilege1(roleId, module);
    }

   public List viewPrivilege1(String roleId,String module,String subModule)throws AppException  {
       return adminDAO.viewPrivilege(roleId, module, subModule);
    }

   public boolean deletePrivilege(ArrayList module,ArrayList subModule,Integer roleId,ArrayList priv) throws AppException
  {
       return adminDAO.deletePrivilege(module, subModule, roleId, priv);
  }


  public boolean checkUniqueRoleId(String field,String value) throws AppException
  {
      return adminDAO.checkUniqueRoleId(field, value);
  }

    public boolean deleteUserMaster(String vendorNo) throws AppException {
        //throw new UnsupportedOperationException("Not supported yet.");
        return adminDAO.deleteUserMaster(vendorNo);
    }

    public boolean addUser(UserMaster um) throws AppException {
         /*
         This method does the following
         * ************************** *
          1. insert the user in user_master table              
         */
        return adminDAO.save(um);
    }


    public boolean addUser(UserMaster um,String userHomeId) throws AppException {
        /*
         This method does the following
         * ************************** *
          1. insert the user in user_master table
          2. Assigning the default roleid -1 and home to the user
            and stting stus of the user as active.         
         */
        boolean result=false;

        try{
         if(adminDAO.save(um))
        {
        String userId=um.getUserId();
        String homeId=userHomeId;

        UserDetail userDetail=new UserDetail(userId, -1 , homeId);
        userDetail.setStatus("active");

        adminDAO.save(userDetail);

        result=true;

        }


        }
        catch(Exception e){

        System.out.println("****************EXCEPTION AT addUser(UserMaster um,String userHomeId)*************");
        adminDAO.delete(um); //deleting usermaster since operation is in coplete
        System.out.println("User successfully deleted because of incomplete operations");
        e.printStackTrace();

        }

       

        return result;

    }




    public boolean deleteUserMaster(List deleteList) throws AppException {


        boolean result=true;

        Iterator i=deleteList.iterator();

        while(i.hasNext())
        {
        //System.out.println("###############################Inside delete user "+i.next().toString());
        result=adminDAO.delete(i.next().toString());
        }
        //clean up code
        i=null;

        return result;
    }


    public Hashtable getPrivileges(String roleId, boolean isMap) throws AppException {
         ArrayList list=this.viewPrivilege(roleId);
      Hashtable roleMap=new Hashtable();
      /*-------------NOT IMPLEMENTED YET
      Hashtable moduleMap=new Hashtable();
      Hashtable subModuleTable=new Hashtable();
      for(int i=0;i<list.size();i++)
      {
        PrivRole roles=(PrivRole)list.get(i);//get the Privilege object
        subModuleTable.put(roles.getComp_id().getSubModule(),extractPrivileges(roles.getPriv()));
        roleMap.put(roles.getComp_id().getModule(),subModuleTable);
      }
       getPrivileges1(roleId,isMap);
       *
       */
       return roleMap;
    }



    //------------to support getPrivileges not present in interface
     private ArrayList extractPrivileges(String privileges)
    {
      StringTokenizer tokens=new StringTokenizer(privileges,",");
      ArrayList privs=new ArrayList();
      while(tokens.hasMoreTokens())
      {
        privs.add(tokens.nextToken());
      }
      return privs;
    }
     //------------to support getPrivileges not present in interface
      public Hashtable getPrivileges1(String roleId,boolean isMap) throws AppException
     {
      List list=this.viewPrivilege1(roleId);
      Hashtable roleMap=new Hashtable();
      Hashtable moduleMap=new Hashtable();
      for(int i=0;i<list.size();i++)
      {
        Object mod=list.get(i);
        String module=mod.toString();
        List list1=this.viewPrivilege1(roleId,module);
        Hashtable subModuleTable=new Hashtable();
        for(int j=0;j<list1.size();j++)
        {
           Object submod=list1.get(j);
           String submodule=submod.toString();
           List list2=this.viewPrivilege1(roleId,module,submodule);
           subModuleTable.put(submodule,list2);
        }
        moduleMap.put(module,subModuleTable);
      }
      return moduleMap;
     }

    public UserDetail getUserDetails(String userId) {
        
        UserDetail userDetail=new UserDetail();
        try{
        List tempList=adminDAO.getUserDetail(userId);

        Iterator i=tempList.iterator();

            while(i.hasNext())
            {
             userDetail=(UserDetail)i.next();
            }

        }
        catch(Exception e)
        {
        e.printStackTrace();
        }

        return userDetail;
    }


  /*  public boolean deleteUserMaster(String vendorNo) throws AppException {
        throw new UnsupportedOperationException("Not supported yet.");
    }*/

    /*-------------Methods for home management-----*/
   public String addHome(String stateId,String districtId,String homeCat,String genderId,String homeAddress)
   {
       String result="error";

       //get an unique number per home
       Integer nextHometNumber=adminDAO.getNextHomeNumber();

       System.out.println("NEXT HOME NUMBER I GOT IS -----------> "+nextHometNumber);

       //construct the format for the home id       
       String concatinatedString=stateId+"_"+districtId+"_"+homeCat+genderId+"_"+String.format("%04d", nextHometNumber);

       //created homeSubcat object
       HomeMaster homeSubcat=new HomeMaster();

      //set necessary properties of homesubcat
       homeSubcat.setHomeIdCat(homeCat);
       homeSubcat.setHomeName(homeCat+genderId);
       homeSubcat.setHomeId(concatinatedString);
       homeSubcat.setDistrictId(new DistrictMaster(districtId));

       //send the object for saving
        String generatedHomeId = (adminDAO.saveHome(homeSubcat)).trim();

       //if every thing was ok at DAO we will receive a unique HomeId
           if(!generatedHomeId.equalsIgnoreCase("error"))
           {
               //now with the unique string construct a HomeDetail object

               HomeDetails homeDetails=new HomeDetails(generatedHomeId);

               //add the foreign key
               homeDetails.setHomeMaster(homeSubcat);
               homeDetails.setHomeAddress(homeAddress);

               //set the necessary properties --not setting any thing for time being

               //pass objet to DAO for saving in Db
               result=adminDAO.saveHomeDetails(homeDetails);

           }

        return result;


   }

    public String addRUAndCH(String stateId, String districtId, String homeCat, String genderId, String homeAddress) {
        int count=0;
        String result="error";
        String homeType[]={"RU","CH"};
        //List<HomeMaster> homeList=new ArrayList<HomeMaster>(2);
        //List<HomeDetails>homeDetailsList=new ArrayList<HomeDetails>(2);

        Integer nextNumber=adminDAO.getNextHomeNumber();
        
        for(int i=0;i<homeType.length;i++)
        {
        String concatinatedString=stateId+"_"+districtId+"_"+homeType[i]+genderId+"_"+String.format("%04d", nextNumber);
        
       //created homeSubcat object
       HomeMaster homeSubcat=new HomeMaster();

      //set necessary properties of homesubcat
       if(homeType[i].equalsIgnoreCase("CH"))
                    homeSubcat.setHomeIdCat(homeType[i]);
       else if(homeType[i].equalsIgnoreCase("RU"))
                    homeSubcat.setHomeIdCat(stateId+"_"+districtId+"_"+"CH"+genderId+"_"+String.format("%04d", nextNumber));
       
       homeSubcat.setHomeName(homeType[i]+genderId);
       homeSubcat.setHomeId(concatinatedString);
       homeSubcat.setDistrictId(new DistrictMaster(districtId));
       
        //send the object for saving
        String generatedHomeId = (adminDAO.saveHome(homeSubcat)).trim();

       //if every thing was ok at DAO we will receive a unique HomeId
           if(!generatedHomeId.equalsIgnoreCase("error"))
           {
               //now with the unique string construct a HomeDetail object

               HomeDetails homeDetails=new HomeDetails(generatedHomeId);

               //add the foreign key
               homeDetails.setHomeMaster(homeSubcat);
               homeDetails.setHomeAddress(homeAddress);

               //set the necessary properties --not setting any thing for time being

               //pass objet to DAO for saving in Db
               count+=((adminDAO.saveHomeDetails(homeDetails)).equals("success"))?1:0;

               System.out.println("count val inside loop= ==================> "+count);

           }
        }
      return (count==2?"success":"error");
    }


    public List getCatagoryList() throws AppException {
        //throw new UnsupportedOperationException("Not supported yet.");
        return adminDAO.getCatagoryList();
    }

    public List getUserListOfSpecificHome(String homeId) throws AppException {
        //throw new UnsupportedOperationException("Not supported yet.");
        //List distinctUserList=new ArrayList<UserAndRoles>();
        return adminDAO.getUserListOfSpecificHome(homeId);
    }

    public String assignRoleToUsersOfAHome(String homeId,String[] userArray, int[] roleArray) throws AppException {
        String result=null;
        int userArraySize=userArray.length;
        int roleArraySize=roleArray.length/userArraySize;
        ArrayList rowsToBeInsertedInUserDetails=new ArrayList<UserDetail>();

        System.out.println("user Array Length = "+userArraySize);
        System.out.println("role Array Length = "+roleArraySize);
        try{

            for(int i=0;i<userArraySize;i++)
            {
                //System.out.println("i value -------- "+i);

            System.out.println("user id = "+userArray[i]);

              for(int j=(i*roleArraySize);j<((i*roleArraySize)+roleArraySize);j++)
              {
               //System.out.println("i value -------- "+j);
              if(roleArray[j]!=0 && roleArray[j]!= -1 )
                {
                  //constructy the user ddetail object and add it to the list
                  UserDetail userDetail=new UserDetail(userArray[i], roleArray[j], homeId);
                  userDetail.setStatus("active");
                  rowsToBeInsertedInUserDetails.add(userDetail);
                    System.out.print("  "+roleArray[j]);
                }
              }
             
            }

         result=adminDAO.saveRolesOfUsersOfAHome(rowsToBeInsertedInUserDetails);

        }
        catch(Exception e)
        {
            result="assignRoleError";
        System.out.println("_________-----------------Error");
        e.printStackTrace();

        }
       return result;
    }

    public Map getUserMapOfSpecificHome(String homeId) throws AppException {
        //throw new UnsupportedOperationException("Not supported yet.");
        //1.declare and initialize a map
        Map<String,List<Integer>> userMap=new HashMap<String,List<Integer>>();
   try{
        //2.get the userList from dao
        List userList=adminDAO.getUserListOfSpecificHome(homeId);

        /*
         3.Now process the list and put the user as key
         * and the list of roles of the user as value
         * userName----------->[roleList]
         * (key)                 (value)
         */
        Iterator userListIterator=userList.iterator();

        while(userListIterator.hasNext())
                {
                UserDetail userDetail=(UserDetail) userListIterator.next();
                String userName=userDetail.getUserDetailPK().getUserId().trim();
                int roleId=userDetail.getUserDetailPK().getRoleId();

                //neglect the default role of -1
               
                         //if(roleId!=-1){

                     //check whether valu is alreadpresent in the map or not
                    if(userMap.containsKey(userName))
                        {
                        //if yes put every key to the correspinding key
                       userMap.get(userName).add(roleId);
                        }
                          else
                            {//add a new key value pair
                             List<Integer> rL=new ArrayList<Integer>();
                             rL.add(roleId);
                             userMap.put(userName,rL);

                            }



                       // }



                }
        System.out.println("userMap at service layer===========================> "+userMap);
   }

   catch(Exception e)
   {
   e.printStackTrace();
   }




return userMap;
        

    }



    public List<DistrictMaster> getDistrictList() throws AppException {
        //throw new UnsupportedOperationException("Not supported yet.");
        return adminDAO.viewDistricts();

    }

    public List getHomesInADistrictList(String districtId) throws AppException {
        //throw new UnsupportedOperationException("Not supported yet.");
        return adminDAO.viewHomesOfADistrict(districtId.trim());

    }

    public List<HomeDetails> getAllHomes() throws AppException {
        //throw new UnsupportedOperationException("Not supported yet.");

        return adminDAO.viewAllHomes();

    }

    public String changePassword(String userId,String oldPassword, String newPassword) throws AppException {

        String result="error";

        try {

                     //1.get the user corresponding to the username
                UserMaster storedUser=adminDAO.get(userId);

                //2.check the both passwords are equal or not
                if(storedUser.getPassword().equals(oldPassword))
                {
                    //3.if equal then go for update
                    storedUser.setPassword(newPassword); //modify the object

                    //4.update done return success or else return faliure
                    boolean booResult=adminDAO.update(storedUser);

                    result=(booResult==true)?"success":"error";
                }
                else
                {
                 //else retur faliure
                    result="error";
                }


        } catch (Exception e) {

            result="error";
            e.printStackTrace();
           
        }
       

        return result;
    }

    public String deleteRolesFromUserDetails(List<UserDetail> rolesToBeDeteted) throws AppException {
        //throw new UnsupportedOperationException("Not supported yet.");
   return adminDAO.update(rolesToBeDeteted);
    }

    public String assignRoleToUserOfAHome(String userId, int roleId, String homeId, String startDate, String endDate) {
        //throw new UnsupportedOperationException("Not supported yet.");
         
        System.out.println(" -----> "+"Inside service layers assignRoleTOUserOfHome"+" <-----1");
        UserDetail userDetail=new UserDetail(userId, roleId, homeId);
        System.out.println(" -----> "+"Inside service layers assignRoleTOUserOfHome"+" <-----2");

        String sd[]= startDate.split("/");
        startDate=sd[1]+"/"+sd[0]+"/"+sd[2];

        String ed[]= endDate.split("/");
        endDate=ed[1]+"/"+ed[0]+"/"+ed[2];

        

        userDetail.setStartDate(new Date(startDate));
        userDetail.setEndDate(new Date(endDate));
        userDetail.setStatus("active");
        
        return adminDAO.save(userDetail);


    }

   public String checkDuplicateUser(String userId)
   {
       String result="error";
       /*
       UserMaster userMaster=adminDAO.get(userId);
       System.out.println("Unique user ########################################### > "+userId.trim().equals(userMaster.getUserId().trim()));
       result=(userId.trim().equals(userMaster.getUserId().trim()))?"success":"error";
        */
       try {
       if(userId.trim().equalsIgnoreCase("")||userId==null)
           {
           result="first";
           }
       else if(adminDAO.getUserMasterList(userId).size()!=0)
           {
           result="success";
           }
       else
           {
           result="error";
           }
       } catch (NullPointerException e) {
           System.out.println("ERROR in AdminService ---------Nullpointer-------------------");
           result="first";
           e.printStackTrace();
       }
           
       
      return result;
   }

    public List<String> getHomesBasedOnDistAndType(String districtId, String type) {
        //throw new UnsupportedOperationException("Not supported yet.");
        
        return adminDAO.getHomesBasedOnDistAndType(districtId, type);
        
        
    }

    public List<RuChDTO> getRuChDTOBasedOnDistAndType(String districtId, String type) {
        //throw new UnsupportedOperationException("Not supported yet.");
        return new ArrayList<RuChDTO>();
    }

    public List<UserMaster> getHomeLessUsers() {
        System.out.println("@@@@@@---------In side service method getHomeLessUsers() -------- ");
        return adminDAO.getHomeLessUsers();
    }

    public String assignHome(String homeIdString,String[] userIdArray) {
       
        List<UserDetail> userDetailList=new ArrayList<UserDetail>();
        String[] homeIds=homeIdString.split(","); 
        
        for(int j=0;j<homeIds.length;j++)
            {
                for(int i=0;i<userIdArray.length;i++)
                {
                 UserDetailPK upk=new UserDetailPK(userIdArray[i].trim(), -1,homeIds[j].trim());
                 UserDetail u=new UserDetail(upk);
                 u.setStatus("active");
                 userDetailList.add(u);
                }           
             
        
            }
        
        System.out.println("------------------------------------------------ "+userDetailList);
        
        
        return adminDAO.saveRolesOfUsersOfAHome(userDetailList);
    }

    public Map<String, Map<String, List<Integer>>> getUserHomeRoleMap(String userId) {
        
        List<UserDetail> userDetailList=adminDAO.getUserDetailsOfauser(userId); //get userDetail list
        
        Map<String, Map<String, List<Integer>>> userHomeRoleMap=new HashMap<String, Map<String, List<Integer>>>(); //stores homerole map corresponding to the user.
        
        //iterate over the list
        
         for (UserDetail userDetail : userDetailList)
         {
             
             String uId=userDetail.getUserDetailPK().getUserId();
             String homeId=userDetail.getUserDetailPK().getHomeId();
             int roleId=userDetail.getUserDetailPK().getRoleId();
             
          
             //if it userHomeroleMap contain the userid
             if(userHomeRoleMap.containsKey(uId)) 
                {
                    /***add a map corresponding to this key***/
                    
                    if(userHomeRoleMap.get(uId).containsKey(homeId)) 
                    {
                    userHomeRoleMap.get(uId).get(homeId).add(roleId);
                        
                    }
                        else if(!userHomeRoleMap.get(uId).containsKey(homeId))
                        {
                        //List<Integer> roleList = new ArrayList<Integer>(); //stores the list of role
                        
                        List<Integer> roleList = new ArrayList<Integer>(); //stores the list of role
                        roleList.add(roleId);
                        userHomeRoleMap.get(uId).put(homeId, roleList);           

                               

                        }
      
                }
             else
             {
             Map<String,List<Integer>> homeRoleMap=new HashMap<String, List<Integer>>(); //stores list of role corresponding to a home 
                        List<Integer> roleList = new ArrayList<Integer>(); //stores the list of role
                        roleList.add(roleId);
                        homeRoleMap.put(homeId, roleList);                   

                        userHomeRoleMap.put(uId, homeRoleMap);       
             
             }
             
             
             
        }
       
        return userHomeRoleMap;
        
    }

    public Map<Integer, String> getRoleMap() {
        
        List<RoleMaster> roleList=adminDAO.getRoleList();
        Map<Integer,String> roleMap=new HashMap<Integer, String>();
        
        for (RoleMaster roleMaster : roleList) {
            roleMap.put(roleMaster.getRoleId(), roleMaster.getRoleName());
        }
        
        return roleMap;
        
    }
/**
     * This method takes the string type of users as a parameter and returns the 
     * list of usermasters satisfying the criteria. 
     * @param typeOfUser
     * @return List<UserMaster>
     */
    public List<UserMaster> getNonEmployeeList(String typeOfUser) {
        
        String namedQuery=null;
        
        if(typeOfUser.trim().equalsIgnoreCase("dpo"))
            {
            namedQuery="UserMaster.findAllDPO";
            }
                else if(typeOfUser.trim().equalsIgnoreCase("cwc_jjb"))
                {
                namedQuery="UserMaster.findAllCWCJJB";
                }
                    else if(typeOfUser.trim().equalsIgnoreCase("manager"))
                    {
                    namedQuery="UserMaster.findAllManager";
                    }
        
        return adminDAO.getNonEmployeeList(namedQuery);
        
    }

    public String saveCWCGroup(CwcCreateGroupDTO cwcDTO) {
        String result="error";
        CwcHome cwcHome= new CwcHome();
        List<CwcDetail> cwcDetails=new ArrayList<CwcDetail>();
        List<UserDetail> userDetails=new ArrayList<UserDetail>();
        
        int cwcIdfromDAO=-1;
        
        try {
            //prepareCwcHome object
            
            cwcHome.setDistrict(cwcDTO.getDistrictId());
            //cwcHome.setHomeId(cwcDTO.getRoleHomeId());
            cwcHome.setStatus("active");
            
            cwcIdfromDAO=adminDAO.saveToCWCHome(cwcHome);
            
            
            if(cwcIdfromDAO !=-1)
            {
            
                        
                        for(int i=0 ; i<cwcDTO.getUserIds().length ; i++)
                        {   
                            int roleId=-2; // hard coded valure fro cwc member
                            
                            //prepare CwcDetail object list
                            CwcDetailPK cdpk=new CwcDetailPK(cwcIdfromDAO,cwcDTO.getUserIds()[i],cwcDTO.getLastModifiedDate());
                            //cdpk.setLastModifiedDate(cwcDTO.getLastModifiedDate());
                            CwcDetail cd=new CwcDetail(cdpk);
                            cd.setDesignation(cwcDTO.getCwcRoles()[i]);
                            cd.setStartDate(StringToDate.getStringToDate(cwcDTO.getRoleStartDate()));
                            cd.setEndDate(StringToDate.getStringToDate(cwcDTO.getRoleEndDate()));
                            cd.setStatus(cwcDTO.getStatus());

                            cwcDetails.add(cd);  
                            
                            //prepare UserDetail object list
                            if(cwcDTO.getCwcRoles()[i].trim().equalsIgnoreCase("chairperson")){roleId=-3;}// hard code valure fro cwc chairperson
                            
                            UserDetailPK upk=new UserDetailPK(cwcDTO.getUserIds()[i], roleId , "adminHome");
                            UserDetail ud=new UserDetail(upk);
                            ud.setStartDate(StringToDate.getStringToDate(cwcDTO.getRoleStartDate()));
                            ud.setEndDate(StringToDate.getStringToDate(cwcDTO.getRoleEndDate()));
                            ud.setStatus("active");
                             
                            userDetails.add(ud);

                        }

            result=adminDAO.saveOrUpdateToCwcDetails(cwcDetails);
            result=adminDAO.assignHome(userDetails); //inserting in UserDetails
                        
           
            }
            
            else 
            {
            result="error";
            }
       
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }
        return result;
        
    }

    public String approveDPO(String userId) {
        
       List<UserDetail> userDetails=new ArrayList<UserDetail>(); 
       UserDetailPK upk=new UserDetailPK(userId.trim(), -4 , "adminHome");
       UserDetail ud=new UserDetail(upk);
       ud.setStatus("active");
       userDetails.add(ud);
       
       return adminDAO.assignHome(userDetails);
        
    }

    public boolean isRoleExpired(String userId,String homeId,int roleId) {
        boolean result=false;
        
        try {
            //construct an UserDetailPK object
            UserDetailPK upk=new UserDetailPK(userId, roleId, homeId);
            
            //fetch the corrosponding userDetail object;
            UserDetail ud=adminDAO.getUserDetailBasedOnUHR(upk);
            
            //fetch the end date from the UserDetails
            Date endDate=ud.getEndDate();
            
            //if the value is null no need to compare
            if(endDate==null)
            {
                System.out.println("the user detail object "+ud+" date value is "+endDate);
            result=false;
            }
            //else check the expiray
            else
            {
            System.out.println("------------------------------------------------------------------------the user detail object "+ud+" date value is "+endDate);
            System.out.println("the current date is--------------------------------------------------------------------------->"+CurrentDateProvider.getCurrentDate());
            System.out.println("the current date is--------------------->CurrentDateProvider.getCurrentDate().before(endDate) ="+CurrentDateProvider.getCurrentDate().before(endDate));
            System.out.println("the current date is--------------------->CurrentDateProvider.getCurrentDate().before(endDate) ="+CurrentDateProvider.getCurrentDate().after(endDate));
            
            result=CurrentDateProvider.getCurrentDate().after(endDate);
            
            }
            
        } catch (Exception e) {
            result=false;
            System.out.println("-----------------In side srvivce ERROR--------isRoleExpired(String userId,String homeId,int roleId)");
            e.printStackTrace();
        }
        return result;
    }

    public List<DistrictMaster> getDistrictsWithOutCWC() {
          return adminDAO.getDistrictsWithOutCWC();
    }

    public List<DistrictMaster> getDistrictsWithCWC() {
        return adminDAO.getDistrictsWithCWC();
    }
    
    

    public List<CwcHome> getCwcHomesByDistrictIdAndActiveStatus(String districtId) {
        return adminDAO.getCwcHomesByDistrictIdAndActiveStatus(districtId);
    }
    
    

    public List<CwcHome> getCwcHomes(String status) {
        return adminDAO.getCwcHomes(status);
    }

    public List<CwcDetail> getCwcDetailsBasedOnCwcId(int cwcId) {
        return adminDAO.getCwcDetailsBasedOnCwcId(cwcId);
    }
/**
     * This method is responsible for removing the cwcDetails
     * Its a lengthy way to do it modify it later when requirements are clear.
     * @param cwcCreateGroupDTO
     * @return String (success or error) 
     */
    public String removeCwcMembers(CwcDetailCompositeDTO cwcDetailCompositeDTO) {
        String result="error";
        
        List<CwcDetailPK> cwcDetailPKs=new ArrayList<CwcDetailPK> ();
        List<CwcDetail> cwcDetails=new ArrayList<CwcDetail> ();
        List<CwcDetail> cwcDetailsToModify=new ArrayList<CwcDetail> ();
        List<UserDetail> userDetails=new ArrayList<UserDetail> ();
        /* construct the cwcDetailPK list */
        
        for(int i=0;i<cwcDetailCompositeDTO.getCwcId_arr().length;i++)
        {
         
            
          CwcDetailPK cwcDetailPK=adminDAO.getCwcUserDetail(cwcDetailCompositeDTO.getUserId_arr()[i]).getCwcDetailPK();  
            
         //CwcDetailPK cwcDetailPK=new CwcDetailPK(cwcDetailCompositeDTO.getCwcId_arr()[i], cwcDetailCompositeDTO.getUserId_arr()[i],StringToDate.getStringToDate(cwcDetailCompositeDTO.getLastModfiedDate_arr()[i]));
         //cwcDetailPK.setLastModifiedDate(StringToDate.getStringToDate(cwcDetailCompositeDTO.getLastModfiedDate_arr()[i]));
         cwcDetailPKs.add(cwcDetailPK);
        }
        
        //get the List of userds based on the cwcid
        cwcDetails=adminDAO.getCwcDetailsBasedOnCwcId(cwcDetailPKs.get(0).getCwcId());
        
        //identify the objects and change and put them in the modification list
        
        for (Iterator<CwcDetail> it = cwcDetails.iterator(); it.hasNext();) {
            CwcDetail cwcDetail = it.next();
           
            System.out.println("-------------------- >" +cwcDetail.getCwcDetailPK());
            System.out.println("--------------------->" +cwcDetailPKs.get(0));
            
            if(cwcDetailPKs.contains(cwcDetail.getCwcDetailPK()))
                {
                //related to cwc_detail    
                cwcDetail.setStatus("inactive");
                cwcDetailsToModify.add(cwcDetail);
                
                //related user_detail
                int currentRoleId=cwcDetail.getDesignation().equalsIgnoreCase("chairperson")?-3:-2;
                UserDetailPK userDetailPK=new UserDetailPK(cwcDetail.getCwcDetailPK().getUserId(), currentRoleId , "adminHome");
                UserDetail userDetail=adminDAO.getUserDetailBasedOnUHR(userDetailPK);
                userDetail.setStatus("inactive");
                userDetails.add(userDetail);
                }
               
            
        }
       System.out.println("the list for modification -----------> "+cwcDetailsToModify);
        //send the modify list fro updation        
         if(adminDAO.inactivteCwcMembers(cwcDetailsToModify).equalsIgnoreCase("success") &&adminDAO.saveOrUpdateToUserDetails(userDetails).equalsIgnoreCase("success"))
         {
         result="success";
         }
         else
         {
         result="error";
         }
        
        return result;
    }
    
   

    public String addCwcMembers(int cwcId, CwcCreateGroupDTO cwcDTO) {
        String result="error";
        //CwcHome cwcHome= new CwcHome();
        List<CwcDetail> cwcDetails=new ArrayList<CwcDetail>();
        List<UserDetail> userDetails=new ArrayList<UserDetail>();
        
        int cwcIdfromDAO=cwcId;
        
        try {
           
            
            if(cwcIdfromDAO !=-1)
            {
            System.out.println("cwcId from action ----------------------------------------------> "+cwcId);
                        
                        for(int i=0 ; i<cwcDTO.getUserIds().length ; i++)
                        {   
                            int roleId=-2; // hard coded valure fro cwc member
                            
                            //prepare CwcDetail object list
                            CwcDetailPK cdpk=new CwcDetailPK(cwcIdfromDAO,cwcDTO.getUserIds()[i],cwcDTO.getLastModifiedDate());
                            //cdpk.setLastModifiedDate(cwcDTO.getLastModifiedDate());
                            CwcDetail cd=new CwcDetail(cdpk);
                            cd.setDesignation(cwcDTO.getCwcRoles()[i]);
                            cd.setStartDate(StringToDate.getStringToDate(cwcDTO.getRoleStartDate()));
                            cd.setEndDate(StringToDate.getStringToDate(cwcDTO.getRoleEndDate()));
                            cd.setStatus(cwcDTO.getStatus());

                            cwcDetails.add(cd);  
                            
                            //prepare UserDetail object list
                            if(cwcDTO.getCwcRoles()[i].trim().equalsIgnoreCase("chairperson")){roleId=-3;}// hard code valure fro cwc chairperson
                            
                            UserDetailPK upk=new UserDetailPK(cwcDTO.getUserIds()[i], roleId , "adminHome");
                            UserDetail ud=new UserDetail(upk);
                            ud.setStartDate(StringToDate.getStringToDate(cwcDTO.getRoleStartDate()));
                            ud.setEndDate(StringToDate.getStringToDate(cwcDTO.getRoleEndDate()));
                            ud.setStatus("active");
                             
                            userDetails.add(ud);

                        }

            //result=adminDAO.saveOrUpdateToCwcDetails(cwcDetails);
            //result=adminDAO.assignHome(userDetails); //inserting in UserDetails
            
                        if(adminDAO.saveOrUpdateToCwcDetails(cwcDetails).equalsIgnoreCase("success") && adminDAO.assignHome(userDetails).equalsIgnoreCase("success"))
                        {
                        result="success";
                        }
                        else
                        {
                        result="error";
                        }
                        
           
            }
            
            else 
            {
            result="error";
            }
       
        } catch (Exception e) {
             
            //db cleanup consistency code add later
            e.printStackTrace();
            
        }
        
        return result;
    }

    public String dissovleCwcGroup(CwcHome cwcHome, List<CwcDetail> cwcDetails) {
        
        String result="error";
        
        List<CwcDetail> cwcDetailsToModify=new ArrayList<CwcDetail>();
        List<UserDetail> userDetails=new ArrayList<UserDetail> ();
                
        //make the status of the cwc group inactive
        cwcHome.setStatus("inactive");
        
        for (Iterator<CwcDetail> it = cwcDetails.iterator(); it.hasNext();) {
            CwcDetail cwcDetail = it.next();
            
            
                //related to cwc_detail    
                cwcDetail.setStatus("inactive");
                cwcDetailsToModify.add(cwcDetail);
                
                //related user_detail
                int currentRoleId=cwcDetail.getDesignation().equalsIgnoreCase("chairperson")?-3:-2;
                UserDetailPK userDetailPK=new UserDetailPK(cwcDetail.getCwcDetailPK().getUserId(), currentRoleId , "adminHome");
                UserDetail userDetail=adminDAO.getUserDetailBasedOnUHR(userDetailPK);
                userDetail.setStatus("inactive");
                userDetails.add(userDetail);
              
            
            
        }
        
        if(adminDAO.inactivteCwcMembers(cwcDetailsToModify).equalsIgnoreCase("success") &&adminDAO.saveOrUpdateToUserDetails(userDetails).equalsIgnoreCase("success"))
         {
                 if(adminDAO.saveToCWCHome(cwcHome)!=-1)
                     result="success";
                 else
                     result="error";
         }
         else
         {
         result="error";
         }
        
        return result;
        
    }

    public String savePhoto(String fileLocation,String photoName, File photoFile) {
        
         try {
            System.out.println("SERVICE----------------------------------------------fileLocation = "+fileLocation);
            System.out.println("SERVICE----------------------------------------------photoName = "+fileLocation);
            System.out.println("SERVICE----------------------------------------------photoFile = "+fileLocation);
              //  gsinfo.setPhotograph(getBytesFromFile(gaspdto.getAddProfile_photo()));
                
              //String fullFileName = "F:/pics/"+photoName+".jpg";
              
              File fileToCreate = new File(fileLocation, photoName);

              //File theFile = new File(fullFileName);
              System.out.println("SERVICE----------------------------------------------fileToCreate = "+fileToCreate);

              FileUtils.copyFile(photoFile, fileToCreate); 
              
              System.out.println("Crossed = "+fileToCreate);
                
              return "success";  
                
                
            }        
        
         catch (IOException ex) {
                System.out.println("-----------------ERROR uploading file--------------"+ex);
                ex.printStackTrace();
                return "error";
              //  Logger.getLogger(GASServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
           
            }
         
        
    
    }

    public HomeDetailsDTO getHomeDetails(String homeId) {
        
        HomeDetailsDTO homeDetailsDTO=new HomeDetailsDTO();
        HomeDetails homeDetails = adminDAO.getHomeDetails(homeId);
        
        /*
          private String homeId;
          private String homeAddress;
          private String homeType;
          private String homeDistrict;
          private String homeManagedBy;
          private String contactPerson;
          private String contactNo;
         */
        
        homeDetailsDTO.setHomeId(homeDetails.getHomeId());
        homeDetailsDTO.setHomeAddress(homeDetails.getHomeAddress());
        homeDetailsDTO.setContactPerson(homeDetails.getHeadOfInst());
        homeDetailsDTO.setContactNo(homeDetails.getLandlineNo());
        homeDetailsDTO.setHomeManagedBy(homeDetails.getHomeManagedBy());
         
        //now put home district and type
        Map<String,String> typeMap=new HashMap<String, String>(4);
        typeMap.put("RU", "Rcepetion Unit");
        typeMap.put("CH", "Children Home");
        typeMap.put("SH", "Spatial Home");
        typeMap.put("OH", "Observation Home");
        
        Map<String,String> genderMap=new HashMap<String, String>(2);
        genderMap.put("B", "Boys");
        genderMap.put("G", "Girls");
        
        //incomplete 
        
        
        return homeDetailsDTO;
               
        
    }

    //impemet transaction later
    public String logLastLogInOfUser(String userId, int roleId, String homeId) {
        
        String result = "error";
        
        //this is a transaction
        try{
        System.out.println("----------------------------------Transaction STARTS");
        //Prepare the UserDetailPK first
        UserDetailPK userDetailPK = new UserDetailPK(userId, roleId, homeId);
            System.out.println("userdetailPK = "+userDetailPK);
        //search the userDserDetail object
        UserDetail userDetail = adminDAO.getUserDetailBasedOnUHR(userDetailPK);
        
        //fetch the role Name 
        
        //modify the UserDetail
        userDetail.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        userDetail.setLastModifiedBy("Role Id :- "+roleId);
        
        //Update the new userDetail
        List<UserDetail> userDetailList = new ArrayList<UserDetail>(1);
        userDetailList.add(userDetail);
        adminDAO.saveOrUpdateToUserDetails(userDetailList);
        
        
        result = "success";
        System.out.println("----------------------------------Transaction ENDS");
        }
        catch(Exception e)
        {
        //in case of unsuccessful transactions
            System.out.println("----------------------------------Transaction Faliure");
            e.printStackTrace();
            result = "error";
        }
        
        return result;
    }

    
    public List<UserDetail> getUserDetailsInSlotOfTen(int start, int limit) {
       
        return adminDAO.getUserDetailsInSlotOfTen(start, limit);
        
    }

   
    
     public Map<String,String> checkFoundChild(String chname)
     {
         
         Map<String,String> m = new HashMap<String, String>();
         System.out.println("chname in service"+chname);
         List<ChildDetails> cdList = adminDAO.getChildOnName(chname);
         int j;
         if(cdList.size()>7)
             j=7;
         else
             j=cdList.size();
         
         ChildDetails childDetails;
         for (int i = 0; i < j; i++) {
              childDetails = cdList.get(i);
              m.put(childDetails.getChildDetailsPK().getChildProfileId(), childDetails.getChildName());//+" "+childDetails.getChildSurname());
         }
//         for (ChildDetails childDetails : cdList) {
//             m.put(childDetails.getChildDetailsPK().getChildProfileId(), childDetails.getChildName());//+" "+childDetails.getChildSurname());
//         }
         
         return m;
     }
/*
    public String saveFChildDet(String childName, String fatherName, String motherName,String gender) {
         FcChildTemp fcct= new FcChildTemp();
         Calendar c = Calendar.getInstance();
         //String key= gender+"_"+c.get(c.DAY_OF_MONTH)+c.get(c.MONTH)+c.get(c.YEAR);
         String key= "m_"+c.get(c.DAY_OF_MONTH)+c.get(c.MONTH)+c.get(c.YEAR);
         fcct.setProfileId(key);
         fcct.setFirstName(childName);
         fcct.setFatherName(fatherName);        
         fcct.setMotherName(motherName);
         
         if(adminDAO.saveFcChildTemp(fcct))
              return fcct.getProfileId();
         else
             return gender+"_131216";
                 
      //   return fcct.getProfileId();
                 
    }*/
     public String saveFChildDet(String childName, String fatherName, String motherName, String genderfound, String identificationMarks, String ageofchild, String childNature, String childNatureOthers, String disabled, String natureDisability, String religion, String religion_other, String caste, String subcaste, String fatherOccup, String motherOccup, String noBrothers, String noSister, String languagesKnown, String addrParents, String education, String belongdet, String identifiedProb, String placefound, String admitedby, String admissiondate, String detailOfcaller, String servicereq, String serviceother, String athorisedperson, String athorisedage, String athorisedcontact, String athorisedaddress, String dpcudet, String labour, String labourtype, String workadd, String workacarried, String salary, String remarks){
     
     FcChildTemp fcct= new FcChildTemp();
         Calendar c = Calendar.getInstance();
         //String key= gender+"_"+c.get(c.DAY_OF_MONTH)+c.get(c.MONTH)+c.get(c.YEAR);
         String key= genderfound+"_"+c.get(c.DAY_OF_MONTH)+c.get(c.MONTH)+c.get(c.YEAR);
         fcct.setProfileId(key);
         fcct.setFirstName(childName);
         fcct.setFatherName(fatherName);        
         fcct.setMotherName(motherName);
         fcct.setGender(genderfound);
         fcct.setAgeofchild(ageofchild);
         fcct.setIdentificationmarks(identificationMarks);
         fcct.setChildnature(childNature);
         fcct.setChildnatureother(childNatureOthers);
         fcct.setDisabled(disabled);
         fcct.setNatureofdisablilty(natureDisability);
         fcct.setReligion(religion);
         fcct.setReligionothers(religion_other);
         fcct.setCaste(caste);
         fcct.setSubcaste(subcaste);
         fcct.setFatheroccupation(fatherOccup);
         fcct.setMotheroccupation(motherOccup);
         fcct.setNoofbrothers(noBrothers);
         fcct.setNoofsisters(noSister);
         fcct.setLanguagesknown(languagesKnown);
         fcct.setAddofparents(addrParents);
         fcct.setEducation(education);
         fcct.setDetailsofbelongs(detailOfcaller);
         fcct.setIdentifiedproblms(identifiedProb);
         fcct.setPlacefound(placefound);
         fcct.setAdmittedby(admitedby);
         fcct.setDpcudetails(dpcudet);
         fcct.setDate(StringToDate.getStringToDate(admissiondate));
         fcct.setChildlabour(labour);
         fcct.setLabourtype(labourtype);
         fcct.setLabourworkplace(workadd);
         fcct.setLabourworkcarriedout(workacarried);
         fcct.setLaboursalary(salary);
         fcct.setDetailsofcaller(detailOfcaller);
         fcct.setServicerequired(servicereq);
         fcct.setServiceothers(serviceother);
         fcct.setAuthorizedname(athorisedperson);
         fcct.setAuthorizedage(athorisedage);
         fcct.setAuthorizedcontact(athorisedcontact);
         fcct.setAuthorizedaddress(athorisedaddress);
         fcct.setRemarks(remarks);
         
         if(adminDAO.saveFcChildTemp(fcct))
              return fcct.getProfileId();
         else
             return genderfound+"_131216";
             
     }
   

    public Object getCWCMinutes(String mid) {
        System.out.println("case worker service--->getCWCMinutes"+mid);
        return adminDAO.getCWCMinutes(Integer.parseInt(mid));
    }
    
     public Map<String,String[]> getReportFoundChild(){
     List<String> Flist = adminDAO.getReportFoundChild() ;
     
     
     
     
      Map<String, String[]> reqMap = new HashMap<String, String[]>();
        System.out.println("***8"+Flist);
        // String  quali=new String(); 
        // String[] q=new String[qualList.size()+1];
        String[] q=new String[Flist.size()];
        int i;
     for(i=0;i<Flist.size();i++)
     {
       
      System.out.println("quali**->"+Flist.get(i)); 
        
          q[i]=Flist.get(i);//Pattern.compile(",").split(arp.getDegree());
         // stram[i]  = qualList.get(i).getStream(); //Pattern.compile(",").split(arp.getStream());
      
        System.out.println("quali**->"+q); 
          }
        //q[i]="others";
 //    String[] q1=(String[])q.toArray();
       reqMap.put("q", q);
      // reqMap.put("s", stram);
   
       return reqMap;
     }
        
   public FcChildTemp foundreportlist( String childprofileid)
   {
       
       System.out.println("found report list adminserviceimpl");
       FcChildTemp Flist = adminDAO.foundreportlist(childprofileid);
       
       
       return Flist;
   }


}
    
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    
 
   

   

