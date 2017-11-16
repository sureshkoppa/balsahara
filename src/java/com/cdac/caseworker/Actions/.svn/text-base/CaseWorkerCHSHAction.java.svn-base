/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.Actions;

import com.cdac.caseworker.DTO.AdmissiontoCHSHDTO;
import com.cdac.caseworker.Service.CaseWorkerService;
import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;



/**
 *
 * @author Ramu Parupalli
 */
public class CaseWorkerCHSHAction extends ActionSupport implements ServletRequestAware,ModelDriven,SessionAware,ServletResponseAware {

    /* forward name="success" path="" */
  //  private static final String SUCCESS = "success";
    private Map session;
     private HttpServletRequest request;
     private HttpServletResponse response;
     private CaseWorkerService caseWorkerService;
     private AdmissiontoCHSHDTO admissiontoCHSHDTO =new AdmissiontoCHSHDTO();
     private ChildMaster childMaster=new ChildMaster();
     private String transChildId;
     private String message;
     private String formName;

    public String getFormName() {
        return formName;
    }

    public void setFormName(String formName) {
        this.formName = formName;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }
     
    
     

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public AdmissiontoCHSHDTO getAdmissiontoCHSHDTO() {
        return admissiontoCHSHDTO;
    }

    public void setAdmissiontoCHSHDTO(AdmissiontoCHSHDTO admissiontoCHSHDTO) {
        this.admissiontoCHSHDTO = admissiontoCHSHDTO;
    }

    public String getTransChildId() {
        return transChildId;
    }

    public void setTransChildId(String transChildId) {
        this.transChildId = transChildId;
    }

    public CaseWorkerService getCaseWorkerService() {
        return caseWorkerService;
    }

    public void setCaseWorkerService(CaseWorkerService caseWorkerService) {
        this.caseWorkerService = caseWorkerService;
    }

    public ChildMaster getChildMaster() {
        return childMaster;
    }

    public void setChildMaster(ChildMaster childMaster) {
        this.childMaster = childMaster;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
    

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
   
   public String getExistingAdmissiontoCHSHDTO()
   {
    String result="error";

       try {
           System.out.println("--------------------------------------------->>>>>>"+transChildId);
           //String currentHomeId=ActionContext.getContext().getSession().get("homeid").toString();
           //setTransferedChildList(caseWorkerService.getTransferedChildListForThisHome(currentHomeId));
           ChildMaster childMaster = caseWorkerService.getTransferredChildDetails(getTransChildId());
           ChildDetails childDetails = caseWorkerService.getExistingChildDetails(getTransChildId());
           
           //ChildMaster childMaster = caseWorkerService.getTransferredChildDetails("RUB2010_000146");
           //ChildDetails childDetails = caseWorkerService.getExistingChildDetails("RUB2010_000146");
           
			System.out.println("Copying properties from fromBean to toBean");
                        
                        
			BeanUtils.copyProperties(admissiontoCHSHDTO,childMaster);
                        if(childDetails!=null)
                        BeanUtils.copyProperties(admissiontoCHSHDTO,childDetails);
		
           
           System.out.println("CRETEDED BEAN  = "+admissiontoCHSHDTO.toString());
           
           result="success";
       } catch (Exception e) {
           System.out.println("ERROR in getExistingAdmissiontoCHSHDTO");
           e.printStackTrace();
       }

     return result;



   }
  
     public String admissionToCHSave()
   {
       System.out.println("hello I am here in admissionToCHSave");
        String result="error";
       String homeIdFromSession=ActionContext.getContext().getSession().get("homeid").toString();
     String userIdFromSession=ActionContext.getContext().getSession().get("currentUser").toString();
   
   getAdmissiontoCHSHDTO().setLastModifiedBy(userIdFromSession);
   System.out.println("TransChildid  in action-------------------->>>"+admissiontoCHSHDTO.getTransChildId());
         //result= caseWorkerService.addChildtoCHSH(childMaster,homeIdFromSession,getAdmissiontoCHSHDTO());
          result= caseWorkerService.addChildtoCHSH_NEW(childMaster,homeIdFromSession,getAdmissiontoCHSHDTO());
   if(result.equalsIgnoreCase("success"))
        setMessage(getText("mess.succ.admCHSH","SUCCESS",admissiontoCHSHDTO.getChildName()));
    else if(result.equalsIgnoreCase("error"))
        setMessage(getText("mess.fail.admCHSH","ERROR",admissiontoCHSHDTO.getChildName()));  
   return result;
      }

       
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
        
        try {
            if(request.getParameter("formName").equalsIgnoreCase("CHSHAdmission"))
        return admissiontoCHSHDTO;
        else
            return "hello";
        } catch (Exception e) {
            return "hello";
        }
        
        
    }
}
  