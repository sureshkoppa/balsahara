/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.usermanagement.Service;

import com.cdac.exceptions.AppException;
import com.cdac.usermanagement.DTO.CwcCreateGroupDTO;
import com.cdac.usermanagement.DTO.CwcDetailCompositeDTO;
import com.cdac.usermanagement.DTO.HomeDetailsDTO;
import com.cdac.usermanagement.DTO.RuChDTO;
import com.cdac.usermanagement.ORM.CwcDetail;
import com.cdac.usermanagement.ORM.CwcHome;
import com.cdac.usermanagement.ORM.CwcMinutes;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.FcChildTemp;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.RoleMaster;
import com.cdac.usermanagement.ORM.UserDetail;
import com.cdac.usermanagement.ORM.UserMaster;
import java.io.File;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ramu
 */

public interface AdminService {

    public boolean addUser(UserMaster um) throws AppException;

     public boolean addUser(UserMaster userMaster, String userHomeId) throws AppException;

     public boolean addUser(String userId, String password) throws AppException;

     public boolean addUser(String userId, String password,String firstName,String lastName)throws AppException;

     public boolean addUserDetails(UserDetail vendor) throws AppException;

     public boolean updateUserMaster(UserMaster user) throws AppException;

     public boolean deleteUserMaster(String vendorNo) throws AppException;

     public boolean deleteUserMaster(List deleteList) throws AppException;

     public UserMaster viewUserMaster(String userId)  throws AppException;

     public UserMaster viewUserMaster(String userId, boolean close ) throws AppException;

     public boolean checkUniqueString(String field,String value) throws AppException;

     public boolean checkUniqueRole(String field,String value) throws AppException;

     public boolean updateUserMaster(UserMaster user,boolean update) throws AppException;

     public RoleMaster viewRoleMaster(String userId1) throws AppException;

     public RoleMaster viewRoleMaster(String userId1,boolean close) throws AppException;

     public List viewUserMaster() throws AppException;

     public List viewRoleMaster() throws AppException;

     public boolean addRolePrivileges(String roleNo, String moduleName, String privilege, String subModule) throws AppException;

     public boolean addRole(String roleNo, String roleName) throws AppException;


     public boolean addRole(String roleName) throws AppException; //this method will automatically generate the roleId and insert it

     public ArrayList viewPrivilege(String roleId1) throws AppException;

     public ArrayList viewPrivilege(String roleId1,String module) throws AppException;

    public String isLoginValid(String userId,String password1) throws AppException;

    public ArrayList getModulesForRole(String roleId) throws AppException;

    public ArrayList viewPrivilege(String roleId,String module,String subModule) throws AppException;

   public List viewPrivilege1(String roleId)  throws AppException;

   public List viewPrivilege1(String roleId,String module) throws AppException;

   public List viewPrivilege1(String roleId,String module,String subModule) throws AppException;

   public boolean deletePrivilege(ArrayList module,ArrayList subModule,Integer roleId,ArrayList priv) throws AppException;

  public boolean checkUniqueRoleId(String field,String value) throws AppException;

   public Hashtable getPrivileges(String roleId,boolean isMap) throws AppException;

   public UserDetail getUserDetails(String userId) ;

   /*-------------Methods for home management-----*/
   //public String addHome(HomeSubcat homeSubcat)throws AppException;
   
   public String addHome(String stateId,String districtId,String homeCat,String genderId,String homeAddress);
   //public String addHomeVersion2(String stateId,String districtId,String homeCat,String genderId,String homeAddress);
   public String addRUAndCH(String stateId,String districtId,String homeCat,String genderId,String homeAddress);
   

   public List getCatagoryList()throws AppException;


   //-------------role management
   public List getUserListOfSpecificHome(String homeId)throws AppException;

   public Map getUserMapOfSpecificHome(String homeId)throws AppException;

   public String assignRoleToUsersOfAHome(String homeId,String[] userArray,int[]roleArray)throws AppException;
   public String assignRoleToUserOfAHome(String userId,int roleId,String homeId,String startDate,String endDate);

   //--------for ajax operations
   public List<DistrictMaster> getDistrictList()throws AppException;
   public List getHomesInADistrictList(String districtId)throws AppException;

   public List<HomeDetails> getAllHomes()throws AppException;

   public String changePassword(String userId,String oldPassword,String newPassword)throws AppException;

   public String deleteRolesFromUserDetails(List<UserDetail> rolesToBeDeteted)throws AppException;
   
   public String checkDuplicateUser(String userId);
   
   
   public List<String> getHomesBasedOnDistAndType(String districtId,String type);

   public List<RuChDTO> getRuChDTOBasedOnDistAndType(String districtId,String type);
   
   public List<UserMaster> getHomeLessUsers();
   
   public String assignHome(String homeIdString,String[] userIdArray );
   
   public Map<String,Map<String,List<Integer>>> getUserHomeRoleMap(String userId);
   
   public Map<Integer,String> getRoleMap();
   
   public List<UserMaster> getNonEmployeeList(String typeOfUser);
   
   public String saveCWCGroup(CwcCreateGroupDTO cwcDTO);
   
   public String approveDPO(String userId);
   
   public boolean isRoleExpired(String userId,String homeId,int roleId);
   
    public List<DistrictMaster> getDistrictsWithOutCWC();
    
    public List<DistrictMaster> getDistrictsWithCWC();
    
    public List<CwcHome> getCwcHomesByDistrictIdAndActiveStatus(String districtId);
    
    public List<CwcHome> getCwcHomes(String status);
    
    
    
    public List<CwcDetail> getCwcDetailsBasedOnCwcId(int cwcId);
    
    public String removeCwcMembers(CwcDetailCompositeDTO cwcDetailCompositeDTO);
    
    public String addCwcMembers(int cwcId,CwcCreateGroupDTO cwcCreateGroupDTO);
    
    public String dissovleCwcGroup(CwcHome cwcHome,List<CwcDetail> cwcDetails);
    
    public String savePhoto(String fileLocation,String photoName,File photoFile);
    
    public HomeDetailsDTO getHomeDetails(String homeId);
    
   // public String saveCatagory()throws AppException;
    
    public String logLastLogInOfUser(String userId,int roleId,String homeId); 
    
    public List<UserDetail> getUserDetailsInSlotOfTen(int start, int limit);

    public Map<String,String> checkFoundChild(String chname);

    
    public Object getCWCMinutes(String mid);

    public String saveFChildDet(String childName, String fatherName, String motherName, String genderfound, String identificationMarks, String ageofchild, String childNature, String childNatureOthers, String disabled, String natureDisability, String religion, String religion_other, String caste, String subcaste, String fatherOccup, String motherOccup, String noBrothers, String noSister, String languagesKnown, String addrParents, String education, String belongdet, String identifiedProb, String placefound, String admitedby, String admissiondate, String detailOfcaller, String servicereq, String serviceother, String athorisedperson, String athorisedage, String athorisedcontact, String athorisedaddress, String dpcudet, String labour, String labourtype, String workadd, String workacarried, String salary, String remarks);

    public Map<String,String[]> getReportFoundChild();

    public FcChildTemp foundreportlist( String childprofileid);
    
}
