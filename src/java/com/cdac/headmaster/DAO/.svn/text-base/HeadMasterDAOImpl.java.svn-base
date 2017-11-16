package com.cdac.headmaster.DAO;

import com.cdac.caseworker.DTO.ChildDTO;
import com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO;
import com.cdac.headmaster.DTO.SchoolStudentDTO;
import com.cdac.headmaster.DTO.VocationalStudentDTO;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.EducationAdmission;
import com.cdac.usermanagement.ORM.EducationAttendence;
import com.cdac.usermanagement.ORM.ExamAttendence;
import com.cdac.usermanagement.ORM.ExamMarks;
import com.cdac.usermanagement.ORM.ExamMaster;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.SchoolMaster;
import com.cdac.usermanagement.ORM.VocationalDetails;
import com.cdac.usermanagement.ORM.VocationalMaster;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class HeadMasterDAOImpl implements HeadMasterDAO{

 private HibernateTemplate hibernateTemplate;
    public void setSessionFactory(SessionFactory sessionFactory){
     this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public String admitChild(EducationAdmission child) {
        String result="error";
        
        try {
            hibernateTemplate.save(child);
            result="success";
        } catch (Exception e) {
            System.out.println("----------Error in admitChild(EducationAdmission child)---------");
            e.printStackTrace();
            result="error";
        }
        
        System.out.print("*****************************Return value from -------------------------admitChild(EducationAdmission child)"+result);
        
        return result;
    }

    public List<ChildMaster> getChildListForAdmission(String homeId) {
        
        List<ChildMaster> childListForAdmission=null;
        
        try {
            System.out.println("----------in getChildListForAdmission(String homeId) homeId = --------- "+homeId );
            //childListForAdmission=hibernateTemplate.findByNamedQuery("ChildMaster.findByHomeId", homeId.trim());
            //childListForAdmission=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeId", "homeId", new HomeMaster(homeId.trim()));
            
            childListForAdmission=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeIdForEducationAdm", "homeId", new HomeMaster(homeId.trim()));        
                    
        } catch (Exception e) {
            System.out.println("----------Error in getChildListForAdmission(String homeId)---------");
            e.printStackTrace();
        }
        return childListForAdmission;
        
    }
    
    public List<SchoolStudentDTO> getActiveChildrenForAdmission(String homeId){
        
        List<SchoolStudentDTO> schoolStudentDTOs = Collections.EMPTY_LIST;
    
        String query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, concat(c.childName,' ',c.childSurname),c.status) "
                + "FROM "
                + "ChildMaster c "
                + "WHERE upper(c.status) = ? "
                + "AND "
                + "c.homeId.homeId = ? "
                + "AND "
                + "c.childProfileId "
                + "NOT IN "
                + "(SELECT c1.childProfileId "
                + "from "
                + "EducationAdmission c1 "
                + "WHERE "
                + "c1.homeId.homeId = ?)";
                        
        try {
             schoolStudentDTOs = hibernateTemplate.find(query,new Object[]{"ACTIVE",homeId,homeId}); 
             
        } catch (Exception e) {
        e.printStackTrace();
        }
                return schoolStudentDTOs;
    
    }

    public List<VocationalMaster> getVocationalCoursesList() {
        
        List<VocationalMaster> vocationalList=null;
        
        try {
            vocationalList=hibernateTemplate.find("from VocationalMaster");
        } catch (Exception e) {
            System.out.println("----------Error in getVocationalCoursesList()---------");
            e.printStackTrace();
        }
        return vocationalList;
    }

    public List<ChildMaster> getChildListForAttendence(String homeId,String course) {
        
       List<ChildMaster> childListForAttendence=null;
        
        try {
            System.out.println("----------in getChildListForAdmission(String homeId) homeId = --------- "+homeId +" ------ course = "+course);
            
            //construct string array
            String [] paramNames={"homeId","eduStatus"};
            Object [] paramValues={new HomeMaster(homeId.trim()),course.trim()};
            
            childListForAttendence=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeIdAndCourseForAttendence", paramNames, paramValues);
            
            //childListForAttendence=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeIdAndCourseForAttendence", "homeId", new HomeMaster(homeId.trim()));        
                    
        } catch (Exception e) {
            System.out.println("----------Error in getChildListForAdmission(String homeId)---------");
            e.printStackTrace();
        }
        return childListForAttendence;
        
        
    }
    
    /* DTO based method */
    
    public List<SchoolStudentDTO> getSchooldStudentDTOListForAttendence(String homeId,String course) {
        
       List<SchoolStudentDTO> childListForAttendence=Collections.EMPTY_LIST;
       String query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, concat(c.childName,' ',c.childSurname),c.status) "
                       + "FROM ChildMaster c "
                       + "WHERE "
                       + "c.homeId.homeId = ? "
                       + "AND "
                       + "upper(c.status) = ? "
                       + "AND "
                       + "c.childProfileId "
                       + "IN "
                       + "(SELECT c1.childProfileId from EducationAdmission c1 "
                       + "WHERE "
                       + "c1.eduStatus = ? "
                       + "AND "
                       + "c1.schoolMaster IS NULL)" ;
        
        try {
            System.out.println("----------in getSchooldStudentDTOListForAttendence = --------- "+homeId +" ------ course = "+course);
            childListForAttendence=hibernateTemplate.find(query, new Object[]{homeId,"ACTIVE",course}); 
            System.out.println("--------------------------> "+childListForAttendence);
        } catch (Exception e) {
            System.out.println("----------Error in getSchooldStudentDTOListForAttendence---------");
            e.printStackTrace();
        }
        return childListForAttendence;
        
        
    }
    
    
    
    

    public String saveAttendence(List<EducationAttendence> attList) {
        String result="error";
        try {
            
            //hibernateTemplate.saveOrUpdateAll(attList);
            for (Iterator<EducationAttendence> it = attList.iterator(); it.hasNext();) {
                EducationAttendence educationAttendence = it.next();
                hibernateTemplate.save(educationAttendence);
                
            }
            result="success";
            
        } catch (Exception e) {
            result="error";
             System.out.println("----------Error in saveAttendence(List<EducationAttendence> attList)---------");
            e.printStackTrace();
            
        }
        return result;
        
    }

    //-----------School Exam methods-----------------------------
    public int getMarksofAStudent(int examId, String childProfileId) {
        int marksOfTheStudent=0;
        String[] paramName={"examId","childProfileId"};
        Object[] paramValue={examId,childProfileId};
        
        try {
            List<ExamMarks> examMarks=hibernateTemplate.findByNamedQueryAndNamedParam("ExamMarks.findExamIdAndChildProfileId",paramName,paramValue);
            //marksOfTheStudent=(.get(0)).getMarksObtained();
            if(!examMarks.isEmpty())
            {
            marksOfTheStudent=examMarks.get(0).getMarksObtained();
            }
            
        } catch (Exception e) {
            System.out.println("----------Error in getMarksofAStudent(int examId, String childProfileId) ---------");
            e.printStackTrace();
        }
        System.out.println("================================================= Marks obtained = "+marksOfTheStudent);
        return marksOfTheStudent;
    }

    public ExamMaster retriveExam(String homeId, Date examDate, String examType, String class1, String subject) {
        
    ExamMaster examMaster=null;    
    String paramName[]={"homeId","examDate","examType","class1","subject"};
    Object paramValue[]={homeId,examDate,examType,class1,subject};
    
        try {
            examMaster=(ExamMaster)hibernateTemplate.findByNamedParam("ExamMaster.findUniqueExam", paramName, paramValue).get(0);
        } catch (Exception e) {            
            System.out.println("----------Error in saveAttendence(List<EducationAttendence> attList)---------");
            e.printStackTrace();
        }
        
        return examMaster;
        
    }

    public Integer saveExam(ExamMaster examMaster) {
        int currentExamId=-1;
        
        try {
            hibernateTemplate.save(examMaster);
            
            currentExamId=examMaster.getExamId();
        } catch (Exception e) {
            System.out.println("----------Error in saveAttendence(List<EducationAttendence> attList)---------");
            e.printStackTrace();
        }
        return currentExamId;
    }
    
    

    public String saveExamAttendence(List<ExamAttendence> examAttList) {
        String result="error";
        try {            
            hibernateTemplate.saveOrUpdateAll(examAttList);
            result="success";
        } catch (Exception e) {
            System.out.println("----------Error in saveAttendence(List<EducationAttendence> attList)---------");
            e.printStackTrace();
        }
        return result;
    }

    public String saveExamMarks(List<ExamMarks> examMarksList) {
       String result="error";
       
        try {
            hibernateTemplate.saveOrUpdateAll(examMarksList);
            result="success";
        } catch (Exception e) {
            System.out.println("----------Error in saveAttendence(List<EducationAttendence> attList)---------");
            e.printStackTrace();
        }
        return result;
    }

    public List<Integer> getUnCheakedExamIds() {
        
        List<Integer> unCheakedExamIds=new ArrayList<Integer>();
        
        try {
            
         
            unCheakedExamIds=hibernateTemplate.findByNamedQueryAndNamedParam("ExamMarks.findByMarksNotEntered", "marksObtained", -1);
        } catch (Exception e) {
            System.out.println("----------Error in getUnCheakedExamIds()---------");
            e.printStackTrace();
        }
        
        return unCheakedExamIds;
        
    }

    public List<ExamMaster> getUncheckedExamDetails(List<Integer> uncheckedIds) {
        List<ExamMaster> unCheakedExams=new ArrayList<ExamMaster>();
        
        try {
            for (Iterator<Integer> it = uncheckedIds.iterator(); it.hasNext();) {
                int i = it.next();
                
                //get the exam
                ExamMaster em=(ExamMaster)hibernateTemplate.get(ExamMaster.class, i);
                
                unCheakedExams.add(em);
                
            }
        } catch (Exception e) {
             System.out.println("----------Error in getUncheckedExamDetails(List<Integer> uncheckedIds)---------");
            e.printStackTrace();
        }
        
        return unCheakedExams;
    }

    public List<ExamMarks> getExamMarks(int examId) {
         
        List<ExamMarks> examMarks=new ArrayList<ExamMarks>();
        
        try {
            examMarks=hibernateTemplate.findByNamedQueryAndNamedParam("ExamMarks.findByExamId","examId", examId);
        } catch (Exception e) {
             System.out.println("----------Error in getExamMarks(int examId)---------");
            e.printStackTrace();
        }
        
        return examMarks;
    }

    public String updateExamMarksList(List<ExamMarks> examMarksList) {
        String result="error";
        try {
            hibernateTemplate.saveOrUpdateAll(examMarksList);
            result="success";
        } catch (Exception e) {
             result="error";
             System.out.println("----------Error in updateExamMarksList(List<ExamMarks> examMarksList)---------");
            e.printStackTrace();            
        }
        return  result;
    }

    
    public List<ExamMaster> getScheduledExamsOfAHome(String homeId) {
        
        List<ExamMaster> scheduledExamList=new ArrayList<ExamMaster>();
        try {
            scheduledExamList=hibernateTemplate.findByNamedQueryAndNamedParam("ExamMaster.findAllScheduledExamsOfAHome", "homeId", homeId.trim());
        } catch (Exception e) {
            System.out.println("----------Error in getScheduledExamsOfAHome(String homeId)---------");
            e.printStackTrace();    
        }
        return scheduledExamList;
    }

    public ExamMaster getExamMaster(int examId) {
        ExamMaster examMaster=null;
        
        try {
            examMaster=(ExamMaster)(hibernateTemplate.findByNamedQueryAndNamedParam("ExamMaster.findByExamId", "examId", new Integer(examId)).get(0));
        } catch (Exception e) {
             System.out.println("----------Error in getExamMaster(int examId)---------");
            e.printStackTrace();   
        }
        
        return examMaster;
    }

    public ExamMaster getExistingExamById(int examId) {
        ExamMaster examMaster=null;
        try {
            examMaster=(ExamMaster)hibernateTemplate.get(ExamMaster.class, examId);
        } catch (Exception e) {
            System.out.println("----------Error in getExamMaster(int examId)---------");
            e.printStackTrace();  
        }
        return examMaster;
    }

    public String updateExistingExam(ExamMaster examMaster) {
        String result="error";
        
        try {
            hibernateTemplate.update(examMaster);
            result="success";
        } catch (Exception e) {
             System.out.println("----------Error in getExamMaster(int examId)---------");
            e.printStackTrace();              
        }
        return result;
    }

    public List<ExamMaster> getFilteredExamList(String namedQuery, String[] paramNames, Object[] paramObjects) {
        List<ExamMaster> exams=new ArrayList<ExamMaster>();
        
        try {
            exams=hibernateTemplate.findByNamedQueryAndNamedParam(namedQuery, paramNames, paramObjects);
        } catch (Exception e) {
            System.out.println("----------Error in getFilteredExamList(String namedQuery, String[] paramNames, Object[] paramObjects)---------");
            e.printStackTrace();  
        }
        return exams;
    }

    public List<ExamMarks> viewExamMarksById(int examId) {
        
        List<ExamMarks> examMarksList=new ArrayList<ExamMarks>();
        
        try {
            examMarksList=hibernateTemplate.findByNamedQueryAndNamedParam("ExamMarks.findByExamId","examId",examId);
        } catch (Exception e) {
            System.out.println("----------Error in viewExamMarksById(int examId)---------");
            e.printStackTrace();  
        }
        
        return examMarksList;
    }
    
    
    //--------------Vcational method implementations

    public String deleteVocationalMaster(int vocCouseId) {
        String result="error";
        
        try {
            hibernateTemplate.delete(hibernateTemplate.get(VocationalMaster.class, vocCouseId));
            result="success";
        } catch (Exception e) {
              System.out.println("----------Error in viewExamMarksById(int examId)---------");
            e.printStackTrace();  
        }
        
       return result; 
    }

    public List<VocationalMaster> getVocationalMasters() {
        
        List<VocationalMaster> vocationalMasters=new ArrayList<VocationalMaster>();
        
        try {
            vocationalMasters=hibernateTemplate.findByNamedQuery("VocationalMaster.findAll");
            
        } catch (Exception e) {
            System.out.println("----------Error in deleteVocationalMaster(int vocCouseId)---------");
            e.printStackTrace(); 
        }
        return vocationalMasters;
    }

    public String saveVocationalMaster(VocationalMaster vocationalMaster) {
        
         String result="error";
        
        try {
            hibernateTemplate.save(vocationalMaster);
            result="success";
        } catch (Exception e) {
            System.out.println("----------Error in saveVocationalMaster(VocationalMaster vocationalMaster)---------");
            e.printStackTrace();  
        }
        return result;
    }

    /**
     * This method will accept vocational course and home id as a parameter and returns me
     * the list of students (AducationAdmission objects only those with an 'active' status).
     * @param eduStatus , homeId
     * @return List<EducationAdmission>
     */
    public List<EducationAdmission> getChildListOfAVocationalCourse(String eduStatus,String homeId) {
        /*
         @NamedQuery(name = "EducationAdmission.findByHomeIdVocCourseAndActiveStatus", query = "SELECT e FROM EducationAdmission e WHERE e.status='active' AND e.eduStatus= :eduStatus AND e.homeId.homeId = :homeId"),
         */       
        
        List<EducationAdmission> listOfAdmittedStudents=new ArrayList<EducationAdmission>();
        
        try {
            String[] paramNames={"eduStatus","homeId"};
            Object[] paramValue={eduStatus.trim(),homeId.trim()};
            
            listOfAdmittedStudents=hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findByHomeIdVocCourseAndActiveStatus", paramNames, paramValue);
        } catch (Exception e) {
            System.out.println("----------Error in  getChildListOfAVocationalCourse(String vocCousrseName)---------");
            e.printStackTrace();  
        }
        
        return listOfAdmittedStudents;
    }
    
    /**
     * This method updates the EducationAdmission for vocational
     * @param eduAdm
     * @return string
     */
    public String updateChildEducationStatus(EducationAdmission eduAdm)
    {
    String result="error";
    
        try {
            hibernateTemplate.update(eduAdm);
            result="success";
        } catch (Exception e) {
            System.out.println("----------Error in  updateChildVocationalEducationStatus(EducationAdmission eduAdm)---------");
            e.printStackTrace();  
        }
        return result;
    }
    
    
