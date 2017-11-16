/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.headmaster.Actions;



import com.cdac.common.util.StringToDate;
import com.cdac.headmaster.DTO.ExamSearchDTO;
import com.cdac.headmaster.DTO.SchoolAssessmentDTO;
import com.cdac.headmaster.DTO.EducationTypeSchoolClassPopulationDTO;
import com.cdac.headmaster.DTO.SchoolStudentDTO;
import com.cdac.headmaster.DTO.VocationalAllStandardPopulationDTO;
import com.cdac.headmaster.DTO.VocationalAssesmentDTO;
import com.cdac.headmaster.DTO.VocationalCoursePopulationDTO;
import com.cdac.headmaster.DTO.VocationalStudentDTO;
import com.cdac.headmaster.Service.HeadMasterService;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.EducationAdmission;
import com.cdac.usermanagement.ORM.EducationAttendence;
import com.cdac.usermanagement.ORM.EducationAttendencePK;
import com.cdac.usermanagement.ORM.ExamAttendence;
import com.cdac.usermanagement.ORM.ExamAttendencePK;
import com.cdac.usermanagement.ORM.ExamMarks;
import com.cdac.usermanagement.ORM.ExamMarksPK;
import com.cdac.usermanagement.ORM.ExamMaster;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.SchoolMaster;
import com.cdac.usermanagement.ORM.VocationalDetails;
import com.cdac.usermanagement.ORM.VocationalDetailsPK;
import com.cdac.usermanagement.ORM.VocationalMaster;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

/**
 *
 * @author Anupam
 */

public class HeadMasterAction extends ActionSupport implements ModelDriven,ServletRequestAware,ServletResponseAware,SessionAware,ServletContextAware
{

    /***************Variables***********************/
    
    private String message;

    //----------Common for all methods
     private HttpServletRequest request;
     private HttpServletResponse response;
     private Map session;
     private String fromName;

     //spring DI
     private HeadMasterService headMasterService;
     
     
     //for admission
     private List<ChildMaster> childListForAdmission;
     private Map<Integer,String> vocationlMap;
     private EducationAdmission educationAdmission=new EducationAdmission();
     
     //for attendence
     private String eduStatus;
     private List<ChildMaster> childListForAttendence;
      private String[] abpr;
      private String att_date;
      private String [] childProfileId;
      
      //for exam 
      private int examId;
      private ExamMaster examMaster= new ExamMaster();
      private String examDate_string;
      
      //for Marks
      private List<ExamMaster> examMasterList;
      private List<ExamMarks> examMarksList;
      private int[] marksObtained;
      private int[] marksObtained_entry;
      
      private String examString;
      
      //for view examMaster (remove it if DTO works)
      private String searchBy;
      private String examType;
      private String class1;
      private String subject;
      private String fromDate;
      private String toDate;
      
      
      private ExamSearchDTO examSearchDTO=new ExamSearchDTO();
      
      private VocationalMaster vocationalMaster=new VocationalMaster();
      private List<VocationalMaster> vocationalMasters;
      private int vocationalId;
      
      private List<EducationAdmission> educationAdmissions;
      
      private VocationalDetailsPK vocationalDetailsPK = new VocationalDetailsPK();
      private VocationalDetails vocationalDetails=new VocationalDetails();
      
      
      private List<SchoolAssessmentDTO> assessmentDTOsForReport; 
      
      private int vocCourseId;
      private List<VocationalAssesmentDTO> vocationalAssesmentDTOs;
      
      //anupam added on 14-01-2012 START
      private SchoolMaster schoolMaster = new SchoolMaster();
      private List<SchoolMaster> allSchools;
      //anupam added on 14-01-2012 END
      
      //anupam added on 16-01-2012 START
      private String eduType="none";
      
      private String[] promotedIds;
      
      //anupam added on 14-01-2012 END
      
      //anupam added on 15-02-2012 START
      private List<VocationalStudentDTO> vocationalStudentDTOs;
      private List<SchoolStudentDTO> schoolStudentDTOs;
      
      //anupam added on 15-02-2012 END
      
      //anupam added on 16-02-2012 START
      private String status;
      //anupam added on 16-02-2012 END
      
      //anupam added on 21-02-2012 START
      private String path;
      private ServletContext sc;
      private Map reportParameter;
      //anupam added on 21-02-2012 END

    public Map getReportParameter() {
        return reportParameter;
    }

    public void setReportParameter(Map reportParameter) {
        this.reportParameter = reportParameter;
    }
      
      
      

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setServletContext(ServletContext sc) 
    {
     this.sc=sc  ;
    }
      
    
    
      
      
//anupam added on 14-01-2012 START
      
      
      
    public SchoolMaster getSchoolMaster() {
        return schoolMaster;
    }

    public void setSchoolMaster(SchoolMaster schoolMaster) {
        this.schoolMaster = schoolMaster;
    }
    
    public List<SchoolMaster> getAllSchools() {
        return allSchools;
    }

    public void setAllSchools(List<SchoolMaster> allSchools) {
        this.allSchools = allSchools;
    }
      
      //anupam added on 14-01-2012 END
    
    //anupam added on 16-01-2012 START
      public String getEduType() {
        return eduType;
    }

    public void setEduType(String eduType) {
        this.eduType = eduType;
    }
    
    public String[] getPromotedIds() {
        return promotedIds;
    }

