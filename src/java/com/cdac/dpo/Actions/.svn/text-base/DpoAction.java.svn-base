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
import com.cdac.dpo.DTO.ChildFamilyDetailsDTO;
import com.cdac.usermanagement.ORM.SiFamily;
import com.cdac.usermanagement.ORM.SiFamilyDetails;
//import com.cdac.usermanagement.ORM.SiFamilyDetailsPK;
import com.cdac.usermanagement.ORM.SiFamilyPK;
import com.cdac.usermanagement.ORM.SiChildhistoryDetails;
import com.cdac.usermanagement.ORM.SiChildhistoryDetailsPK;
import com.cdac.usermanagement.ORM.ResultOfEnquery;
import com.cdac.usermanagement.ORM.ResultOfEnqueryPK;


/**
 *
 * @author Ramu Parupalli
 */

public class DpoAction extends ActionSupport implements ServletRequestAware,ModelDriven,SessionAware,ServletResponseAware{

    
    private String test_case;
    private String childProfileId;
     private List<ChildMaster> transferedChildList;
     private List<DistrictMaster> districtList;
    private String transChildId;
    private ChildMaster transChildMaster;
     private Map session;
     private HttpServletRequest request;
     private HttpServletResponse response;
     private DistrictMaster districtMaster;
     private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
     
     
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
      
      private List<String> childProfileIdList;
      
      
      //private SiChildDetailsPK siChildDetailsPK=new SiChildDetailsPK();
      private SiChildDetails siChildDetails=new SiChildDetails(); //for model driven save 
      
      private String dob;     
      //for model Driven
      //<s:hidden name="formname" value="sicd"/>

    
      //for SI Family Details
    private SiFamilyDetails siFamilyDetails=new SiFamilyDetails();
  //  private SiFamilyDetailsPK siFamilyDetailsPK=new SiFamilyDetailsPK();
    private String child_id;
    private  List<ChildFamilyDetailsDTO> childFamilyDetailsDTO;
      private String[] relation;
     private String[] name;
     private Integer[] age;
     private String[] health;
     private String[] occupation;
     private String[] disability;
     private String[] habits;
     private String[] wages;
     //private String[] ;
     
       // for SI ChildBackground Details
    private SiFamily siFamily=new SiFamily();
    private SiFamilyPK siFamilyPK=new SiFamilyPK();
    
    //for SI Child History Details
    
    private SiChildhistoryDetails siChildhistoryDetails=new SiChildhistoryDetails();
    private SiChildhistoryDetailsPK siChildhistoryDetailsPK=new SiChildhistoryDetailsPK();
    
    // for SI Result of Enquiry
    
    private ResultOfEnquery resultOfEnquery=new ResultOfEnquery();
    private ResultOfEnqueryPK resultOfEnqueryPK=new ResultOfEnqueryPK();
    

    public SiFamily getSiFamily() {
        return siFamily;
    }

    public void setSiFamily(SiFamily siFamily) {
        this.siFamily = siFamily;
    }

    public SiFamilyPK getSiFamilyPK() {
        return siFamilyPK;
    }

    public void setSiFamilyPK(SiFamilyPK siFamilyPK) {
        this.siFamilyPK = siFamilyPK;
    }

    public SiChildhistoryDetails getSiChildhistoryDetails() {
        return siChildhistoryDetails;
    }

    public void setSiChildhistoryDetails(SiChildhistoryDetails siChildhistoryDetails) {
        this.siChildhistoryDetails = siChildhistoryDetails;
    }

    public SiChildhistoryDetailsPK getSiChildhistoryDetailsPK() {
        return siChildhistoryDetailsPK;
    }

    public void setSiChildhistoryDetailsPK(SiChildhistoryDetailsPK siChildhistoryDetailsPK) {
        this.siChildhistoryDetailsPK = siChildhistoryDetailsPK;
    }
     
     
      
      
      public List<String> getChildProfileIdList() {
        return childProfileIdList;
    }

    public void setChildProfileIdList(List<String> childProfileIdList) {
        this.childProfileIdList = childProfileIdList;
    }

    public String getChild_id() {
        return child_id;
    }

    public void setChild_id(String child_id) {
        this.child_id = child_id;
    }

    public SiFamilyDetails getSiFamilyDetails() {
        return siFamilyDetails;
    }