/**
     * This method will fetch the student ie EducationAdmission object based on
     * the profile no passed as the parameter.
     * @param childProfileId
     * @return EducationAdmission 
     */
    public EducationAdmission fetchAStudent(String childProfileId) {
        
        EducationAdmission educationAdmission=new EducationAdmission();
        
        try {
            educationAdmission=(EducationAdmission)hibernateTemplate.get(EducationAdmission.class, childProfileId);
        } catch (Exception e) {
            System.out.println("------------------Error in fetchAStudent(String childProfileId)");
            
        }
        return educationAdmission;
    }

    public String saveVocationalDetails(VocationalDetails vocationalDetails) {
        
        String result="error";
        
        try {
            hibernateTemplate.save(vocationalDetails);
            result="success";
        } catch (Exception e) {
            System.out.println("-------------------Error in DAO saveVocationalDetails(VocationalDetails vocationalDetails) -----");
            e.printStackTrace();
        }
        
        return result;
    }

    public List<ExamMaster> getExamsByTypeHomeFromTo(String examType, String homeId, Date fromDate, Date toDate) {
        List<ExamMaster> examMasters=new ArrayList<ExamMaster>();
        
        try {
            //@NamedQuery(name = "ExamMaster.findByExamTypeHomeIdAndFromTo", query = "SELECT e FROM ExamMaster e WHERE e.examType = :examType AND e.homeId.homeId = :homeId AND e.examDate IN(select e1.examDate from ExamMaster e1 WHERE e.examDate BETWEEN :fromDate AND :toDate)"),
            String [] paramNames={"examType","homeId","fromDate","toDate"};
            Object [] paramValues={examType,homeId,fromDate,toDate};
            
            examMasters=hibernateTemplate.findByNamedQueryAndNamedParam("ExamMaster.findByExamTypeHomeIdAndFromTo", paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("-------------------------ERROR IN getExamsByTypeHomeFrom to in -----------------------DAO layer");
            e.printStackTrace();
        }
        System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++ value return to service "+examType+ "---->"+examMasters);
        return examMasters;
        
    }
    
    
    public int getMarksofAStudentForMarkSheet(int examId, String childProfileId) {
        int marksOfTheStudent=0;
        String[] paramName={"examId","childProfileId"};
        Object[] paramValue={examId,childProfileId};
        
        try {
            List<ExamMarks> examMarks=hibernateTemplate.findByNamedQueryAndNamedParam("ExamMarks.findExamIdAndChildProfileId",paramName,paramValue);
            //marksOfTheStudent=(.get(0)).getMarksObtained();
            if(!examMarks.isEmpty())
            {
            marksOfTheStudent=examMarks.get(0).getMarksObtained();
            if(marksOfTheStudent==-2)
                marksOfTheStudent=0;
            }
            
        } catch (Exception e) {
            System.out.println("----------Error in getMarksofAStudent(int examId, String childProfileId) ---------");
            e.printStackTrace();
        }
        System.out.println("================================================= Marks obtained = "+marksOfTheStudent);
        return marksOfTheStudent;
    }

    public ChildMaster getChildMasterDetails(String childProfileId) {
        ChildMaster childMaster=new ChildMaster();
        
        try {
            //@NamedQuery(name = "ChildMaster.findByChildProfileId", query = "SELECT c FROM ChildMaster c WHERE c.childProfileId = :childProfileId"),
            //childMaster=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByChildProfileId","childProfileId",childProfileId);
            childMaster=(ChildMaster)hibernateTemplate.get(ChildMaster.class,childProfileId);
            
        } catch (Exception e) {
            System.out.println("----------Error in getChildMasterDetails(String childProfileId) ---------");
            e.printStackTrace();
        }
        return childMaster;
    }

    public List<VocationalDetails> getVocationDetailsByVocId(int vocId) {
        List<VocationalDetails> vocationalDetailses=new ArrayList<VocationalDetails>();
        
        try {
            //@NamedQuery(name = "VocationalDetails.findByVocCourseId", query = "SELECT v FROM VocationalDetails v WHERE v.vocationalDetailsPK.vocCourseId = :vocCourseId")
            vocationalDetailses=hibernateTemplate.findByNamedQueryAndNamedParam("VocationalDetails.findByVocCourseId","vocCourseId", vocId);
            
        } catch (Exception e) {
             System.out.println("----------Error in getVocationDetailsByVocId(int vocId) ---------");
            e.printStackTrace();
        }
        return vocationalDetailses;
    }

    public VocationalMaster getVocationalMaster(int vocId) {
        VocationalMaster vocationalMaster=new VocationalMaster();
        
        try {
            vocationalMaster=(VocationalMaster)hibernateTemplate.get(VocationalMaster.class, vocId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vocationalMaster;
    }
    
    
    //anupam added on 14-01-2012 START

    public String saveOrUpdateSchool(SchoolMaster schoolMaster) {
        
        String result = "error";
        
        try {
           hibernateTemplate.saveOrUpdate(schoolMaster);
           result = "success";
        } catch (Exception e) {
            System.out.println("----------Error in saveOrUpdateSchool(SchoolMaster schoolMaster) ---------");
            e.printStackTrace();
            
        }
        return result;
        
    }
    
    public List<SchoolMaster> viewAllSchools() {
       
        List<SchoolMaster> schoolList = new ArrayList<SchoolMaster>();
        
        try {
            schoolList = hibernateTemplate.findByNamedQuery("SchoolMaster.findAll");
        } catch (Exception e) {
            System.out.println("----------Error in viewAllSchools() ---------");
            e.printStackTrace();
        }
        
        return schoolList;
    }
    
  //anupam added on 14-01-2012 END  

    
  //anupam added on 16-01-2012 START
    public EducationAdmission getAdmission(String childProfileId) {
        
        EducationAdmission educationAdmission = null;
        
        try {
            educationAdmission = (EducationAdmission)hibernateTemplate.get(EducationAdmission.class, childProfileId);
            
        } catch (Exception e) {
            System.out.println("----------Error in getAdmission(String childProfileId) ---------");
            e.printStackTrace();
        }
        
        return educationAdmission;
        
    }
    
    
  //anupam added on 16-01-2012 END

    public String saveOrUpdateAllEducationAdmission(List<EducationAdmission> admissions) {
        
        String result = "error";
        
        try {
            hibernateTemplate.saveOrUpdateAll(admissions);
            result = "success";
        } catch (Exception e) {
            System.out.println("----------Error in saveOrUpdateAllEducationAdmission(List<EducationAdmission> admissions) ---------");
            e.printStackTrace();
        }
        
        return result;
        
    }

    
    //anupam added on 25-01-2012 START   
          
    //anupam added on 25-01-2012 END

    public List<ChildMaster> getChildListForAttendence(String homeId, String course, int schoolId) {
        List<ChildMaster> childListForAttendence=null;
        
        try {
            System.out.println("----------in getChildListForAdmission(String homeId) homeId = --------- "+homeId +" ------ course = "+course);
            
            //construct string array
            String [] paramNames={"homeId","eduStatus","schoolMaster"};
            Object [] paramValues={new HomeMaster(homeId.trim()),course.trim(),new SchoolMaster(schoolId)};
            
            childListForAttendence=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeIdAndCourseForAttendenceOutSchool", paramNames, paramValues);
            
            //childListForAttendence=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeIdAndCourseForAttendence", "homeId", new HomeMaster(homeId.trim()));        
                    
        } catch (Exception e) {
            System.out.println("----------Error in getChildListForAdmission(String homeId)---------");
            e.printStackTrace();
        }
        return childListForAttendence;
        
    }
    /* using DTO */
    public List<SchoolStudentDTO> getSchoolStudentListForAttendence(String homeId, String course, int schoolId) {
        List<SchoolStudentDTO> childListForAttendence=Collections.EMPTY_LIST;
        String query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId,concat(c.childName,' ',c.childSurname) ,c.status) "
                + "FROM "
                + "ChildMaster c "
                + "WHERE "
                + "upper(c.status) = ? "
                + "AND "
                + "c.homeId.homeId = ? "
                + "AND "
                + "c.childProfileId "
                + "IN "
                + "(SELECT c1.childProfileId "
                + "from "
                + "EducationAdmission c1 "
                + "WHERE "
                + "c1.eduStatus = ? "
                + "AND "
                + "c1.schoolMaster.schoolId = ?)" ;
        
        try {
            System.out.println("----------in getChildListForAdmission(String homeId) homeId = --------- "+homeId +" ------ course = "+course);
            
            
            childListForAttendence = hibernateTemplate.find(query, new Object[]{"ACTIVE",homeId,course,schoolId});
            
                    
        } catch (Exception e) {
            System.out.println("----------Error in getChildListForAdmission(String homeId)---------");
            e.printStackTrace();
        }
        return childListForAttendence;
        
    }
    
    
    
     //Anupam added on 7-2-2012 START

    public List<ChildMaster> getChildListBasedOnSchoolAndClass(String homeId, String course, int schoolId) {
        List<ChildMaster> childListOfASchoolClass = null;
        
        /*
         @NamedQuery(name = "EducationAdmission.findByHomeIdSchoolIdClass", query = 
         * "SELECT c FROM ChildMaster c ,EducationAdmission e 
         * WHERE
         * c.childProfileId = e.childProfileId 
         * AND 
         * c.childProfileId 
         * IN
         * (Select e1.childProfileId from EducationAdmission e1
         * where e1.eduStatus= :eduStatus 
         * AND
         * e1.homeId.homeId = :homeId
         * AND
         * e1.schoolMaster.schoolId = :schoolId)"),
         */
        
        String []paramNames = {"eduStatus","homeId","schoolId"};
        Object [] paramValues={course.trim(),homeId.trim(),schoolId};
        
        try {
            
            childListOfASchoolClass=hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findByHomeIdSchoolIdClass", paramNames, paramValues);
            
        } catch (Exception e) {
           System.out.println("----------Error in getChildListBasedOnSchoolAndClass(String homeId, String course, int schoolId) ---------");
           e.printStackTrace();
        }
       
        return childListOfASchoolClass;
    }
    
    
    
    
    
    public List<SchoolMaster> fetchSchoolsByType(String schoolType) {
        /*
         @NamedQuery(name = "SchoolMaster.findBySchoolType", 
         * query = "SELECT s FROM SchoolMaster s
         * WHERE 
         * s.schoolType = :schoolType")})
         */
        
        List<SchoolMaster> schoolList = null;
        try {
            schoolList = hibernateTemplate.findByNamedQueryAndNamedParam("SchoolMaster.findBySchoolType", "schoolType", schoolType);
        } catch (Exception e) {
            System.out.println("----------Error in fetchSchoolsByType(String schoolType) ---------");
           e.printStackTrace();
        }
        
        return schoolList;
    }
    
    
    //Anupam added on 7-2-2012 END

    
   //anupam added on 8-2-2012 START

    public List<SchoolSingleStandardPopulationDTO> fetchSchoolSingleStandardPopulationDTOs(String homeId, String schoolType) {
        /*
         @NamedQuery(name = "EducationAdmission.findSchoolTypeStudentsNoDTOsByHomeIdSchoolId",
         * query = "SELECT new map(e.eduStatus,count(*))
         * FROM EducationAdmission e
         * WHERE  e.homeId.homeId = :homeId
         * AND
         * e.schoolMaster.schoolId 
         * IN
         * (
         * Select s.schoolId 
         * from SchoolMaster s,ChildMaster c
         * where s.schoolType = :schoolType)"), 
         */
        /*
        String outSchoolQuery="SELECT new com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO(s.schoolId,s.schoolName,e.eduStatus,count(*)) "+
        "FROM EducationAdmission e ,SchoolMaster s, ChildMaster c "+        
        "WHERE "+
        "c.childProfileId = e.childProfileId "+
        "AND "+
        "c.status = 'active' "+
        "AND   "+
        "e.homeId.homeId = ?  "+
        "AND  "+
        "e.status = ?  "+
        "AND "+
        "e.schoolMaster.schoolId = s.schoolId   "+
        "GROUP BY  "+
        "e.eduStatus ";
        */
        
        String []paramNames = {"homeId","schoolType"};
        Object [] paramValues={homeId.trim(),schoolType.trim()};
        List<SchoolSingleStandardPopulationDTO> classWisePopulationList = null;
        
         try {
             if(schoolType.trim().equalsIgnoreCase("outside school"))
              {
              classWisePopulationList = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findSchoolTypeStudentsNoDTOsByHomeIdSchoolId_OUT_SIDE", paramNames, paramValues);
              //classWisePopulationList = hibernateTemplate.find("outSchoolQuery", paramValues);  
                  
              }
            
             else if(schoolType.trim().equalsIgnoreCase("inside school"))
             {
             classWisePopulationList = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findSchoolTypeStudentsNoDTOsByHomeIdSchoolId_IN_SIDE", paramNames, paramValues);
             }
            
             else if(schoolType.trim().equalsIgnoreCase("outside vocational"))
             {
             classWisePopulationList = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findVocationPoulation_OUT_SIDE", paramNames, paramValues);
             }
            
             else if(schoolType.trim().equalsIgnoreCase("inside vocational"))
             {
             classWisePopulationList = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findVocationPoulation_IN_SIDE", paramNames, paramValues);
             }
            
            
             
            System.out.println("classPopulationMapList ---------- "+classWisePopulationList);
            
            
            
            
         } catch (Exception e) {
            System.out.println("----------Error in fetchSchoolsByType(String schoolType) ---------");
           e.printStackTrace();
        }
        
        return classWisePopulationList;
        
        
    }
    
    //anupam added on 8-2-2012 START
    
    
    //anupam added on 14-2-2012 START
    
    
    
    
    /*
     @NamedQuery(name = "EducationAdmission.findVocationStudetsInASchool_OUT_SIDE", query = "SELECT new com.cdac.headmaster.DTO.VocationalStudentDTO(c.childProfileId, c.childName , v.vocCourseName) FROM ChildMaster c, EducationAdmission e, VocationalMaster v WHERE c.childProfileId = e.childProfileId AND e.eduStatus = v.vocCourseId AND e.homeId.homeId = :homeId AND e.schoolMaster.schoolId = :schoolId ORDER BY v.vocCourseName"), 
    @NamedQuery(name = "EducationAdmission.findVocationStudets_IN_SIDE", query = "SELECT new com.cdac.headmaster.DTO.VocationalStudentDTO(c.childProfileId, c.childName , v.vocCourseName) FROM ChildMaster c, EducationAdmission e, VocationalMaster v WHERE c.childProfileId = e.childProfileId AND e.eduStatus = v.vocCourseId AND e.homeId.homeId = :homeId AND e.status = 'inside vocational' ORDER BY v.vocCourseName"), 
     */

    public List<VocationalStudentDTO> getVocationalStudetsInASchoolOutSide(String homeId, int schoolId) {
        
        List<VocationalStudentDTO>  vocationalStudentDTOs =new ArrayList<VocationalStudentDTO>();
        String []paramNames = {"homeId","schoolId"};
        Object [] paramValues={homeId.trim(),schoolId};
        
        try {
            vocationalStudentDTOs = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findVocationStudetsInASchool_OUT_SIDE", paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("----------Error in getVocationalStudetsInASchoolOutSide(String homeId, int schoolId) ---------");
           e.printStackTrace();
        }
        
        return vocationalStudentDTOs;
    }

    public List<VocationalStudentDTO> getVocationalStudetsInSideAHome(String homeId) {
        List<VocationalStudentDTO>  vocationalStudentDTOs =new ArrayList<VocationalStudentDTO>();
        String []paramNames = {"homeId"};
        Object [] paramValues={homeId.trim()};
        
        try {
            vocationalStudentDTOs = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findVocationStudets_IN_SIDE", paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("----------Error in getVocationalStudetsInSideAHome(String homeId) ---------");
           e.printStackTrace();
        }
        
        return vocationalStudentDTOs;
    }
    
    
   //anupam added on 14-2-2012 END 

    //anupam added on 15-2-2012 START
    /*
      @NamedQuery(name = "EducationAdmission.findStudetsInASchool_OUT_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, c.childName , e.eduStatus) FROM ChildMaster c, EducationAdmission e WHERE c.childProfileId = e.childProfileId AND e.homeId.homeId = :homeId AND e.eduStatus = :eduStatus AND e.schoolMaster.schoolId = :schoolId ORDER BY v.vocCourseName"), 
    @NamedQuery(name = "EducationAdmission.findStudetsInSchool_IN_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, c.childName , e.eduStatus) FROM ChildMaster c, EducationAdmission e WHERE c.childProfileId = e.childProfileId AND e.eduStatus = :eduStatus AND e.homeId.homeId = :homeId AND e.status = 'inside school' ORDER BY c.childProfileId"), 
            
     */
    
    public List<SchoolStudentDTO> getStudetsInASchoolOutSide(String homeId, String eduStatus, int schoolId) {
        List<SchoolStudentDTO>  schoolStudentDTOs =new ArrayList<SchoolStudentDTO>();
        String []paramNames = {"homeId","eduStatus","schoolId"};
        Object [] paramValues={homeId.trim(),eduStatus.trim(),schoolId};
        
        try {
            schoolStudentDTOs = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findStudetsInASchool_OUT_SIDE", paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("----------Error in getVocationalStudetsInASchoolOutSide(String homeId, int schoolId) ---------");
           e.printStackTrace();
        }
        
        return schoolStudentDTOs;
    }

    public List<SchoolStudentDTO> getStudetsInSideAHome(String homeId, String eduStatus) {
        List<SchoolStudentDTO>  schoolStudentDTOs =new ArrayList<SchoolStudentDTO>();
        String []paramNames = {"homeId","eduStatus"};
        Object [] paramValues={homeId.trim(),eduStatus.trim()};
        
        try {
            schoolStudentDTOs = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findStudetsInSchool_IN_SIDE", paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("----------Error in getVocationalStudetsInSideAHome(String homeId) ---------");
           e.printStackTrace();
        }
        
        return schoolStudentDTOs;
        
    }
    
    //anupam added on 15-2-3012 END
    
    //anupam added on 16-2-2012 START

    public List<SchoolStudentDTO> getStudentsBasedOnINorOUTSchoolStatus(String homeId, String eduStatus, String status) {
        List<SchoolStudentDTO>  schoolStudentDTOs =new ArrayList<SchoolStudentDTO>();
        String []paramNames = {"homeId","eduStatus","status"};
        Object [] paramValues={homeId.trim(),eduStatus.trim(),status.trim()};
        
        try {
            schoolStudentDTOs = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findStudetBasedOnIN_OUTStatus", paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("----------Error in getStudentsBasedOnINorOUTSchoolStatus(String homeId, int schoolId) ---------");
           e.printStackTrace();
        }
        
        return schoolStudentDTOs;
        
        
    }
    //anupam added on 16-2-2012 END

    
    //anupam added on 29-2-2012 START
    public List<SchoolStudentDTO> getAllStudentsOfAClassINOUTSchool(String homeId, String eduStatus) {
        //@NamedQuery(name = "EducationAdmission.findAllStudetOfAClass", query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, c.childName , e.eduStatus , e.status) FROM ChildMaster c, EducationAdmission e WHERE c.childProfileId = e.childProfileId AND e.eduStatus = :eduStatus AND e.homeId.homeId = :homeId ORDER BY e.status"), //anupam added on 29-02-2012
        System.out.println("----------values in getAllStudentsOfAClassINOUTSchool --------- homeId= "+homeId+" ---eduStatus= "+eduStatus);
        List<SchoolStudentDTO>  schoolStudentDTOs =new ArrayList<SchoolStudentDTO>();
        String []paramNames = {"homeId","eduStatus"};
        Object [] paramValues={homeId.trim(),eduStatus.trim()};
        
        try {
           schoolStudentDTOs = hibernateTemplate.findByNamedQueryAndNamedParam("EducationAdmission.findAllStudetOfAClass", paramNames, paramValues); 
        } catch (Exception e) {
            System.out.println("----------Error in getAllStudentsOfAClassINOUTSchool ---------");
           e.printStackTrace();
        }
        
        return schoolStudentDTOs;
    }
    //anupam added on 29-2-2012 END
    
    
    
    
    
    
    
    
    

  }