    public void setPromotedIds(String[] promotedIds) {
        this.promotedIds = promotedIds;
    }
    
    //anupam added on 16-01-2012 END
    
    //anupam added on 25-01-2012 START
    private int schoolId;
    //anupam added on 25-01-2012 END

    
    //anupam added on 9-2-2012 START
    List<EducationTypeSchoolClassPopulationDTO> schoolTypeStudentsNoDTOs ;
    //anupam added on 9-2-2012 END
    
    //anupam added on 13-2-2012 START
    List<VocationalCoursePopulationDTO> vocationalCoursePoulationDTOs ;
    //anupam added on 13-2-2012 END
    
    //swetha added on 09-07-2013 START
    private String schoolIdString;
    //swetha added on 09-07-2013 START

    public String getSchoolIdString() {
        return schoolIdString;
    }

    public void setSchoolIdString(String schoolIdString) {
        this.schoolIdString = schoolIdString;
    }
     
    public int getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(int schoolId) {
        this.schoolId = schoolId;
    }
 
    
    public HeadMasterService getHeadMasterService() {
        return headMasterService;
    }

    public void setHeadMasterService(HeadMasterService headMasterService) {
        this.headMasterService = headMasterService;
    }

   public HeadMasterAction(){} //Unable to instantiate Action, com.cdac.headmaster.Actions,  defined for 'HM-Admission' in namespace '/'com.cdac.headmaster.Actions

    public List<VocationalCoursePopulationDTO> getVocationalCoursePoulationDTOs() {
        return vocationalCoursePoulationDTOs;
    }

    public void setVocationalCoursePoulationDTOs(List<VocationalCoursePopulationDTO> vocationalCoursePoulationDTOs) {
        this.vocationalCoursePoulationDTOs = vocationalCoursePoulationDTOs;
    }

    public List<VocationalStudentDTO> getVocationalStudentDTOs() {
        return vocationalStudentDTOs;
    }

    public void setVocationalStudentDTOs(List<VocationalStudentDTO> vocationalStudentDTOs) {
        this.vocationalStudentDTOs = vocationalStudentDTOs;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
     
     
     


 

     public void setServletRequest(HttpServletRequest hsr) {
        //throw new UnsupportedOperationException("Not supported yet.");
        request=hsr;
    }

    public void setServletResponse(HttpServletResponse hsr) {
       response=hsr;
    }

   public void setSession(Map session){
   session = this.getSession();
  }

  public Map getSession(){
    return session;
  }

    public Object getModel() {
        
        Object o=null;
        
        try {
            if(request.getParameter("formName").equalsIgnoreCase("studentAdmissionForm"))
            {
            o = educationAdmission;
            }
            else if(request.getParameter("formName").equalsIgnoreCase("examGenerationRegister"))
            {
            o=examMaster;
            }
            else if(request.getParameter("formName").equalsIgnoreCase("viewExamRegister"))
            {
            o=examSearchDTO;
            }
            
            else if(request.getParameter("formName").equalsIgnoreCase("addVocationalForm"))
            {
            o=vocationalMaster;
            }
            else if(request.getParameter("formName").equalsIgnoreCase("vocationalAssesmentForm"))
            {
            vocationalDetailsPK.setChildProfileId(request.getParameter("childProfileId").toString().trim());
            vocationalDetailsPK.setVocCourseId(Integer.parseInt(request.getParameter("vocCourseId")));
            
            vocationalDetails.setVocationalDetailsPK(vocationalDetailsPK);
            vocationalDetails.setHomeId(getLoggedInhome());
                    
            o=vocationalDetails;
            }
            //anupam added on 14-01-2012 START
            else if(request.getParameter("formName").equalsIgnoreCase("addSchoolForm"))
            {
            o=schoolMaster;
            }
            //anupam added on 14-01-2012 END
            
            
            
            
            
        } catch (NullPointerException e) {
            
            o = "hello";
            
        }
        return o;
        
    }
    
    
    //------------------------getter and setters START

    public int getVocCourseId() {
        return vocCourseId;
    }

    public void setVocCourseId(int vocCourseId) {
        this.vocCourseId = vocCourseId;
    }
    
    

    public List<VocationalAssesmentDTO> getVocationalAssesmentDTOs() {
        return vocationalAssesmentDTOs;
    }

    public void setVocationalAssesmentDTOs(List<VocationalAssesmentDTO> vocationalAssesmentDTOs) {
        this.vocationalAssesmentDTOs = vocationalAssesmentDTOs;
    }
    
    
    

    public List<SchoolAssessmentDTO> getAssessmentDTOsForReport() {
        return assessmentDTOsForReport;
    }

    public void setAssessmentDTOsForReport(List<SchoolAssessmentDTO> assessmentDTOsForReport) {
        this.assessmentDTOsForReport = assessmentDTOsForReport;
    }
    
    
    

    public String getFromName() {
        return fromName;
    }

    public void setFromName(String fromName) {
        this.fromName = fromName;
    }
    
    

    public List<ChildMaster> getChildListForAdmission() {
        return childListForAdmission;
    }

    public void setChildListForAdmission(List<ChildMaster> childListForAdmission) {
        this.childListForAdmission = childListForAdmission;
    }

    public EducationAdmission getEducationAdmission() {
        return educationAdmission;
    }

    public void setEducationAdmission(EducationAdmission educationAdmission) {
        this.educationAdmission = educationAdmission;
    }

    public Map<Integer, String> getVocationlMap() {
        return vocationlMap;
    }

    public void setVocationlMap(Map<Integer, String> vocationlMap) {
        this.vocationlMap = vocationlMap;
    }

    public List<ChildMaster> getChildListForAttendence() {
        return childListForAttendence;
    }

    public void setChildListForAttendence(List<ChildMaster> childListForAttendence) {
        this.childListForAttendence = childListForAttendence;
    }

    public String getEduStatus() {
        return eduStatus;
    }

    public void setEduStatus(String eduStatus) {
        this.eduStatus = eduStatus;
    }

    public String[] getAbpr() {
        return abpr;
    }

    public void setAbpr(String[] abpr) {
        this.abpr = abpr;
    }

    public String getAtt_date() {
        return att_date;
    }

    public void setAtt_date(String att_date) {
        this.att_date = att_date;
    }

    public String[] getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String[] childProfileId) {
        this.childProfileId = childProfileId;
    }

    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    public ExamMaster getExamMaster() {
        return examMaster;
    }