    public void setSiFamilyDetails(SiFamilyDetails siFamilyDetails) {
        this.siFamilyDetails = siFamilyDetails;
    }

  /*  public SiFamilyDetailsPK getSiFamilyDetailsPK() {
        return siFamilyDetailsPK;
    }

    public void setSiFamilyDetailsPK(SiFamilyDetailsPK siFamilyDetailsPK) {
        this.siFamilyDetailsPK = siFamilyDetailsPK;
    }*/

    public List<ChildFamilyDetailsDTO> getChildFamilyDetailsDTO() {
        return childFamilyDetailsDTO;
    }

    public void setChildFamilyDetailsDTO(List<ChildFamilyDetailsDTO> childFamilyDetailsDTO) {
        this.childFamilyDetailsDTO = childFamilyDetailsDTO;
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


      
    
      
   

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getTest_case() {
        return test_case;
    }

    public void setTest_case(String test_case) {
        this.test_case = test_case;
    }

    public String getTransChildId() {
        return transChildId;
    }

    public void setTransChildId(String transChildId) {
        this.transChildId = transChildId;
    }

    public ChildMaster getTransChildMaster() {
        return transChildMaster;
    }

    public void setTransChildMaster(ChildMaster transChildMaster) {
        this.transChildMaster = transChildMaster;
    }

    public List<ChildMaster> getTransferedChildList() {
        return transferedChildList;
    }

    public void setTransferedChildList(List<ChildMaster> transferedChildList) {
        this.transferedChildList = transferedChildList;
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

    

    public List<DistrictMaster> getDistrictList() {
        return districtList;
    }

    public void setDistrictList(List<DistrictMaster> districtList) {
        this.districtList = districtList;
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

    public String[] getDisability() {
        return disability;
    }

    public void setDisability(String[] disability) {
        this.disability = disability;
    }

    public String[] getHabits() {
        return habits;
    }

    public void setHabits(String[] habits) {
        this.habits = habits;
    }

    public String[] getHealth() {
        return health;
    }

    public void setHealth(String[] health) {
        this.health = health;
    }

    public String[] getName() {
        return name;
    }

    public void setName(String[] name) {
        this.name = name;
    }

    public String[] getOccupation() {
        return occupation;
    }

    public void setOccupation(String[] occupation) {
        this.occupation = occupation;
    }

    public String[] getRelation() {
        return relation;
    }

    public void setRelation(String[] relation) {
        this.relation = relation;
    }

    public String[] getWages() {
        return wages;
    }

    public void setWages(String[] wages) {
        this.wages = wages;
    }

    public Integer[] getAge() {
        return age;
    }

    public void setAge(Integer[] age) {
        this.age = age;
    }

   
    
 /*Swetha added on 05-02-2013 for multilingual START*/ 
    public String en() {
//english
  return "success";
}

public String hi() {
//hindi
System.out.println("hindi");
  return "success";
}

public String te() {
//telugu
System.out.println("telugu");
  return "success";
}
/*Swetha added on 05-02-2013 for multilingual END*/


      public String populateAllTransferred()
   {
        String result="error";
    //System.out.println("---------- inside populateAllChildrenInAHome -------------");
   
    //get current home id
    String homeId=ActionContext.getContext().getSession().get("homeid").toString();

        try {
            System.out.println("home id from session = "+homeId);
                       
            if(test_case.equalsIgnoreCase("sicdbs")){ //social investigation childlist before select
            setTransferedChildList(caseWorkerService.getTransferedChildListForThisHome(homeId));
                 
            result="success";
            
            }
            else if(test_case.equalsIgnoreCase("sicdas"))  //social investigation child details after select
               {
                System.out.println("inside----------------sicdas");
                System.out.println("fetched profile id----------------"+getChildProfileId());
                
                 setTransferedChildList(caseWorkerService.getTransChildrenList(homeId));
                  
                  setTransChildMaster(caseWorkerService.getTransferredChildDetails(getTransChildId()));
                  
                    result="success";
                   
               }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }

      return "success";
   }

  public String getDistricts()   
  {  
     System.out.println("inside get districts---------------------> ");
      String result="error";
    try {
       List<DistrictMaster> disList=adminService.getDistrictList();
        
        for (int i = 0; i < disList.size(); i++) {
            String rb_dis = disList.get(i).getStateName()+"."+disList.get(i).getDistrictId();
            disList.get(i).setDistrictName(getText("global.district."+rb_dis));
        }
        setDistrictList(disList);
        System.out.println("district name---------------->>>>>"+getDistrictList().get(1));
        result="success";
    } catch (Exception e) {
        e.printStackTrace();
    }

return result;
  }
  
  public String populateHomesInADistrict()
{
//System.out.println("*** Inside populateHomesInADistrict() *** districtId="+getUserDistrictId());
String result="error";

    try {
        //String districtFromReq=request.getParameter("userDistrictId");
        //System.out.println("_______________________________>>>>>request  = "+request);
        setHomesInADistrict(adminService.getHomesInADistrictList(getUserDistrictId()));
        result="success";
    } catch (Exception e) {
        e.printStackTrace();
    }
//System.out.println(" return value from populateHomesInADistrict()----------------------> "+result);
return result;

}
  
  public String populateCallforDPOChildsInAHome()
          
  {
      String result="error";
  try{
       //setCallforDPOChildList(dpoService.getCallforDPOChildList(getSelctedHomeId()));
      setChildProfileIdList(dpoService.getCallforDPOChildIdStringList(getSelctedHomeId()));
  
  }
  catch(Exception e){
  e.printStackTrace();
  }
  return result;
  }

  public String populateChildDetailsfromChilddetail()
  {
      
      String cpi=request.getParameter("childProfileId");
      
   System.out.println("inside populateChildDetailsfromChilddetail ---------> profile id = "+cpi);         
   String result="error";
   
   try{
   
     setChildDetails(dpoService.getChildDetails(cpi));
     ActionContext.getContext().getSession().put("ChildProfList", childDetails);
     System.out.println("inside populateChildDetailsfromChilddetail ---------> child object retrived = "+getChildDetails()); 
     
     System.out.println("inside populateChildDetailsfromChilddetail ---------> child object retrived = "+getChildDetails().getDob()); 
     
     result="success";
   }
   catch(Exception e)
   {
   e.printStackTrace();
   }
   
   return result;
  
  }
  
  public String SaveChildFamilyDetails(){
  String result="error";
  
         childFamilyDetailsDTO = new ArrayList<ChildFamilyDetailsDTO>(relation.length);
          System.out.println("array length: "+relation.length);
           //boolean insertResult=false;
            for(int i=0;i<relation.length;i++)
        {
        // siFamilyDetailsPK.setChildProfileId(getC-hild_id());
        // siFamilyDetailsPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
         //siFamilyDetails.setSiFamilyDetailsPK(siFamilyDetailsPK);
            siFamilyDetails.setChildProfileId(getChild_id());
         //siFamilyDetails.setChildProfileId(getChild_id());
         siFamilyDetails.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
         siFamilyDetails.setRelation(getRelation()[i]);
         siFamilyDetails.setName(getName()[i]);
         siFamilyDetails.setAge(getAge()[i]);
         siFamilyDetails.setHealth(getHealth()[i]);
         siFamilyDetails.setHabits(getHabits()[i]);
         siFamilyDetails.setOccupation(getOccupation()[i]);
         siFamilyDetails.setWages(getWages()[i]);
         siFamilyDetails.setDisability(getDisability()[i]);
         result = dpoService.saveSIFamilyDetails(siFamilyDetails);
            
        }
         //String cpi=request.getParameter("child_id");
        // System.out.println("childprofileid--------------->"+cpi);
         //System.out.println("childprofileid--------------->"+getChildProfileId());
        // siFamilyDetailsPK.setChildProfileId(getChild_id());
        // siFamilyDetailsPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        // siFamilyDetails.setSiFamilyDetailsPK(siFamilyDetailsPK);
         //result = dpoService.saveSIFamilyDetails(siFamilyDetails); 
         //System.out.println("-------------------------------------------------> "+result);
         
           if(result.equalsIgnoreCase("success"))
        setMessage(getChild_id()+getText("global.errmsg.dpoChFamDetSavSucc"));
    else if(result.equalsIgnoreCase("error"))
        setMessage(getText("global.errmsg.dpoChFamDetSavErr")+getChild_id());  
   return result;  
            
            
         
         
         //
  
//  return result;
   }
  
  
  public String SaveChildBackgroundDetails()
  {
  String result="error";
          try {
           siFamilyPK.setChildProfileId(getChild_id());
        siFamilyPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        siFamily.setSiFamilyPK(siFamilyPK);
        result= dpoService.saveChildBackgrounddetails(siFamily);
      } catch (Exception e) {
          e.printStackTrace();
      } 
           if(result.equalsIgnoreCase("success"))
        setMessage(getChild_id()+getText("global.errmsg.dpoChBacDetSavSucc"));
    else if(result.equalsIgnoreCase("error"))
        setMessage(getText("global.errmsg.dpoChBacDetSavErr")+getChild_id());  
  
  return result;
  
  }
  
  public String SaveChildHistory()
  {
      String result="error";
      try {
          siChildhistoryDetailsPK.setChildProfileId(getChild_id());
    siChildhistoryDetailsPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
    siChildhistoryDetails.setSiChildhistoryDetailsPK(siChildhistoryDetailsPK);
    result= dpoService.saveChildHistory(siChildhistoryDetails);
      } catch (Exception e) {
          e.printStackTrace();
      }
        
    if(result.equalsIgnoreCase("success"))
        setMessage(getText(getChild_id()+"global.errmsg.dpoChHistDetSavSucc"));
    else if(result.equalsIgnoreCase("error"))
        setMessage(getText("global.errmsg.dpoChHistDetSavErr")+getChild_id());  
  
  return result;
   
  }
  
  public String SaveResultofEnquiry()
  {
      String result="error";
      try {
          resultOfEnqueryPK.setChildProfileId(getChild_id());
  resultOfEnqueryPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
  resultOfEnquery.setResultOfEnqueryPK(resultOfEnqueryPK);
  result=dpoService.saveReultofEnquiry(resultOfEnquery);
      } catch (Exception e) {
          e.printStackTrace();
      } 
  
  if(result.equalsIgnoreCase("success"))
        setMessage(getChild_id()+getText("global.errmsg.dpoChEnqDetSavSucc"));
    else if(result.equalsIgnoreCase("error"))
        setMessage(getText("global.errmsg.dpoChEnqDetSavErr")+getChild_id());  
  
  return result;
      
  }
  
  
  /*
  public String saveSIChildDetails()
  {
       siChildDetailsPK.setChildProfileId(getChildProfileId());
          siChildDetailsPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
          siChildDetails.setSiChildDetailsPK(siChildDetailsPK);
          System.out.println("--Age------------------------------- > "+getSiChildDetails().getAge());
         return dpoService.saveSIChildDetails(siChildDetails);
  
     
  }
  */
    public Object getModel() {
        
      
        Object obj=null;
      
        try {
            System.out.println("form Nmae-------------------------------->>>>>"+request.getParameter("formname"));
            
            if(request.getParameter("formname").equalsIgnoreCase("sicd"))
            {
            obj = siChildDetails;
            } 
            
          /*  else if(request.getParameter("formname").equalsIgnoreCase("sifmd1"))
            {
            obj=siFamilyDetails;
            }*/
           else if(request.getParameter("formname").equalsIgnoreCase("sifbg1"))
            {
            obj=siFamily;
            }
            else if(request.getParameter("formname").equalsIgnoreCase("sich1"))
            {
            obj=siChildhistoryDetails;
            }
            
            else if(request.getParameter("formname").equalsIgnoreCase("sireq1"))
            {
            obj=resultOfEnquery;
            }
            
        } catch (NullPointerException e) {
            obj =  "Hello";
        }
        
        
        return obj;
        
      /*  try {
            if(getSession().get("formname").toString().equalsIgnoreCase("sicd"))
        {
            System.out.println("formname in dop action-------------------?"+getSession().get("formname").toString());
        return siChildDetails;
        }
        else 
        {
        return "hello";
        }
            
        } catch (NullPointerException e) {
            return "hello";
            
        }*/
        
        
       
    
    }

    public void setServletRequest(HttpServletRequest hsr) {
        //throw new UnsupportedOperationException("Not supported yet.");
        request=hsr;
    }

    public void setServletResponse(HttpServletResponse hsr) {
        //throw new UnsupportedOperationException("Not supported yet.");
        response=hsr;
    }

    
   
     

    }















