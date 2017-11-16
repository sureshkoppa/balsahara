/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.caseworker.DAO;

import com.cdac.caseworker.DTO.CWCMeetingMinutesDTO;
import com.cdac.caseworker.DTO.CWCMinutesOverViewDTO;
import com.cdac.caseworker.DTO.ChildDTO;
import com.cdac.caseworker.DTO.ReportData;
import com.cdac.caseworker.DTO.StayingPeriodOfChildDTO;
import com.cdac.common.util.StringToDate;
import com.cdac.usermanagement.ORM.CasehistoryAdolescenceDetails;
import com.cdac.usermanagement.ORM.CasehistoryAfteradmEducation;
import com.cdac.usermanagement.ORM.CasehistoryEmploymentDetails;
import com.cdac.usermanagement.ORM.CasehistoryFamily;
import com.cdac.usermanagement.ORM.CasehistoryFamilyCrimeDetails;
import com.cdac.usermanagement.ORM.CasehistoryFamilyDetails;
import com.cdac.usermanagement.ORM.CasehistoryPersonal;
import com.cdac.usermanagement.ORM.CasehistoryPrioradmEducation;
import com.cdac.usermanagement.ORM.CasehistorySocialhistoryPrioradm;
import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildDetailsPK;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.ChildSequence;
import com.cdac.usermanagement.ORM.ChildStatus;
import com.cdac.usermanagement.ORM.CwcDetail;
import com.cdac.usermanagement.ORM.CwcHome;
import com.cdac.usermanagement.ORM.CwcHop;
import com.cdac.usermanagement.ORM.CwcMeetings;
import com.cdac.usermanagement.ORM.CwcMinutes;
import com.cdac.usermanagement.ORM.CwcSir;
import com.cdac.usermanagement.ORM.CwcSo;
import com.cdac.usermanagement.ORM.CwcUppi;
import com.cdac.usermanagement.ORM.DischargeRegister;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.FcChildTemp;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.IcpPersonalDetails;
import com.cdac.usermanagement.ORM.IcpPostRelease;
import com.cdac.usermanagement.ORM.IcpPreRelease;
import com.cdac.usermanagement.ORM.InterviewRegister;
import freemarker.template.Template;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.hibernate.FetchMode;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Expression;
import org.springframework.orm.hibernate3.HibernateTemplate;

/**
 *
 * @author NEELAVA
 */
public class CaseWorkerDAOImpl implements CaseWorkerDAO {

    private HibernateTemplate hibernateTemplate;
    public void setSessionFactory(SessionFactory sessionFactory){
     this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }
    
      private CwcMeetings cwcMeetings=new CwcMeetings();
     private CwcMinutes cwcMinutes=new CwcMinutes();

    public CwcMeetings getCwcMeetings() {
        return cwcMeetings;
    }

    public void setCwcMeetings(CwcMeetings cwcMeetings) {
        this.cwcMeetings = cwcMeetings;
    }

    public CwcMinutes getCwcMinutes() {
        return cwcMinutes;
    }

    public void setCwcMinutes(CwcMinutes cwcMinutes) {
        this.cwcMinutes = cwcMinutes;
    }
      
     