    public void setExamMaster(ExamMaster examMaster) {
        this.examMaster = examMaster;
    }

    public String getExamDate_string() {
        return examDate_string;
    }

    public void setExamDate_string(String examDate_string) {
        this.examDate_string = examDate_string;
    }

    public List<ExamMaster> getExamMasterList() {
        return examMasterList;
    }

    public void setExamMasterList(List<ExamMaster> examMasterList) {
        this.examMasterList = examMasterList;
    }

    public List<ExamMarks> getExamMarksList() {
        return examMarksList;
    }

    public void setExamMarksList(List<ExamMarks> examMarksList) {
        this.examMarksList = examMarksList;
    }

    public int[] getMarksObtained() {
        return marksObtained;
    }

    public void setMarksObtained(int[] marksObtained) {
        this.marksObtained = marksObtained;
    }

    public int[] getMarksObtained_entry() {
        return marksObtained_entry;
    }

    public void setMarksObtained_entry(int[] marksObtained_entry) {
        this.marksObtained_entry = marksObtained_entry;
    }

    public String getExamString() {
        return examString;
    }

    public void setExamString(String examString) {
        this.examString = examString;
    }

    public String getClass1() {
        return class1;
    }

    public void setClass1(String class1) {
        this.class1 = class1;
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType;
    }

    public String getFromDate() {
        return fromDate;
    }

    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public String getSearchBy() {
        return searchBy;
    }

    public void setSearchBy(String searchBy) {
        this.searchBy = searchBy;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }

    public ExamSearchDTO getExamSearchDTO() {
        return examSearchDTO;
    }

    public void setExamSearchDTO(ExamSearchDTO examSearchDTO) {
        this.examSearchDTO = examSearchDTO;
    }

    public VocationalMaster getVocationalMaster() {
        return vocationalMaster;
    }

    public void setVocationalMaster(VocationalMaster vocationalMaster) {
        this.vocationalMaster = vocationalMaster;
    }

    public List<SchoolStudentDTO> getSchoolStudentDTOs() {
        return schoolStudentDTOs;
    }

    public void setSchoolStudentDTOs(List<SchoolStudentDTO> schoolStudentDTOs) {
        this.schoolStudentDTOs = schoolStudentDTOs;
    }

    
    
    
    public List<VocationalMaster> getVocationalMasters() {
        return vocationalMasters;
    }

    public void setVocationalMasters(List<VocationalMaster> vocationalMasters) {
        this.vocationalMasters = vocationalMasters;
    }

    public int getVocationalId() {
        return vocationalId;
    }

    public void setVocationalId(int vocationalId) {
        this.vocationalId = vocationalId;
    }

    public List<EducationAdmission> getEducationAdmissions() {
        return educationAdmissions;
    }

    public void setEducationAdmissions(List<EducationAdmission> educationAdmissions) {
        this.educationAdmissions = educationAdmissions;
    }

    public VocationalDetails getVocationalDetails() {
        return vocationalDetails;
    }

    public void setVocationalDetails(VocationalDetails vocationalDetails) {
        this.vocationalDetails = vocationalDetails;
    }

    public VocationalDetailsPK getVocationalDetailsPK() {
        return vocationalDetailsPK;
    }

    public void setVocationalDetailsPK(VocationalDetailsPK vocationalDetailsPK) {
        this.vocationalDetailsPK = vocationalDetailsPK;
    }

    public List<EducationTypeSchoolClassPopulationDTO> getSchoolTypeStudentsNoDTOs() {
        return schoolTypeStudentsNoDTOs;
    }

