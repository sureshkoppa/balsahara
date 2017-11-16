/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.dpo.Actions;


//import com.cdac.caseworker.DTO.caseWorkDTO;

import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildDetailsPK;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.DistrictMaster;
//import com.cdac.usermanagement.ORM.ChildDetails;
//import com.cdac.usermanagement.ORM.
import com.cdac.usermanagement.Service.AdminService;
import com.cdac.caseworker.Service.CaseWorkerService;
import com.cdac.dpo.Service.DpoService;
import com.cdac.usermanagement.ORM.SiChildDetails;
import com.cdac.usermanagement.ORM.UserMaster;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import com.cdac.common.util.CurrentDateProvider;
import com.cdac.common.util.StringToDate;
import com.cdac.usermanagement.ORM.SiChildDetailsPK;


/**
 *
 * @author Ramu Parupalli
 */

public class SICDSaveAction extends ActionSupport implements ServletRequestAware,ModelDriven,SessionAware,ServletResponseAware{

    
     private String childProfileId;
   private Map session;
     private HttpServletRequest request;
     private HttpServletResponse response;
     private DistrictMaster districtMaster;
     private String message;
     
     private DpoService dpoService;
     
     private ChildMaster childMaster=new ChildMaster();
    
    //private DpoAction dpoAction;
     private AdminService adminService;
     private CaseWorkerService caseWorkerService;
     
   // private DistrictMaster districtMaster=new DistrictMaster();
  //  private Object DistrictMaster;
     
     // for SI Childdetails_CWCJJB
      private String userDistrictId;
      private List<String> homesInADistrict=new ArrayList<String>();
      private String selctedHomeId;
      private List<ChildMaster> callforDPOChildList;
      private ChildDetails childDetails;  
      private String religion_other;
      
      
      private SiChildDetailsPK siChildDetailsPK=new SiChildDetailsPK();
      private SiChildDetails siChildDetails=new SiChildDetails(); //for model driven save 
      
      private String dob;     
      //for model Driven
      //<s:hidden name="formname" value="sicd"/>
      private String hiddenChildProfileId;
      
      private String orderDate_String;
      private String dob_String;

    public String getDob_String() {
        return dob_String;
    }

    public void setDob_String(String dob_String) {
        this.dob_String = dob_String;
    }

    public String getOrderDate_String() {
        return orderDate_String;
    }

    public void setOrderDate_String(String orderDate_String) {
        this.orderDate_String = orderDate_String;
    }
      
      
      

    public String getHiddenChildProfileId() {
        return hiddenChildProfileId;
    }

    public void setHiddenChildProfileId(String hiddenChildProfileId) {
        this.hiddenChildProfileId = hiddenChildProfileId;
    }

    public SiChildDetailsPK getSiChildDetailsPK() {
        return siChildDetailsPK;
    }

    public void setSiChildDetailsPK(SiChildDetailsPK siChildDetailsPK) {
        this.siChildDetailsPK = siChildDetailsPK;
    }

    public String getReligion_other() {
        return religion_other;
    }

    public void setReligion_other(String religion_other) {
        this.religion_other = religion_other;
    }
      
      

  
    
    

    public SiChildDetails getSiChildDetails() {
        return siChildDetails;
    }

    public void setSiChildDetails(SiChildDetails siChildDetails) {
        this.siChildDetails = siChildDetails;
    }

    

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
   
     public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public AdminService getAdminService() {
        return adminService;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }

    public CaseWorkerService getCaseWorkerService() {
        return caseWorkerService;
    }

    public void setCaseWorkerService(CaseWorkerService caseWorkerService) {
        this.caseWorkerService = caseWorkerService;
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


    public DpoService getDpoService() {
        return dpoService;
    }

    public void setDpoService(DpoService dpoService) {
        this.dpoService = dpoService;
    }

    public DistrictMaster getDistrictMaster() {
        return districtMaster;
    }

    public void setDistrictMaster(DistrictMaster districtMaster) {
        this.districtMaster = districtMaster;
    }

    public String getUserDistrictId() {
        return userDistrictId;
    }

    public void setUserDistrictId(String userDistrictId) {
        this.userDistrictId = userDistrictId;
    }

    public List<String> getHomesInADistrict() {
        return homesInADistrict;
    }

    public void setHomesInADistrict(List<String> homesInADistrict) {
        this.homesInADistrict = homesInADistrict;
    }

    public String getSelctedHomeId() {
        return selctedHomeId;
    }

    public void setSelctedHomeId(String selctedHomeId) {
        this.selctedHomeId = selctedHomeId;
    }

    public List<ChildMaster> getCallforDPOChildList() {
        return callforDPOChildList;
    }

    public void setCallforDPOChildList(List<ChildMaster> callforDPOChildList) {
        this.callforDPOChildList = callforDPOChildList;
    }

    public ChildDetails getChildDetails() {
        return childDetails;
    }

    public void setChildDetails(ChildDetails childDetails) {
        this.childDetails = childDetails;
    }

  

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
     
 
public String execute() throws Exception {
    System.out.println("************************INSIDE EXECUTE***************************"+getSiChildDetails().getChildName());
     String result="error";
     String childid=request.getParameter("childProfileId");
        //throw new UnsupportedOperationException("Not supported yet.");
    try {
             
         siChildDetailsPK.setChildProfileId(request.getParameter("childProfileId"));
         siChildDetailsPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
         siChildDetails.setSiChildDetailsPK(siChildDetailsPK);
         siChildDetails.setOrderDate(StringToDate.getStringToDate(getOrderDate_String()));
         siChildDetails.setDob(StringToDate.getStringToDate(getDob_String()));
         
          if(siChildDetails.getReligion().equalsIgnoreCase("Other")){        
        siChildDetails.setReligion(getReligion_other());
        }
          System.out.println("--Age------------------------------- > "+getSiChildDetails().getAge());
         result=dpoService.saveSIChildDetails(siChildDetails);
        
    } catch (Exception e) {
        System.out.println("************************Error Occured***************************");
        e.printStackTrace();
        
    }
       if(result.equalsIgnoreCase("success"))
        setMessage(getText("global.errmsg.dpoChDetSavSucc")+childid);
    else if(result.equalsIgnoreCase("error"))
        setMessage(getText("global.errmsg.dpoChDetSavErr")+childid);  
  
  return result;
         
  
    }
  
  
 /* public String saveSIChildDetails()
  {
         siChildDetailsPK.setChildProfileId(getChildProfileId());
          siChildDetailsPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
          siChildDetails.setSiChildDetailsPK(siChildDetailsPK);
          System.out.println("--Age------------------------------- > "+getSiChildDetails().getAge());
         return dpoService.saveSIChildDetails(siChildDetails);
  
  }*/
  


    public void setServletRequest(HttpServletRequest hsr) {
        //throw new UnsupportedOperationException("Not supported yet.");
        request=hsr;
    }

    public void setServletResponse(HttpServletResponse hsr) {
        //throw new UnsupportedOperationException("Not supported yet.");
        response=hsr;
    }

    public Object getModel() {
       // throw new UnsupportedOperationException("Not supported yet.");
        return siChildDetails;
    }

    
   
     

    }















