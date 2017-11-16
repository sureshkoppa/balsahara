/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.Actions;

import com.cdac.caseworker.Service.CaseWorkerService;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.IcpPersonalDetails;
import com.cdac.usermanagement.ORM.IcpPostRelease;
import com.cdac.usermanagement.ORM.IcpPreRelease;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.cdac.common.util.StringToDate;
/**
 *
 * @author suresh
 */
public class CaseWorkerICPAction extends ActionSupport implements ServletRequestAware,ModelDriven,SessionAware{
    
    public CaseWorkerICPAction() {
    }
    
     //spring DI  
     private CaseWorkerService caseWorkerService;

    public CaseWorkerService getCaseWorkerService() {
        return caseWorkerService;
    }

    public void setCaseWorkerService(CaseWorkerService caseWorkerService) {
        this.caseWorkerService = caseWorkerService;
    }
     
    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    
    public String execute() throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    public Object getModel()
    {
                    if( request.getParameter("formName").equalsIgnoreCase("icp_personal"))
                    {
                      
                        return icpPersonelDetails;
                    }
                    else if( request.getParameter("formName").equalsIgnoreCase("icp_preRelease"))
                    {
                        System.out.println("getModel pre release----->");
                        return icpPreRelease;
                    }
                     else if( request.getParameter("formName").equalsIgnoreCase("icp_postRelease"))
                    {
                        System.out.println("getModel post release----->");
                        return icpPostRelease;
                    }
                    else
                    {
                           return "Hello";
                    }
    }
    
    private IcpPersonalDetails icpPersonelDetails=new IcpPersonalDetails();

    public IcpPersonalDetails getIcpPersonelDetails() {
        return icpPersonelDetails;
    }

    public void setIcpPersonelDetails(IcpPersonalDetails icpPersonelDetails) {
        this.icpPersonelDetails = icpPersonelDetails;
    }
    
    private IcpPreRelease icpPreRelease=new IcpPreRelease();

    public IcpPreRelease getIcpPreRelease() {
        return icpPreRelease;
    }

    public void setIcpPreRelease(IcpPreRelease icpPreRelease) {
        this.icpPreRelease = icpPreRelease;
    }

    private IcpPostRelease icpPostRelease=new IcpPostRelease();

    public IcpPostRelease getIcpPostRelease() {
        return icpPostRelease;
    }

    public void setIcpPostRelease(IcpPostRelease icpPostRelease) {
        this.icpPostRelease = icpPostRelease;
    }

    
    public String icpPersonnalSave()
    {
          icpPersonelDetails.setChildMaster(new ChildMaster(icpPersonelDetails.getChildProfileId()));
        
          boolean save=caseWorkerService.saveIcpPersonalDetails(icpPersonelDetails);
           
          if(save)
          {
              setMessage(getText("mess.succ.saveICPPersDet"));
              return SUCCESS;
          }
          else
          {
              setMessage(getText("mess.fail.saveICPPersDet"));
             return ERROR;   
          }
           
    }
    private String dateRelease_1;

    public String getDateRelease_1() {
        return dateRelease_1;
    }

    public void setDateRelease_1(String dateRelease_1) {
        this.dateRelease_1 = dateRelease_1;
    }

   

    private String dateRepatriation_1;

    public String getDateRepatriation_1() {
        return dateRepatriation_1;
    }

    public void setDateRepatriation_1(String dateRepatriation_1) {
        this.dateRepatriation_1 = dateRepatriation_1;
    }

    

    public String icpPreReleaseSave()
    {
           icpPreRelease.setChildMaster(new ChildMaster(icpPreRelease.getChildProfileId()));
           icpPreRelease.setDateRelease(StringToDate.getStringToDate(dateRelease_1));
           icpPreRelease.setDateRepatriation(StringToDate.getStringToDate(dateRepatriation_1));
          boolean save=caseWorkerService.saveIcpPreRelease(icpPreRelease);
           
          if(save)
          {
           setMessage(getText("mess.succ.saveICPPreRelDet"));
           return SUCCESS;
          }
          else
          {
             setMessage(getText("mess.fail.saveICPPreRelDet"));
             return ERROR;   
          }
    }
    
    private String dateAdmit_1;

    public String getDateAdmit_1() {
        return dateAdmit_1;
    }

    public void setDateAdmit_1(String dateAdmit_1) {
        this.dateAdmit_1 = dateAdmit_1;
    }

     public String icpPostReleaseSave()
    {
           icpPostRelease.setChildMaster(new ChildMaster(icpPostRelease.getChildProfileId()));
           icpPostRelease.setDateAdmit(StringToDate.getStringToDate(dateAdmit_1));
        
          boolean save=caseWorkerService.saveIcpPostRelease(icpPostRelease);
           
          if(save)
          {
              setMessage(getText("mess.succ.saveICPPostRelDet"));
              return SUCCESS;
          }
          else
          {
              setMessage(getText("mess.fail.saveICPPostRelDet"));
             return ERROR;   
          }
    }
    
    private HttpServletRequest request;
     public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }
     
     
     private Map session;
     public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    } 
}
