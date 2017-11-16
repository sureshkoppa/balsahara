/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.headmaster.Service;

import com.cdac.common.util.CalendarUtil;
import com.cdac.common.util.CurrentDateProvider;
import com.cdac.common.util.StringToDate;
import com.cdac.headmaster.DAO.HeadMasterDAO;
import com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO;
import com.cdac.headmaster.DTO.ExamSearchDTO;
import com.cdac.headmaster.DTO.SchoolAssessmentDTO;
import com.cdac.headmaster.DTO.SchoolAllStandardPopulationDTO;
import com.cdac.headmaster.DTO.EducationTypeSchoolClassPopulationDTO;
import com.cdac.headmaster.DTO.SchoolStudentDTO;
import com.cdac.headmaster.DTO.VocationalAllStandardPopulationDTO;
import com.cdac.headmaster.DTO.VocationalAssesmentDTO;
import com.cdac.headmaster.DTO.VocationalCoursePopulationDTO;
import com.cdac.headmaster.DTO.VocationalStudentDTO;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.EducationAdmission;
import com.cdac.usermanagement.ORM.EducationAttendence;
import com.cdac.usermanagement.ORM.ExamAttendence;
import com.cdac.usermanagement.ORM.ExamMarks;
import com.cdac.usermanagement.ORM.ExamMaster;
import com.cdac.usermanagement.ORM.SchoolMaster;
import com.cdac.usermanagement.ORM.VocationalDetails;
import com.cdac.usermanagement.ORM.VocationalMaster;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.orm.hibernate3.HibernateTemplate;


/**
 *
 * @author Anupam
 */
public class HeadMasterServiceImpl implements HeadMasterService {

    private HeadMasterDAO  headMasterDAO;

    public HeadMasterDAO getHeadMasterDAO() {
        return headMasterDAO;
    }

    public void setHeadMasterDAO(HeadMasterDAO headMasterDAO) {
        this.headMasterDAO = headMasterDAO;
    }

    public String admitChild(EducationAdmission child) {
       
        return headMasterDAO.admitChild(child);
        
    }

    public List<ChildMaster> getChildListForAdmission(String homeId) {
        
        return headMasterDAO.getChildListForAdmission(homeId);
    }

    public List<ChildMaster> getChildListForAttendence(String homeId,String course) {
        return headMasterDAO.getChildListForAttendence(homeId,course);
    }
    
    public List<SchoolStudentDTO> getSchoolStudentDTOForAttendence(String homeId,String course) {
        return headMasterDAO.getSchooldStudentDTOListForAttendence(homeId, course);
    }
    

    public Map<Integer, String> getVocationalCoursesMap() {
        Map<Integer,String> vocationalMap=new HashMap<Integer, String>();
        List<VocationalMaster> vl=headMasterDAO.getVocationalCoursesList();
        
        for (Iterator<VocationalMaster> it = vl.iterator(); it.hasNext();) {
            VocationalMaster vocationalMaster = it.next();
            vocationalMap.put(vocationalMaster.getVocCourseId(), vocationalMaster.getVocCourseName());
        }
        
        return vocationalMap;
        
    }

    public String saveAttendence(List<EducationAttendence> attList) {
        String result=headMasterDAO.saveAttendence(attList);
        System.out.println("-------------------in saveAttendence(List<EducationAttendence> attList)---> "+result);
        return result;
    }
    
    
    //-----------------------School Exam methods

    public int getMarksofAStudent(int examId, String childProfileId) {
        return headMasterDAO.getMarksofAStudent(examId, childProfileId);
    }

    public ExamMaster retriveExam(String homeId, Date examDate, String examType, String standard, String subject) {
        return headMasterDAO.retriveExam(homeId, examDate, examType, standard, subject);
    }

    public Integer saveExam(ExamMaster examMaster) {
        return headMasterDAO.saveExam(examMaster);
    }

    public String saveExamAttendence(List<ExamAttendence> examAttList) {
        return headMasterDAO.saveExamAttendence(examAttList);
    }

    public String saveExamMarks(List<ExamMarks> examMarksList) {
        return headMasterDAO.saveExamMarks(examMarksList);
    }

    public List<Integer> getUnCheakedExamIds() {
        return headMasterDAO.getUnCheakedExamIds();
    }

    public List<ExamMarks> getExamMarks(int examId) {
        return headMasterDAO.getExamMarks(examId);
    }

    public List<ExamMaster> getUncheckedExamDetails(List<Integer> uncheckedIds) {
        return headMasterDAO.getUncheckedExamDetails(uncheckedIds);
    }

    public String updateExamMarksList(List<ExamMarks> examMarksList) {
        return headMasterDAO.updateExamMarksList(examMarksList);
    }

    public List<ExamMaster> getScheduledExamsOfAHome(String homeId) {
        return headMasterDAO.getScheduledExamsOfAHome(homeId);
    }

    public ExamMaster getExamMaster(int examId) {
        
        return headMasterDAO.getExamMaster(examId);
        
    }

