/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.caseworker.DAO;

import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.ChildSequence;
import com.cdac.usermanagement.ORM.CwcHop;
import com.cdac.usermanagement.ORM.CwcSo;
import com.cdac.usermanagement.ORM.CwcUppi;
import com.cdac.usermanagement.ORM.DischargeRegister;
import java.util.List;
import com.cdac.usermanagement.ORM.InterviewRegister;
import com.cdac.usermanagement.ORM.InterviewRegisterPK;
import com.cdac.usermanagement.ORM.CasehistoryPersonal;
import com.cdac.usermanagement.ORM.CasehistoryFamily;
import com.cdac.usermanagement.ORM.CasehistoryFamilyDetails;
import com.cdac.usermanagement.ORM.CasehistoryAdolescenceDetails;
import com.cdac.usermanagement.ORM.CasehistoryEmploymentDetails;
import com.cdac.usermanagement.ORM.CasehistoryPrioradmEducation;
import com.cdac.usermanagement.ORM.CasehistoryFamilyCrimeDetails;
import com.cdac.usermanagement.ORM.CasehistoryAfteradmEducation;
import com.cdac.usermanagement.ORM.CasehistorySocialhistoryPrioradm;
import com.cdac.usermanagement.ORM.ChildStatus;
import com.cdac.usermanagement.ORM.CwcMeetings;
import com.cdac.usermanagement.ORM.CwcMinutes;
import com.cdac.usermanagement.ORM.HomeMaster;
import java.util.Date;
import com.cdac.caseworker.DTO.CWCMeetingMinutesDTO;
import com.cdac.caseworker.DTO.CWCMinutesOverViewDTO;
import com.cdac.caseworker.DTO.ChildDTO;
import com.cdac.caseworker.DTO.StayingPeriodOfChildDTO;
import com.cdac.usermanagement.ORM.ChildDetailsPK;
import com.cdac.usermanagement.ORM.CwcSir;
import com.cdac.usermanagement.ORM.FcChildTemp;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.IcpPersonalDetails;
import com.cdac.usermanagement.ORM.IcpPostRelease;
import com.cdac.usermanagement.ORM.IcpPreRelease;
import java.util.Map;


/**
 *
 * @author NEELAVA
 */
public interface CaseWorkerDAO {

    public String save(ChildMaster childMaster);

    public int getNextChildNo();
    
    public ChildMaster getChild_by_id(String child_prof_id)throws Exception;

    public List<ChildMaster> fetchChildrenInAHome(String homeId);
    
   public List<ChildMaster> fetchChildrenInAHome_status(String homeId); 
    
  //  public List<ChildMaster> fetchTransChildrenInAHome(String homeId);
    
    public String updateChildMaster(ChildMaster childMaster);

    public String save(DischargeRegister dischargeRegister);

    public ChildMaster getExistingChild(String childProfileId);
    
    public ChildDetails getExistingChildDetails(String childProfileId);

    public List<ChildMaster> fetchTransferedChildList(String homeId);
    
    public String saveCasework(ChildDetails childDetails)throws Exception;
    
    public String saveInterviewRegister(InterviewRegister interviewRegister);
    
    public String saveCaseHistoryPersonal(CasehistoryPersonal casehistoryPersonal);
    
    public String saveCasehistoryChildHouseholdDetails(CasehistoryFamily casehistoryFamily);
    
    public String saveCasehistoryFamilyDetails(CasehistoryFamilyDetails casehistoryFamilyDetails);
    
    public String saveCasehistoryAdolscenceHistory(CasehistoryAdolescenceDetails casehistoryAdolescenceDetails);
    
    public String saveCasehistoryEmploymentDetails(CasehistoryEmploymentDetails casehistoryEmploymentDetails);
    
    public String saveCasehistoryPriorAdmEducationDetails(CasehistoryPrioradmEducation casehistoryPrioradmEducation);
    
    public String saveCasehistoryFamilyCrimeDetails(CasehistoryFamilyCrimeDetails casehistoryFamilyCrimeDetails);
    
    public String saveCasehistoryAfterAdmEducationDetails(CasehistoryAfteradmEducation casehistoryAfteradmEducation);
    
    public String saveCasehistorySocialHistoryDetails(CasehistorySocialhistoryPrioradm casehistorySocialhistoryPrioradm);
    
    public String saveChildStatus(ChildStatus childStatus);
    
    public List<InterviewRegister> getChildInterviewDetails(String chprofid);
    
    public int getCwcIdBasedOnUserIdAndStatus(String userId,String status);
    
    public String getDistrictidByCwcid(int cwcId);
    
    public List<HomeMaster> getHomesInAdistrict(String districtId);
    
    public int saveMeeting(CwcMeetings cwcMeetings);
    
    
     //Added by vinumol
    public List<CasehistoryPersonal> getChildHistory_by_id(String childProfileId);
    
    public List<CasehistoryFamily> getCasehistoryFamily(String childProfileId);

    public List<CasehistoryFamilyDetails> getCasehistoryFamilyDetails(String childProfileId);

    public List<CasehistoryFamilyCrimeDetails> getCasehistoryFamilyCrimeDetails(String childProfileId);

    public List<CasehistoryAdolescenceDetails> getCasehistoryAdolescenceDetails(String childProfileId);

    public List<CasehistoryEmploymentDetails> getCasehistoryEmploymentDetails(String childProfileId);

    public List<CasehistoryPrioradmEducation> getCasehistoryPrioradmEducationDetails(String childProfileId);

    public List<CasehistoryAfteradmEducation> getCasehistoryAfteradmEducationDetails(String childProfileId);

