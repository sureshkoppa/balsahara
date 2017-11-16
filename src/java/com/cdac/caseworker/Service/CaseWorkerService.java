/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.caseworker.Service;

import com.cdac.caseworker.DTO.TransferDischargeDTO;
import com.cdac.caseworker.DTO.AdmissiontoCHSHDTO;
import com.cdac.caseworker.DTO.caseWorkDTO;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.DischargeRegister;
import java.util.List;
import com.cdac.usermanagement.ORM.InterviewRegister;
import com.cdac.usermanagement.ORM.InterviewRegisterPK;
import com.cdac.usermanagement.ORM.CasehistoryPersonal;
import com.cdac.usermanagement.ORM.CasehistoryPersonalPK;
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
import com.cdac.caseworker.DTO.caseHistoryDTO;
import com.cdac.caseworker.DTO.icpChildDTO;
import com.cdac.usermanagement.ORM.FcChildTemp;
import com.cdac.usermanagement.ORM.IcpPersonalDetails;
import com.cdac.usermanagement.ORM.IcpPostRelease;
import com.cdac.usermanagement.ORM.IcpPreRelease;
import java.util.Map;

/**
 *
 * @author NEELAVA
 */
public interface CaseWorkerService {

    public String addChild(ChildMaster childMaster,String homeId,String yearString);

    public List<ChildMaster> getChildrenList(String homeId);
    
     public List<ChildMaster>  getChildrenList_status(String homeId);
    
    public List<ChildMaster> getTransChildrenList(String homeId);

    public String dischargeTransferService(String currentHomeId,TransferDischargeDTO transferDischargeDTO);

    public List<ChildMaster> getTransferedChildListForThisHome(String currentHomeId);

    public ChildMaster getTransferredChildDetails(String childProfileId);
    public ChildMaster getChild_by_id(String childprofid) throws Exception;
    public String saveCasework(ChildDetails childDetails) throws Exception;   
    //public List<ChildDetails> getTransChilddetails(String homeid);
    public ChildDetails getExistingChildDetails(String childProfileId);
   // public String saveCHSHAdmission(String currentHomeId,AdmissiontoCHSHDTO admissiontoCHSHDTO);
    public String addChildtoCHSH(ChildMaster childMaster,String homeId,AdmissiontoCHSHDTO admissiontoCHSHDTO );
    public String saveInterViewDetails(InterviewRegister interviewRegister);
    public String saveCaseHistoryPersonal(CasehistoryPersonal casehistoryPersonal);
    public String saveCasehistoryChildhousehold(CasehistoryFamily casehistoryFamily);
    public String savecasehistoryFamilyDetails(CasehistoryFamilyDetails casehistoryFamilyDetails);
    public String savecasehistoryAdolescenceHistory(CasehistoryAdolescenceDetails casehistoryAdolescenceDetails);
    public String savecasehistoryEmploymentDetails(CasehistoryEmploymentDetails casehistoryEmploymentDetails);
    public String savecasehistoryPriorAdmEducationDetails(CasehistoryPrioradmEducation casehistoryPrioradmEducation);
    public String savecasehistoryFamilyCrimeDetails(CasehistoryFamilyCrimeDetails casehistoryFamilyCrimeDetails);
    public String savecasehistoryAfterAdmEducationDetails(CasehistoryAfteradmEducation casehistoryAfteradmEducation);
    public String savecasehistorySocialHistoryDetails(CasehistorySocialhistoryPrioradm casehistorySocialhistoryPrioradm);
      
    //Added by vinumol
    public List<caseHistoryDTO> getChildHistoryFromDto_by_id(String childProfileId);
   
    public List<CasehistoryPersonal> getChildHistory_by_id(String childProfileId);


    public List<caseWorkDTO> getCaseworkFromDto(String homeId, String childProfileId);
//ended by vinumol
    
    public String saveChildStatus(ChildStatus childStatus, String chiprofid, String userid); // for superintendent child save
    
    public List<InterviewRegister> getChildInterviewDetails(String chprofid);
    
    public List<HomeMaster> getHomesOfACwcDist(String userId);
    
    public int saveMeeting(CwcMeetings cwcMeetings);
    
    public int getCwcIdBasedOnUserIdAndStatus(String userId,String status);
    
    public String saveCWCMeetingsMinutes(CwcMinutes cwcMinutes,String chprofid,String userid);
    
    public List<Date> getCwcMinutesDates(String homeid,Date fromdate, Date todate);
    
    public List<CwcMinutes>getCWCMeetingMinutesDetails(String homeid,Date selectdate);
    
    public CwcMeetings getCwcMeetingDetails(int meetingId);

    public List<ChildMaster> getChildAdmissionDetails(String childProfileId);
    
