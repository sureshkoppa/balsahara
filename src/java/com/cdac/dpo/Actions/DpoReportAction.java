/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.dpo.Actions;

import com.cdac.dpo.DTO.SiChildDTO;
import com.cdac.dpo.Service.DpoService;
import com.cdac.usermanagement.ORM.SiChildDetails;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.ResourceBundle;
import org.apache.struts2.util.ServletContextAware;
/**
 *
 * @author vinumol
 */
public class DpoReportAction extends ActionSupport implements ServletRequestAware,ModelDriven,SessionAware,ServletResponseAware,ServletContextAware
{
        
    private HttpServletResponse response;
    private HttpServletRequest request;
    private DpoService dpoService;
    private String childProfileId;
     private Map session;
     ServletContext sc;
    private HashMap<String, String> reportParameter;

    public HashMap<String, String> getReportParameter() {
        return reportParameter;
    }

    public void setReportParameter(HashMap<String, String> reportParameter) {
        this.reportParameter = reportParameter;
    }
    private String path;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public DpoService getDpoService() {
        return dpoService;
    }

    public void setDpoService(DpoService dpoService) {
        this.dpoService = dpoService;
    }
    List<SiChildDTO> sicdList=new ArrayList<SiChildDTO>();

    public List<SiChildDTO> getSicdList() {
        return sicdList;
    }

    public void setSicdList(List<SiChildDTO> sicdList) {
        this.sicdList = sicdList;
    }
    
    /*Swetha added/Modified for Multilingual on 20-03-2013 START*/
    private Map<String, Object> reportMulParameter = null;

    public Map<String, Object> getReportMulParameter() {
        return reportMulParameter;
    }

    public void setReportMulParameter(Map<String, Object> reportMulParameter) {
        this.reportMulParameter = reportMulParameter;
    }


    public String  getSiChildDetails()
    {
        try
        {
        String SelecLocale=getLocale().toString();
        reportMulParameter = new HashMap<String, Object>();
        reportMulParameter.put("REPORT_LOCALE",getLocale());
        System.out.println("Locale .. is ------------------------"+reportMulParameter.get("REPORT_LOCALE"));
        //ResourceBundle testRB=getTexts();
        ResourceBundle testRB=ResourceBundle.getBundle("global-messages", getLocale());
        System.out.println("Testing-------------"+testRB.containsKey("global.heading.medicalJournal")+testRB.getString("global.heading.medicalJournal"));
        reportMulParameter.put("REPORT_RESOURCE_BUNDLE",testRB);
        setPath(sc.getRealPath("/"));
        //reportParameter=new HashMap<String,String>();
        reportMulParameter.put("SUBREPORT_DIR", path+"WEB-INF/classes/reports/");     
        sicdList=getDpoService().getSichildDetails(getChildProfileId()); 
        reportMulParameter.put("SUBREPORT_LOCALE",getLocale());
        reportMulParameter.put("SUBREPORT_RESOURCE_BUNDLE",testRB);
        System.out.println("Vinumol!!!!!!!!!!!!!!!!!! Success");
        }catch(Exception e)
        {
            e.printStackTrace();           
        }
        
        return "success"; 
    
    }
    
    /*Swetha added/Modified for Multilingual on 20-03-2013 END*/
    
    public void setServletRequest(HttpServletRequest hsr) 
    {
       // throw new UnsupportedOperationException("Not supported yet.");
         request=hsr;
    }

    public Object getModel() 
    {
        
        Object obj=null;
        try {
             if(request.getParameter("formname").equalsIgnoreCase("f1"))
            {
            obj ="hello";
            } 
        } catch (Exception e) {
            e.printStackTrace();
        }
       
            
        return obj;
    }

    public void setServletResponse(HttpServletResponse hsr) 
    {
       // throw new UnsupportedOperationException("Not supported yet.");
        response=hsr;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public void setServletContext(ServletContext sc) {
        this.sc=sc;
    }
    
}