    public String updateRemarksOfExamMaster(int examId,String remarks) {
        
        String result="error";
                
                try {
            //get the existing object
                    ExamMaster em=headMasterDAO.getExistingExamById(examId);
                    
                    //change the prperty of the object
                    em.setRemarks(remarks.trim());
                    
                    //send the object for updation
                    
                    result=headMasterDAO.updateExistingExam(em);
                    
                    
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
        
    }

    public String answerSheetCheckStatus(int examId) {
        String result="done";
        
        try {
            List<ExamMarks> examMarksList = headMasterDAO.getExamMarks(examId);
            
            for (Iterator<ExamMarks> it = examMarksList.iterator(); it.hasNext();) {
                ExamMarks examMarks = it.next();
                
                if(examMarks.getMarksObtained()==-1 )
                {
                result="in progress";
                break;
                }
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List<ExamMaster> getFilteredExams(String homeId, ExamSearchDTO examSearchDTO) {
        
        List<ExamMaster> examMasters=new ArrayList<ExamMaster>();
        /*
         NAMED queries to be used
         *************************
    @NamedQuery(name = "ExamMaster.findByHomeExamType2Dates", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.examType = :examType AND e.examDate BETWEEN :earlyDate AND :laterDate"),
    @NamedQuery(name = "ExamMaster.findByHomeClass2Dates", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.class1 = :class1 AND e.examDate BETWEEN :earlyDate AND :laterDate"),
    @NamedQuery(name = "ExamMaster.findByHomeSubject2Dates", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.subject = :subject AND e.examDate BETWEEN :earlyDate AND :laterDate"),
    @NamedQuery(name = "ExamMaster.findBy2Dates", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.examDate BETWEEN :earlyDate AND :laterDate"),
         
         */
        System.out.println("EXamSearchDTO**************"+examSearchDTO+"*****************************");
        /*
         DTO contains
         ************
         private String searchBy;
      private String examType;
      private String class1;
      private String subject;
      private String fromDate;
      private String toDate;       
         
         */
        try {
            
            List<String> parameterList=new ArrayList<String>(); 
            List<Object> objectList=new ArrayList<Object>();
            String namedQuery="ExamMaster.findBy2Dates";
            
            parameterList.add("homeId");
            parameterList.add("earlyDate");
            parameterList.add("laterDate");
            
            objectList.add(homeId.trim());
            objectList.add(StringToDate.getStringToDate(examSearchDTO.getFromDate().trim()));
            objectList.add(StringToDate.getStringToDate(examSearchDTO.getToDate().trim()));
            
            
            if(examSearchDTO.getSearchBy().trim().equalsIgnoreCase("Type"))
                    {
                        namedQuery="ExamMaster.findByHomeExamType2Dates";
                        parameterList.add("examType");
                        objectList.add(examSearchDTO.getExamType().trim());                      
                    
                    }
            else if(examSearchDTO.getSearchBy().trim().equalsIgnoreCase("Class"))
                    {
                    namedQuery="ExamMaster.findByHomeClass2Dates";    
                    parameterList.add("class1");    
                    objectList.add(examSearchDTO.getClass1().trim());
                    
                    }
            else if(examSearchDTO.getSearchBy().trim().equalsIgnoreCase("Subject"))
                    {
                        namedQuery="ExamMaster.findByHomeSubject2Dates";
                        parameterList.add("subject");    
                        objectList.add(examSearchDTO.getSubject().trim());
                    
                    }
            else if(examSearchDTO.getSearchBy().trim().equalsIgnoreCase("All"))
                    {
                    //nothing to do
                    
                    }
            // print whatever you have
            System.out.println("Named Query      **************"+namedQuery+"*****************************");
            System.out.println("Param String List**************"+parameterList+"*****************************");
            System.out.println("Param Object List**************"+objectList+"*****************************");
            
            String[] paramArray=new String[parameterList.size()];
            for(int i=0;i<parameterList.size();i++)
            {
            paramArray[i]=parameterList.get(i);
            }
            
            //call dao and get the list of exams
            examMasters=headMasterDAO.getFilteredExamList(namedQuery, paramArray,objectList.toArray());
            
            
            
        } catch (Exception e) {
             e.printStackTrace();
        }
        
        return examMasters;
        
        
        
    }

    public List<ExamMarks> viewExamMarksById(int examId) {
        return headMasterDAO.getExamMarks(examId);
    }
    
    
   //---------implementing vocational methods

    public String deleteVocationalMaster(int vocCouseId) {
        return headMasterDAO.deleteVocationalMaster(vocCouseId);
    }

    public List<VocationalMaster> getVocationalMasters() {
        return headMasterDAO.getVocationalMasters();
    }

    public String saveVocationalMaster(VocationalMaster vocationalMaster) {
        return headMasterDAO.saveVocationalMaster(vocationalMaster);
    }

    public List<EducationAdmission> getChildListOfAVocationalCourse(String eduStatus, String homeId) {
        
        return headMasterDAO.getChildListOfAVocationalCourse(eduStatus, homeId);
    }

    public String vocationalAssesmentSave(VocationalDetails vocationalDetails) {
        
        String result="error";
        String result2="error";
        
        try {
            
            System.out.println("object received ----------------- > "+vocationalDetails);
            System.out.println("object received ----------------- > "+vocationalDetails.getTrainedBy());
            //1.save the vocational details object
            result=headMasterDAO.saveVocationalDetails(vocationalDetails);
            
            //2.get the corresponding EducationAdmission
            EducationAdmission educationAdmission=headMasterDAO.fetchAStudent(vocationalDetails.getVocationalDetailsPK().getChildProfileId()); 
            
            //3.modify the EducationAdmission 
            educationAdmission.setStatus("inactive");
            
            //4.update the modified EducationAdmission in DB 
            result2=headMasterDAO.updateChildEducationStatus(educationAdmission);
            
            result=(result=result2).equalsIgnoreCase("success")?"success":"error";
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        
        return result;
    }

    public ExamMarks getExamMarksByExamIdAndProfileNo(int examId, String childProfileNo) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public List<ExamMaster> getExamsByTypeHomeFromTo(String examType, String homeId, Date fromDate, Date toDate) {
        //throw new UnsupportedOperationException("Not supported yet.");
        return headMasterDAO.getExamsByTypeHomeFromTo(examType, homeId, fromDate, toDate);
    }

    public SchoolAssessmentDTO getSchoolAssessmentDTOForMarkSheet(String childProfileId, String homeId) {
        
        SchoolAssessmentDTO schoolAssessmentDTO=new SchoolAssessmentDTO();
        List<ExamMaster> assignmentExams=new ArrayList<ExamMaster> ();
        List<ExamMaster> unitTestExams=new ArrayList<ExamMaster> ();
        List<ExamMaster> quarterlyExams=new ArrayList<ExamMaster> ();
        List<ExamMaster> halfyearlyExams=new ArrayList<ExamMaster> ();
        List<ExamMaster> annualExams=new ArrayList<ExamMaster> ();
        Map<String ,List<ExamMaster>> allExamsMap=new HashMap<String, List<ExamMaster>> ();
        
        //add name , rollno , class of the child
        schoolAssessmentDTO.setNameValue(headMasterDAO.getChildMasterDetails(childProfileId).getChildName());
        
        schoolAssessmentDTO.setClassValue(headMasterDAO.fetchAStudent(childProfileId).getEduStatus());
        
        schoolAssessmentDTO.setRollValue(childProfileId);
        
        
        
        /*1.construct the to and from date range*/
        Date currentDate=CurrentDateProvider.getCurrentDate();
        int currentYear=currentDate.getYear();
        System.out.println("Year we got is -------------------------------> "+currentYear);
        
        //Anupam added this code on 16-01-2012 START Modify this later its only fetching for the current accademic year
                int monthCount = currentDate.getMonth();
                int fromYear=1900+currentYear;
                int toYear=1900+currentYear+1;
                
                if(monthCount >=0 && monthCount <=5)
                {
                System.out.println("***************************************JAN to APR Case");
                fromYear = 1900+currentYear-1;
                toYear = 1900+currentYear;
                }
        //Anupam added this code on 16-01-2012 END        
                
        //int fromYear=1900+currentYear;
        //int toYear=1900+currentYear+1;
        
        Date fromDate=StringToDate.getStringToDate("01/06/"+fromYear);
        Date toDate = StringToDate.getStringToDate("30/04/"+toYear);
        
        System.out.println("From date ------ >"+fromDate+"To date ----->" +toDate);
        
        //{'Assignment':'Assignment','Unit Test':'Unit Test','Quarterly':'Quarterly','Half Yearly':'Half Yearly','Annual':'Annual'}
        /*2.Gather the Lists containing all the examTypes marks*/
        assignmentExams=headMasterDAO.getExamsByTypeHomeFromTo("Assignment", homeId, fromDate, toDate);        
        if(!assignmentExams.isEmpty())
        allExamsMap.put("Assignment", assignmentExams);
        
        unitTestExams=headMasterDAO.getExamsByTypeHomeFromTo("Unit Test", homeId, fromDate, toDate);
        if(!unitTestExams.isEmpty())
        allExamsMap.put("Unit Test", unitTestExams);
        
        quarterlyExams=headMasterDAO.getExamsByTypeHomeFromTo("Quarterly", homeId, fromDate, toDate);
        if(!quarterlyExams.isEmpty())
        allExamsMap.put("Quarterly", quarterlyExams);
        
        halfyearlyExams=headMasterDAO.getExamsByTypeHomeFromTo("Half Yearly", homeId, fromDate, toDate);
        if(!halfyearlyExams.isEmpty())
        allExamsMap.put("Half Yearly", halfyearlyExams);
        
        annualExams=headMasterDAO.getExamsByTypeHomeFromTo("Annual", homeId, fromDate, toDate); 
        if(!annualExams.isEmpty())
        allExamsMap.put("Annual", annualExams);
        
        /*3.prepare the schoolAssessmentDTO object*/
        if(!allExamsMap.isEmpty())
        {
            Set<String> keyExamSets=allExamsMap.keySet();
            
            for (Iterator<String> it = keyExamSets.iterator(); it.hasNext();) { //for iteration the map
                String keyString = it.next();
                
                if(keyString.equalsIgnoreCase("Assignment"))
                {
                    assignmentExams=allExamsMap.get(keyString);
                    
                    int teleguFlag=0;
                    int hindiFlag=0;
                    int englishFlag=0;
                    int mathsFlag=0;
                    int gsFlag=0;
                    int ssFlag=0;
                    
                    for(int i=0;i<assignmentExams.size();i++)
                        {
                        ExamMaster examMaster=assignmentExams.get(i);
                        int examMarks=headMasterDAO.getMarksofAStudentForMarkSheet(examMaster.getExamId(),childProfileId);
                            //switch(i)
                            //{ 
                                
                                //{'Telugu':'Telugu','Hindi':'Hindi','English':'English','Maths':'Maths','General Science':'General Science','Social Science':'Social Science'
                               
                                //case 0: //First test 
                        
                          
                        
                                    if(examMaster.getSubject().equalsIgnoreCase("Telugu") && teleguFlag==0)
                                    {
                                    schoolAssessmentDTO.setTeleguUrduFTassignMarks(examMarks);
                                    ++teleguFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi") && hindiFlag==0)
                                    {
                                    schoolAssessmentDTO.setHindiFTassignMarks(examMarks);
                                    ++hindiFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("English") && englishFlag==0)
                                    {
                                    schoolAssessmentDTO.setEnglishFTassignMarks(examMarks);
                                    ++englishFlag;
                                    }
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths") && mathsFlag==0)
                                    {
                                    schoolAssessmentDTO.setMathsFTassignMarks(examMarks);
                                    ++mathsFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science") && gsFlag==0)
                                    {
                                    schoolAssessmentDTO.setGeneralScienceFTassignMarks(examMarks);
                                    ++gsFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science") && ssFlag==0)
                                    {
                                    schoolAssessmentDTO.setSocialScienceFTassignMarks(examMarks);
                                    ++ssFlag;
                                    }
                                        
                                        
                                    //break;
                                    
                                //case 1: //second test 
                                  else if(examMaster.getSubject().equalsIgnoreCase("Telugu") && teleguFlag==1)
                                   {
                                        schoolAssessmentDTO.setTeleguUrduSTassignMarks(examMarks);
                                        ++teleguFlag;
                                        
                                   }
                                   
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi") && hindiFlag==1)
                                    {
                                    schoolAssessmentDTO.setHindiSTassignMarks(examMarks);
                                    ++hindiFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("English") && englishFlag==1)
                                    {
                                      schoolAssessmentDTO.setEnglishSTassignMarks(examMarks);
                                      ++englishFlag;
                                    }
                                      
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths") && mathsFlag==1)
                                    {
                                        schoolAssessmentDTO.setMathsSTassignMarks(examMarks);
                                        ++mathsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science") && gsFlag==1)
                                    {
                                        schoolAssessmentDTO.setGeneralScienceSTassignMarks(examMarks);
                                        ++gsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science") && ssFlag==1)
                                    {
                                      schoolAssessmentDTO.setSocialScienceSTassignMarks(examMarks);
                                      ++ssFlag;
                                    }
                                      
                                        
                                    //break;
                                    
                               // case 2: //third test
                                 else   if(examMaster.getSubject().equalsIgnoreCase("Telugu") && teleguFlag==2)
                                    {
                                        schoolAssessmentDTO.setTeleguUrduTTassignMarks(examMarks);
                                        ++teleguFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi") && hindiFlag==2)
                                    {
                                        schoolAssessmentDTO.setHindiTTassignMarks(examMarks);
                                        ++hindiFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("English") && englishFlag==2)
                                    {
                                    schoolAssessmentDTO.setEnglishTTassignMarks(examMarks);
                                    ++englishFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths") && mathsFlag==2)
                                    {
                                        schoolAssessmentDTO.setMathsTTassignMarks(examMarks);
                                        ++mathsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science") && gsFlag==2)
                                    {
                                    schoolAssessmentDTO.setGeneralScienceTTassignMarks(examMarks);
                                    ++gsFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science") && ssFlag==2)
                                    {
                                         schoolAssessmentDTO.setSocialScienceTTassignMarks(examMarks);
                                         ++ssFlag;
                                    }
                                   
                                        
                                    //break;
                                    
                                //case 3: //fourth test 
                                 else if(examMaster.getSubject().equalsIgnoreCase("Telugu") && teleguFlag==3)
                                    {
                                      schoolAssessmentDTO.setTeleguUrduFOTassignMarks(examMarks);
                                      ++teleguFlag;
                                    }
                                      
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi") && hindiFlag==3)
                                    {
                                        schoolAssessmentDTO.setHindiFOTassignMarks(examMarks);
                                        ++hindiFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("English") && englishFlag==3)
                                    {
                                        schoolAssessmentDTO.setEnglishFOTassignMarks(examMarks);
                                        ++englishFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths") && mathsFlag==3)
                                    {
                                    schoolAssessmentDTO.setMathsTTassignMarks(examMarks);
                                    ++mathsFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science") && gsFlag==3)
                                    {
                                        schoolAssessmentDTO.setGeneralScienceFOTassignMarks(examMarks);
                                        ++gsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science") && ssFlag==3)
                                    {
                                        schoolAssessmentDTO.setSocialScienceFOTassignMarks(examMarks);
                                        ++ssFlag;
                                    }
                                    
                                        
                                    //break;
                                
                            
                            //}
                                                 
                            
                            
                            
                            
                            }
                    
                    teleguFlag=hindiFlag=englishFlag=mathsFlag=gsFlag=ssFlag=0;
                    
                    
                    
                    
                }
                else if(keyString.equalsIgnoreCase("Unit Test"))
                {
                    unitTestExams=allExamsMap.get(keyString);
                    int teleguFlag=0;
                    int hindiFlag=0;
                    int englishFlag=0;
                    int mathsFlag=0;
                    int gsFlag=0;
                    int ssFlag=0;
                    
                    for(int i=0;i<unitTestExams.size();i++)
                        {
                        ExamMaster examMaster=unitTestExams.get(i);
                        int examMarks=headMasterDAO.getMarksofAStudentForMarkSheet(examMaster.getExamId(),childProfileId);
                        
                            //switch(i)
                            //{
                                
                                
                                //{'Telugu':'Telugu','Hindi':'Hindi','English':'English','Maths':'Maths','General Science':'General Science','Social Science':'Social Science'
                               
                                //case 0: //First test 
                                    if(examMaster.getSubject().equalsIgnoreCase("Telugu") && teleguFlag==0)
                                    {
                                            schoolAssessmentDTO.setTeleguUrduFTunittestMarks(examMarks);
                                            ++teleguFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi") && hindiFlag==0)
                                    {
                                        schoolAssessmentDTO.setHindiFTunittestMarks(examMarks);
                                        ++hindiFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("English") && englishFlag==0)
                                    {
                                        schoolAssessmentDTO.setEnglishFTunittestMarks(examMarks);
                                        ++englishFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths") && mathsFlag==0)
                                    {
                                        schoolAssessmentDTO.setMathsFTunittestMarks(examMarks);
                                        ++mathsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science") && gsFlag==0)
                                    {
                                        schoolAssessmentDTO.setGeneralScienceFTunittestMarks(examMarks);
                                        ++gsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science") && ssFlag==0)
                                    {
                                        schoolAssessmentDTO.setSocialScienceFTunittestMarks(examMarks);
                                        ++ssFlag;
                                    }
                                    
                                        
                                    //break;
                                    
                                //case 1: //second test 
                                   else if(examMaster.getSubject().equalsIgnoreCase("Telugu") && teleguFlag==1)
                                   {
                                        schoolAssessmentDTO.setTeleguUrduSTunittestMarks(examMarks);
                                        ++teleguFlag;
                                   }
                                   
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi") && hindiFlag==1)
                                    {
                                    schoolAssessmentDTO.setHindiSTunittestMarks(examMarks);
                                    ++hindiFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("English") && englishFlag==1)
                                    {
                                        schoolAssessmentDTO.setEnglishSTunittestMarks(examMarks);
                                        ++englishFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths") && mathsFlag==1)
                                    {
                                        schoolAssessmentDTO.setMathsSTunittestMarks(examMarks);
                                        ++mathsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science") && gsFlag==1)
                                    {
                                        schoolAssessmentDTO.setGeneralScienceSTunittestMarks(examMarks);
                                        ++gsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science") && ssFlag==1)
                                    {
                                     schoolAssessmentDTO.setSocialScienceSTunittestMarks(examMarks);
                                     ++ssFlag;
                                    }
                                       
                                        
                                   // break;
                                    
                                //case 2: //third test
                                  else if(examMaster.getSubject().equalsIgnoreCase("Telugu") && teleguFlag==2)
                                  {
                                        schoolAssessmentDTO.setTeleguUrduTTunittestMarks(examMarks);
                                        ++teleguFlag;
                                  }
                                  
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi") && hindiFlag==2)
                                    {
                                        schoolAssessmentDTO.setHindiTTunittestMarks(examMarks);
                                        ++hindiFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("English") && englishFlag==2)
                                    {
                                        schoolAssessmentDTO.setEnglishTTunittestMarks(examMarks);
                                        ++englishFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths") && mathsFlag==2)
                                    {
                                        schoolAssessmentDTO.setMathsTTunittestMarks(examMarks);
                                        ++mathsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science") && gsFlag==2)
                                    {
                                        schoolAssessmentDTO.setGeneralScienceTTunittestMarks(examMarks);
                                        ++gsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science") && ssFlag==2)
                                    {
                                        schoolAssessmentDTO.setSocialScienceTTunittestMarks(examMarks);
                                        ++ssFlag;
                                    }
                                    
                                        
                                   // break;
                                    
                               // case 3: //fourth test 
                                   else if(examMaster.getSubject().equalsIgnoreCase("Telugu") && teleguFlag==3)
                                   {
                                        schoolAssessmentDTO.setTeleguUrduFOTunittestMarks(examMarks);
                                        ++teleguFlag;
                                   }
                                   
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi") && hindiFlag==3)
                                    {
                                        schoolAssessmentDTO.setHindiFOTunittestMarks(examMarks);
                                        ++hindiFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("English") && englishFlag==3)
                                    {
                                       schoolAssessmentDTO.setEnglishFOTunittestMarks(examMarks);
                                       ++englishFlag;
                                    }
                                     
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths") && mathsFlag==3)
                                    {
                                    schoolAssessmentDTO.setMathsTTunittestMarks(examMarks);
                                    ++mathsFlag;
                                    }
                                        
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science") && gsFlag==3)
                                    {
                                        schoolAssessmentDTO.setGeneralScienceFOTunittestMarks(examMarks);
                                        ++gsFlag;
                                    }
                                    
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science") && ssFlag==3)
                                    {
                                        schoolAssessmentDTO.setSocialScienceFOTunittestMarks(examMarks);
                                        ++ssFlag;
                                    }
                                    
                                        
                                   // break; 
                            
                            //}
                                                 
                            
                            
                            
                            
                            }
                    
                    /*---------------Added by anupam to calculate total number of Unit test and test attended-----START*/
                    schoolAssessmentDTO.setNoOfUTConductedValue(unitTestExams.size());
                    schoolAssessmentDTO.setNoOfUTAttendedValue((teleguFlag+hindiFlag+englishFlag+mathsFlag+gsFlag+ssFlag));
                    /*---------------Added by anupam to calculate total number of Unit test and test attended-----START*/        
                    
                    teleguFlag=hindiFlag=englishFlag=mathsFlag=gsFlag=ssFlag=0;
                    
                }
                else if(keyString.equalsIgnoreCase("Quarterly"))
                {
                    
                    quarterlyExams=allExamsMap.get(keyString);
                    System.out.println(" ****************Qerterly size -------------------------------------------------------> "+quarterlyExams.size());
                     for(int i=0;i<quarterlyExams.size();i++)
                        {
                            
                        ExamMaster examMaster=quarterlyExams.get(i);
                        int examMarks=headMasterDAO.getMarksofAStudentForMarkSheet(examMaster.getExamId(),childProfileId);
                        
                        System.out.println("exam Master subject= "+examMaster.getSubject()+"--------exam type="+examMaster.getExamType()+"--------------------------------------------------------->"+examMarks);
                        
                            //switch(i)
                            //{
                                
                                
                                //{'Telugu':'Telugu','Hindi':'Hindi','English':'English','Maths':'Maths','General Science':'General Science','Social Science':'Social Science'
                               
                              //case 0: //First test 
                                    if(examMaster.getSubject().equalsIgnoreCase("Telugu"))
                                        schoolAssessmentDTO.setTeleguUrduQuarterMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi"))
                                        schoolAssessmentDTO.setHindiQuarterMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("English"))
                                        schoolAssessmentDTO.setEnglishQuarterMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths"))
                                        schoolAssessmentDTO.setMathsQuarterMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science"))
                                        schoolAssessmentDTO.setGeneralScienceQuarterMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science"))
                                        schoolAssessmentDTO.setSocialScienceQuarterMarks(examMarks);
                                        
                                    //break;
                            
                            
                            //}
                                                 
                            
                            
                            
                            
                            }
                    
                    
                    
                }
                else if(keyString.equalsIgnoreCase("Half Yearly"))
                {
                halfyearlyExams=allExamsMap.get(keyString);
                    
                     for(int i=0;i<halfyearlyExams.size();i++)
                        {
                        ExamMaster examMaster=halfyearlyExams.get(i);
                        int examMarks=headMasterDAO.getMarksofAStudentForMarkSheet(examMaster.getExamId(),childProfileId);
                        
                           // switch(i)
                            //{
                                
                                
                                //{'Telugu':'Telugu','Hindi':'Hindi','English':'English','Maths':'Maths','General Science':'General Science','Social Science':'Social Science'
                               
                              //case 0: //First test 
                                    if(examMaster.getSubject().equalsIgnoreCase("Telugu"))
                                        schoolAssessmentDTO.setTeleguUrduHalfYearMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi"))
                                        schoolAssessmentDTO.setHindiHalfYearMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("English"))
                                        schoolAssessmentDTO.setEnglishHalfYearMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths"))
                                        schoolAssessmentDTO.setMathsHalfYearMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science"))
                                        schoolAssessmentDTO.setGeneralScienceHalfYearMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science"))
                                        schoolAssessmentDTO.setSocialScienceHalfYearMarks(examMarks);
                                        
                              //      break;
                            
                            
                            //}
                                                 
                            
                            
                            
                            
                            }
                    
                }        
                else if(keyString.equalsIgnoreCase("Annual"))
                {
                annualExams=allExamsMap.get(keyString);
                    
                     for(int i=0;i<annualExams.size();i++)
                        {
                        ExamMaster examMaster=annualExams.get(i);
                        int examMarks=headMasterDAO.getMarksofAStudentForMarkSheet(examMaster.getExamId(),childProfileId);
                        
                            //switch(i)
                            //{
                                
                                
                                //{'Telugu':'Telugu','Hindi':'Hindi','English':'English','Maths':'Maths','General Science':'General Science','Social Science':'Social Science'
                               
                              //case 0: //First test 
                                    if(examMaster.getSubject().equalsIgnoreCase("Telugu"))
                                        schoolAssessmentDTO.setTeleguUrduAnnualMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Hindi"))
                                        schoolAssessmentDTO.setHindiAnnualMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("English"))
                                        schoolAssessmentDTO.setEnglishAnnualMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Maths"))
                                        schoolAssessmentDTO.setMathsAnnualMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("General Science"))
                                        schoolAssessmentDTO.setGeneralScienceAnnualMarks(examMarks);
                                    else if(examMaster.getSubject().equalsIgnoreCase("Social Science"))
                                        schoolAssessmentDTO.setSocialScienceAnnualMarks(examMarks);
                                        
                                   // break;
                            
                            
                            //}
                                                 
                            
                            
                            
                            
                            }
                }
                
                
                
            }
            
            //make horizintal total of FT,ST,TT and FOT
            schoolAssessmentDTO.setTeleguUrduFTtotalMarks(schoolAssessmentDTO.getTeleguUrduFTassignMarks()+schoolAssessmentDTO.getTeleguUrduFTunittestMarks());
            schoolAssessmentDTO.setTeleguUrduSTtotalMarks(schoolAssessmentDTO.getTeleguUrduSTassignMarks()+schoolAssessmentDTO.getTeleguUrduSTunittestMarks());
            schoolAssessmentDTO.setTeleguUrduTTtotalMarks(schoolAssessmentDTO.getTeleguUrduTTassignMarks()+schoolAssessmentDTO.getTeleguUrduTTunittestMarks());
            schoolAssessmentDTO.setTeleguUrduFOTtotalMarks(schoolAssessmentDTO.getTeleguUrduFOTassignMarks()+schoolAssessmentDTO.getTeleguUrduFOTunittestMarks());
            schoolAssessmentDTO.setTeleguUrduAssignUnitTestTotalMarks(schoolAssessmentDTO.getTeleguUrduFTtotalMarks()+schoolAssessmentDTO.getTeleguUrduSTtotalMarks()+schoolAssessmentDTO.getTeleguUrduTTtotalMarks()+schoolAssessmentDTO.getTeleguUrduFOTtotalMarks());
            schoolAssessmentDTO.setTeleguUrduQuarterHalfYearTotalMarks(schoolAssessmentDTO.getTeleguUrduQuarterMarks()+schoolAssessmentDTO.getTeleguUrduHalfYearMarks());
            
            schoolAssessmentDTO.setTeleguUrduAssignUnitTestTotalPercentMarks(schoolAssessmentDTO.getTeleguUrduAssignUnitTestTotalMarks()/8);
            schoolAssessmentDTO.setTeleguUrduQuarterHalfYearTotalPercentMarks(schoolAssessmentDTO.getTeleguUrduQuarterHalfYearTotalMarks()/8);
            schoolAssessmentDTO.setTeleguUrduAnnualPercentMarks(schoolAssessmentDTO.getTeleguUrduAnnualMarks()/2);
            schoolAssessmentDTO.setTeleguUrduFinalResult(schoolAssessmentDTO.getTeleguUrduAssignUnitTestTotalPercentMarks()+schoolAssessmentDTO.getTeleguUrduQuarterHalfYearTotalPercentMarks()+schoolAssessmentDTO.getTeleguUrduAnnualPercentMarks());
            
            
            
         
            schoolAssessmentDTO.setHindiFTtotalMarks(schoolAssessmentDTO.getHindiFTassignMarks()+schoolAssessmentDTO.getHindiFTunittestMarks());
            schoolAssessmentDTO.setHindiSTtotalMarks(schoolAssessmentDTO.getHindiSTassignMarks()+schoolAssessmentDTO.getHindiSTunittestMarks());
            schoolAssessmentDTO.setHindiTTtotalMarks(schoolAssessmentDTO.getHindiTTassignMarks()+schoolAssessmentDTO.getHindiTTunittestMarks());
            schoolAssessmentDTO.setHindiFOTtotalMarks(schoolAssessmentDTO.getHindiFOTassignMarks()+schoolAssessmentDTO.getHindiFOTunittestMarks());
            schoolAssessmentDTO.setHindiAssignUnitTestTotalMarks(schoolAssessmentDTO.getHindiFTtotalMarks()+schoolAssessmentDTO.getHindiSTtotalMarks()+schoolAssessmentDTO.getHindiTTtotalMarks()+schoolAssessmentDTO.getHindiFOTtotalMarks());
            schoolAssessmentDTO.setHindiQuarterHalfYearTotalMarks(schoolAssessmentDTO.getHindiQuarterMarks()+schoolAssessmentDTO.getHindiHalfYearMarks());
            
            schoolAssessmentDTO.setHindiAssignUnitTestTotalPercentMarks(schoolAssessmentDTO.getHindiAssignUnitTestTotalMarks()/8);
            schoolAssessmentDTO.setHindiQuarterHalfYearTotalPercentMarks(schoolAssessmentDTO.getHindiQuarterHalfYearTotalMarks()/8);
            schoolAssessmentDTO.setHindiAnnualPercentMarks(schoolAssessmentDTO.getHindiAnnualMarks()/2);
            schoolAssessmentDTO.setHindiFinalResult(schoolAssessmentDTO.getHindiAssignUnitTestTotalPercentMarks()+schoolAssessmentDTO.getHindiQuarterHalfYearTotalPercentMarks()+schoolAssessmentDTO.getHindiAnnualPercentMarks());
            
            
            
            
            schoolAssessmentDTO.setEnglishFTtotalMarks(schoolAssessmentDTO.getEnglishFTassignMarks()+schoolAssessmentDTO.getEnglishFTunittestMarks());
            schoolAssessmentDTO.setEnglishSTtotalMarks(schoolAssessmentDTO.getEnglishSTassignMarks()+schoolAssessmentDTO.getEnglishSTunittestMarks());
            schoolAssessmentDTO.setEnglishTTtotalMarks(schoolAssessmentDTO.getEnglishTTassignMarks()+schoolAssessmentDTO.getEnglishTTunittestMarks());
            schoolAssessmentDTO.setEnglishFOTtotalMarks(schoolAssessmentDTO.getEnglishFOTassignMarks()+schoolAssessmentDTO.getEnglishFOTunittestMarks());
            schoolAssessmentDTO.setEnglishAssignUnitTestTotalMarks(schoolAssessmentDTO.getEnglishFTtotalMarks()+schoolAssessmentDTO.getEnglishSTtotalMarks()+schoolAssessmentDTO.getEnglishTTtotalMarks()+schoolAssessmentDTO.getEnglishFOTtotalMarks());
            schoolAssessmentDTO.setEnglishQuarterHalfYearTotalMarks(schoolAssessmentDTO.getEnglishQuarterMarks()+schoolAssessmentDTO.getEnglishHalfYearMarks());
            
            schoolAssessmentDTO.setEnglishAssignUnitTestTotalPercentMarks(schoolAssessmentDTO.getEnglishAssignUnitTestTotalMarks()/8);
            schoolAssessmentDTO.setEnglishQuarterHalfYearTotalPercentMarks(schoolAssessmentDTO.getEnglishQuarterHalfYearTotalMarks()/8);
            schoolAssessmentDTO.setEnglishAnnualPercentMarks(schoolAssessmentDTO.getEnglishAnnualMarks()/2);
            schoolAssessmentDTO.setEnglishFinalreslt(schoolAssessmentDTO.getEnglishAssignUnitTestTotalPercentMarks()+schoolAssessmentDTO.getEnglishQuarterHalfYearTotalPercentMarks()+schoolAssessmentDTO.getEnglishAnnualPercentMarks());
            
            
            
            schoolAssessmentDTO.setMathsFTtotalMarks(schoolAssessmentDTO.getMathsFTassignMarks()+schoolAssessmentDTO.getMathsFTunittestMarks());
            schoolAssessmentDTO.setMathsSTtotalMarks(schoolAssessmentDTO.getMathsSTassignMarks()+schoolAssessmentDTO.getMathsSTunittestMarks());
            schoolAssessmentDTO.setMathsTTtotalMarks(schoolAssessmentDTO.getMathsTTassignMarks()+schoolAssessmentDTO.getMathsTTunittestMarks());
            schoolAssessmentDTO.setMathsFOTtotalMarks(schoolAssessmentDTO.getMathsFOTassignMarks()+schoolAssessmentDTO.getMathsFOTunittestMarks());
            schoolAssessmentDTO.setMathsAssignUnitTestTotalMarks(schoolAssessmentDTO.getMathsFTtotalMarks()+schoolAssessmentDTO.getMathsSTtotalMarks()+schoolAssessmentDTO.getEnglishTTtotalMarks()+schoolAssessmentDTO.getEnglishFOTtotalMarks());
            schoolAssessmentDTO.setMathsQuarterHalfYearTotalMarks(schoolAssessmentDTO.getMathsQuarterMarks()+schoolAssessmentDTO.getMathsHalfYearMarks());
            
            schoolAssessmentDTO.setMathsAssignUnitTestTotalPercentMarks(schoolAssessmentDTO.getMathsAssignUnitTestTotalMarks()/8);
            schoolAssessmentDTO.setMathsQuarterHalfYearTotalPercentMarks(schoolAssessmentDTO.getMathsQuarterHalfYearTotalMarks()/8);
            schoolAssessmentDTO.setMathsAnnualPercentMarks(schoolAssessmentDTO.getMathsAnnualMarks()/2);
            schoolAssessmentDTO.setMathsFinalResult(schoolAssessmentDTO.getMathsAssignUnitTestTotalPercentMarks()+schoolAssessmentDTO.getMathsQuarterHalfYearTotalPercentMarks()+schoolAssessmentDTO.getMathsAnnualPercentMarks());
            
            
            schoolAssessmentDTO.setGeneralScienceFTtotalMarks(schoolAssessmentDTO.getGeneralScienceFTassignMarks()+schoolAssessmentDTO.getGeneralScienceFTunittestMarks());
            schoolAssessmentDTO.setGeneralScienceSTtotalMarks(schoolAssessmentDTO.getGeneralScienceSTassignMarks()+schoolAssessmentDTO.getGeneralScienceSTunittestMarks());
            schoolAssessmentDTO.setGeneralScienceTTtotalMarks(schoolAssessmentDTO.getGeneralScienceTTassignMarks()+schoolAssessmentDTO.getGeneralScienceTTunittestMarks());
            schoolAssessmentDTO.setGeneralScienceFOTtotalMarks(schoolAssessmentDTO.getGeneralScienceFOTassignMarks()+schoolAssessmentDTO.getGeneralScienceFOTunittestMarks());
            schoolAssessmentDTO.setGeneralScienceAssignUnitTestTotalMarks(schoolAssessmentDTO.getGeneralScienceFTtotalMarks()+schoolAssessmentDTO.getGeneralScienceSTtotalMarks()+schoolAssessmentDTO.getGeneralScienceTTtotalMarks()+schoolAssessmentDTO.getGeneralScienceFOTtotalMarks());
            schoolAssessmentDTO.setGeneralScienceQuarterHalfYearTotalMarks(schoolAssessmentDTO.getGeneralScienceQuarterMarks()+schoolAssessmentDTO.getGeneralScienceHalfYearMarks());
            
            schoolAssessmentDTO.setGeneralScienceAssignUnitTestTotalPercentMarks(schoolAssessmentDTO.getGeneralScienceAssignUnitTestTotalMarks()/8);
            schoolAssessmentDTO.setGeneralScienceQuarterHalfYearTotalPercentMarks(schoolAssessmentDTO.getGeneralScienceQuarterHalfYearTotalMarks()/8);
            schoolAssessmentDTO.setGeneralScienceAnnualPercentMarks(schoolAssessmentDTO.getGeneralScienceAnnualMarks()/2);
            schoolAssessmentDTO.setGeneralScienceFinalResult(schoolAssessmentDTO.getGeneralScienceAssignUnitTestTotalPercentMarks()+schoolAssessmentDTO.getGeneralScienceQuarterHalfYearTotalPercentMarks()+schoolAssessmentDTO.getGeneralScienceAnnualPercentMarks());
            
            
            schoolAssessmentDTO.setSocialScienceFTtotalMarks(schoolAssessmentDTO.getSocialScienceFTassignMarks()+schoolAssessmentDTO.getSocialScienceFTunittestMarks());
            schoolAssessmentDTO.setSocialScienceSTtotalMarks(schoolAssessmentDTO.getSocialScienceSTassignMarks()+schoolAssessmentDTO.getSocialScienceSTunittestMarks());
            schoolAssessmentDTO.setSocialScienceTTtotalMarks(schoolAssessmentDTO.getSocialScienceTTassignMarks()+schoolAssessmentDTO.getSocialScienceTTunittestMarks());
            schoolAssessmentDTO.setSocialScienceFOTtotalMarks(schoolAssessmentDTO.getSocialScienceFOTassignMarks()+schoolAssessmentDTO.getSocialScienceFOTunittestMarks());
            schoolAssessmentDTO.setSocialScienceAssignUnitTestTotalMarks(schoolAssessmentDTO.getSocialScienceFTtotalMarks()+schoolAssessmentDTO.getSocialScienceSTtotalMarks()+schoolAssessmentDTO.getSocialScienceTTtotalMarks()+schoolAssessmentDTO.getSocialScienceFOTtotalMarks());
            schoolAssessmentDTO.setSocialScienceQuarterHalfYearTotalMarks(schoolAssessmentDTO.getSocialScienceQuarterMarks()+schoolAssessmentDTO.getSocialScienceHalfYearMarks());
            
            schoolAssessmentDTO.setSocialScienceAssignUnitTestTotalPercentMarks(schoolAssessmentDTO.getSocialScienceAssignUnitTestTotalMarks()/8);
            schoolAssessmentDTO.setSocialScienceQuarterHalfYearTotalPercentMarks(schoolAssessmentDTO.getSocialScienceQuarterHalfYearTotalMarks()/8);
            schoolAssessmentDTO.setSocialScienceAnnualPercentMarks(schoolAssessmentDTO.getSocialScienceAnnualMarks()/2);
            schoolAssessmentDTO.setSocialScienceFinalResult(schoolAssessmentDTO.getSocialScienceAssignUnitTestTotalPercentMarks()+schoolAssessmentDTO.getSocialScienceQuarterHalfYearTotalPercentMarks()+schoolAssessmentDTO.getSocialScienceAnnualPercentMarks());
            //total percentage marks
            
            schoolAssessmentDTO.setFirstTestTotal(schoolAssessmentDTO.getTeleguUrduFTtotalMarks()+schoolAssessmentDTO.getHindiFTtotalMarks()+schoolAssessmentDTO.getEnglishFTtotalMarks()+schoolAssessmentDTO.getMathsFTtotalMarks()+schoolAssessmentDTO.getGeneralScienceFTtotalMarks()+schoolAssessmentDTO.getSocialScienceFTtotalMarks());
            
            schoolAssessmentDTO.setSecondTestTotal(schoolAssessmentDTO.getTeleguUrduSTtotalMarks()+schoolAssessmentDTO.getHindiSTtotalMarks()+schoolAssessmentDTO.getEnglishSTtotalMarks()+schoolAssessmentDTO.getMathsSTtotalMarks()+schoolAssessmentDTO.getGeneralScienceSTtotalMarks()+schoolAssessmentDTO.getSocialScienceSTtotalMarks());
            
            schoolAssessmentDTO.setThirdTestTotal(schoolAssessmentDTO.getTeleguUrduTTtotalMarks()+schoolAssessmentDTO.getHindiTTtotalMarks()+schoolAssessmentDTO.getEnglishTTtotalMarks()+schoolAssessmentDTO.getMathsTTtotalMarks()+schoolAssessmentDTO.getGeneralScienceTTtotalMarks()+schoolAssessmentDTO.getSocialScienceTTtotalMarks());
            
            schoolAssessmentDTO.setFourthTestTotal(schoolAssessmentDTO.getTeleguUrduFOTtotalMarks()+schoolAssessmentDTO.getHindiFOTtotalMarks()+schoolAssessmentDTO.getEnglishFOTtotalMarks()+schoolAssessmentDTO.getMathsFOTtotalMarks()+schoolAssessmentDTO.getGeneralScienceFOTtotalMarks()+schoolAssessmentDTO.getSocialScienceFOTtotalMarks());
            
            schoolAssessmentDTO.setQuerterlyTotal(schoolAssessmentDTO.getTeleguUrduQuarterMarks()+schoolAssessmentDTO.getHindiQuarterMarks()+schoolAssessmentDTO.getEnglishQuarterMarks()+schoolAssessmentDTO.getMathsQuarterMarks()+schoolAssessmentDTO.getGeneralScienceQuarterMarks()+schoolAssessmentDTO.getSocialScienceQuarterMarks());
            
            schoolAssessmentDTO.setFinalResultTotal(schoolAssessmentDTO.getTeleguUrduFinalResult()+schoolAssessmentDTO.getHindiFinalResult()+schoolAssessmentDTO.getEnglishFinalreslt()+schoolAssessmentDTO.getMathsFinalResult()+schoolAssessmentDTO.getGeneralScienceFinalResult()+schoolAssessmentDTO.getSocialScienceFinalResult());
        
        
        }
        
       
       schoolAssessmentDTO.setCreationDate(CalendarUtil.getCurrentDateString());
        
        return schoolAssessmentDTO;
        
        
    }

    public List<VocationalAssesmentDTO> getVocationalAssesmentDTOList(int vocId) {
        List<VocationalAssesmentDTO> vocationalAssesmentDTOs=new ArrayList<VocationalAssesmentDTO>();
        
        try {
            List<VocationalDetails> vocationalDetailses=headMasterDAO.getVocationDetailsByVocId(vocId);
            
            for (Iterator<VocationalDetails> it = vocationalDetailses.iterator(); it.hasNext();) {
                VocationalDetails vocationalDetails = it.next();
                
                VocationalAssesmentDTO vadto=new VocationalAssesmentDTO();
                vadto.setChildProfileId(vocationalDetails.getVocationalDetailsPK().getChildProfileId());
                vadto.setNameOfTheChild(headMasterDAO.getChildMasterDetails(vadto.getChildProfileId()).getChildName());
                vadto.setNoOfDaysTrained(vocationalDetails.getNoOfDaysTrains());
                vadto.setTrainedBy(vocationalDetails.getTrainedBy());
                vadto.setPostTrainingAssesment(vocationalDetails.getPostTrainingAssesment());
                vadto.setSectionOfTraining(headMasterDAO.getVocationalMaster(vocId).getVocCourseName());
                
                vocationalAssesmentDTOs.add(vadto);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vocationalAssesmentDTOs;
        
    }
    
    
    //anupam added on 14-01-2012 START
       
      

    public String saveSchool(SchoolMaster schoolMaster) {
        return headMasterDAO.saveOrUpdateSchool(schoolMaster);
    }

    public List<SchoolMaster> viewAllSchools() {
        
       return headMasterDAO.viewAllSchools();
       
    }
    
    //anupam added on 14-01-2012 END
    
     //anupam added on 16-01-2012 START
     

    public String promoteChildren(String[] profileIds, String eduStatus) {
    
        String result = "error";
        List<EducationAdmission> changedProfiles = new ArrayList<EducationAdmission>();
        
        for(int i=0; i < profileIds.length ; i++) // for all the profiles
        {
        //fetch the corrosponding child from dao
            EducationAdmission educationAdmission = headMasterDAO.getAdmission(profileIds[i].trim());
        
        //modify his details
        educationAdmission.setEduStatus(eduStatus);    
        
        //push it in the arrayList
        changedProfiles.add(educationAdmission);
        }
        
        //save the array list with help of dao
        
        return headMasterDAO.saveOrUpdateAllEducationAdmission(changedProfiles);
        
    }
    
    //anupam added on 16-01-2012 END
    
    //anupam added on 25-01-2012 START
    public List<ChildMaster> getChildListForAttendenceOutSchool(String homeId, String course, int schoolId) {
        return headMasterDAO.getChildListForAttendence(homeId,course,schoolId);
    }
    
    public List<SchoolStudentDTO> getSchoolStudentDTOListForAttendenceOutSchool(String homeId, String course, int schoolId) {
        return headMasterDAO.getSchoolStudentListForAttendence(homeId, course, schoolId);
    }
    //anupam added on 25-01-2012 END
    
    
    //Anupam aded on 7-02-2012 START
       
    
    public List<ChildMaster> getChildListBasedOnSchoolAndClass(String homeId, String course, int schoolId) {
        return headMasterDAO.getChildListBasedOnSchoolAndClass(homeId, course, schoolId);
    }
    
    
    public List<SchoolMaster> fetchSchoolsByType(String schoolType) {
        return headMasterDAO.fetchSchoolsByType(schoolType);
    }
    
    //Anupam aded on 7-02-2012 END   
    
    
    //Anupam aded on 8-02-2012 START
    
     public List<SchoolSingleStandardPopulationDTO> fetchSchoolSingleStandardPopulationDTOs(String homeId, String schoolType) {
        return headMasterDAO.fetchSchoolSingleStandardPopulationDTOs(homeId, schoolType);
    }
    
    //Anupam added on 8-02-2012 END   
     
     //Anupam added on 9-2-2012  START
     
    /* public EducationTypeSchoolClassPopulationDTO getSchoolTypeStudentsNoDTO(String homeId,String schoolType)
     {
     EducationTypeSchoolClassPopulationDTO schoolTypeStudentsNoDTO =  new EducationTypeSchoolClassPopulationDTO();
     
     List<SchoolAllStandardPopulationDTO> classWisePopulationDTOs = new ArrayList<SchoolAllStandardPopulationDTO>();
     
     //1.Get the map
     List<SchoolSingleStandardPopulationDTO> classWisePopulationList = fetchClassWisePopluationMaps(homeId, schoolType);
     
     //2.get an iterator over the list
     Iterator i = classWisePopulationList.iterator();
     
     while(i.hasNext())
     {
     SchoolSingleStandardPopulationDTO courseStudentNoDTO = (SchoolSingleStandardPopulationDTO) i.next();
     
     if(classWisePopulationDTOs.size() == 0)
     {
     new SchoolAllStandardPopulationDTO().setSchoolName(courseStudentNoDTO.getSchoolName());     
     }
     
     else if()
     
     
     String courseName = courseStudentNoDTO.getCourseName().trim();
     schoolTypeStudentsNoDTO.
     long noOfStudents = courseStudentNoDTO.getNoOfStudents();
     
                 if(courseName.equalsIgnoreCase("1st"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd1(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("2nd"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd2(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("3rd"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd3(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("4th"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd4(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("5th"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd5(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("6th"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd6(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("7th"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd7(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("8th"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd8(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("9th"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd9(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("10th"))
                 {
                  schoolTypeStudentsNoDTO.setStudentsInStd10(noOfStudents);
                 }
                 
     
    // System.out.println("---------------CourseStudentNoDTO----------------"+courseStudentNoDTO.getCourseName()+" --- "+courseStudentNoDTO.getNoOfStudents());
     
     }
     schoolTypeStudentsNoDTO.setHomeId(homeId);
     schoolTypeStudentsNoDTO.setSchoolType(schoolType);
     
     System.out.println("---------------schoolTypeStudentsNoDTO----------------"+schoolTypeStudentsNoDTO);
     
         return schoolTypeStudentsNoDTO;
     
     
     }*/
     
     public EducationTypeSchoolClassPopulationDTO getSchoolTypeStudentsNoDTO(String homeId,String schoolType){
         
     EducationTypeSchoolClassPopulationDTO educationTypeSchoolClassPopulationDTO = new EducationTypeSchoolClassPopulationDTO();    
         
     List<SchoolAllStandardPopulationDTO> schoolAllStandardPopulationDTOs = new ArrayList<SchoolAllStandardPopulationDTO>();
         
     Map<Integer,SchoolAllStandardPopulationDTO> visited = new HashMap<Integer, SchoolAllStandardPopulationDTO>();
     
     List<SchoolSingleStandardPopulationDTO> schoolSingleStandardPopulationDTOs = fetchSchoolSingleStandardPopulationDTOs(homeId,schoolType);
     
     Iterator singleStdPopulationIter = schoolSingleStandardPopulationDTOs.iterator();
     
     SchoolAllStandardPopulationDTO currentSchoolAllStdObj = null;
     
     SchoolSingleStandardPopulationDTO currentSchoolSingleStdObj = null;
     
     String courseName = null;
     
     long noOfStudents = 0;
     
     int currentSchoolIdInSingleStdObj = 0;
     
             while(singleStdPopulationIter.hasNext())
             {
              //get the SchoolSingleStandardPopulationDTO object from list and assign it to currentSchoolSingleStdObj     
              currentSchoolSingleStdObj = (SchoolSingleStandardPopulationDTO)singleStdPopulationIter.next();
              
              //get currents schools id from the currentSchoolSingleStdObj 
              currentSchoolIdInSingleStdObj = currentSchoolSingleStdObj.getSchoolId();
              
              //if map is empty OR the new schoolId is not present in map
                if(!visited.containsKey(currentSchoolIdInSingleStdObj) || visited.isEmpty())
                {
                 //create a new SchoolAllStandardPopulationDTO object and assign it to currentSchoolAllStdObj
                    currentSchoolAllStdObj = new SchoolAllStandardPopulationDTO(currentSchoolSingleStdObj.getSchoolId());
                    
                    //set the name of the school
                    currentSchoolAllStdObj.setSchoolName(currentSchoolSingleStdObj.getSchoolName());
                    
                 
                 //put key and value to the visited map
                    visited.put(currentSchoolIdInSingleStdObj, currentSchoolAllStdObj);
                }
                // if current currentSchoolSingleStdObj has a scoolId which is already in map  
                else if(visited.containsKey(currentSchoolIdInSingleStdObj))
                {
                 //keep the existing object in map as currentSchoolAllStdObj
                    currentSchoolAllStdObj = visited.get(currentSchoolIdInSingleStdObj);
                }
                
                //------------set the class population
                
                //get the class name of standard
                courseName = currentSchoolSingleStdObj.getCourseName();
                
                //get the no of student in the class 
                noOfStudents = currentSchoolSingleStdObj.getNoOfStudents();
                
                if(courseName.equalsIgnoreCase("1st"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd1(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("2nd"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd2(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("3rd"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd3(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("4th"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd4(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("5th"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd5(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("6th"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd6(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("7th"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd7(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("8th"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd8(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("9th"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd9(noOfStudents);
                 }
                 else if(courseName.equalsIgnoreCase("10th"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd10(noOfStudents);
                 }
                
                else if(courseName.equalsIgnoreCase("10th"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd10(noOfStudents);
                 }
                
                //'Inter I yr','Inter II yr'
                else if(courseName.equalsIgnoreCase("Inter I yr"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd11(noOfStudents);
                 }
                else if(courseName.equalsIgnoreCase("Inter II yr"))
                 {
                  currentSchoolAllStdObj.setStudentsInStd12(noOfStudents);
                 }
               
              

             }
             
             //put all the values of map into the list of the AllSchools             
             schoolAllStandardPopulationDTOs.addAll(visited.values());
             
             //now set all the properties of educationTypeSchoolClassPopulationDTO (this object will go for reporting)
              educationTypeSchoolClassPopulationDTO.setHomeId(homeId);
              educationTypeSchoolClassPopulationDTO.setMonthString(CalendarUtil.getCurrentDateComponet("month"));
              educationTypeSchoolClassPopulationDTO.setYearString(CalendarUtil.getCurrentDateComponet("year"));
              educationTypeSchoolClassPopulationDTO.setSchoolType(schoolType);
              educationTypeSchoolClassPopulationDTO.setSchoolAllStandardPopulationDTOs(schoolAllStandardPopulationDTOs);
              
              System.out.println("educationTypeSchoolClassPopulationDTO = "+educationTypeSchoolClassPopulationDTO);
              
              return educationTypeSchoolClassPopulationDTO;
     
     
     
     }

     //Anupam added on 9-2-2012   END
     
     //Anupam added on 13-2-2012 START
    
     
     public VocationalCoursePopulationDTO getVocationalCoursePopulationDTO(String homeId,String schoolType)
     {
     VocationalCoursePopulationDTO vocationalCoursePoulationDTO =new VocationalCoursePopulationDTO();
     
     Map<Integer,VocationalAllStandardPopulationDTO> visited = new HashMap<Integer, VocationalAllStandardPopulationDTO>();
     
     List<VocationalAllStandardPopulationDTO> vocationalAllStandardPopulationDTOs = new ArrayList<VocationalAllStandardPopulationDTO>();
     
         try {
             List<SchoolSingleStandardPopulationDTO> schoolSingleStandardPopulationDTOs = fetchSchoolSingleStandardPopulationDTOs(homeId,schoolType);
     
     Iterator singleStdPopulationIter = schoolSingleStandardPopulationDTOs.iterator();
     
     VocationalAllStandardPopulationDTO currentVocationalAllStdObj = null;
     
     SchoolSingleStandardPopulationDTO currentSchoolSingleStdObj = null;
     
     String courseName = null;
     
     long noOfStudents = 0;
     
     int currentSchoolIdInSingleStdObj = 0;
     
                 while(singleStdPopulationIter.hasNext())
                 {
                 currentSchoolSingleStdObj = (SchoolSingleStandardPopulationDTO)singleStdPopulationIter.next();  
                 
                 currentSchoolIdInSingleStdObj = currentSchoolSingleStdObj.getSchoolId();
                 
                 
                 if(!visited.containsKey(currentSchoolIdInSingleStdObj) || visited.isEmpty())
                {
                 //create a new SchoolAllStandardPopulationDTO object and assign it to currentSchoolAllStdObj
                    currentVocationalAllStdObj = new VocationalAllStandardPopulationDTO();
                    
                    //set the name of the school
                    currentVocationalAllStdObj.setSchoolName(currentSchoolSingleStdObj.getSchoolName());
                    
                    //put the element in the list
                    List schList = new ArrayList<SchoolSingleStandardPopulationDTO>();
                    schList.add(currentSchoolSingleStdObj);
                            
                    currentVocationalAllStdObj.setSchoolSingleStdDTOs(schList);
                    
                   //now set the schoolId
                    if(schoolType.trim().equalsIgnoreCase("outside vocational"))
                    {
                    currentVocationalAllStdObj.setSchoolId(currentSchoolIdInSingleStdObj);    
                    //currentVocationalAllStdObj.setVocationalStudentDTOs(getVocationalStudetsInASchoolOutSide(homeId.trim(),currentSchoolIdInSingleStdObj));
                    }
                    else if (schoolType.trim().equalsIgnoreCase("inside vocational"))
                    {
                    //currentVocationalAllStdObj.setVocationalStudentDTOs(getVocationalStudetsInSideAHome(homeId.trim()));
                    }
                    
                    
                    
                 //put key and value to the visited map
                    visited.put(currentSchoolIdInSingleStdObj, currentVocationalAllStdObj);
                    
                      
                }
                // if current currentSchoolSingleStdObj has a scoolId which is already in map  
                else if(visited.containsKey(currentSchoolIdInSingleStdObj))
                {
                 //keep the existing object in map as currentSchoolAllStdObj
                    currentVocationalAllStdObj = visited.get(currentSchoolIdInSingleStdObj);
                    currentVocationalAllStdObj.getSchoolSingleStdDTOs().add(currentSchoolSingleStdObj);
                }
                
                 }
                 
                 vocationalAllStandardPopulationDTOs.addAll(visited.values());
                 
                 vocationalCoursePoulationDTO.setHomeId(homeId);
              vocationalCoursePoulationDTO.setMonthString(CalendarUtil.getCurrentDateComponet("month"));
              vocationalCoursePoulationDTO.setYearString(CalendarUtil.getCurrentDateComponet("year"));
              vocationalCoursePoulationDTO.setSchoolType(schoolType);
              vocationalCoursePoulationDTO.setVocAllStdPopulationDTOs(vocationalAllStandardPopulationDTOs);
             
         } catch (Exception e) {
             System.out.println("********************ERROR IN SERVICE**********************************");
             e.printStackTrace();
         }
     
     
              
              System.out.println("vocationalCoursePoulationDTO = "+vocationalCoursePoulationDTO);
              
              return vocationalCoursePoulationDTO;
                 
   
     }
     
    
     
    //Anupam added on 13-2-2012 END
     
     //anupam added on 14-02-2012 START
        public List<VocationalStudentDTO> getVocationalStudetsInASchoolOutSide(String homeId,int schoolId)
        {
        return headMasterDAO.getVocationalStudetsInASchoolOutSide(homeId,schoolId);
        }
        
        public List<VocationalStudentDTO> getVocationalStudetsInSideAHome(String homeId)
        {
        return headMasterDAO.getVocationalStudetsInSideAHome(homeId);
        }
        
     //anupam added on 14-02-2012 END
        
     //anupam added on 15-02-2012 START

    public List<SchoolStudentDTO> getStudetsInASchoolOutSide(String homeId, String eduStatus, int schoolId) {
        return headMasterDAO.getStudetsInASchoolOutSide(homeId, eduStatus, schoolId);
    }

    public List<SchoolStudentDTO> getStudetsInSideAHome(String homeId, String eduStatus) {
        return headMasterDAO.getStudetsInSideAHome(homeId, eduStatus);
    }
        
     //anupam added on 15-02-2012 END   

    //anupam added on 16-02-2012 START
    public List<SchoolStudentDTO> getStudentsBasedOnINorOUTSchoolStatus(String homeId, String eduStatus, String status) {
        
        return headMasterDAO.getStudentsBasedOnINorOUTSchoolStatus(homeId, eduStatus, status);
    }
    //anupam added on 16-02-2012 END

    //anupam added on 29-2-2012 START
    public List<SchoolStudentDTO> getAllStudentsOfAClassINOUTSchool(String homeId, String eduStatus) {
        return headMasterDAO.getAllStudentsOfAClassINOUTSchool(homeId, eduStatus);
    }
    //anupam added on 29-2-2012 END
    
    
    
    public List<SchoolStudentDTO>  getActiveChildrenForAdmission(String homeId){
    return headMasterDAO.getActiveChildrenForAdmission(homeId);
    }
        
        
     
    

    
  
    
}
