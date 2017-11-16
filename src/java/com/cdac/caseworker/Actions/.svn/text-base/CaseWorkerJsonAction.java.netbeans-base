/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.Actions;


import com.cdac.caseworker.DTO.ChildDTO;
import com.cdac.caseworker.Service.CaseWorkerService;

import com.cdac.caseworker.Service.CaseWorkerServiceImpl;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.opensymphony.xwork2.ActionContext;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;






/**
 *
 * @author ANUPAM
 */
public class CaseWorkerJsonAction implements ServletRequestAware {
    
   private HttpServletRequest hsr;
    
   private CaseWorkerService caseWorkerService;

   private String serverMessage;
   
   
   private String profileId;
   
   private ChildMaster child;
   
   //private List lists = new ArrayList(1);
   
   /*variavles added for admission view integration*/
   private String searchType;
   private String childName;
   
   private String childNature;
   
   private int admYear;
private int admMonth;
private String caste;
private String admToDate;
private String admFromDate;
private String status;

private String distinctParm;
private String term;

private List<String> distinctValues;

private List<ChildDTO> childDTOList;

private Map<String,Integer> reportMap;

private String homeId,searchParm;

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public String getSearchParm() {
        return searchParm;
    }

    public void setSearchParm(String searchParm) {
        this.searchParm = searchParm;
    }



    public Map<String, Integer> getReportMap() {
        return reportMap;
    }

    public void setReportMap(Map<String, Integer> reportMap) {
        this.reportMap = reportMap;
    }



    public List<ChildDTO> getChildDTOList() {
        return childDTOList;
    }

    public void setChildDTOList(List<ChildDTO> childDTOList) {
        this.childDTOList = childDTOList;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }
    
    
    
    public String getDistinctParm() {
        return distinctParm;
    }

    public void setDistinctParm(String distinctParm) {
        this.distinctParm = distinctParm;
    }

    public List<String> getDistinctValues() {
        return distinctValues;
    }

    public void setDistinctValues(List<String> distinctValues) {
        this.distinctValues = distinctValues;
    }

    

    public String getAdmFromDate() {
        return admFromDate;
    }

    public void setAdmFromDate(String admFromDate) {
        this.admFromDate = admFromDate;
    }

    public int getAdmMonth() {
        return admMonth;
    }

    public void setAdmMonth(int admMonth) {
        this.admMonth = admMonth;
    }

    public String getAdmToDate() {
        return admToDate;
    }

    public void setAdmToDate(String admToDate) {
        this.admToDate = admToDate;
    }

    public int getAdmYear() {
        return admYear;
    }

    public void setAdmYear(int admYear) {
        this.admYear = admYear;
    }

    public String getCaste() {
        return caste;
    }

    public void setCaste(String caste) {
        this.caste = caste;
    }

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public String getChildNature() {
        return childNature;
    }

