package com.cdac.usermanagement.DAO;

import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.FcChildTemp;
import com.cdac.usermanagement.ORM.HomeMaster;
import java.util.List;


import com.cdac.usermanagement.ORM.UserMaster;
import com.cdac.exceptions.AppException;
import com.cdac.usermanagement.ORM.CwcMinutes;
import com.cdac.usermanagement.ORM.CwcDetail;
import com.cdac.usermanagement.ORM.CwcDetailPK;
import com.cdac.usermanagement.ORM.CwcHome;

import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.RoleMaster;
import com.cdac.usermanagement.ORM.UserDetail;
import com.cdac.usermanagement.ORM.UserDetailPK;
import java.util.ArrayList;
import java.util.Map;

public interface AdminDAO {
	UserMaster create(UserMaster um)throws AppException;
	UserMaster get(String uid);
	boolean save(UserMaster emp)throws AppException;
        public String save(UserDetail emp);

	void delete(UserMaster emp)throws AppException;
        public boolean delete(String uid) throws AppException;

        public UserMaster view(String uid)throws AppException;

        public UserMaster view(String userId, boolean close)throws AppException;

        public boolean checkUniqueString(String field,String value)throws AppException;

         public boolean checkUniqueRole(String field,String value) throws AppException;


        public boolean update(UserMaster user)throws AppException;

        public boolean update(UserMaster user,boolean update)throws AppException;

        public RoleMaster viewRoleMaster(String userId1)throws AppException;
        public RoleMaster viewRoleMaster(String userId1,boolean close)throws AppException;
        public List viewUserMaster()throws AppException;
        public List viewRoleMaster()throws AppException;

        public boolean addRolePrivileges(String roleNo, String moduleName, String privilege, String subModule)throws AppException;
        public boolean addRole(String roleNo, String roleName)throws AppException;
        public boolean addRole(String roleName)throws AppException;

        public ArrayList viewPrivilege(String roleId1) throws AppException;
        public ArrayList viewPrivilege(String roleId1,String module)throws AppException;
        public ArrayList viewPrivilege(String roleId,String module,String subModule)throws AppException;

        public ArrayList getModulesForRole(String roleId)throws AppException;
        public List viewPrivilege1(String roleId) throws AppException;
        public List viewPrivilege1(String roleId,String module) throws AppException;
        public List viewPrivilege1(String roleId,String module,String subModule)throws AppException;
        public boolean deletePrivilege(ArrayList module,ArrayList subModule,Integer roleId,ArrayList priv)throws AppException;
        public boolean checkUniqueRoleId(String field,String value)throws AppException;
        public String isLoginValid(String userId,String password1)throws AppException;
        public boolean deleteUserMaster(String vendorNo)throws AppException;

	List<UserMaster> list()throws AppException;
	List<UserMaster> list(int firstResult, int maxResults) throws AppException;

        List getUserDetail(String userId)throws AppException;
    
        /*-------------methods for home management----------*/
    public String saveHome(HomeMaster homeSubcat);
      

    public String saveHomeDetails(HomeDetails homeDetails) ;

    public List getCatagoryList()throws AppException;

    public Integer getNextHomeNumber();

    

    public List getUserListOfSpecificHome(String homeId)throws AppException;

    public String saveRolesOfUsersOfAHome(List<UserDetail> userDetail);

    public List<DistrictMaster> viewDistricts()throws AppException;

    public List viewHomesOfADistrict(String districtName)throws AppException;

    public List<HomeDetails> viewAllHomes()throws AppException;
    //public String saveCatagory()throws AppException;

    public String delete(List<UserDetail> udl)throws AppException;

    public String update(List<UserDetail> udl);
    
    public List<String> getHomesBasedOnDistAndType(String districtId, String type);
    
    public List<UserMaster> getHomeLessUsers();
    
    public String assignHome(List<UserDetail> userDetailList);
    
    public List<UserDetail> getUserDetailsOfauser(String userId);
    
    public List<RoleMaster> getRoleList();
    
    public List<UserMaster> getNonEmployeeList(String namedQuery);
    
    public int saveToCWCHome(CwcHome cwcHome);
    
    public String saveOrUpdateToCwcDetails(List<CwcDetail> cwcDetails);
    
    public String saveOrUpdateToUserDetails(List<UserDetail> userDetails);
    
    public List<UserMaster> getUserMasterList(String userId);
    
    /* for operting the validity of the role*/
    public UserDetail getUserDetailBasedOnUHR(UserDetailPK userDetailPK);
    
    public List<DistrictMaster> getDistrictsWithOutCWC();
    
    public List<DistrictMaster> getDistrictsWithCWC();
    
    public List<CwcHome> getCwcHomes(String status);
    
    public List<CwcHome> getCwcHomesByDistrictIdAndActiveStatus(String districtId);
    
    public List<CwcDetail> getCwcDetailsBasedOnCwcId(int cwcId);
       
    
    public String inactivteCwcMembers(List<CwcDetail> cwcDetails);
    
    public HomeDetails getHomeDetails(String homeId);
    
    public CwcDetail getCwcUserDetail(String cwcUserId);
            
    public List<UserDetail> getUserDetailsInSlotOfTen(int start,int limit);
    
    


       // void add(UserMaster userMaster);

    public List<ChildDetails> getChildOnName(String chname);

    public boolean saveFcChildTemp(FcChildTemp fcct);
    
    public Object getCWCMinutes(int mid);

    public List<String> getReportFoundChild();

    public FcChildTemp foundreportlist( String childprofileid);
}