    public String save(ChildMaster childMaster) {
        //throw new UnsupportedOperationException("Not supported yet.");

        String result="error";

        try {
            hibernateTemplate.save(childMaster);
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    public int getNextChildNo() {
        //throw new UnsupportedOperationException("Not supported yet.");
        int result=0;
        try {
            ChildSequence childSequence=new ChildSequence();
            hibernateTemplate.save(childSequence);

            result=childSequence.getChildSeq();
            System.out.println("generated sequence number------------->"+result);

        } catch (Exception e) {
            e.printStackTrace();
             System.out.println("Exception in getNextChildNo()------------->");
        }
     return result;
    }

    public List<ChildMaster> fetchChildrenInAHome(String homeId) {
        //throw new UnsupportedOperationException("Not supported yet.");
        List<ChildMaster> childList=new ArrayList<>();

        try {
            childList=(List<ChildMaster>)hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeId", "homeId", new HomeMaster(homeId));

        } catch (Exception e) {
            e.printStackTrace();
        }

     return childList;

    }
    
    
    
    public List<FcChildTemp> getfoundchildrenreportlist(String foundhomeId){
    
    
     List<FcChildTemp> childList= new ArrayList<>();

        try {
            childList=(List<FcChildTemp>)hibernateTemplate.findByNamedQueryAndNamedParam("FcChildTemp.findByProfileId","profileId",foundhomeId);

        } catch (Exception e) {
            e.printStackTrace();
        }

     return childList;

    }
    //Added for getting child list by multiple types of stauts for Superintendent
     public List<ChildMaster> fetchChildrenInAHome_status(String homeId) {
        //throw new UnsupportedOperationException("Not supported yet.");
        List<ChildMaster> childList_status=new ArrayList<ChildMaster>();

        try {
            childList_status=(List<ChildMaster>)hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeId_multiplestatus", "homeId", new HomeMaster(homeId));

        } catch (Exception e) {
            e.printStackTrace();
        }

     return childList_status;

    }
    

    public String updateChildMaster(ChildMaster childMaster) {
        System.out.println("CaseWorkerDAO -----updateChildMaster OBJECT RECEIVED =  "+childMaster);
        //throw new UnsupportedOperationException("Not supported yet.");
        String result="error";
        try {
            System.out.println("**************************************************** "+childMaster);
            hibernateTemplate.update(childMaster);
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }

    public String save(DischargeRegister dischargeRegister) {
        System.out.println("CaseWorkerDAO -----save(DischargeRegister dischargeRegister) OBJECT RECEIVED =  "+dischargeRegister);
        //throw new UnsupportedOperationException("Not supported yet.");
        String result="error";
        try {
            hibernateTemplate.save(dischargeRegister);
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public ChildMaster getExistingChild(String childProfileId) {
        //throw new UnsupportedOperationException("Not supported yet.");
        ChildMaster  childMaster =null;
        System.out.println("CaseWorkerDAO -----getExistingChild OBJECT RECEIVED =  "+childProfileId);
        try {
            System.out.println("CaseWorkerDAO ----------------------------------------BEFORE=  "+childMaster);
            childMaster = (ChildMaster)hibernateTemplate.get(ChildMaster.class, new ChildMaster(childProfileId).getChildProfileId());
            System.out.println("CaseWorkerDAO ---------------------------------------- AFTER=  "+childMaster);
        } catch (Exception e) {
            e.printStackTrace();
        }


        System.out.println("  ################################ "+childMaster.getChildProfileId());
        System.out.println("  ################################ "+childMaster.getTransHomeId());
        
        return childMaster;


    }

    public List<ChildMaster> fetchTransferedChildList(String homeId) {
        //throw new UnsupportedOperationException("Not supported yet.");
        List<ChildMaster> transferedchildList=new ArrayList<ChildMaster>();

        try {

         transferedchildList=(List<ChildMaster>)hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByTransferStatus", "homeId", homeId);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return transferedchildList;

    }

    public ChildMaster getChild_by_id(String child_prof_id) throws Exception {
       // throw new UnsupportedOperationException("Not supported yet.");
        ChildMaster cm=new ChildMaster();

        cm.setChildProfileId(child_prof_id);
        try {
           cm = (ChildMaster)hibernateTemplate.get(ChildMaster.class,cm.getChildProfileId());

            return cm;

        } catch (HibernateException e) {
            System.out.println("***ERROR***DAO");
            e.getStackTrace();
        }
        return cm;
        
        
    }

    public String saveCasework(ChildDetails childDetails) throws Exception {
        //throw new UnsupportedOperationException("Not supported yet.");
        String result="error";

        try {
            hibernateTemplate.save(childDetails);
            result="success";
        } catch (Exception e) {
           // result="error";
            e.printStackTrace();
            
        }

        return result;
        
        
    }

    public ChildDetails getExistingChildDetails(String childProfileId) {
        ChildDetails childDetails=null;
        try {
            childDetails=(ChildDetails)hibernateTemplate.findByNamedQueryAndNamedParam("ChildDetails.findByChildProfileId", "childProfileId", childProfileId).get(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return childDetails;
    }
    @Override
    public ChildDetails getExistingChildDetailsBasedOnChildDetailsPK(ChildDetailsPK childDetailsPK) {
                
        
        ChildDetails childDetails=null;
        try {
          
            childDetails = (ChildDetails)hibernateTemplate.get(ChildDetails.class, childDetailsPK);
       
        } catch (Exception e) {
            
            System.out.println("*** ERROR INSIDE DAO --- getExistingChildDetailsBasedOnChildDetailsPK(ChildDetailsPK childDetailsPK)***");
            
            System.out.println(e);
        }
        return childDetails;
    }

    public String saveInterviewRegister(InterviewRegister interviewRegister) {
       // throw new UnsupportedOperationException("Not supported yet.");
         String result="error";
         
         try {
            hibernateTemplate.save(interviewRegister);
             result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    }

    public String saveCaseHistoryPersonal(CasehistoryPersonal casehistoryPersonal) {
       // throw new UnsupportedOperationException("Not supported yet.");
        
          String result="error";
         
         try {
            hibernateTemplate.save(casehistoryPersonal);
             result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
        
        
    }

    public String saveCasehistoryChildHouseholdDetails(CasehistoryFamily casehistoryFamily) {
       // throw new UnsupportedOperationException("Not supported yet.");
        String result="error";
        try {
          hibernateTemplate.save(casehistoryFamily);
          result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public String saveCasehistoryFamilyDetails(CasehistoryFamilyDetails casehistoryFamilyDetails) {
       // throw new UnsupportedOperationException("Not supported yet.");
        String result="error";
        try {
            hibernateTemplate.save(casehistoryFamilyDetails);
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
                return result;
    }

    public String saveCasehistoryAdolscenceHistory(CasehistoryAdolescenceDetails casehistoryAdolescenceDetails) {
        //throw new UnsupportedOperationException("Not supported yet.");
        String result="error";
        try {
            hibernateTemplate.save(casehistoryAdolescenceDetails);
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public String saveCasehistoryEmploymentDetails(CasehistoryEmploymentDetails casehistoryEmploymentDetails) {
        //throw new UnsupportedOperationException("Not supported yet.");
        String result="error";
        try {
            hibernateTemplate.save(casehistoryEmploymentDetails);
            result="success";
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
        
    }

    public String saveCasehistoryPriorAdmEducationDetails(CasehistoryPrioradmEducation casehistoryPrioradmEducation) {
       // throw new UnsupportedOperationException("Not supported yet.");
        
         String result="error";
        try {
            hibernateTemplate.save(casehistoryPrioradmEducation);
            result="success";
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    }

    public String saveCasehistoryFamilyCrimeDetails(CasehistoryFamilyCrimeDetails casehistoryFamilyCrimeDetails) {
        //throw new UnsupportedOperationException("Not supported yet.");
         String result="error";
        try {
            hibernateTemplate.save(casehistoryFamilyCrimeDetails);
            result="success";
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
        
        
    }

    public String saveCasehistoryAfterAdmEducationDetails(CasehistoryAfteradmEducation casehistoryAfteradmEducation) {
       // throw new UnsupportedOperationException("Not supported yet.");
        String result="error";
        try {
            hibernateTemplate.save(casehistoryAfteradmEducation);
            result="success";
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
        
    }

    public String saveCasehistorySocialHistoryDetails(CasehistorySocialhistoryPrioradm casehistorySocialhistoryPrioradm) {
       // throw new UnsupportedOperationException("Not supported yet.");
         String result="error";
        try {
            hibernateTemplate.save(casehistorySocialhistoryPrioradm);
            result="success";
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
        
    }

    public String saveChildStatus(ChildStatus childStatus) {
        //throw new UnsupportedOperationException("Not supported yet.");
         String result="error";
        try {
            hibernateTemplate.save(childStatus);
            result="success";
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
        
    }

    public List<InterviewRegister> getChildInterviewDetails(String chprofid) {
         List<InterviewRegister> list_interviewReg = new ArrayList<>();
        try {
         
         list_interviewReg=(List<InterviewRegister>)hibernateTemplate.findByNamedQueryAndNamedParam("InterviewRegister.findByChildProfileId", "childProfileId", chprofid);
        } catch (Exception e) {
            e.printStackTrace();
        }
         
        return list_interviewReg;
        
    }
    
    
    
//Added by vinumol
    public List<CasehistoryPersonal> getChildHistory_by_id(String childPId)
    {
        List<CasehistoryPersonal>l = null;
        System.out.println("getChildHistory_by_id(String childPId)....!!!vinumol"+childPId);
        l =(List<CasehistoryPersonal>)hibernateTemplate.findByNamedQueryAndNamedParam("CasehistoryPersonal.findByChildProfileIdAndDate","childProfileId",childPId);
        System.out.println("vinumol2!!!!!!!!!!!!"+ l);
        String childProfileId;
            
       
        //String[] eagerAttributes={"casehistoryAdolescenceDetailsList"};
        //"casehistoryPrioradmEducationList","casehistorySocialhistoryPrioradmList","casehistoryFamilyDetailsList"
       //DetachedCriteria criteria = DetachedCriteria.forClass(CasehistoryPersonal.class).add(Expression.eq("childProfileId",childPId));
   
       //for (int i = 0; i < eagerAttributes.length; i++) {
      //criteria = criteria.setFetchMode(eagerAttributes[i], FetchMode.JOIN);
    
     //l = getHibernateTemplate().findByCriteria(criteria);
   return l;
    }
    
  
    public List<CasehistoryFamily> getCasehistoryFamily(String childProfileId) 
    {
        List<CasehistoryFamily>l = new ArrayList<CasehistoryFamily>();
        l=(List<CasehistoryFamily>)hibernateTemplate.findByNamedQueryAndNamedParam("CasehistoryFamily.findByChildProfileId", "childProfileId",childProfileId);
   System.out.println("**********The list**********"+l);
        return l;
    }

    public List<CasehistoryFamilyDetails> getCasehistoryFamilyDetails(String childProfileId)
    {
        System.out.println("childProfileid in family details in dao***&&&&&&&&&&&&&&&&"+childProfileId);
        List<CasehistoryFamilyDetails> cflist=new ArrayList<CasehistoryFamilyDetails>();
        cflist=(List<CasehistoryFamilyDetails>)hibernateTemplate.findByNamedQueryAndNamedParam("CasehistoryFamilyDetails.findByChildProfileId","childProfileId",childProfileId);
        System.out.println("**********The 2 list**********"+cflist);
        return cflist;
    }

    public List<CasehistoryFamilyCrimeDetails> getCasehistoryFamilyCrimeDetails(String childProfileId) 
    {
      System.out.println("**********childProfileid in family details in dao***&&&&&&&&&&&&&&&&"+childProfileId);  
      List<CasehistoryFamilyCrimeDetails> crimelist=new ArrayList<CasehistoryFamilyCrimeDetails>();
      crimelist=(List<CasehistoryFamilyCrimeDetails>)hibernateTemplate.findByNamedQueryAndNamedParam("CasehistoryFamilyCrimeDetails.findByChildProfileId","childProfileId",childProfileId);
      return crimelist;
    }

    public List<CasehistoryAdolescenceDetails> getCasehistoryAdolescenceDetails(String childProfileId) 
        {
        System.out.println("**********childProfileid in adolescence details in dao***&&&&&&&&&&&&&&&&"+childProfileId);     
        List<CasehistoryAdolescenceDetails> adolist=new ArrayList<CasehistoryAdolescenceDetails>();
        adolist=(List<CasehistoryAdolescenceDetails>)hibernateTemplate.findByNamedQueryAndNamedParam("CasehistoryAdolescenceDetails.findByChildProfileId","childProfileId", childProfileId);
        return adolist;
        }

    public List<CasehistoryEmploymentDetails> getCasehistoryEmploymentDetails(String childProfileId) 
    {
        List<CasehistoryEmploymentDetails> elist=new ArrayList<CasehistoryEmploymentDetails>();
        elist=(List<CasehistoryEmploymentDetails>)hibernateTemplate.findByNamedQueryAndNamedParam("CasehistoryEmploymentDetails.findByChildProfileId","childProfileId", childProfileId);
        return elist;
    }

    public List<CasehistoryPrioradmEducation> getCasehistoryPrioradmEducationDetails(String childProfileId)
    {
        List<CasehistoryPrioradmEducation> pedulist=new ArrayList<CasehistoryPrioradmEducation>();
        pedulist=(List<CasehistoryPrioradmEducation>)hibernateTemplate.findByNamedQueryAndNamedParam("CasehistoryPrioradmEducation.findByChildProfileId","childProfileId", childProfileId);
        return pedulist;
    }

    public List<CasehistoryAfteradmEducation> getCasehistoryAfteradmEducationDetails(String childProfileId) 
    {
        List<CasehistoryAfteradmEducation> aedulist=new ArrayList<CasehistoryAfteradmEducation>();
        aedulist=(List<CasehistoryAfteradmEducation>) hibernateTemplate.findByNamedQueryAndNamedParam("CasehistoryAfteradmEducation.findByChildProfileId","childProfileId", childProfileId);
        System.out.println("The after education list from dao impl############"+aedulist);
        return aedulist;
    }

    public List<CasehistorySocialhistoryPrioradm> getCasehistorySocialPrioradm(String childProfileId) {
        List<CasehistorySocialhistoryPrioradm> shlist=new ArrayList<CasehistorySocialhistoryPrioradm>();
        shlist=(List<CasehistorySocialhistoryPrioradm>) hibernateTemplate.findByNamedQueryAndNamedParam("CasehistorySocialhistoryPrioradm.findByChildProfileId","childProfileId", childProfileId);
        System.out.println("The socialhistory list from dao impl*****&&&&&&&&&&**********"+shlist);
        return shlist;
    }
    
   
    public List<ChildDetails> getChildDetails(String childProfileId) 
    {
        List<ChildDetails>clist=new ArrayList<ChildDetails>();
        clist=(List<ChildDetails>) hibernateTemplate.findByNamedQueryAndNamedParam("ChildDetails.findByChildProfileId", "childProfileId",childProfileId);
        return clist;
    }

    public List<HomeDetails> getHomeDetail(String homeId) 
    {
    List<HomeDetails>hlist=new ArrayList<HomeDetails>();
      //  HomeDetails hds= new HomeDetails();
    hlist=(List<HomeDetails>) hibernateTemplate.findByNamedQueryAndNamedParam("HomeDetails.findByHomeId","homeId", homeId);
    return hlist;
    }
    
    
    //Ended by vinumol
    

    public int getCwcIdBasedOnUserIdAndStatus(String userId, String status) {
        
        int cwcId= -1;
        
        try {
            cwcId=((CwcDetail)(hibernateTemplate.findByNamedQueryAndNamedParam("CwcDetail.findByUserIdAndActiveStatus","userId" ,userId).get(0))).getCwcDetailPK().getCwcId();
        } catch (Exception e) {
            System.out.println("------------Error in fetching the cwc id in getCwcIdBasedOnUserIdAndStatus(String userId, String status) ");
            e.printStackTrace();       
        }
        
        return cwcId;
    }

    public String getDistrictidByCwcid(int cwcId) {
        
   // @NamedQuery(name = "CwcHome.findByCwcIdAndActiveStatus", query = "SELECT c FROM CwcHome c WHERE c.status = 'active' AND  c.cwcId = :cwcId"),
        return ((CwcHome)hibernateTemplate.findByNamedQueryAndNamedParam("CwcHome.findByCwcIdAndActiveStatus", "cwcId", cwcId).get(0)).getDistrict();
    }

    public List<HomeMaster> getHomesInAdistrict(String districtId) {
        //@NamedQuery(name = "HomeMaster.findHomesInADistrict", query = "SELECT h.homeId FROM HomeMaster h where h.districtId = :districtId"),
        return hibernateTemplate.findByNamedQueryAndNamedParam("HomeMaster.findHomesInADistrict", "districtId", new DistrictMaster(districtId));
    }

    public int saveMeeting(CwcMeetings cwcMeetings) {
        
        int meetingId=-1;
        
        try {
            hibernateTemplate.save(cwcMeetings);
            meetingId=cwcMeetings.getMeetingId();
        } catch (Exception e) {
            System.out.println("------------Error in fetching the cwc id in saveMeeting(CwcMeetings cwcMeetings)  ");
            e.printStackTrace();
        }
        
        return meetingId;
    }

    public String saveCWCMeetingsMinutes(CwcMinutes cwcMinutes) {
         String result="error";
        
        try {
            
            hibernateTemplate.save(cwcMinutes);
            result="success";
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List<Date> getCwcMinutesDates(String homeid, Date fromdate, Date todate) {
        System.out.println("CWC Meeting minutes------------in DAO=====>>");
            String[] paramNames={"homeId","fromdate","todate"};
            Object[] paramValues={homeid,fromdate,todate};
            List<Date> cwcMinuteses=new ArrayList<Date>();
    
        try {
            
     //@NamedQuery(name = "CwcMinutes.findByCWCOrderDate", query = "SELECT c FROM CwcMinutes c WHERE c.homeId=:homeId AND c.orderDate between :fromdate and :todate"),       
            cwcMinuteses = hibernateTemplate.findByNamedQueryAndNamedParam("CwcMinutes.findByCWCOrderDate",paramNames, paramValues);
        System.out.println("CWC Meeting minutes------------in DAO=====>>"+cwcMinuteses);
        } catch (Exception e) {
            e.printStackTrace();
        }
    return cwcMinuteses;
    }

    public List<CwcMinutes> getCWCMeetingMinutesDetails(String homeid, Date selectDate) {
        
//   @NamedQuery(name = "CwcMinutes.findByorderDateAndHomeId", query = "SELECT c FROM CwcMinutes c WHERE c.homeId = :homeId AND c.orderDate = :orderDate"),
    
  List<CwcMinutes> cwcMinuteses=new ArrayList<CwcMinutes>();
  
  String[] paramNames={"homeId","orderDate"};
  Object[] paramValues={homeid,selectDate};
  
  for(int i=0;i<paramNames.length;i++)
  {
  System.out.println(paramNames[i]+"---------------------------"+paramValues[i]);
  }
  
        try {
             cwcMinuteses=hibernateTemplate.findByNamedQueryAndNamedParam("CwcMinutes.findByorderDateAndHomeId",paramNames,paramValues);
             System.out.println("list retrived in getCWCMeetingMinutesDetails(String homeid, Date selectDate)-----------------> "+cwcMinuteses);
        } catch (Exception e) {
            e.printStackTrace();
        }
    
       return cwcMinuteses;
       
       
    }

    public CwcMeetings getCwcMeetingDetails(int meetingId) {
        
        //@NamedQuery(name = "CwcMeetings.findByMeetingId", query = "SELECT c FROM CwcMeetings c WHERE c.meetingId = :meetingId"),
        CwcMeetings cwcMeetings=new CwcMeetings();
        
        try {
            cwcMeetings=(CwcMeetings)(hibernateTemplate.findByNamedQueryAndNamedParam("CwcMeetings.findByMeetingId","meetingId", meetingId).get(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cwcMeetings;
    }

    //Added by vinumol 5/9/2011
    public List<ChildMaster> getChildAdmissionDetails(String childProfileId) 
    {
        List<ChildMaster> childList=new ArrayList<ChildMaster>();
        String[] eagerAttributes={"childDetailsList"};
        //"casehistoryPrioradmEducationList","casehistorySocialhistoryPrioradmList","casehistoryFamilyDetailsList"
       DetachedCriteria criteria = DetachedCriteria.forClass(ChildMaster.class).add(Expression.eq("childProfileId",childProfileId));
   
       for (int i = 0; i < eagerAttributes.length; i++) 
      criteria = criteria.setFetchMode(eagerAttributes[i], FetchMode.JOIN);
    
     childList = getHibernateTemplate().findByCriteria(criteria);
     //childList =(hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByChildProfileId", "childProfileId",childProfileId));
     return childList;
     
    }
    //Ended by vinumol 5/9/2011
    
    //Anupam added this on 8-2-2012 START

    public List<CWCMinutesOverViewDTO> getCwcMinutesOverViewDTOs(String homeid, Date fromdate, Date todate) {
       
            String[] paramNames={"homeId","fromdate","todate"};
            Object[] paramValues={homeid,fromdate,todate};
            List<CWCMinutesOverViewDTO> cWCMinutesOverViewDTOs=new ArrayList<CWCMinutesOverViewDTO>();
    
        try {
            
     //@NamedQuery(name = "CwcMinutes.findByCWCOrderDate", query = "SELECT c FROM CwcMinutes c WHERE c.homeId=:homeId AND c.orderDate between :fromdate and :todate"),       
            List objList = hibernateTemplate.findByNamedQueryAndNamedParam("CwcMinutes.findCWCOverViewByCWCOrderDate",paramNames, paramValues);
        
            
            Iterator i = objList.iterator();
         while(i.hasNext())
         {
          CWCMinutesOverViewDTO ob=(CWCMinutesOverViewDTO) i.next();
         
         System.out.println("in DAO-----------"+ob);
         }
            
            cWCMinutesOverViewDTOs = (List<CWCMinutesOverViewDTO>)objList;
            
            
            
            
            System.out.println("CWC Meeting minutes OVERVIEW------------in DAO=====>>"+cWCMinutesOverViewDTOs);
        } catch (Exception e) {
            System.out.println("ERROR IN CWC Meeting minutes OVERVIEW------------in DAO=====");
            e.printStackTrace();
        }
    return cWCMinutesOverViewDTOs;
    }
    
    //Anupam added this on 8-2-2012 END
    
    
    
    //anupam added on 29-02-2012 START
     /*
     @NamedQuery(name = "ChildMaster.findByHomeIdAndName", query = "SELECT c FROM ChildMaster c WHERE c.homeId = :homeId AND lower(c.childName) LIKE lower('%'+:childName+'%')"), 
    @NamedQuery(name = "ChildMaster.findByHomeIdAndCWCno", query = "SELECT c FROM ChildMaster c WHERE c.homeId = :homeId AND lower(c.cwcJjbOrderNo) LIKE lower('%'+:cwcJjbOrderNo+'%')"),
    @NamedQuery(name = "ChildMaster.findByHomeIdAndNameOrCwcno", query = "SELECT c FROM ChildMaster c WHERE c.homeId = :homeId AND lower(c.cwcJjbOrderNo) LIKE lower('%'+:cwcJjbOrderNo+'%') OR lower(c.childName) LIKE lower('%'+:childName+'%')"),
     */
    public List<ChildMaster> getChildBasedOnCwcNoInAHome(String homeId, String cwcJjbNo) {
        String[] paramNames={"homeId","cwcJjbOrderNo"};
            Object[] paramValues={homeId.trim(),cwcJjbNo.trim()};
            List<ChildMaster> childMasters = new ArrayList<ChildMaster>();
            
            try {
            childMasters = hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeIdAndCWCno",paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("ERROR IN getChildBasedOnCwcNoInAHome------------in DAO=====");
            e.printStackTrace();
        }
            return childMasters;
    }

    public List<ChildMaster> getChildBasedOnCwcNoOrNameInAHome(String homeId, String cwcJjbNo, String childName) {
        String[] paramNames={"homeId","cwcJjbOrderNo","childName"};
            Object[] paramValues={homeId.trim(),cwcJjbNo.trim(),childName.trim()};
            List<ChildMaster> childMasters = new ArrayList<ChildMaster>();
            
            try {
            childMasters = hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeIdAndNameOrCwcno",paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("ERROR IN getChildBasedOnCwcNoOrNameInAHome ------------in DAO=====");
            e.printStackTrace();
        }
            return childMasters;
    }

    public List<ChildMaster> getChildBasedOnNameInAHome(String homeId, String childName) {
        String[] paramNames={"homeId","childName"};
            Object[] paramValues={homeId.trim(),childName.trim()};
            List<ChildMaster> childMasters = new ArrayList<ChildMaster>();
            
            try {
            childMasters = hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeIdAndName",paramNames, paramValues);
        } catch (Exception e) {
            System.out.println("ERROR IN getChildBasedOnCwcNoOrNameInAHome ------------in DAO=====");
            e.printStackTrace();
        }
            return childMasters;
    }
    
    
//anupam added on 02-3-2012 START

    public List<ChildMaster> populateAvailableCaseWorkInAHome(String homeId) {
        List<ChildMaster> childMasters = new ArrayList<ChildMaster>();
        /*
         * @NamedQuery(name = "ChildMaster.findAvailableCaseWorkOfAHome", query = "SELECT c1.childProfileId, c1.childName FROM ChildMaster c1, ChildDetails c2 WHERE c1.childProfileId = c2.childProfileId AND c1.homeId.homeId = :homeId GROUP BY c1.childProfileId ORDER BY c1.childName"),
         */
        try {
            childMasters = hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findAvailableCaseWorkOfAHome", "homeId", homeId.trim());
            
        } catch (Exception e) {
            System.out.println("ERROR IN populateAvailableCaseWorkInAHome ------------in DAO=====");
            e.printStackTrace();
        }
        return childMasters;
    }

    public List<ChildMaster> populateOnlyInterviewedChildOfAHome(String homeId) {
        /*
         @NamedQuery(name = "ChildMaster.findInterviewedChildOfAHome", query = "SELECT c1 FROM ChildMaster c1, InterviewRegister c2 WHERE c1.childProfileId = c2.childProfileId AND c1.homeId.homeId = :homeId GROUP BY c1.childProfileId ORDER BY c1.childName"),
         */
        List<ChildMaster> childMasters = new ArrayList<ChildMaster>();
        
         try {
            childMasters = hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findInterviewedChildOfAHome", "homeId", homeId.trim());
            
        } catch (Exception e) {
            System.out.println("ERROR IN populateAvailableCaseWorkInAHome ------------in DAO=====");
            e.printStackTrace();
        }
        return childMasters;
    }
//Added by vinumol 08-03-2012
    
    @Override
    public List<ChildMaster> viewAdmisiionChild_by_homeid(Date fromdate, Date todate, String child_homeid) {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        List cmlist;
        cmlist=hibernateTemplate.find("select c from ChildMaster c where c.homeId='"+child_homeid+"' and c.dateTimeAdm between '"+sdf.format(fromdate)+"' and '"+sdf.format(todate)+"'");
        return cmlist;
    }

    @Override
    public List<ChildDetails> getCaseworkViewChildPID(String homeId) {
        List cdlist=new ArrayList();
        try {
        cdlist=hibernateTemplate.find("select c from ChildDetails c where c.childMaster.homeId='"+homeId+"'");
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    return cdlist;
    }
    

    @Override
    public List<InterviewRegister> getInterviewRegisterChildPID(String currentHomeId) {
         List ilist=hibernateTemplate.findByNamedQueryAndNamedParam("InterviewRegister.findByHomeId","homeId",currentHomeId);
    return ilist;
    }

    @Override
    public List<DischargeRegister> viewDischargeChild_by_homeid(Date fromdate, Date todate, String childmaster_homeid) {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        List<DischargeRegister> cplist;
        cplist=hibernateTemplate.find("select d from DischargeRegister d where d.homeId ='"+childmaster_homeid+"' and d.transDischargeDate between '"+sdf.format(fromdate)+"' and '"+sdf.format(todate)+"'");
    return cplist;
    }

    @Override
    public DischargeRegister viewDischargeChild_by_Id(String disreg_profid) {
        DischargeRegister disreg;
        disreg=(DischargeRegister)hibernateTemplate.findByNamedQueryAndNamedParam("DischargeRegister.findByChildProfileId","childProfileId",disreg_profid).get(0);
        return disreg;
    }

    @Override
    public List<CasehistoryPersonal> getCaseHistoryChildPid(String currentHomeId) {
        List chplist=hibernateTemplate.find("select chp from CasehistoryPersonal chp where chp.childMaster.homeId='"+currentHomeId+"'" );
    return chplist;
    }
    
    //Ended by vinumol 08-03-2012
    
    //anupam added on 12-07-2012 START

    @Override
    public List<StayingPeriodOfChildDTO> getOverStayingChildren(String homeId,int minimumPeriodOfStayInMonths) {
        
        System.out.println("DAO ------------IN");
        
        List<StayingPeriodOfChildDTO> overStayingChildList = null;
                
              try {
            overStayingChildList=
                     hibernateTemplate.find(                    
                "select "+
                "new com.cdac.caseworker.DTO.StayingPeriodOfChildDTO("+
                "c.childProfileId,"+
                "c.childName,"+
                "c.childSurname,"+
                "c.dateTimeAdm,"+
                "12 * (year(current_date()) - year(c.dateTimeAdm)) + (month(current_date())- month(c.dateTimeAdm)) )  "+
                " from "+
                " ChildMaster c "+
                " where "+
               
                "c.childProfileId IN (" +   
                "select "+                
                "c1.childProfileId"+                
                " from "+
                "ChildMaster c1 "+
                "where "+
                "c1.homeId='"+homeId+"'"+
                " AND "+
                "c1.status='active' "+
                " AND "+
                "(12 * (year(current_date()) - year(c1.dateTimeAdm)) + (month(current_date()) - month(c1.dateTimeAdm)))  > "+minimumPeriodOfStayInMonths+    
                                  
                ")"+
                 " order by c.dateTimeAdm "   
                );
                    
            
                  System.out.println("list length -------------------> "+overStayingChildList.size());
            /*
             hibernateTemplate.find(
                "select "+
                "new com.cdac.caseworker.DTO.StayingPeriodOfChildDTO("+
                "c.childProfileId,"+
                "c.childName,"+
                "c.childSurname,"+
                "c.dateTimeAdm,"+
                "12 * (year(current_date()) - year(c.dateTimeAdm)) + (month(current_date())+month(dateTimeAdm)) ) "+                
                " from "+
                "ChildMaster c "+
                "where "+
                "c.homeId='"+homeId+"'"+
                " AND "+
                "c.status='active' "+
                " order by "+
                " 12 * (year(current_date()) - year(c.dateTimeAdm)) + (month(current_date())+month(dateTimeAdm)) desc"    
                );
             */
        } catch (Exception e) {
            e.printStackTrace();
        }
  
                
        
        return overStayingChildList;
    }
    //anupam added on 12-07-2012 END
    
    //anupam added on 23-10-2012 START

    @Override
    public void updateObject(Object object) {        
        
        try {
            hibernateTemplate.saveOrUpdate(object);
        } catch (Exception e) {
            System.out.println("ERROR atg DAO "+e);
        }
        
        
    }
    //added by suresh on 11-10-2012 start
    
       @Override
    public boolean saveIcpPersonalDetails(IcpPersonalDetails icpPersonelDetails) {
       boolean result=false;
        
        try {
            
            hibernateTemplate.save(icpPersonelDetails);
            result=true;
            return result;
            
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
       
    }

    @Override
    public boolean saveIcpPreRelease(IcpPreRelease icpPreRelease) {
       boolean result=false;
        
        try {
            
            hibernateTemplate.save(icpPreRelease);
            result=true;
            return result;
            
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean saveIcpPostRelease(IcpPostRelease icpPostRelease) {
       boolean result=false;
        
        try {
            
            hibernateTemplate.save(icpPostRelease);
            result=true;
            return result;
            
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public IcpPersonalDetails getIcpPersonelDetails(String childProfileId) {
        IcpPersonalDetails  icpPersonelDetails =null;
        System.out.println("icpd dao -----getExistingChild OBJECT RECEIVED =  "+icpPersonelDetails);
        try {
            System.out.println("icpd dao ----------------------------------------BEFORE=  "+icpPersonelDetails);
            icpPersonelDetails = (IcpPersonalDetails)hibernateTemplate.get(IcpPersonalDetails.class, childProfileId);
            System.out.println("icpd dao ---------------------------------------- AFTER=  "+icpPersonelDetails); 
        } catch (Exception e) {
            e.printStackTrace();
        }


        //System.out.println("  ################################ "+icpPersonelDetails.getChildProfileId());
        //System.out.println("  ################################ "+icpPersonelDetails.getFirstName());
        
        return icpPersonelDetails;
    }

    @Override
    public IcpPreRelease getIcpPreRelease(String childProfileId) {
        IcpPreRelease  icpPreRelease =null;
        System.out.println("icpd dao -----getExistingChild OBJECT RECEIVED =  "+icpPreRelease);
        try {
            System.out.println("icpd dao ----------------------------------------BEFORE=  "+icpPreRelease);
            icpPreRelease = (IcpPreRelease)hibernateTemplate.get(IcpPreRelease.class, childProfileId);
            System.out.println("icpd dao ---------------------------------------- AFTER=  "+icpPreRelease); 
        } catch (Exception e) {
            e.printStackTrace();
        }


       // System.out.println("  ################################ "+icpPreRelease.getChildProfileId());
      //  System.out.println("  ################################ "+icpPreRelease.getReleaseType());
        
        return icpPreRelease;
     }

    @Override
    public IcpPostRelease getIcpPostRelease(String childProfileId) {
         IcpPostRelease  icpPostRelease =null;
        System.out.println("icpd dao -----getExistingChild OBJECT RECEIVED =  "+icpPostRelease);
        try {
            System.out.println("icpd dao ----------------------------------------BEFORE=  "+icpPostRelease);
            icpPostRelease = (IcpPostRelease)hibernateTemplate.get(IcpPostRelease.class, childProfileId);
            System.out.println("icpd dao ---------------------------------------- AFTER=  "+icpPostRelease); 
        } catch (Exception e) {
            e.printStackTrace();
        }


     //   System.out.println("  ################################ "+icpPostRelease.getChildProfileId());
     //   System.out.println("  ################################ "+icpPostRelease.getStatusBankAcc());
        
        return icpPostRelease;
       
    }
    //added by suresh on 11-10-2012 ends

    //added by suresh for multilingual report on 2-12-2013 start
    public HomeMaster getHomeMaster(String homeId) {
        return (HomeMaster)hibernateTemplate.findByNamedQueryAndNamedParam("HomeMaster.findByHomeId","homeId", homeId).get(0);
    }
    //added by suresh for multilingual report on 2-12-2013 ends

    public Map<String, String> getHomeWithAddressInADistrict(String districtId) {
        
        /*  
            SELECT h1.home_Id, h2.home_Address
            FROM home_master h1, home_details h2
            WHERE h1.district_Id = 'VIS'
            AND h1.home_Id = h2.home_Id
            LIMIT 0 , 30
         */
        
        Map<String,String> homeAddressMap = new HashMap<String, String>(); //Collections.EMPTY_MAP;
        
        String query = "select new map(h1.homeId as homeId , h2.homeAddress as homeAddress) from HomeMaster h1,HomeDetails h2 WHERE h1.districtId.districtId= ? AND h1.homeId=h2.homeId";
        try {
            List tempList = hibernateTemplate.find(query, districtId);
        System.out.println("temporary list = "+tempList);
        
        //System.out.println("temporary list inside = "+((Map)tempList.get(0)).);
            for (Iterator it = tempList.iterator(); it.hasNext();) {
                Object object = it.next();
                Map mymap = (Map)object; 
                //homeAddressMap.put(mymap.get("homeId").toString(),mymap.get("homeAddress").toString());
                System.out.println("---------------"+((Map)object).get("homeId"));
                homeAddressMap.put(mymap.get("homeId").toString(),mymap.get("homeAddress").toString());
                
            }
        
            
        System.out.println("fetched map = "+homeAddressMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return homeAddressMap;
       
    }
    
    /*Integrating the view Admission report in child homes 2-1-2014*/
    public List<ChildDTO> fetchChildrenBasedOnName(String homeId,String name) {
        List<ChildDTO> childList = null;
        
        try {
            String query = "Select new com.cdac.caseworker.DTO.ChildDTO(c.childProfileId,c.childName) from ChildMaster c where c.status='active' AND c.homeId.homeId = ? AND upper(c.childName) LIKE '%"+name.toUpperCase()+"%'";
            //Object[] paramArray = {homeId,"'%"+name+"%'"};
            childList = hibernateTemplate.find(query,homeId);
            
        } catch (Exception e) {
            System.out.println("---Error in fetchChildrenBasedOnName---");
            e.printStackTrace();
        }
        
        if(childList.isEmpty())
        {
        return Collections.EMPTY_LIST;
        }
        return childList;
    }

    public List<ChildDTO> fetchChildrenBasedOn2Dates(String homeId, Date fromDate, Date toDate) {
        
        List<ChildDTO> childList = null;
        
        String query = "Select "+
                       "new com.cdac.caseworker.DTO.ChildDTO(c.childProfileId,c.childName)"+                
                       " from ChildMaster c "+
                       "where"+
                       " c.homeId.homeId = ? "+
                       " AND "+
                       "c.dateTimeAdm "+
                       "BETWEEN "+
                       " ? AND ?";
        try {
            childList = hibernateTemplate.find(query, new Object[]{homeId,fromDate,toDate});
            
        } catch (Exception e) {
            System.out.println("---Error in fetchChildrenBasedOn2Dates---");
            e.printStackTrace();
        }
        
        if(childList.isEmpty())
        {
        return Collections.EMPTY_LIST;
        }
        return childList;
        
    }

    public List<ChildDTO> fetchChildrenBasedOnCaste(String homeId, String childCaste) {
        
        List<ChildDTO> childList = null;
        
        String query = "Select "+
                       "new com.cdac.caseworker.DTO.ChildDTO(c.childDetailsPK.childProfileId,c.childName)"+                
                       " from ChildDetails c "+
                       "where "+
                       "c.childMaster.status='active'"+
                       "AND"+
                       " c.childMaster.homeId.homeId = ? "+
                       " AND "+
                       "upper(c.caste) = ?";
        try {
            childList = hibernateTemplate.find(query, new Object[]{homeId,childCaste.toUpperCase()});
            
        } catch (Exception e) {
            System.out.println("---Error in fetchChildrenBasedOnCaste---");
            e.printStackTrace();
        }
        
        if(childList.isEmpty())
        {
        return Collections.EMPTY_LIST;
        }
        return childList;
        
    }

    public List<ChildDTO> fetchChildrenBasedOnMonthAndYear(String homeId, int month, int year) {
        
        List<ChildDTO> childList = null;
        
        String query = "Select "+
                       "new com.cdac.caseworker.DTO.ChildDTO(c.childProfileId,c.childName)"+                
                       " from ChildMaster c "+
                       "where "+
                       "c.status='active'"+
                       "AND"+
                       " c.homeId.homeId = ? "+
                       " AND "+
                       "month(c.dateTimeAdm)= ? "+
                       "AND "+
                       "year(c.dateTimeAdm) = ? ";
        try {
            childList = hibernateTemplate.find(query, new Object[]{homeId,month,year});
            
        } catch (Exception e) {
            System.out.println("---Error in fetchChildrenBasedOnMonthAndYear---");
            e.printStackTrace();
        }
        
        if(childList.isEmpty())
        {
        return Collections.EMPTY_LIST;
        }
        return childList;
        
    }

    public List<ChildDTO> fetchChildrenBasedOnNature(String homeId, String nature) {
        List<ChildDTO> childList = null;
        
        String query = "Select "+
                       "new com.cdac.caseworker.DTO.ChildDTO(c.childProfileId,c.childName)"+                
                       " from ChildMaster c "+
                       "where "+
                       "c.status='active'"+
                       "AND"+
                       " c.homeId.homeId = ? "+
                       " AND "+
                       "c.childNature= ? ";
        try {
            childList = hibernateTemplate.find(query, new Object[]{homeId,nature});
            
        } catch (Exception e) {
            System.out.println("---Error in fetchChildrenBasedOnNature---");
            e.printStackTrace();
        }
        
        if(childList.isEmpty())
        {
        return Collections.EMPTY_LIST;
        }
        return childList;
        
        
    }

    
    public int maxNumberEntryInAYear(String searchString) {
        
        //int lastEntry = 0;
        List<String> lastEntry = null;
        
        //SELECT max(substr(`CHILD_PROFILE_ID`,11)) FROM `child_master` WHERE `CHILD_PROFILE_ID` LIKE '0018-2013%'
        
        String query = "Select "+
                       "max(substring(c.childProfileId,12))"+                
                       " from ChildMaster c "+
                       "where"+                       
                       " c.childProfileId LIKE '"+searchString+"%'";
        
        try {
            lastEntry = hibernateTemplate.find(query);
            
            //System.out.println("size = "+lastEntry.size());
            System.out.println("lastEntry = "+lastEntry);
            
        } catch (Exception e) {
            System.out.println("---Error in maxNumberEntryInAYear---");
            e.printStackTrace();
        }
        
        if((lastEntry.get(0))==null)
        {
        return 0;
        }
        return Integer.parseInt(lastEntry.get(0));
        
    }

    public List<ChildDTO> fetchChidrenDTOInaHomeByStatus(String homeId,String status) {
        List<ChildDTO> childList = null;
        
        
        String query = "Select "+
                       "new com.cdac.caseworker.DTO.ChildDTO(c.childProfileId,concat(c.childName,' ',c.childSurname,'(CWC/JJB NO:-',c.cwcJjbOrderNo,')'))"+                
                       " from ChildMaster c "+
                       "where"+
                       " c.homeId.homeId = ? "+
                       " AND "+
                       "upper(c.status)= ? "
                     + "ORDER BY "
                     + "c.childName";
        
        try {
            
            childList = hibernateTemplate.find(query, new Object[]{homeId, status.toUpperCase()});
            System.out.println("---in fetchChidrenDTOInaHomeByStatus--- "+childList);
        } catch (Exception e) {
            System.out.println("---Error in fetchChidrenDTOInaHomeByStatus---");
            e.printStackTrace();
        }
        
        if(childList.isEmpty())
        {
        return Collections.EMPTY_LIST;
        }
        return childList;
    }

    public List<String> fetchDistinctValuesOfATableColumn(String tableName, String columnName) {
        List<String> distinctVals = null;
        
        String query = "Select "+
                       "distinct upper(x."+columnName+")"+                
                       " from "+tableName+" x "+
                       "where x."+columnName+" is not null "+
                       "AND x."+columnName+" !='' "+
                       "ORDER BY "+columnName;
        
        try {
            distinctVals = hibernateTemplate.find(query);
            System.out.println("---in fetchDistinctValuesOfATableColumn --- "+distinctVals);
        } catch (Exception e) {
            System.out.println("---in fetchDistinctValuesOfATableColumn --- "+distinctVals);
            e.printStackTrace();
        }
        
        if(distinctVals.isEmpty())
        {
        return Collections.EMPTY_LIST;
        }
        return distinctVals;
    }

    public List<String> fetchDistinctValuesOfATableColumnMatchingString(String tableName, String columnName, String pattern) {
         List<String> distinctVals = null;
        
        String query = "Select "+
                       "distinct upper(x."+columnName+")"+                
                       " from "+tableName+" x "+
                       "where x."+columnName+" is not null "+
                       "AND upper(x."+columnName+") LIKE '"+pattern+"%' "+
                       "AND x."+columnName+" !='' "+
                       "ORDER BY "+columnName;
        
        try {
            distinctVals = hibernateTemplate.find(query);
            System.out.println("---in fetchDistinctValuesOfATableColumnMatchingString --- "+distinctVals);
        } catch (Exception e) {
            System.out.println("---in fetchDistinctValuesOfATableColumnMatchingString --- "+distinctVals);
            e.printStackTrace();
        }
        
        if(distinctVals.isEmpty())
        {
        return Collections.EMPTY_LIST;
        }
        return distinctVals;
    }

    public Map<String, Integer> fetchChildMasterReports(String homeId, String parameter) {
        
        //inner class because i m lazy
       
                        
        String query = "SELECT new com.cdac.caseworker.DTO.ReportData(upper(c."+parameter+"),COUNT(*))"
                       +"FROM "
                       +"ChildMaster c "
                       +"WHERE "
                       +"c.homeId.homeId ='"+homeId+"' "
                       +"AND "
                       +"c.status='active' "
                       +"GROUP BY "
                       +"c."+parameter+" "
                       +"ORDER BY "
                       +"c."+parameter;
        
        String queryAll = "SELECT new com.cdac.caseworker.DTO.ReportData(upper(c."+parameter+"),COUNT(*))"
                       +"FROM "
                       +"ChildMaster c "
                       +"WHERE "
                       +"c.status='active' "
                       +"GROUP BY "
                       +"c."+parameter+" "
                       +"ORDER BY "
                       +"c."+parameter;
        
        
        Map reportMap = new HashMap();
        
        
        try {
            List temp = hibernateTemplate.find(homeId.equalsIgnoreCase("all")?queryAll:query);
            
            for (Iterator it = temp.iterator(); it.hasNext();) {
                ReportData object = (ReportData)it.next();
                reportMap.put(object.getKey(),object.getValue());            
               }           
            }
         catch (Exception e) {
         e.printStackTrace();
         reportMap = Collections.EMPTY_MAP;
        }
        return reportMap;
        
    }
    
    public Map<String, Integer> fetchChildMasterReportsForStatus(String homeId, String parameter) {
        
        
       
                        
        String query = "SELECT new com.cdac.caseworker.DTO.ReportData(upper(c."+parameter+"),COUNT(*))"
                       +"FROM "
                       +"ChildMaster c "
                       +"WHERE "
                       +"c.homeId.homeId ='"+homeId+"' "                      
                       +"GROUP BY "
                       +"c."+parameter+" "
                       +"ORDER BY "
                       +"c."+parameter;
        
        String queryAll = "SELECT new com.cdac.caseworker.DTO.ReportData(upper(c."+parameter+"),COUNT(*))"
                       +"FROM "
                       +"ChildMaster c "                                        
                       +"GROUP BY "
                       +"c."+parameter+" "
                       +"ORDER BY "
                       +"c."+parameter;
        
        
        
        Map reportMap = new HashMap();
        
        
        try {
            List temp = hibernateTemplate.find(homeId.equalsIgnoreCase("all")?queryAll:query);
            
            for (Iterator it = temp.iterator(); it.hasNext();) {
                ReportData object = (ReportData)it.next();
                reportMap.put(object.getKey(),object.getValue());            
               }           
            }
         catch (Exception e) {
         e.printStackTrace();
         reportMap = Collections.EMPTY_MAP;
        }
        return reportMap;
        
    }
    
    
     public Map<String, Integer> fetchChildMasterDataEntryReport() {
        
       
       
       //NEED TO PUT THE JOIN QUERY HERE                 
        String query = "SELECT new com.cdac.caseworker.DTO.ReportData( "
                       +"concat(h.homeName,'-',h.districtId.districtId),COUNT(c)) "
                       +"FROM "
                       +"HomeMaster h LEFT JOIN h.childMasterList c "
                       +"WHERE h.homeName IS NOT null "
                       +"AND "
                       +"SUBSTRING(h.homeId,-2) "
                       +"IN "
                       +"(28,22,1,18,24,20,34,44,33,23,17,29,41,37,42,39,35,43,32,40,38,46,47) "
                       +"GROUP BY "
                       +"h.homeId "
                       +"ORDER BY "
                       +"h.districtId.districtId";
        
        /*
         String query = "SELECT new com.cdac.caseworker.DTO.ReportData( "
                       +"concat(c.homeId.homeName,'-',c.homeId.districtId.districtId),COUNT(*)) "
                       +"FROM "
                       +"ChildMaster c "                                        
                       +"GROUP BY "
                       +"c.homeId.homeId "
                       +"ORDER BY "
                       +"c.homeId.districtId.districtId";
         */
        
        Map reportMap = new HashMap();
        
        
        try {
            List temp = hibernateTemplate.find(query);
            
            for (Iterator it = temp.iterator(); it.hasNext();) {
                ReportData object = (ReportData)it.next();
                reportMap.put(object.getKey(),(int)object.getValue());            
               }           
            }
         catch (Exception e) {
         e.printStackTrace();
         reportMap = Collections.EMPTY_MAP;
        }
        return reportMap;
        
    }
    
    public boolean saveCaseSir(CwcSir cwc_sir)
    {
      try 
      {
          System.out.println("save CaseSir dao"+cwc_sir);
        hibernateTemplate.save(cwc_sir);
        return true;
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return false;
      }
    }

    public boolean saveInterChAgain(CwcHop cwc_sir) {
         try 
      {
          System.out.println("save CaseSir dao"+cwc_sir);
        hibernateTemplate.save(cwc_sir);
        return true;
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return false;
      }
    }

    public boolean saveSoGiven(CwcSo cwc_sir) {
         try 
      {
          System.out.println("save CaseSir dao"+cwc_sir);
        hibernateTemplate.save(cwc_sir);
        return true;
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return false;
      }
    }

    public boolean savePendInq(CwcUppi cwc_sir) {
          try 
      {
          System.out.println("save CaseSir dao"+cwc_sir);
        hibernateTemplate.save(cwc_sir);
        return true;
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return false;
      }
    }

    @Override
    public List<FcChildTemp> fetchFcChildByStatus(String status) {
          try 
      {
          System.out.println("fetch fc status"+status);
         List<FcChildTemp> fcList = hibernateTemplate.findByNamedQueryAndNamedParam("FcChildTemp.findByStatus", "status", status);
        
        return fcList;
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return null;
      }
    }
    
    
}