    //anupam added this on 8-2-2012 START
    public List<CWCMinutesOverViewDTO> getCwcMinutesOverViewDTOs(String homeid, Date fromdate, Date todate);
    //anupam added this on 8-2-2012 END
    
     //Anupam added on 29-02-2012 START
    public List<ChildMaster> getChildBasedOnNameInAHome(String homeId,String childName);
    public List<ChildMaster> getChildBasedOnCwcNoInAHome(String homeId,String cwcJjbNo);
    public List<ChildMaster> getChildBasedOnCwcNoOrNameInAHome(String homeId,String cwcJjbNo,String childName);
    //Anupam added on 29-02-2012 END
    
    //anupam added on 02-03-2012 START
    public List<ChildMaster> populateAvailableCaseWorkInAHome(String homeId);
    public List<ChildMaster> populateOnlyInterviewedChildOfAHome(String homeId);
    //anupam added on 02-03-2012 END
//Added by vinumol on 08-03-2012
    public List<ChildMaster> viewAdmisiionChild_by_homeid(Date fromdate, Date todate, String child_homeid);

    public List<ChildDetails> getCaseworkViewChildPID(String homeId);

    public List<InterviewRegister> getInterviewRegisterChildPID(String currentHomeId);

    public List<DischargeRegister> viewDischargeChild_by_homeid(Date fromdate, Date todate, String childmaster_homeid);

    public DischargeRegister viewDischargeChild_by_Id(String disreg_profid);

    public List<CasehistoryPersonal> getCaseHistoryChildPid(String currentHomeId);
    
//Added by vinumol on 08-03-2012
    
    public ChildDetails getExistingChildDetailsBasedOnProfileIdAndEntryDate(String childProfileIdAndDateOfCaseWork);
    
    
    //added by anupam on 12-07-2012 START
    public List<StayingPeriodOfChildDTO> getOverStayingChildren(String homeId,int minimumPeriodOfStayInMonths); 
    //added by anupam on 12-07-2012 START
    
    //added by anupam on 23-10-2012 START
    public String saveChangedChildDetails(Map parameterMap);
    //added by anupam on 23-10-2012 END

    //added by suresh on 11-10-2012 start
    public boolean saveIcpPersonalDetails(IcpPersonalDetails icpPersonelDetails);

    public boolean saveIcpPreRelease(IcpPreRelease icpPreRelease);

    public boolean saveIcpPostRelease(IcpPostRelease icpPostRelease);
    
    public icpChildDTO getICPFromDto(String homeId,String childProfileId);
    //added by suresh on 11-10-2012 ends
    
    public Map<String,String> getOtherHomesInADistrict(String districtId,String homeId);
    
    /*integrating admission view report 2-1-2014*/
    public List<ChildDTO> getChildDTOListByName(String homeId,String name);
    public  List<ChildDTO>  getChildDTOListByNature(String homeId, String childNature);
    public  List<ChildDTO>  getChildDTOListBy2Dates(String homeId, String fromDate,String toDate);
    public  List<ChildDTO>  getChildDTOListByCaste(String homeId, String childCaste);
    public  List<ChildDTO>  getChildDTOListByMonthAndYear(String homeId, int month,int year);
    
    public List<ChildDTO> getChildDTOListByHomeAndStatus(String homeId,String status);
    
    public String addChildtoCHSH_NEW(ChildMaster childMaster, String homeId, AdmissiontoCHSHDTO admissiontoCHSHDTO);
    
    public List<String> getDistinctValues(String columnName);
    
    public List<String> getDistinctValuesStartingWithPattern(String columnName,String pattern);
    
     public Map<String,Integer> fetchChildMasterReports(String homeId,String parameter);

     public String saveCallFDpo(int meetingId,String sirDay, String sirAge, String sirFat, String sirFir, String sirName, String sirPl, String sirPs, String sirRDt, String sirSec, String sirYr, String sirthDt);

    public String InterChAgain(int meeting_id,String cipiDay, String cipiYear, String cName, String cpFat, String cAge, String cVil, String cpDD, String cpPs, String cpName, String cpPer, String cpHome, String cpNd, String cpDay, String cpMon, String cpYr);

    public String soGiven(int meetingId, String soDDNo, String soBank, String soYear, String soPS, String soName, String soCareName, String soCareAddr, String soSaidPer);
   
     public String pendInq(int meeting_id, String pName, String pHouse, String pStreet, String pVilTwn, String pDis, String pState, String pChild, String pAge); 

    public List<FcChildTemp> getfoundchildrenreportlist(String foundhomeId);

    public List<FcChildTemp> getfoundchildrenreportStatus(String interviewagain);
    
}
