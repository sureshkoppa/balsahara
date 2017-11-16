/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.headmaster.Service;

import com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO;
import com.cdac.headmaster.DTO.ExamSearchDTO;
import com.cdac.headmaster.DTO.SchoolAssessmentDTO;
import com.cdac.headmaster.DTO.EducationTypeSchoolClassPopulationDTO;
import com.cdac.headmaster.DTO.SchoolStudentDTO;
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
import java.util.Date;
import java.util.Map;
import java.util.List;




/**
 *
 * @author Anupam
 */
public interface HeadMasterService {
    
    
    public List<ChildMaster> getChildListForAdmission(String homeId);
    
    public List<ChildMaster> getChildListForAttendence(String homeId,String course);
    public List<SchoolStudentDTO> getSchoolStudentDTOForAttendence(String homeId,String course); //new
    
    public Map<Integer,String> getVocationalCoursesMap();
    public String admitChild(EducationAdmission child);
    public String saveAttendence(List<EducationAttendence> attList);
    
    
    //SCHOOOL EXAM  METHODS
       public Integer saveExam(ExamMaster examMaster);
       public String  saveExamAttendence(List<ExamAttendence> examAttList);        
       public String  saveExamMarks(List<ExamMarks> examMarksList);
      
       public ExamMaster retriveExam(String homeId,Date examDate,String examType,String standard,String subject);
       public int getMarksofAStudent(int examId,String childProfileId);
       
       public List<Integer> getUnCheakedExamIds();
       public List<ExamMaster> getUncheckedExamDetails(List<Integer> uncheckedIds);
       
       public List<ExamMarks> getExamMarks(int examId);
       public String updateExamMarksList(List<ExamMarks> examMarksList);
       
       public List<ExamMaster> getScheduledExamsOfAHome(String homeId);
       
       public ExamMaster getExamMaster(int examId);
       
       public String updateRemarksOfExamMaster(int examId,String remarks);
       
       public String answerSheetCheckStatus(int examId);
       
       public List<ExamMaster> getFilteredExams(String homeId, ExamSearchDTO examSearchDTO);
       
       public List<ExamMarks> viewExamMarksById(int examId);
       
       public String saveVocationalMaster(VocationalMaster vocationalMaster);
       public List<VocationalMaster> getVocationalMasters();
       public String deleteVocationalMaster(int vocCouseId);
    
       public List<EducationAdmission> getChildListOfAVocationalCourse(String eduStatus,String homeId);
       
       public String vocationalAssesmentSave(VocationalDetails vocationalDetails);
       
       public List<ExamMaster> getExamsByTypeHomeFromTo(String examType,String homeId,Date fromDate,Date toDate);
       
       public ExamMarks getExamMarksByExamIdAndProfileNo(int examId,String childProfileNo);
       
       public SchoolAssessmentDTO getSchoolAssessmentDTOForMarkSheet(String childProfileId,String homeId);
       
       public List<VocationalAssesmentDTO> getVocationalAssesmentDTOList(int vocId);
       
       
       //anupam added on 14-01-2012 START
       public String saveSchool(SchoolMaster schoolMaster);
       
       public List<SchoolMaster> viewAllSchools();
       //anupam added on 14-01-2012 END
       
       //Anupam aded on 16-01-2012 START
        public String promoteChildren(String[] profileIds,String eduStatus);
       //Anupam aded on 16-01-2012 START 
        
        //Anupam aded on 25-01-2012 START
        public List<ChildMaster> getChildListForAttendenceOutSchool(String homeId,String course,int courseId);
        
        public List<SchoolStudentDTO> getSchoolStudentDTOListForAttendenceOutSchool(String homeId, String course, int schoolId);
        //Anupam aded on 25-01-2012 END  
        
        //Anupam aded on 7-02-2012 START
        public List<ChildMaster> getChildListBasedOnSchoolAndClass(String homeId, String course, int schoolId);
        
        public List<SchoolMaster> fetchSchoolsByType(String schoolType);
        //Anupam aded on 7-02-2012 END          
        
        //Anupam aded on 8-02-2012 START
        public List<SchoolSingleStandardPopulationDTO> fetchSchoolSingleStandardPopulationDTOs(String homeId, String schoolType);
       //Anupam aded on 8-02-2012 END  
        
        //Anupam aded on 9-02-2012 START
        public EducationTypeSchoolClassPopulationDTO getSchoolTypeStudentsNoDTO(String homeId,String schoolType);
        //Anupam aded on 9-02-2012 END
        
        //Anupam aded on 9-02-2012 START
         public VocationalCoursePopulationDTO getVocationalCoursePopulationDTO(String homeId,String schoolType);
        //Anupam aded on 9-02-2012 END
         
         //anupam added on 14-02-2012 START
        public List<VocationalStudentDTO> getVocationalStudetsInASchoolOutSide(String homeId,int schoolId);
        public List<VocationalStudentDTO> getVocationalStudetsInSideAHome(String homeId);
        
        //anupam added on 14-02-2012 END
        
          //anupam added on 15-02-2012 START
        public List<SchoolStudentDTO> getStudetsInASchoolOutSide(String homeId,String eduStatus,int schoolId);
        public List<SchoolStudentDTO> getStudetsInSideAHome(String homeId,String eduStatus);
        
        //anupam added on 15-02-2012 END
        
        //anupam added on 16-02-2012 START        
        public List<SchoolStudentDTO> getStudentsBasedOnINorOUTSchoolStatus(String homeId, String eduStatus, String status);
        //anupam added on 16-02-2012 END
        
        //anupam added on 29-02-2012 START
        public List<SchoolStudentDTO> getAllStudentsOfAClassINOUTSchool(String homeId, String eduStatus);
        //anupam added on 29-02-2012 END
        
        public List<SchoolStudentDTO>  getActiveChildrenForAdmission(String homeId);
        
     
        
         
}