    public List<CasehistorySocialhistoryPrioradm> getCasehistorySocialPrioradm(String childProfileId);
 

    public List<ChildDetails> getChildDetails(String childProfileId);
    public List<HomeDetails> getHomeDetail(String homeId);
    //Ended by vinumol

    public String saveCWCMeetingsMinutes(CwcMinutes cwcMinutes);
    
     public List<Date> getCwcMinutesDates(String homeid,Date fromdate, Date todate);
     
     public List<CwcMinutes>getCWCMeetingMinutesDetails(String homeid,Date selectDate);
     
     public CwcMeetings getCwcMeetingDetails(int meetingId);

    public List<ChildMaster> getChildAdmissionDetails(String childProfileId);
    
    //Anupam added this on 8-2-2012 START
    public List<CWCMinutesOverViewDTO> getCwcMinutesOverViewDTOs(String homeid, Date fromdate, Date todate);  
    
    //Anupam added this on 8-2-2012 END  
    
    //Anupam added on 29-02-2012 START
    public List<ChildMaster> getChildBasedOnNameInAHome(String homeId,String childName);
    public List<ChildMaster> getChildBasedOnCwcNoInAHome(String homeId,String cwcJjbNo);
    public List<ChildMaster> getChildBasedOnCwcNoOrNameInAHome(String homeId,String cwcJjbNo,String childName);
    //Anupam added on 29-02-2012 END
    
    //anupam added on 02-03-2012 START
    public List<ChildMaster> populateAvailableCaseWorkInAHome(String homeId);
    public List<ChildMaster> populateOnlyInterviewedChildOfAHome(String homeId);
    
    //anupam added on 02-03-2012 END

    public List<ChildMaster> viewAdmisiionChild_by_homeid(Date fromdate, Date todate, String child_homeid);

    public List<ChildDetails> getCaseworkViewChildPID(String homeId);

    public List<InterviewRegister> getInterviewRegisterChildPID(String currentHomeId);

    public List<DischargeRegister> viewDischargeChild_by_homeid(Date fromdate, Date todate, String childmaster_homeid);

    public DischargeRegister viewDischargeChild_by_Id(String disreg_profid);

    public List<CasehistoryPersonal> getCaseHistoryChildPid(String currentHomeId);
    
    public ChildDetails getExistingChildDetailsBasedOnChildDetailsPK(ChildDetailsPK childDetailsPK);
    
    //anupam added on 12-07-2012 START
    /**
     * Returns the list of children who are present in the child home as on date
     * and exceeded the minimum period of stay.
     * 
     * @param homeId the homeId for which i want to see the report for
     * @param minimumPeriodOfStayInMonths the time span for which we want to calculate
     * 
     * @return a list of StayingPeriodOfChildDTO objects
     * 
     * We will decide the following factors
     * 1) Child must belong to the homeId passed in param.
     * 2) Child must be active.
     * 3) Child must have crossed the minimum period of stay(in months) passes in parameter.
     
     */
    public List<StayingPeriodOfChildDTO> getOverStayingChildren(String homeId,int minimumPeriodOfStayInMonths); 
    //anupam added on 12-07-2012 END
    
    //anupam added on 23-10-2012 START
    public void updateObject(Object object);
    //anupam added on 23-10-2012 END

    //added by suresh on 11-10-2012 start
    public boolean saveIcpPersonalDetails(IcpPersonalDetails icpPersonelDetails);

    public boolean saveIcpPreRelease(IcpPreRelease icpPreRelease);

    public boolean saveIcpPostRelease(IcpPostRelease icpPostRelease);

    public IcpPersonalDetails getIcpPersonelDetails(String childProfileId);

    public IcpPreRelease getIcpPreRelease(String childProfileId);

    public IcpPostRelease getIcpPostRelease(String childProfileId);
    //added by suresh on 11-10-2012 ends

    public HomeMaster getHomeMaster(String homeId);
    
    public Map<String, String> getHomeWithAddressInADistrict(String districtId);
    
    /*Integrating the view Admission report in child homes 2-1-2014*/
    public List<ChildDTO> fetchChildrenBasedOnName(String homeId,String name);
    public  List<ChildDTO> fetchChildrenBasedOnNature(String homeId, String nature);
    public  List<ChildDTO>  fetchChildrenBasedOn2Dates(String homeId, Date fromDate,Date toDate);
    public  List<ChildDTO>  fetchChildrenBasedOnCaste(String homeId, String childCaste);
    public  List<ChildDTO>  fetchChildrenBasedOnMonthAndYear(String homeId, int month,int year);
    public  int maxNumberEntryInAYear(String searchString);
    
    public List<ChildDTO> fetchChidrenDTOInaHomeByStatus(String homeId,String status);
    
    public List<String> fetchDistinctValuesOfATableColumn(String tableName,String columnName);
    
    public List<String> fetchDistinctValuesOfATableColumnMatchingString(String tableName,String columnName,String pattern);
    
    public Map<String, Integer> fetchChildMasterReports(String homeId, String parameter);
    
    public Map<String, Integer> fetchChildMasterReportsForStatus(String homeId, String parameter);
    
    public Map<String, Integer> fetchChildMasterDataEntryReport();
    
    public boolean saveCaseSir(CwcSir cwc_sir);

    public boolean saveInterChAgain(CwcHop cwc_sir);

    public boolean saveSoGiven(CwcSo cwc_sir);

    public boolean savePendInq(CwcUppi cwc_sir);

    public List<FcChildTemp> getfoundchildrenreportlist(String foundhomeId);

    public List<FcChildTemp> fetchFcChildByStatus(String status);
}
