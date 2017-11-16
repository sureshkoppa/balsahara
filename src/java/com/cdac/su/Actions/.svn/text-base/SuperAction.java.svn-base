/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.su.Actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.ChildStatus;
import com.cdac.usermanagement.ORM.ChildStatusPK;
import com.cdac.caseworker.Service.CaseWorkerService;
import com.opensymphony.xwork2.ActionContext;
import com.cdac.common.util.CurrentDateProvider;
import com.cdac.common.util.StringToDate;
import com.cdac.ds.service.InventoryService;
import com.cdac.su.DTO.ChildStatusDTO;
import com.cdac.su.Service.SuperService;
import com.cdac.usermanagement.ORM.HomeDetails;
import java.util.Date;
import java.util.List;
import com.cdac.su.DTO.GASDutyDTO;
import com.cdac.su.DTO.GASProfileDTO;
import java.text.SimpleDateFormat;
import com.cdac.usermanagement.ORM.GuardingSecurityInfo;
import com.lowagie.text.Chunk;
import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import java.awt.Color;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.ResourceBundle;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.dispatcher.StreamResult;

/**
 *
 * @author Ramu Parupalli
 */

public class SuperAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,ModelDriven,SessionAware {

    public SuperAction() {
    }
private Map session;
 private HttpServletRequest request;
  private HttpServletResponse response;
 private ChildMaster childMaster=new ChildMaster();
 private ChildStatus childStatus=new ChildStatus();
 private ChildStatusPK childStatusPK=new ChildStatusPK();
 private GuardingSecurityInfo guardingSecurityInfo=new GuardingSecurityInfo();
 private List<ChildMaster> childrenListInAHome_status;
 private CaseWorkerService caseWorkerService;
  private String childProfileId;
  private String fromdate_string;
  private String todate_string;
  private String childName;
  private String childSurname;
  private String missingdate_string;
  private String date_fir;
          
  private ChildStatusDTO  childStatusDTO;
  //for flex
  private List<String> gaurdNames=new ArrayList<String>();
  
  private String message;
  
  private SuperService superService;
  private HomeDetails homeDetails=new HomeDetails();
  
  private String[] selectedItems;
  
  
  
    private GASProfileDTO gpdto=new GASProfileDTO();
    private GASDutyDTO gddto=new GASDutyDTO();

    public GASProfileDTO getGpdto() {
        return gpdto;
    }

    public void setGpdto(GASProfileDTO gpdto) {
        this.gpdto = gpdto;
    }

    public GASDutyDTO getGddto() {
        return gddto;
    }

    public void setGddto(GASDutyDTO gddto) {
        this.gddto = gddto;
    }
    private String childAge_report;

    public String getChildAge_report() {
        return childAge_report;
    }