    public void setSchoolTypeStudentsNoDTOs(List<EducationTypeSchoolClassPopulationDTO> schoolTypeStudentsNoDTOs) {
        this.schoolTypeStudentsNoDTOs = schoolTypeStudentsNoDTOs;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
    //------------------------getter and setters END
    
    
    //-----------------------Methods od Action START
    
    public String setChildListAndVocationalMap()
    {
    String result="error";
    
        try {
            
         setChildListForAdmission(headMasterService.getChildListForAdmission(getLoggedInhome()));      
         
            
         setVocationlMap(headMasterService.getVocationalCoursesMap());
         
         //anupam added this on 14-01-2012 START
         setAllSchools(headMasterService.viewAllSchools());
         //anupam added this on 14-01-2012 END
         
         result="success";
        } catch (Exception e) {
            e.printStackTrace();
            result="error";
        }
        return result;
    }
    
    public String setStudentDTOListAndVocationalMap()
    {
    String result="error";
    
        try {
            
         //setChildListForAdmission(headMasterService.getChildListForAdmission(getLoggedInhome()));
         
         setSchoolStudentDTOs(headMasterService.getActiveChildrenForAdmission(getLoggedInhome()));   
            
         setVocationlMap(headMasterService.getVocationalCoursesMap());
         
         //anupam added this on 14-01-2012 START
         setAllSchools(headMasterService.viewAllSchools());
         //anupam added this on 14-01-2012 END
         
         result="success";
        } catch (Exception e) {
            e.printStackTrace();
            result="error";
        }
        return result;
    }
    
    public String setSchoolAndVocationalCollections(){
    
    String result="error";
    
        try {
            
         //setChildListForAdmission(headMasterService.getChildListForAdmission(getLoggedInhome()));
         setVocationlMap(headMasterService.getVocationalCoursesMap());
         
         //anupam added this on 14-01-2012 START
         setAllSchools(headMasterService.viewAllSchools());
         //anupam added this on 14-01-2012 END
         
         result="success";
        } catch (Exception e) {
            e.printStackTrace();
            result="error";
        }
        return result;
    
    }
    
    
    
    public String saveAdmission()
    {
    String result="error";
    
        try {
            System.out.println("inside HeadMasterAction object value = "+getEducationAdmission());
            Date d=StringToDate.getStringToDate(request.getParameter("dateOfAdm_String").trim());
            
            //getEducationAdmission().setStatus("active"); //changed by anupam on 10-2-2012
            getEducationAdmission().setStatus(getEduType()); // added by anupam on 10-2-2012
            getEducationAdmission().setDateOfAdm(d);
            getEducationAdmission().setChildMaster(new ChildMaster(getEducationAdmission().getChildProfileId()));
            getEducationAdmission().setHomeId(new HomeMaster(getLoggedInhome()));
            
            System.out.println("saveAdmission() ========= ******* -------------- schoolId = "+getSchoolId());
            if(getSchoolId()!=0)
            {
            getEducationAdmission().setSchoolMaster(new SchoolMaster(getSchoolId()));
            }
            else
            {                
            getEducationAdmission().setSchoolMaster(null);
            }
            
            result=headMasterService.admitChild(getEducationAdmission());;
        } catch (Exception e) {
            
            e.printStackTrace();
            result="error";
        }
        
        if(result.equalsIgnoreCase("success"))
            setMessage(getEducationAdmission().getChildProfileId()+getText("global.errmsg.hmSchAdmSucc"));
        else if(result.equalsIgnoreCase("error"))
            setMessage(getEducationAdmission().getChildProfileId()+getText("global.errmsg.hmSchAdmErr"));
            //setMessage(getEducationAdmission().getChildProfileId()+getText("Child Already admitted for education"));
            
        return result;
    
    }
   
 
 
 
 
    
    public String getStudentListOfAClass()
    {
        String result="error";
        
        try {
            //anupam added this on 25-01-2012 START
            if(getEduType().trim().equalsIgnoreCase("outside school"))
            {
                System.out.println("--------------------------------------------"+getLoggedInhome()+"***"+ getEduStatus()+"***"+getSchoolId());
                
              setSchoolStudentDTOs(headMasterService.getSchoolStudentDTOListForAttendenceOutSchool(getLoggedInhome(), getEduStatus(),getSchoolId()));  
            }
            //anupam added this on 25-01-2012 END
            else
            {
            //setChildListForAttendence(headMasterService.getChildListForAttendence(getLoggedInhome(), getEduStatus()));
              setSchoolStudentDTOs(headMasterService.getSchoolStudentDTOForAttendence(getLoggedInhome(), getEduStatus()));
            }
            
            result="success";
            
        } catch (Exception e) {
            result="error";
            System.out.println("----------------Error in Action ----------getStudentListOfAClass()");
            e.printStackTrace();
        }
    
        return result;
    
    } 
    
    public String saveAttendence()
    {
        String result="error";
        String mess=null;
        List<EducationAttendence> attList=new ArrayList<EducationAttendence>();
        
        try {
            
            for(int i=0;i<getChildProfileId().length;i++ )
            {
            EducationAttendencePK epk=new EducationAttendencePK(StringToDate.getStringToDate(getAtt_date()), getChildProfileId()[i]);
            
            EducationAttendence e =new EducationAttendence(epk);
            
            e.setPresentAbsent(getAbpr()[i].charAt(0));
            
            attList.add(e);
            }
            
            result=headMasterService.saveAttendence(attList);
            
            Date attdate=attList.get(0).getEducationAttendencePK().getDateAttd();
            DateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
            dateFormat.format(attdate);
            
                
            
            if(result.equalsIgnoreCase("success"))
            setMessage(getText("global.errmsg.hmClassAttSucc1")+ getEduStatus() + getText("global.errmsg.hmClassAttSucc2")+ dateFormat.format(attdate)+getText("global.errmsg.hmClassAttSucc3"));
            else if(result.equalsIgnoreCase("error"))
                setMessage(getText("global.errmsg.hmClassAttErr1")+ getEduStatus() +getText("global.errmsg.hmClassAttErr2")+ dateFormat.format(attdate)+getText("global.errmsg.hmClassAttErr3"));
                
            
        } catch (Exception e) {
            
            result="error";
            System.out.println("----------------Error in Action ----------getStudentListOfAClass()");
            e.printStackTrace();
            
        }
    
    return result;
    
    
    }
    
    
    public String saveExam()
    {
    String result="error";
    
        try {
            getExamMaster().setExamDate(StringToDate.getStringToDate(getExamDate_string()));
            getExamMaster().setRemarks("scheduled");
            getExamMaster().setHomeId(new HomeMaster(getLoggedInhome()));
            
               /*---Anupam added this on 02-02-2012 START---*/
                    if(getEduType().equalsIgnoreCase("inside school"))
                    {
                        getExamMaster().setSchoolMaster(null);
                    }
                    else if(getEduType().equalsIgnoreCase("outside school"))
                    {
                        getExamMaster().setSchoolMaster(new SchoolMaster(getSchoolId()));
                    }
              /*---Anupam added this on 02-02-2012 END---*/
                    
            int i=headMasterService.saveExam(getExamMaster());
            getExamMaster().setExamId(i);
            
            //resuing the student list provider
            setEduStatus(getExamMaster().getClass1());
            result = getStudentListOfAClass();
           
            
            System.out.println("exam code returned from service layer ==== > "+i);
            
            //result="success";
        } catch (Exception e) {
            result="error";
            System.out.println("----------------Error in Action ----------saveExam()");
            e.printStackTrace();
        }
        
        if(result.equalsIgnoreCase("success"))
            setMessage(getText("global.errmsg.hmExamSchSucc"));
        else if(result.equalsIgnoreCase("error"))
            setMessage(getText("global.errmsg.hmExamSchErr"));
        
        return result;
    }
    
     
    public String takeExamAttendence()
    {
    String result="error";
  
        try {
      
      setExamMaster(headMasterService.getExamMaster(getExamId()));
      
      /*--- Anupam added this code on 02-02-2012 START ---*/
      
      //1. set the edutype based on schoolId
      SchoolMaster smTemp = getExamMaster().getSchoolMaster();
      
      if(smTemp != null)
      {
      setEduType("outside school");
      setSchoolId(smTemp.getSchoolId());
      }
      
      
      
      
      /*--- Anupam added this code on 02-02-2012 END ---*/
      
            setEduStatus(getExamMaster().getClass1());
            result = getStudentListOfAClass(); //check
        } catch (Exception e) {
            result="error";
            System.out.println("----------------Error in Action ----------saveExam()");
            e.printStackTrace();
        }
        
        
    
    return result;
    
    }
  
    
    public String saveExamAttendence()
    {
        
        String result="error";
        String result2="error";
        String result3="error";
        List<ExamAttendence> attList=new ArrayList<ExamAttendence>();
        List<ExamMarks> marksList=new ArrayList<ExamMarks>();
        
        try {
            
            for(int i=0;i<getChildProfileId().length;i++ )
            {
            
            ExamAttendencePK examAttendencePK=new ExamAttendencePK(getExamId(),getChildProfileId()[i]);
            
            ExamAttendence examAttendence=new ExamAttendence(examAttendencePK);
            examAttendence.setRemarks("None");
            
            examAttendence.setAttendence(getAbpr()[i].charAt(0));
            
            //initial registration at marks register
                                    if(getAbpr()[i].charAt(0) =='p')
                                    {
                                    ExamMarksPK empk=new ExamMarksPK(getExamId(), getChildProfileId()[i]);
                                    ExamMarks em= new ExamMarks(empk);
                                    em.setMarksObtained(-1);            // -1 means marks not entered yet
                                    marksList.add(em);
                                    }
                                    // took care of the exam absenties         
                                    else if(getAbpr()[i].charAt(0) =='a')
                                    {
                                    ExamMarksPK empk=new ExamMarksPK(getExamId(), getChildProfileId()[i]);
                                    ExamMarks em= new ExamMarks(empk);
                                    em.setMarksObtained(-2);          //-2 means the student was absent for the exam
                                    marksList.add(em);            
                                    }

            
            attList.add(examAttendence);
            }
            
            
            
            
            result=headMasterService.saveExamAttendence(attList);
            result2=headMasterService.saveExamMarks(marksList);
            
            //change the status of the exam at exam master
            //result3=headMasterService.updateRemarksOfExamMaster(getExamId(),"in process");
            result3=headMasterService.updateRemarksOfExamMaster(getExamId(),"Results awaited");
            
            System.out.append("inside HeadMasterAction.saveExamAttendence() ---------------- > Attandence Save --"+result);
            System.out.append("inside HeadMasterAction.saveExamAttendence() ---------------- >      Marks Save --"+result2);
            System.out.append("inside HeadMasterAction.saveExamAttendence() ------------ > updation of remarks --"+result3);
            
            if(result.equalsIgnoreCase(result2))
                result=result2;
            
        } catch (Exception e) {
            /***********HERE ADD CODE FOR DELETION CURRENT ENTRIES START*************************/
            
            /***********HERE ADD CODE FOR DELETION CURRENT ENTRIES END*************************/
            result="error";
            System.out.println("----------------Error in Action ----------getStudentListOfAClass()");
            e.printStackTrace();
            
        }
        
         if(result.equalsIgnoreCase("success"))
            setMessage(getText("global.errmsg.hmExamAttenSucc"));
        else if(result.equalsIgnoreCase("error"))
            setMessage(getText("global.errmsg.hmExamAttenErr"));
    
    return result;
    
    
    }
    
    
    public String populateUncheakedExams()
    {
    String result="error";
    
        try {
            //1. get all the exams id unchecked form ExamMArks
            List<Integer> uncheakedExamIds=new ArrayList<Integer>();
            uncheakedExamIds=headMasterService.getUnCheakedExamIds();
            
            //2.get ExamMaster
            setExamMasterList(headMasterService.getUncheckedExamDetails(uncheakedExamIds));
            
            result="success";
            
        } catch (Exception e) {
            result="error";
            System.out.println("----------------Error in Action ----------populateUncheakedExams()");
            e.printStackTrace();
        }
    return result;
    
    }
    
    public String populateExamMarks()
    {
        String result="error";
        try {
            setExamMarksList(headMasterService.getExamMarks(getExamId()));
            result="success";
        } catch (Exception e) {
            result="error";
            System.out.println("----------------Error in Action ----------populateUncheakedExams()");
            e.printStackTrace();
        }
    
    return result;
    }
    
    public String saveOrUpdateExamMarks()
    {
    String result="error";
    String result2="error";
    List<ExamMarks> examMarks=new ArrayList<ExamMarks>();
    
        try {
            
            for(int i=0;i<getChildProfileId().length;i++)
            {
            ExamMarksPK epk=new ExamMarksPK(getExamId(), getChildProfileId()[i]);
            ExamMarks e=new ExamMarks(epk);
            e.setMarksObtained(getMarksObtained_entry()[i]);
            
            examMarks.add(e);
            }
            
            headMasterService.updateExamMarksList(examMarks);
            
            /**************************************************/
            
            //check the answer sheet check status
            if(headMasterService.answerSheetCheckStatus(getExamId()).equalsIgnoreCase("done"))
            {
            result2=headMasterService.updateRemarksOfExamMaster(getExamId(),"Done");
            System.out.append("inside HeadMasterAction.saveOrUpdateExamMarks() ------------ > updation of remarks --"+result2);
            }
            
            /**************************************************/
            
            result="success";
           
        } catch (Exception e) {
             result="error";
            System.out.println("----------------Error in Action ----------saveOrUpdateExamMarks()");
            e.printStackTrace();
        }
        
        
         if(result.equalsIgnoreCase("success"))
            setMessage(getText("global.errmsg.hmExaMarksSucc"));
        else if(result.equalsIgnoreCase("error"))
            setMessage(getText("global.errmsg.hmExaMarksErr"));
        
    
    return result;
    }
    
    public String getScheduledExamList()
    {
    String result="error";
    
        try {
            setExamMasterList(headMasterService.getScheduledExamsOfAHome(getLoggedInhome()));
            result="success";
        } catch (Exception e) {
             System.out.println("----------------Error in Action ----------getScheduledExamList()");
            e.printStackTrace();
        }
    return result;
    
    }
    
    public String populateExamListBasedOnCiteria()
    {
    String result="error";
        try {
            setExamMasterList(headMasterService.getFilteredExams(getLoggedInhome(), getExamSearchDTO()));
            result="success";
        } catch (Exception e) {
             System.out.println("----------------Error in Action ----------populateExamListBasedOnCiteria()");
            e.printStackTrace();
        }
    
    return result;
    
    }
    
    
    public String populateExamMarksListBasedOnId()
    {
    
        String result="error";
        
        try {
            setExamMarksList(headMasterService.viewExamMarksById(examId));
            result="success";
        } catch (Exception e) {
            System.out.println("----------------Error in Action ----------populateExamMarksListBasedOnId()");
            e.printStackTrace();
        }
    return result;
    }
    
    
    //-----------------------vocationa course actions------------------
    
    public String saveVocationalCourse()
    {
    
    String result="error";
    
    result=headMasterService.saveVocationalMaster(getVocationalMaster());
    
    if(result.equalsIgnoreCase("success"))
        setMessage(getVocationalMaster().getVocCourseName()+getText("global.errmsg.hmVocNameAddSucc"));
    else if(result.equalsIgnoreCase("error"))
        setMessage(getVocationalMaster().getVocCourseName()+getText("global.errmsg.hmVocNameAddErr"));
    
    return result;
    
    }
    
    public String listVocationalCourses()
    {
    
    
    setVocationalMasters(headMasterService.getVocationalMasters());
    
    return "success";
    
    }
    
    public String deleteAVocationaCouse()
    {
    String result="error";
    
    result=headMasterService.deleteVocationalMaster(getVocationalId());
    
    if(result.equalsIgnoreCase("success"))
        setMessage(getText("global.errmsg.hmVocCouDelSucc"));
    else if(result.equalsIgnoreCase("error"))
        setMessage(getText("global.errmsg.hmVocCouDelErr"));
    
    return result;
    
    
    }
    
    public String setEducationAdmissionListForVocational()
    {
    
        String result="error";
        try {
            setEducationAdmissions(headMasterService.getChildListOfAVocationalCourse(request.getParameter("vocCourseId").toString().trim(), getLoggedInhome()));
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    
    } 
    
    public String vocationalAssesmentSave()
    {
    
        String result = headMasterService.vocationalAssesmentSave(vocationalDetails);
        
        if(result.equalsIgnoreCase("success"))
            setMessage(getText("global.errmsg.hmVocAssesSavSucc"));
        else if(result.equalsIgnoreCase("error"))
            setMessage(getText("global.errmsg.hmVocAssesSavErr"));
        
        return result;
    
    }
    
    public String showReport()
    {
    List<SchoolAssessmentDTO> sassList = new ArrayList<SchoolAssessmentDTO>();
    //SchoolAssessmentDTO schoolAssessmentDTO=headMasterService.getSchoolAssessmentDTOForMarkSheet("CHB2011_000005",getLoggedInhome());
    SchoolAssessmentDTO schoolAssessmentDTO=headMasterService.getSchoolAssessmentDTOForMarkSheet(request.getParameter("childProfileId").trim(),getLoggedInhome());
    schoolAssessmentDTO.setUserNameLabel(getLoggedInUser());
    sassList.add(schoolAssessmentDTO) ;
    setAssessmentDTOsForReport(sassList);
    
    return "success";
    
    }
    
    public String populateVocationalMasters()
    {
    setVocationalMasters(headMasterService.getVocationalMasters());
    return "success";
    }
    
    public String showVocationalDetails()
    {
    
    setVocationalAssesmentDTOs(headMasterService.getVocationalAssesmentDTOList(getVocCourseId()));
    System.out.println("VocAssessmentDTO---------------------------------------------------------#################### >>>>>"+getVocationalAssesmentDTOs());
    return "success";    
    
    }
    
    //Anupam added on 14-01-2012 START
    
    public String saveSchool(){
    
    return headMasterService.saveSchool(schoolMaster);
    
    }
    
    public String getStudentListChildListAndVocMap(){
        String result = "error"; 
        String result1 = setChildListAndVocationalMap();
        String result2 = getAllStudentsOfAClass();//getStudentListOfAClass();
        
        if(result1.equalsIgnoreCase("success") && result2.equalsIgnoreCase("success"))
        {
        setMessage(getEduType().trim());    
        result = "success";
        }
        
        else{
        result = "error";
        }
            
    return result;
    }
    
    
    //Anupam added on 14-01-2012 END
    
    //Anupam added on 16-01-2012 START
    
    public String promoteChildren(){
    
    String result = "error";
    
    result = headMasterService.promoteChildren(promotedIds, eduStatus);
    
    if(result.equalsIgnoreCase("success"))
    setMessage(getText("global.errmsg.hmPromOpeSucc"));
    else if(result.equalsIgnoreCase("error"))
        setMessage(getText("global.errmsg.hmPromOpeErr"));
    
    return result;
    
    }
    
    //Anupam added on 16-01-2012 END
    
    
    
    
    
    //-----------------------Methods of Action END
    
    //-----------------------Utils--------------------
    public String getLoggedInhome()
    {
   return ActionContext.getContext().getSession().get("homeid").toString(); 
    
    }
    
    //anupama added on 25-01-2012 START
    public String getLoggedInUser()
    {
   return ActionContext.getContext().getSession().get("userid").toString(); 
    
    }
    //anupam added on 25-01-2012 END
    
    
    //anupam added on 6-2-2012 START
    public String populateAllSchools()
    {
            setAllSchools(headMasterService.viewAllSchools());
       
            return "success";
     
    }
    //anupam added on 6-2-2012 END

//anupam added this on 7-2-2012 START
  
          public String populateChildrenBasedOnClassAndSchool(){
          
          if(!(eduStatus.equals("-1")) && schoolId!=-1)
          {
          //call service method
              List<ChildMaster> childMasterList = headMasterService.getChildListBasedOnSchoolAndClass(getLoggedInhome(), getEduStatus(), getSchoolId());     
              
              try {
                  if(childMasterList.isEmpty())
                  {
                  setMessage(getText("global.errmsg.hmNoStuInClass"));
                  
                  //testing for listmap remove later S
                  headMasterService.getSchoolTypeStudentsNoDTO(getLoggedInhome(), "Govt-Residential");
                  //testing for listmap remove later E 
                  }
                          else if(!childMasterList.isEmpty())
                          {
                          setChildListForAttendence(childMasterList);    
                          //setMessage("Students are present in this class");
                          }
              } catch (Exception e) {
                  System.out.println("------------ERROR-------------in ------ populateChildrenBasedOnClassAndSchool");
                  setMessage(getText("global.errmsg.hmNoStuInClass"));
              }
          
                  
          }
          
          else{
          //it is the first default call ignore it
             //setMessage("first entry"); 
          }
              
          
          
          
          return "success";
           
          }
          
//anupam added this on 7-2-2012 end
 
//anupam added it on 9-2-2012 START
          
          public String showClassWisePopulationBySchoolType()
          {
          
          List<EducationTypeSchoolClassPopulationDTO> dtos = new ArrayList<EducationTypeSchoolClassPopulationDTO>(); 
          
          dtos.add(headMasterService.getSchoolTypeStudentsNoDTO(getLoggedInhome(), getEduType()));

          
          setSchoolTypeStudentsNoDTOs(dtos);
          
          System.out.println("-------------------------------dtos--------------"+schoolTypeStudentsNoDTOs.size());
                 
    
    return "school-success";
          
          }
          
//anupam added it on 9-2-2012 END  
          
          
          //anupam added it on 13-2-2012 START
          public String showtrainingWisePopulationByVocationalType(){
          
              
              
              List<VocationalCoursePopulationDTO> vocCoPopDTOs = new ArrayList<VocationalCoursePopulationDTO>();
              try {
                  vocCoPopDTOs.add(headMasterService.getVocationalCoursePopulationDTO(getLoggedInhome(), getEduType()));
              
              setVocationalCoursePoulationDTOs(vocCoPopDTOs);
              } catch (Exception e) {
                  System.out.println("ERROR in action ");
                  e.printStackTrace();
              }
              
              
              return "vocational-success";
          
          }
          
          
          public String getEducationPopulationRepots()
          {
              
              String typeOfEducation = getEduType();
              
              System.out.println("------------------EDU TYPE ==============="+typeOfEducation);
              
              String result = "error";
              try {
                  //--------anupam added on 21 -02-2012 START
    setPath(sc.getRealPath("/"));
    System.out.println("path&&&&&&&&&&&&&&&& is"+path);
//    setImagepath(""+new File(path+"/images/"+getChildProfileId()+".jpg"));
    
    Map reportParameter = new HashMap<String, String>();
    reportParameter.put("SUBREPORT_DIR", path+"WEB-INF/classes/reports/"); 
    setReportParameter(reportParameter);
    System.out.println("path&&&&&&&&&&&&&&&& is ------------------------"+reportParameter.get("SUBREPORT_DIR"));
     //--------anupam added on 21 -02-2012 END
              
              
              
              
                  if(typeOfEducation.equalsIgnoreCase("inside school") || typeOfEducation.equalsIgnoreCase("outside school"))
                  {
                      System.out.println("-------if--------------");
                  result = showClassWisePopulationBySchoolType();
                  }
                
                      else if(typeOfEducation.equalsIgnoreCase("inside vocational") || typeOfEducation.equalsIgnoreCase("outside vocational"))
                      {
                          System.out.println("-------else if--------------");
                      result = showtrainingWisePopulationByVocationalType();
                      }
                  
                 System.out.println("------------------RESULT ==============="+result);  
              } catch (Exception e) {
                  
                  System.out.println("----------ERROR IN -----------getEducationPopulationRepots");
                  e.printStackTrace();
              }
          
             
              return result;
          
          }
          
          //anupam added it on 13-2-2012 END
          

          
          //anupam added this on 15-02-2012 START          
          public String getVocationalStudets()
          {
            //swetha added on 09-07-2013 START
              setSchoolId(Integer.parseInt(getSchoolIdString()));
            //swetha added on 09-07-2013 START
            
             if(getSchoolId() == 0) 
                 setVocationalStudentDTOs(headMasterService.getVocationalStudetsInSideAHome(getLoggedInhome()));
             else if(getSchoolId()!=0)
                 setVocationalStudentDTOs(headMasterService.getVocationalStudetsInASchoolOutSide(getLoggedInhome(), schoolId));
             
             return "vocatioanl-student-list-success";
          }          
          //anupam added this on 15-02-2012 END
          
          public String getSchoolStudents()
          {
              //--------anupam added on 21 -02-2012 START
              setPath(sc.getRealPath("/"));
    System.out.println("path&&&&&&&&&&&&&&&& is"+path);
//    setImagepath(""+new File(path+"/images/"+getChildProfileId()+".jpg"));
    Map reportParameter = new HashMap<String, String>();
    reportParameter.put("SUBREPORT_DIR", path+"WEB-INF/classes/reports/"); 
    
    setReportParameter(reportParameter);
     //--------anupam added on 21 -02-2012 END
    //Swetha added on 09-07-2013 START
    //System.out.println(getSchoolIdString());
    setSchoolId(Integer.parseInt(getSchoolIdString()));
    //Swetha added on 09-07-2013 START
              
          if(getSchoolId() == 0) 
          {
              System.out.println("parameter to be passed ------------------"+getLoggedInhome()+"---"+getEduStatus());
                 setSchoolStudentDTOs(headMasterService.getStudetsInSideAHome(getLoggedInhome(), getEduStatus()));
          }       
             else if(getSchoolId()!=0)
             {
                 System.out.println("parameter to be passed ------------------"+getLoggedInhome()+"---"+getEduStatus()+"---"+getSchoolId());
                 setSchoolStudentDTOs(headMasterService.getStudetsInASchoolOutSide(getLoggedInhome(),getEduStatus(), getSchoolId()));
             }
             System.out.println("List of students ------------------"+schoolStudentDTOs);
             return "school-student-list-success";
          }
          
          public String prePopulateStudentsForAssessmet(){
          setSchoolStudentDTOs(headMasterService.getStudentsBasedOnINorOUTSchoolStatus(getLoggedInhome(), getEduStatus(), getStatus()));
          return "success";
          }
          
         public String getAllStudentsOfAClass(){
         
             setSchoolStudentDTOs(headMasterService.getAllStudentsOfAClassINOUTSchool(getLoggedInhome(), getEduStatus()));
             
             return "success";
         
         }
    
    
}