package com.cdac.headmaster.DAO;

import com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO;
import com.cdac.headmaster.DTO.SchoolStudentDTO;
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
import java.util.List;
import java.util.Map;



public interface HeadMasterDAO {
       
       //ADMISSION AND ATTENDENCE METHODS
       public List<ChildMaster> getChildListForAdmission(String homeId);
       
       public List<ChildMaster> getChildListForAttendence(String homeId,String course);
       public List<SchoolStudentDTO> getSchooldStudentDTOListForAttendence(String homeId,String course); //NEW
       
       public List<VocationalMaster> getVocationalCoursesList();
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
       
       public ExamMaster getExistingExamById(int examId);
       public String updateExistingExam(ExamMaster examMaster);
       
       public List<ExamMaster> getFilteredExamList(String namedQuery,String[] paramNames,Object[] paramObjects);
       
       public List<ExamMarks> viewExamMarksById(int examId);
       
       public String saveVocationalMaster(VocationalMaster vocationalMaster);
       public List<VocationalMaster> getVocationalMasters();
       public String deleteVocationalMaster(int vocCouseId);
       
       public List<EducationAdmission> getChildListOfAVocationalCourse(String eduStatus,String homeId);
       
       public String updateChildEducationStatus(EducationAdmission eduAdm);
       
       public EducationAdmission fetchAStudent(String childProfileId);
       
       public String saveVocationalDetails(VocationalDetails vocationalDetails);
       
       public List<ExamMaster> getExamsByTypeHomeFromTo(String examType, String homeId, Date fromDate, Date toDate);
       
       public int getMarksofAStudentForMarkSheet(int examId, String childProfileId);
       
       public ChildMaster getChildMasterDetails(String childProfileId);
       
       public List<VocationalDetails> getVocationDetailsByVocId(int vocId);
       
       public VocationalMaster getVocationalMaster(int vocId);
       
       //anupam added on 14-01-2012 START
       public String saveOrUpdateSchool(SchoolMaster schoolMaster);
       
       public List<SchoolMaster> viewAllSchools();
       
       //anupam added on 14-01-2012 END
       
       //anupam added on 16-01-2012 START
       public EducationAdmission getAdmission(String childProfileId);
       
       public String saveOrUpdateAllEducationAdmission(List<EducationAdmission> admissions);
       //anupam added on 16-01-2012 END
       
       //anupam added on 25-01-2012 START   
        public List<ChildMaster> getChildListForAttendence(String homeId,String course,int schoolId);  
        public List<SchoolStudentDTO> getSchoolStudentListForAttendence(String homeId, String course, int schoolId); //NEW
        
       //anupam added on 25-01-2012 END
        
        //anupam added on 7-2-2012 START        
        public List<ChildMaster> getChildListBasedOnSchoolAndClass(String homeId,String course,int schoolId);
        public List<SchoolMaster> fetchSchoolsByType(String schoolType);
        public List<SchoolSingleStandardPopulationDTO> fetchSchoolSingleStandardPopulationDTOs(String homeId,String schoolType);
        //anupam added on 7-2-2012 END  
        
        //anupam added on 14-02-2012 START
        public List<VocationalStudentDTO> getVocationalStudetsInASchoolOutSide(String homeId,int schoolId);
        public List<VocationalStudentDTO> getVocationalStudetsInSideAHome(String homeId);
        
        //anupam added on 14-02-2012 END
       
            //anupam added on 15-02-2012 START
        public List<SchoolStudentDTO> getStudetsInASchoolOutSide(String homeId,String eduStatus,int schoolId);
        public List<SchoolStudentDTO> getStudetsInSideAHome(String homeId,String eduStatus);
        
        //anupam added on 15-02-2012 END
        
        //anupam added on 16-02-2012 START
        public List<SchoolStudentDTO> getStudentsBasedOnINorOUTSchoolStatus(String homeId,String eduStatus,String status);
        //anupam added on 17-02-2012 END
        
        //anupam added on 29-02-2012 START
        public List<SchoolStudentDTO> getAllStudentsOfAClassINOUTSchool(String homeId,String eduStatus);
        //anupam added on 29-02-2012 END
        
        public List<SchoolStudentDTO> getActiveChildrenForAdmission(String homeId);
        
       
}