    public void setChildAge_report(String childAge_report) {
        this.childAge_report = childAge_report;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    public GuardingSecurityInfo getGuardingSecurityInfo() {
        return guardingSecurityInfo;
    }

    public void setGuardingSecurityInfo(GuardingSecurityInfo guardingSecurityInfo) {
        this.guardingSecurityInfo = guardingSecurityInfo;
    }

    public List<String> getGaurdNames() {
        return gaurdNames;
    }

    public void setGaurdNames(List<String> gaurdNames) {
        this.gaurdNames = gaurdNames;
    }

    public String[] getSelectedItems() {
        return selectedItems;
    }

    public void setSelectedItems(String[] selectedItems) {
        this.selectedItems = selectedItems;
    }

   
 
    
  
  
  
  //GAS Start
  
       //GAS-modifyProfile
     private String modifyProfileId;
     private String modifyProfielName;
     private int modifyProfileAge;
     private String modifyProfileDesig;
     private String modifyProfilePhno;
     private String modifyProfileAddr;
     private String modifyProfileEmailId;
     private String modifyProfileDate;
     private GASProfileDTO modifyProfile;
     
     
     //GAS-addDuty
     
List<GuardingSecurityInfo> addDutyProfile;
private String addDuty_name;
private String addDuty_date;
private String addDuty_fromTime_hours;
private String addDuty_fromTime_mins;
private String addDuty_fromTime_ampm;
private String addDuty_toTime_hours;
private String addDuty_toTime_mins;
private String addDuty_toTime_ampm;
private String addDuty_dutyAt;
private String addDuty_observations;

   
     private String addProfile_fname;
     private String addProfile_lname;
     private int addProfile_age;
     private String addProfile_desig;
     private String addProfile_contactAddr;
     protected String addProfile_emailId;
     private String addProfile_doj;
     private String addProfile_contactPhno;
     private String viewDuty_name;
     private String viewDuty_fromDate;
     private String viewDuty_toDate;
     private List<GASDutyDTO> ViewDutyDetails;
     private File  guardPhotoFile; 
      
      
      
      
      //GAS-add Observation
      private String selobjDate;
      private String addObjDate;
      private List<String> selProfileId;
      private Map<String,String>  gas_observation;
      /*Added by vinumol 17/02/2012*/
      
private String report_fromdate;
      private String report_todate;
	  private List<ChildStatusDTO> csdto =new ArrayList();
      /*Ended by vinumol 17/02/2012*/

    public List<ChildStatusDTO> getCsdto() {
        return csdto;
    }

    public void setCsdto(List<ChildStatusDTO> csdto) {
        this.csdto = csdto;
    }

    public String getReport_fromdate() {
        return report_fromdate;
    }

    public void setReport_fromdate(String report_fromdate) {
        this.report_fromdate = report_fromdate;
    }

    public String getReport_todate() {
        return report_todate;
    }

    public void setReport_todate(String report_todate) {
        this.report_todate = report_todate;
    }
 
    public List<GASDutyDTO> getViewDutyDetails() {
        return ViewDutyDetails;
    }

    public void setViewDutyDetails(List<GASDutyDTO> ViewDutyDetails) {
        this.ViewDutyDetails = ViewDutyDetails;
    }

    public List<GuardingSecurityInfo> getAddDutyProfile() {
        return addDutyProfile;
    }

    public void setAddDutyProfile(List<GuardingSecurityInfo> addDutyProfile) {
        this.addDutyProfile = addDutyProfile;
    }

   
    public String getAddDuty_date() {
        return addDuty_date;
    }

    public void setAddDuty_date(String addDuty_date) {
        this.addDuty_date = addDuty_date;
    }

    public String getAddDuty_dutyAt() {
        return addDuty_dutyAt;
    }

    public void setAddDuty_dutyAt(String addDuty_dutyAt) {
        this.addDuty_dutyAt = addDuty_dutyAt;
    }

    public String getAddDuty_fromTime_ampm() {
        return addDuty_fromTime_ampm;
    }

    public void setAddDuty_fromTime_ampm(String addDuty_fromTime_ampm) {
        this.addDuty_fromTime_ampm = addDuty_fromTime_ampm;
    }

    public String getAddDuty_fromTime_hours() {
        return addDuty_fromTime_hours;
    }

    public void setAddDuty_fromTime_hours(String addDuty_fromTime_hours) {
        this.addDuty_fromTime_hours = addDuty_fromTime_hours;
    }

    public String getAddDuty_fromTime_mins() {
        return addDuty_fromTime_mins;
    }

    public void setAddDuty_fromTime_mins(String addDuty_fromTime_mins) {
        this.addDuty_fromTime_mins = addDuty_fromTime_mins;
    }

    public String getAddDuty_name() {
        return addDuty_name;
    }

    public void setAddDuty_name(String addDuty_name) {
        this.addDuty_name = addDuty_name;
    }

    public String getAddDuty_observations() {
        return addDuty_observations;
    }

    public File getGuardPhotoFile() {
        return guardPhotoFile;
    }

    public void setGuardPhotoFile(File guardPhotoFile) {
        this.guardPhotoFile = guardPhotoFile;
    }

    
    public void setAddDuty_observations(String addDuty_observations) {
        this.addDuty_observations = addDuty_observations;
    }

    public String getAddDuty_toTime_ampm() {
        return addDuty_toTime_ampm;
    }

    public void setAddDuty_toTime_ampm(String addDuty_toTime_ampm) {
        this.addDuty_toTime_ampm = addDuty_toTime_ampm;
    }

    public String getAddDuty_toTime_hours() {
        return addDuty_toTime_hours;
    }

    public void setAddDuty_toTime_hours(String addDuty_toTime_hours) {
        this.addDuty_toTime_hours = addDuty_toTime_hours;
    }

    public String getAddDuty_toTime_mins() {
        return addDuty_toTime_mins;
    }

    public void setAddDuty_toTime_mins(String addDuty_toTime_mins) {
        this.addDuty_toTime_mins = addDuty_toTime_mins;
    }

    public int getAddProfile_age() {
        return addProfile_age;
    }

    public void setAddProfile_age(int addProfile_age) {
        this.addProfile_age = addProfile_age;
    }

    public String getAddProfile_contactAddr() {
        return addProfile_contactAddr;
    }

    public void setAddProfile_contactAddr(String addProfile_contactAddr) {
        this.addProfile_contactAddr = addProfile_contactAddr;
    }

    public String getAddProfile_contactPhno() {
        return addProfile_contactPhno;
    }

    public void setAddProfile_contactPhno(String addProfile_contactPhno) {
        this.addProfile_contactPhno = addProfile_contactPhno;
    }

    public String getAddProfile_desig() {
        return addProfile_desig;
    }

    public void setAddProfile_desig(String addProfile_desig) {
        this.addProfile_desig = addProfile_desig;
    }

    public String getAddProfile_doj() {
        return addProfile_doj;
    }

    public void setAddProfile_doj(String addProfile_doj) {
        this.addProfile_doj = addProfile_doj;
    }

    public String getAddProfile_emailId() {
        return addProfile_emailId;
    }

    public void setAddProfile_emailId(String addProfile_emailId) {
        this.addProfile_emailId = addProfile_emailId;
    }

    public String getAddProfile_fname() {
        return addProfile_fname;
    }

    public void setAddProfile_fname(String addProfile_fname) {
        this.addProfile_fname = addProfile_fname;
    }

    public String getAddProfile_lname() {
        return addProfile_lname;
    }

    public void setAddProfile_lname(String addProfile_lname) {
        this.addProfile_lname = addProfile_lname;
    }

    public String getModifyProfielName() {
        return modifyProfielName;
    }

    public void setModifyProfielName(String modifyProfielName) {
        this.modifyProfielName = modifyProfielName;
    }

    public GASProfileDTO getModifyProfile() {
        return modifyProfile;
    }

    public void setModifyProfile(GASProfileDTO modifyProfile) {
        this.modifyProfile = modifyProfile;
    }

    public String getModifyProfileAddr() {
        return modifyProfileAddr;
    }

    public void setModifyProfileAddr(String modifyProfileAddr) {
        this.modifyProfileAddr = modifyProfileAddr;
    }

    public int getModifyProfileAge() {
        return modifyProfileAge;
    }

    public void setModifyProfileAge(int modifyProfileAge) {
        this.modifyProfileAge = modifyProfileAge;
    }

    public String getModifyProfileDate() {
        return modifyProfileDate;
    }

    public void setModifyProfileDate(String modifyProfileDate) {
        this.modifyProfileDate = modifyProfileDate;
    }

    public String getModifyProfileDesig() {
        return modifyProfileDesig;
    }

    public void setModifyProfileDesig(String modifyProfileDesig) {
        this.modifyProfileDesig = modifyProfileDesig;
    }

    public String getModifyProfileEmailId() {
        return modifyProfileEmailId;
    }

    public void setModifyProfileEmailId(String modifyProfileEmailId) {
        this.modifyProfileEmailId = modifyProfileEmailId;
    }

    public String getModifyProfileId() {
        return modifyProfileId;
    }

    public void setModifyProfileId(String modifyProfileId) {
        this.modifyProfileId = modifyProfileId;
    }

    public String getModifyProfilePhno() {
        return modifyProfilePhno;
    }

    public void setModifyProfilePhno(String modifyProfilePhno) {
        this.modifyProfilePhno = modifyProfilePhno;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public String getViewDuty_fromDate() {
        return viewDuty_fromDate;
    }

    public void setViewDuty_fromDate(String viewDuty_fromDate) {
        this.viewDuty_fromDate = viewDuty_fromDate;
    }

    public String getViewDuty_name() {
        return viewDuty_name;
    }

    public void setViewDuty_name(String viewDuty_name) {
        this.viewDuty_name = viewDuty_name;
    }

    public String getViewDuty_toDate() {
        return viewDuty_toDate;
    }

    public void setViewDuty_toDate(String viewDuty_toDate) {
        this.viewDuty_toDate = viewDuty_toDate;
    }

    public String getSelobjDate() {
        return selobjDate;
    }

    public void setSelobjDate(String selobjDate) {
        this.selobjDate = selobjDate;
    }
    
    
      
      
  //GAS End

  
  
 
    public HttpServletRequest getServletRequest() {
        return request;
    }

    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    public ChildMaster getChildMaster() {
        return childMaster;
    }

    public void setChildMaster(ChildMaster childMaster) {
        this.childMaster = childMaster;
    }

    public ChildStatus getChildStatus() {
        return childStatus;
    }

    public void setChildStatus(ChildStatus childStatus) {
        this.childStatus = childStatus;
    }

    public List<ChildMaster> getChildrenListInAHome_status() {
        return childrenListInAHome_status;
    }

    public void setChildrenListInAHome_status(List<ChildMaster> childrenListInAHome_status) {
        this.childrenListInAHome_status = childrenListInAHome_status;
    }

    public CaseWorkerService getCaseWorkerService() {
        return caseWorkerService;
    }

    public void setCaseWorkerService(CaseWorkerService caseWorkerService) {
        this.caseWorkerService = caseWorkerService;
    }

    public ChildStatusPK getChildStatusPK() {
        return childStatusPK;
    }

    public void setChildStatusPK(ChildStatusPK childStatusPK) {
        this.childStatusPK = childStatusPK;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getFromdate_string() {
        return fromdate_string;
    }

    public void setFromdate_string(String fromdate_string) {
        this.fromdate_string = fromdate_string;
    }

    public String getTodate_string() {
        return todate_string;
    }

    public void setTodate_string(String todate_string) {
        this.todate_string = todate_string;
    }

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

    public String getMissingdate_string() {
        return missingdate_string;
    }

    public void setMissingdate_string(String missingdate_string) {
        this.missingdate_string = missingdate_string;
    }

    public String getDate_fir() {
        return date_fir;
    }

    public void setDate_fir(String date_fir) {
        this.date_fir = date_fir;
    }
     
    public HomeDetails getHomeDetails() {
        return homeDetails;
    }

    public void setHomeDetails(HomeDetails homeDetails) {
        this.homeDetails = homeDetails;
    }

    public SuperService getSuperService() {
        return superService;
    }

    public void setSuperService(SuperService superService) {
        this.superService = superService;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    //add observation

    public String getAddObjDate() {
        return addObjDate;
    }

    public void setAddObjDate(String addObjDate) {
        this.addObjDate = addObjDate;
    }

    public Map<String, String> getGas_observation() {
        return gas_observation;
    }

    public void setGas_observation(Map<String, String> gas_observation) {
        this.gas_observation = gas_observation;
    }

    public List<String> getSelProfileId() {
        return selProfileId;
    }

    public void setSelProfileId(List<String> selProfileId) {
        this.selProfileId = selProfileId;
    }

    private PdfWriter pdfStream;

    public PdfWriter getPdfStream() {
        return pdfStream;
    }

    public void setPdfStream(PdfWriter pdfStream) {
        this.pdfStream = pdfStream;
    }
    
    /*added by swetha on 09-07-2013 START*/
    private Map<String,String> home_addr;

    public Map<String, String> getHome_addr() {
        return home_addr;
    }

    public void setHome_addr(Map<String, String> home_addr) {
        this.home_addr = home_addr;
    }
    
    private String ageWiseDate;

    public String getAgeWiseDate() {
        return ageWiseDate;
    }

    public void setAgeWiseDate(String ageWiseDate) {
        this.ageWiseDate = ageWiseDate;
    }
    
    Map<Integer, Integer> ageMap;

    public Map<Integer, Integer> getAgeMap() {
        return ageMap;
    }

    public void setAgeMap(Map<Integer, Integer> ageMap) {
        this.ageMap = ageMap;
    }
    
    List<ChildMaster> ageChildList;

    public List<ChildMaster> getAgeChildList() {
        return ageChildList;
    }

    public void setAgeChildList(List<ChildMaster> ageChildList) {
        this.ageChildList = ageChildList;
    }
    
    
    /*added by swetha on 09-07-2013 END*/

public String ageWiseReport()
    {
        
        System.out.println("method------------>ageWiseReport");
        //Document doc=new  Document(PageSize.A4,0,0,15,0);
        
         try {
           /* 
           // response.setContentType("application/pdf");
            
          
            PdfWriter pdfStream1 =PdfWriter.getInstance(doc, response.getOutputStream());
            
         
            
            doc.open();
            
            Font headfont =FontFactory.getFont("Times New Roman", 16, Font.UNDERLINE);
            Font cheadfont=FontFactory.getFont("Times New Roman", 9,Font.BOLD);
            Font messfont  =FontFactory.getFont("Times New Roman",9,Font.NORMAL, Color.BLUE);
            Font datefont =FontFactory.getFont("Times New Roman", 12, Font.NORMAL);
            
            
            Paragraph heading=new Paragraph("Agewise Particulars of Children ",headfont);
            heading.setAlignment(Element.ALIGN_CENTER);
            
            doc.add(heading);*/
            
            SimpleDateFormat sdf=new SimpleDateFormat("d MMM  yyyy");
            setAgeWiseDate(sdf.format(new Date()));  
            /*Paragraph rdate=new Paragraph(date,datefont);
            rdate.setIndentationRight(60f);
            rdate.setAlignment(Element.ALIGN_RIGHT);
            
            
            doc.add(rdate);*/
             
            Map<String,String> temphome_addr=superService.getHomeAddress(getLoggedInhome());
            setHome_addr(temphome_addr);
            /*Paragraph homename=new Paragraph(home_addr.get("name"));
            Paragraph homeaddr=new Paragraph(home_addr.get("addr"));
            Paragraph homedist=new Paragraph(home_addr.get("dist"));
            
            
            homename.setAlignment(Element.ALIGN_LEFT);homename.setIndentationLeft(55f);
            homeaddr.setAlignment(Element.ALIGN_LEFT);homeaddr.setIndentationLeft(55f);
            homedist.setAlignment(Element.ALIGN_LEFT);homedist.setIndentationLeft(55f);          
            
            
            doc.add(homename);
            doc.add(homeaddr);
            doc.add(homedist);
            
            
            doc.add(new Paragraph("\n"));
            
           
            
            PdfPTable table=new PdfPTable(14);
            table.setSpacingBefore(5f);
            table.addCell(new PdfPCell(new Phrase("Below 6 years",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("7",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("8",cheadfont)));         
            table.addCell(new PdfPCell(new Phrase("9",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("10",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("11",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("12",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("13",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("14",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("15",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("16",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("17",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("18",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("19 & above",cheadfont)));*/
            
            Map<Integer, Integer> tempageMap = superService.getAgewiseDetails(getLoggedInhome());
            setAgeMap(tempageMap);
            
            /*for(int i=6;i<=19;i++)
            {
                //System.out.println("--------"+i+"====="+ageMap.get(i));
             //   table.addCell(new PdfPCell(new Phrase(ageMap.get(i).toString(),messfont)));
                
                table.addCell(
		new Paragraph(
		new Chunk(ageMap.get(i).toString(), messfont)
		.setAnchor("SU-detailChild?childAge_report="+i)));
            }
            
             doc.add(table);
             doc.close();
             
                setPdfStream(pdfStream1);*/
             
             return SUCCESS;
         } 
         catch (Exception ex) {
            ex.printStackTrace();
          
        }        
                return "end";
    }
   
   
    public String childsInHome()
    {
       try { 
        List<ChildMaster> ageChilds=superService.getChildsHome_Age(getLoggedInhome(),Integer.parseInt(childAge_report.trim()));
        setAgeChildList(ageChilds);
        System.out.println("this size list is------------->"+ageChilds.size());
        /*Document doc=new  Document(PageSize.A4,0,0,15,0);
        Font cheadfont =FontFactory.getFont("Times New Roman", 9,Font.BOLD);
        Font messfont  =FontFactory.getFont("Times New Roman",9,Font.NORMAL);
            
            response.setContentType("application/pdf");
            PdfWriter pw =PdfWriter.getInstance(doc, response.getOutputStream());
            
            doc.open();
            
          
            PdfPTable table=new PdfPTable(9);
            
            table.setTotalWidth(new float[]{ 30,60,60,60,60,30,42,30,60 });
            table.setLockedWidth(true);
            
            table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
            
            
            table.addCell(new PdfPCell(new Phrase("S.No",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("CHILD_PROFILE_ID",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("CHILD NAME",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("CHILD SURNAME",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("DATE&TIME OF \n ADMISSION",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("PRESENT AGE",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("GENDER",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("DISABLED(Y/N)",cheadfont)));
            table.addCell(new PdfPCell(new Phrase("NATURE OF DISABILITY",cheadfont)));
            
            
            PdfPCell p;
           for(int i=0;i<ageChilds.size();i++)  
           {
            p=new PdfPCell(new Phrase((i+1)+"",messfont));
            p.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(p);   
            table.addCell(new PdfPCell(new Phrase(ageChilds.get(i).getChildProfileId(),messfont)));
            table.addCell(new PdfPCell(new Phrase(ageChilds.get(i).getChildName(),messfont)));
            table.addCell(new PdfPCell(new Phrase(ageChilds.get(i).getChildSurname(),messfont)));
            table.addCell(new PdfPCell(new Phrase(ageChilds.get(i).getDateTimeAdm().toString(),messfont)));
            table.addCell(new PdfPCell(new Phrase(ageChilds.get(i).getAge().toString(),messfont)));
            table.addCell(new PdfPCell(new Phrase(ageChilds.get(i).getGender(),messfont)));
            table.addCell(new PdfPCell(new Phrase(ageChilds.get(i).getDisabled().toString(),messfont)));
            table.addCell(new PdfPCell(new Phrase(ageChilds.get(i).getNatureDisability(),messfont)));
           
           }
            Font headfont =FontFactory.getFont("Times New Roman", 13, Font.UNDERLINE);
            Paragraph heading=new Paragraph("List of Children ",headfont);
            heading.setAlignment(Element.ALIGN_CENTER);
             doc.add(heading);
             doc.add(new Paragraph("\n\n"));

             doc.add(table);
             doc.close();*/
             
             return SUCCESS;
         } 
         catch (Exception ex) {
            ex.printStackTrace();
          
        }        
                return "end";
    }

   

    public String getChildListbasedonStatus()
    {
    String result="error";
    String homeId=ActionContext.getContext().getSession().get("homeid").toString();
        try {
            
            setChildrenListInAHome_status(caseWorkerService.getChildrenList_status(homeId)); 
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
          
    return result;
    }
    
    public String saveChildStatus()
    {
        String result="error";
        
         String currentHomeId=ActionContext.getContext().getSession().get("homeid").toString();
            String userIdFromSession=ActionContext.getContext().getSession().get("currentUser").toString();
            
            try {
            childStatusPK.setChildProfileId(childProfileId);
             childStatusPK.setHomeId(currentHomeId);
            childStatusPK.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
            childStatus.setChildStatusPK(childStatusPK);
           
            
            childStatus.setLastModifiedBy(userIdFromSession);
           
          if((childStatus.getType().equalsIgnoreCase("runaway"))|| (childStatus.getType().equalsIgnoreCase("missing")))
          {
              Date missingdate=StringToDate.getStringToDate(getMissingdate_string());
              Date firdate   =StringToDate.getStringToDate(getDate_fir()); 
              childStatus.setFromDate(missingdate);
              childStatus.setDateMissing(firdate);
          }
          else if((childStatus.getType().equalsIgnoreCase("runawaycameback"))||(childStatus.getType().equalsIgnoreCase("missingfound")))
          {
              
            Date to_dtae=StringToDate.getStringToDate(getMissingdate_string());
              
            childStatus.setToDate(to_dtae);
           // result=caseWorkerService.updateChildStatus(childStatus, childProfileId, userIdFromSession);
          }
          else if((childStatus.getType().equalsIgnoreCase("shortleave"))|| (childStatus.getType().equalsIgnoreCase("residential"))||(childStatus.getType().equalsIgnoreCase("shortleavereturn"))||(childStatus.getType().equalsIgnoreCase("residentialreturned")))
          {
            Date from_date=StringToDate.getStringToDate(getFromdate_string());
            Date to_dtae=StringToDate.getStringToDate(getTodate_string());
            childStatus.setFromDate(from_date);
            childStatus.setToDate(to_dtae);
          }
                 
         result=caseWorkerService.saveChildStatus(childStatus, childProfileId, userIdFromSession);
                   
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        
    return result;
    }
    
    
   
    
    /*Modified by swetha for multilingual on 12-02-2013 START*/
    public String prePopulateHomeDetails()
    {
        String result="error";
        try 
        {
        setHomeDetails(superService.getHomeDetails(getLoggedInhome()));
        System.out.println(getHomeDetails().getHomeAddress()+": in super Action");
        ActionContext.getContext().getSession().put("homeDetList", getHomeDetails());
            result="success";
        } catch (Exception e) {
         e.printStackTrace();   
        }
        
    return result;
    }
    /*Modified by swetha for multilingual on 12-02-2013 END*/
    
    public String saveHomeDetails()
    {
         
        
        String result = superService.saveHomeDetails(getHomeDetails());
        
        if(result.equalsIgnoreCase("success"))
            setMessage(getText("global.errmsg.suHomeDetEntSucc"));
        else if(result.equalsIgnoreCase("error"))
            setMessage(getText("global.errmsg.suHomeDetEntErr"));
        
        return result;
    
    }
    
    public String lang_type;
   
    public String getLang_type() {
        return lang_type;
    }

    public void setLang_type(String lang_type) {
        this.lang_type = lang_type;   
    }   
    
    //public String lang_label[];
    public List<String>  lang_label=new ArrayList<String>();

    public List<String> getLang_label() {
        return lang_label;
    }

    public void setLang_label(List<String> lang_label) {
        this.lang_label = lang_label;
    }
/*
    public String[] getLang_label() {
        return lang_label;
    }

    public void setLang_label(String[] lang_label) {
        this.lang_label = lang_label;
    }
   */ 
    
    
    public String populateGAS()
    {
        String homeId=ActionContext.getContext().getSession().get("homeid").toString();
        
        List labels=new LinkedList();   
        
        labels.add(getText("label.assDuty"));
        labels.add(getText("label.dutyDate"));
        labels.add(getText("label.fromTime"));
        labels.add(getText("label.toTime"));
        labels.add(getText("label.select"));
        labels.add(getText("button.clear"));
        labels.add(getText("button.submit"));
        labels.add(getText("label.fieldsMand"));
        
        /*
          String[] labels=new String[8];
          
          labels[0]=getText("label.assDuty");labels[1]=getText("label.dutyDate");
          labels[2]=getText("label.fromTime");labels[3]=getText("label.toTime");
          labels[4]=getText("label.select");labels[5]=getText("button.clear");
          labels[6]=getText("button.submit");labels[7]=getText("label.fieldsMand");  
          
          
          getLang_label()[0]=getText("label.assDuty");getLang_label()[1]=getText("label.dutyDate");
          getLang_label()[2]=getText("label.fromTime");getLang_label()[3]=getText("label.toTime");
          getLang_label()[4]=getText("label.select");getLang_label()[5]=getText("button.clear");
          getLang_label()[6]=getText("button.submit");getLang_label()[7]=getText("label.fieldsMand"); 
          
           */
          
        
        setLang_label(labels);
        setAddDutyProfile(superService.populateAllProfile(homeId)); 
        
        //---------------------------by anupam START
        
        List<GuardingSecurityInfo> obList=getAddDutyProfile();
        List<String> gaurdNames=new ArrayList<String>();
        
        for (Iterator<GuardingSecurityInfo> it = obList.iterator(); it.hasNext();) {
            GuardingSecurityInfo guardingSecurityInfo1 = it.next();
            
            gaurdNames.add(guardingSecurityInfo1.getProfileidSecstaff()+"-->"+guardingSecurityInfo1.getName());
            System.out.println("==============="+guardingSecurityInfo1.getName());
        }    
        
        setGaurdNames(gaurdNames);
        //---------------------------by anupam END
        
        
        //System.out.println("in action duty profile"+getAddDutyProfile().get(0).getProfile_name());

        return "popProfile-success";
        
        
    }
    public String popDatedGAS()
    {
        System.out.println("sel date"+getSelobjDate());
        String homeId=ActionContext.getContext().getSession().get("homeid").toString();
        
        List<GASDutyDTO> gasDatedList=superService.populateDatedProfile(homeId,StringToDate.getStringToDate(getSelobjDate()));
        
        
        setAddObjList(gasDatedList);
        
        return "popAddObj-success";
    }
    public String addObservation()
    {
        System.out.println("objdate "+getAddObjDate()+" list of profid "+getSelProfileId()+" observation"+getGas_observation());
        
       if(superService.addObservation(StringToDate.getStringToDate(getAddObjDate()), getSelProfileId(), getGas_observation()))
       {
           setMessage(getText("global.errmsg.suObserSavSucc"));
            return "addObs-success";
       }
       else
       {
          setMessage(getText("global.errmsg.suObserSavErr"));
           return "addObs-failure";
       }
        
        
    }
    //------------ for flex stuff
    public List<String> getGaurdIds()
    {
        List<GuardingSecurityInfo> obList=getAddDutyProfile();
        List<String> gaurdNames=new ArrayList<String>();
        
        for (Iterator<GuardingSecurityInfo> it = obList.iterator(); it.hasNext();) {
            GuardingSecurityInfo guardingSecurityInfo1 = it.next();
            
            gaurdNames.add(guardingSecurityInfo1.getName());
            System.out.println("==============="+guardingSecurityInfo1.getName());
        }    
            
        return gaurdNames;
    
    }
    
    public String populateSelectGAS()
    {
        GASProfileDTO gpdto=superService.populateSelectProfile(getModifyProfileId());
        String homeId=ActionContext.getContext().getSession().get("homeid").toString();
        
        System.out.println("in super action::populateSelectProfiele()::"+gpdto);
        
                setAddDutyProfile(superService.populateAllProfile(homeId));
                setModifyProfile(gpdto);
                
                 
        return "popSelectProfile-success";
        
    }
    
    public String removeProfile()
    {
        System.out.println("in action::remove Profile():: remove  profile id="+modifyProfileId);
        try
        {
        
        if(superService.inActivateProfile(modifyProfileId))
        {
            setMessage(getText("global.errmsg.suProfRemSucc"));
            return "removeProfile-success";
        }
        else
        {
            setMessage(getText("global.errmsg.suProfRemErr"));
            return "removeProfile-failure";
        }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            setMessage(getText("global.errmsg.suRemProfExcepOccur"));
            return "removeProfile-failure";
        }
    }
    
    
    
    
    
   public String addDuty()
    { 
        /*
         String addDuty_date,String addDuty_fromTime_hours, String addDuty_fromTime_mins,String addDuty_fromTime_ampm,
         String addDuty_toTime_hours,String addDuty_toTime_mins,String addDuty_toTime_ampm, ArrayList selectedItems
         */
        
        try
        {               
            
        String userId=ActionContext.getContext().getSession().get("userid").toString();
            
        System.out.println("super action::addduty()::addduty_profileid"+addDuty_name+":"+StringToDate.getStringToDate(addDuty_date)+":"+addDuty_fromTime_hours+":"+addDuty_fromTime_mins+":"+addDuty_fromTime_ampm+":"+addDuty_toTime_hours+":"+addDuty_toTime_mins+":"+addDuty_toTime_ampm+":"+addDuty_dutyAt+":"+addDuty_observations);
        
        String[] pid_name=getSelectedItems();
        
        for(int i=0;i<pid_name.length;i++)
        {
        
            if(pid_name[i].equalsIgnoreCase("NA"))
            {
                System.out.println("point = "+(i+1)+" is not assigned");
            }
            else
            {
                String pid=pid_name[i].substring(0, pid_name[i].indexOf("-->"));
              //  int profileid=Integer.parseInt(pid.trim());
                
                
                GASDutyDTO gddto=new GASDutyDTO();
                gddto.setAddDuty_profileid(pid.trim());
                
                System.out.println("addDuryDate got"+addDuty_date);                 
                
                String convDate;
                
                
                String convDateDD=addDuty_date.substring(0, 2);
                String convDateMM=addDuty_date.substring(3, 5);
                String convDateYYYY=addDuty_date.substring(6,10);
                
                convDate=convDateMM+"/"+convDateDD+"/"+convDateYYYY;
                
                System.out.println("------------------>converted Date got"+convDate+"days:"+convDateMM+"month:"+convDateDD+"year:"+convDateYYYY);                 
                
                gddto.setAddDuty_date(StringToDate.getStringToDate(convDate));
                gddto.setAddDuty_fromTime(addDuty_fromTime_mins);
                
                String timeString;
        if(getAddDuty_fromTime_ampm().equalsIgnoreCase("pm"))
        {
        int hrs=Integer.parseInt(addDuty_fromTime_hours)+12;    
        timeString= hrs+":"+addDuty_fromTime_mins+":"+"00";
        }
        else
        {
            timeString=addDuty_fromTime_hours+":"+addDuty_fromTime_mins+":"+"00";
        }
            gddto.setAddDuty_fromTime(timeString);
               String toTimeString;
        if(getAddDuty_toTime_ampm().equalsIgnoreCase("pm"))
        {
        int hrs=Integer.parseInt(addDuty_toTime_hours)+12;    
        toTimeString=hrs+":"+addDuty_toTime_mins+":"+"00";
        }
        else
        {
            toTimeString=addDuty_toTime_hours+":"+addDuty_toTime_mins+":"+"00";
        }
        gddto.setAddDuty_toTime(toTimeString);        
        gddto.setAddDuty_dutyAt(Integer.toString(i+1));
        gddto.setAddDuty_observations(addDuty_observations);
        
        
        System.out.println("calling service");
        superService.addDuty(gddto,userId);
                
            }
            
            
            
            
       // System.out.println("index = "+i+" value= "+pid_name[i]);
        }
        }
         catch(Exception e)
        {
            e.printStackTrace();
            setMessage(getText("global.errmsg.suDutyAddErr"));
            return "addDuty-failure";
        }
        
        setMessage(getText("global.errmsg.suDutyAddSucc"));  
        return "addDuty-success";
    }
    
    public String viewDuty()
    {
        
        try{
            
                 System.out.println("name---"+viewDuty_name+"from date---"+StringToDate.getStringToDate(viewDuty_fromDate)+"--todate----"+StringToDate.getStringToDate(viewDuty_toDate));
                 List<GASDutyDTO> listdutydto=superService.selectDutyDetails(viewDuty_name,StringToDate.getStringToDate(viewDuty_fromDate),StringToDate.getStringToDate(viewDuty_toDate));
                 System.out.println("In View duty Action:::list retrieved"+listdutydto);
                 setViewDutyDetails(listdutydto);
                 image_guard="watermark.png";   
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return "viewDuty-failure";
        }
        
        
        
        return "viewDuty-success";
    }

    
     public String addProfile()
     {
         String homeId=ActionContext.getContext().getSession().get("homeid").toString();
         String userId=ActionContext.getContext().getSession().get("userid").toString();
         try{
         System.out.println("*******************in super action::addProfile()*****name="+getAddProfile_fname()+"::"+getAddProfile_lname()+"********date="+StringToDate.getStringToDate(getAddProfile_doj()));
         
        // GASProfileDTO gpdto=new GASProfileDTO();
         gpdto.setProfile_name(getAddProfile_fname()+" "+getAddProfile_lname());
         gpdto.setProfile_age(getAddProfile_age());
         gpdto.setProfile_desig(getAddProfile_desig());
         gpdto.setProfile_contactAddr(getAddProfile_contactAddr());
         gpdto.setProfile_contactPhno(getAddProfile_contactPhno());
         gpdto.setProfile_emailId(getAddProfile_emailId());
         gpdto.setProfile_doj(StringToDate.getStringToDate(getAddProfile_doj()));
        // gpdto.setProfile_photo(getAddProfile_photo());
         
         Integer pid=superService.addProfile(gpdto,homeId,userId);
         if((pid!=0)&&(pid!=-1))
         {
             
          /*new code*/   
          /*   try {
                   String filePath = request.getRealPath("/"+"WEB-INF/classes/photos");
         System.out.println("Server path:" + filePath);
         
         File fileToCreate = new File(filePath, "guard-"+pid+".jpg");

              //File theFile = new File(fullFileName);

              FileUtils.copyFile(getGuardPhotoFile(), fileToCreate); 
             } catch (Exception e) {
                 setMessage("Profile Added Successfully , Photo saving failed");
                 return "addProfile-success";
             }
             
             */
             
             /*new code*/
             setMessage(getText("global.errmsg.suProfAddedSucc"));
             return "addProfile-success";
         }
         else
         {
             setMessage(getText("global.errmsg.suProfAddedErr"));
             return "addProfile-failure";
         }
         }
         catch(Exception e)
         {
             e.printStackTrace();
             setMessage(getText("global.errmsg.suProfAddedExcepOccur"));
             return "addProfile-failure";
         }
         
     }
     /*new code*/
     public String addGuardPhoto()
     {
         
          try {
                   String filePath = request.getRealPath("/"+"WEB-INF/classes/photos");
                   System.out.println("Server path:" + filePath);
         
                   
                   File fileToCreate = new File(filePath, "guard-"+getAddGuardPhotoId()+".jpg");

              //File theFile = new File(fullFileName);
                   
                   if((getGuardPhotoFile().length()) > (2*1000*1000-1))
                   {
                       setMessage(getText("global.errmsg.suFileSizeLarg"));
                      return "addPhoto-failure";
                   }
                   FileUtils.copyFile(getGuardPhotoFile(), fileToCreate); 
                    setMessage(getText("global.errmsg.suPhoUploadSucc")+getAddGuardPhotoId());
                   return "addPhoto-success";
             } catch (Exception e) {
                    setMessage(getText("global.errmsg.suPhoSavErrExcepOccur"));
                    return "addPhoto-failure";
             }
         
         
     }
     /*new code*/
     public String modifyProfile()
     {
         try
         {
        // GASProfileDTO gpdto=new GASProfileDTO();
             
    //    String homeId=ActionContext.getContext().getSession().get("homeid").toString();   
         System.out.println("modify profile id got::"+modifyProfileId);
         gpdto.setProfile_id(Integer.parseInt(modifyProfileId));
         gpdto.setProfile_name(modifyProfielName);
         gpdto.setProfile_age(modifyProfileAge);
         gpdto.setProfile_contactAddr(modifyProfileAddr);
         gpdto.setProfile_contactPhno(modifyProfilePhno);
          String userId=ActionContext.getContext().getSession().get("userid").toString();
        
         if(superService.modifyProfile(gpdto,userId))
         {
             setMessage(getText("global.errmsg.suProfModiSucc"));
             return "modifyProfile-success";
         }
         else
         {
             setMessage(getText("global.errmsg.suProfModiErr"));
             return "modifyProfile-failure";
         }
                     
         }
         catch(Exception e)
         {
             e.printStackTrace();
             setMessage(getText("global.errmsg.suModiProfExcepOccur"));
             return "modifyProfile-failure";
         }
     }
    
    
    public Object getModel() {
        try {
             if(request.getParameter("formName").equalsIgnoreCase("su_childstatus"))
            { 
            
            return childStatus;
            }
             else if(request.getParameter("formName").equalsIgnoreCase("registerHomeForm"))
            {            
            return homeDetails;
            }   
           else if(request.getParameter("formName").equalsIgnoreCase("ViewProfileForm"))
            {            
            return guardingSecurityInfo;
            }  
                else if(request.getParameter("formName").equalsIgnoreCase("AddProfileForm"))
            {            
            return guardingSecurityInfo;
            }      
                   
             else
             {
             return "Hello";
             }
        } catch (NullPointerException e) {
          System.out.println("In SU Action:::::NPE------------------------->>>>>>88888888888888888888888888888888888888888888888888888888");
       return "Hello";
      }
    }
    
    
    public String getLoggedInhome()
    {
             return ActionContext.getContext().getSession().get("homeid").toString(); 
    
    } 
    
    public List<GASDutyDTO> addObjList;

    public List<GASDutyDTO> getAddObjList() {
        return addObjList;
    }

    public void setAddObjList(List<GASDutyDTO> addObjList) {
        this.addObjList = addObjList;
    }
    
   

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

  
    private String image_guard;

    public String getImage_guard() {
        return image_guard;
    }

    public void setImage_guard(String image_guard) {
        this.image_guard = image_guard;
    }

    /*new code*/
    private String addGuardPhotoId;

    public String getAddGuardPhotoId() {
        return addGuardPhotoId;
    }

    public void setAddGuardPhotoId(String addGuardPhotoId) {
        this.addGuardPhotoId = addGuardPhotoId;
    }
   /*new code ends*/
public String showReport()
    {
        //String chomeId=ActionContext.getContext().getSession().get("homeid").toString();
       // childStatusDTO=superService.getChildStatus_by_date(chomeId,report_fromdate,report_todate);
            
        return "success";
    }

/*Swetha added/Modified for Multilingual on 03-04-2013 START*/
    private Map<String, Object> reportMulParameter = null;

    public Map<String, Object> getReportMulParameter() {
        return reportMulParameter;
    }

    public void setReportMulParameter(Map<String, Object> reportMulParameter) {
        this.reportMulParameter = reportMulParameter;
    }
    /*Swetha added/Modified for Multilingual on 03-04-2013 END*/
    
    public String showReportDetails()
    {
        try{
       String SelecLocale=getLocale().toString();
        reportMulParameter = new HashMap<String, Object>();
        reportMulParameter.put("REPORT_LOCALE",getLocale());
        System.out.println("Locale .. is ------------------------"+reportMulParameter.get("REPORT_LOCALE"));
        ResourceBundle testRB=ResourceBundle.getBundle("global-messages", getLocale());
        System.out.println("Testing-------------"+testRB.containsKey("global.heading.medicalJournal")+testRB.getString("global.heading.medicalJournal"));
        reportMulParameter.put("REPORT_RESOURCE_BUNDLE",testRB);
       String chomeId=ActionContext.getContext().getSession().get("homeid").toString();
       Date report_fromdate1=StringToDate.getStringToDate(getReport_fromdate());
       Date report_todate1=StringToDate.getStringToDate(getReport_todate());
       System.out.println("The dates are.............7777777788888888888888" +report_fromdate1 +"and" +report_todate1);
       
        childStatusDTO=superService.getChildStatus_by_date(chomeId,report_fromdate1,report_todate1);
        
          getCsdto().add(childStatusDTO);
          System.out.println("I am here at success@@@@@@@@@@@@@@@@@@@@@@@@@@");
        }catch(Exception e)
        {
            e.printStackTrace();           
        }
        return "success";
    }
    
    /*private Map<String, Object> reportMulParameter = null;

    public Map<String, Object> getReportMulParameter() {
        return reportMulParameter;
    }

    public void setReportMulParameter(Map<String, Object> reportMulParameter) {
        this.reportMulParameter = reportMulParameter;
    }*/
    
    
    public String showMultilingualReport()
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
        String chomeId=ActionContext.getContext().getSession().get("homeid").toString();
       //Date report_fromdate1=StringToDate.getStringToDate(getReport_fromdate());
       //Date report_todate1=StringToDate.getStringToDate(getReport_todate());
       //System.out.println("The dates are.............7777777788888888888888" +report_fromdate1 +"and" +report_todate1);
       
        childStatusDTO=superService.getChildStatus_by_date(chomeId,new Date(),new Date());
        
            getCsdto().add(childStatusDTO);
            System.out.println("I am here at success@@@@@@@@@@@@@@@@@@@@@@@@@@");
        }catch(Exception e)
        {
            e.printStackTrace();           
        }
        return "success";
    }

}