    public void setChildNature(String childNature) {
        this.childNature = childNature;
    }



    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }
   
    
   
    public String getServerMessage() {
        return serverMessage;
    }

    public void setServerMessage(String serverMessage) {
        this.serverMessage = serverMessage;
    }

    

    public String getProfileId() {
        return profileId;
    }

    public void setProfileId(String profileId) {
        this.profileId = profileId;
    }

    public ChildMaster getChild() {
        return child;
    }

    public void setChild(ChildMaster child) {
        this.child = child;
    }

    
    public CaseWorkerService getCaseWorkerService() {
        return caseWorkerService;
    }
   
    public void setCaseWorkerService(CaseWorkerService caseWorkerService) {
        this.caseWorkerService = caseWorkerService;
    }
    
    

    
   
   
   public String getChildDetails(){
   
       
       
       
       try{
           
       setChild(caseWorkerService.getChild_by_id(getProfileId()));
       
       //----Nullify the non required vals
    child.setCounselingDetailsCollection(null);   
    child.setHtWtRegisterList(null);
    child.setCasehistoryAdolescenceDetailsList(null);
    child.setExamAttendenceList(null);
    child.setCasehistoryPrioradmEducationList(null);
    child.setCasehistoryPersonalList(null);
    child.setVocationalDetailsList(null);
    child.setSiChildDetailsList(null);
    child.setChildEnqueryList(null);
    child.setHomeId(null);
    child.setDistrictId(null);
    child.setExamMarksList(null);
    child.setEducationAdmission(null);
    child.setReferralRegisterList(null);
    child.setDischargeRegister(null);
    child.setOpRegisterList(null);
    child.setResultOfEnqueryList(null);
    child.setChildHomeStatusList(null);
    child.setChildrenAssesmentRegisterList(null);
    
    child.setChildDetailsList(null);
    
    child.setCasehistorySocialhistoryPrioradmList(null);
    child.setEducationAttendenceList(null);
    child.setSiChildhistoryDetailsList(null);
    child.setInterviewRegisterList(null);
    child.setAdmMedicalRegister(null);
    child.setSiFamilyList(null);
    child.setCasehistoryFamilyDetailsList(null);
    child.setChildStatusList(null);       
      
       //----Nullify non req vals
       
       
           //System.out.println("inside getChilddetails() ....."+child);
       }
       catch(Exception e){
           System.out.println("Could NOT fetch child details");
           e.printStackTrace();
       }
       return "success";
   
   } 
   
   public String saveChangedChildDetails(){
       
       System.out.println("inside saveChangedChildDetails()");
       
       Map<String,String[]> parameterMap = hsr.getParameterMap();
       
       String result = caseWorkerService.saveChangedChildDetails(parameterMap);
      
       //System.out.println("Inside saveChangedDetails() request = =  = "+en);
       
       
       
       setServerMessage(result);
       
   
       return "success";
       
   }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.hsr=hsr;
        //throw new UnsupportedOperationException("Not supported yet.");
    }

     public String searchChildDTOs(){
   
       String homeId = getLoggedInhome();
       
       //System.out.println("homeId =  "+homeId+ " childName"+childName);
       
       if(searchType.equalsIgnoreCase("childName"))
       setChildDTOList(caseWorkerService.getChildDTOListByName(homeId, childName));
       
       else if(searchType.equalsIgnoreCase("childNature"))
       setChildDTOList(caseWorkerService.getChildDTOListByNature(homeId, childNature)); 
       
       else if(searchType.equalsIgnoreCase("2dates"))
       setChildDTOList(caseWorkerService.getChildDTOListBy2Dates(homeId,admFromDate,admToDate)); 
       
       else if(searchType.equalsIgnoreCase("childCaste"))
       setChildDTOList(caseWorkerService.getChildDTOListByCaste(homeId, caste));
       
       else if(searchType.equalsIgnoreCase("monthYear"))
       setChildDTOList(caseWorkerService.getChildDTOListByMonthAndYear(homeId, admMonth, admYear));
       
       else if(searchType.equalsIgnoreCase("status"))
       setChildDTOList(caseWorkerService.getChildDTOListByHomeAndStatus(homeId,status));
            
       
       return "success";
   
   }
     
     public String getDistinctItemsForCombo(){
     
         setDistinctValues(caseWorkerService.getDistinctValues(getDistinctParm()));
         
         return "success";
         
     }
     
     public String getDistinctItemsForComboStartsWithPattern(){
     
         setDistinctValues(caseWorkerService.getDistinctValuesStartingWithPattern(getDistinctParm(), getTerm()));
         
         return "success";
         
     }
     
     public String getLoggedInhome()
    {
   return ActionContext.getContext().getSession().get("homeid").toString(); 
    
    }
     
     public String getChildMasterReport(){
     
         System.out.println("IN-------------------------------------------------");
         setReportMap(caseWorkerService.fetchChildMasterReports(getHomeId(), getSearchParm()));
         
         return "success";
     
     }
     
    
   
}
