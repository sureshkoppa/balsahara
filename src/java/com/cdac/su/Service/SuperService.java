/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.su.Service;

import com.cdac.exceptions.AppException;
import com.cdac.su.DTO.CashDTO;
import com.cdac.su.DTO.ChildStatusDTO;
import com.cdac.usermanagement.ORM.AdmMedicalRegister;
import com.cdac.usermanagement.ORM.HtWtRegister;
import com.cdac.usermanagement.ORM.MedicalGeneralRegister;
import com.cdac.usermanagement.ORM.OpRegister;
import com.cdac.usermanagement.ORM.ReferralRegister;
import com.cdac.usermanagement.ORM.UserMaster;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.HomeDetails;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import com.cdac.su.DTO.GASDutyDTO;
import com.cdac.su.DTO.GASProfileDTO;
import com.cdac.su.DTO.GenLedger;
import com.cdac.usermanagement.ORM.GuardingSecurityInfo;
import java.util.Map;
/**
 *
 * @author trainee
 */
public interface SuperService {

    public HomeDetails getHomeDetails(String homeId);
    
    public String saveHomeDetails(HomeDetails homeDetails);
   
    public Integer addProfile(GASProfileDTO gpdto,String homeid,String userid);
    
    public boolean addDuty(GASDutyDTO gddto,String userid);
    
    public List<GuardingSecurityInfo> populateAllProfile(String homeid);
    
    public GASProfileDTO populateSelectProfile(String str);
    
    public boolean modifyProfile(GASProfileDTO gpdto,String userId);
    
    public boolean inActivateProfile(String str);
    
    public List<GASDutyDTO> selectDutyDetails(String profileId,Date fromDate,Date toDate); 
    
    public List<GASDutyDTO> populateDatedProfile(String homeId,Date dutyDate);
    
    public  boolean  addObservation(Date dutyDate,List<String> profileList,Map<String,String> objMap);
    public Map<Integer,Integer> getAgewiseDetails(String loggedInhome);

    public Map<String,String> getHomeAddress(String loggedInhome);

    public List<ChildMaster> getChildsHome_Age(String loggedInhome,int childAge_report);

    public ChildStatusDTO getChildStatus_by_date(String chomeId, Date report_fromdate1, Date report_todate1);

    public boolean saveCashTrans(String csh_date, String csh_amt, String csh_part, String csh_trans, String csh_rptNo, String csh_rptFrom, String csh_pmtNo, String csh_paidTo,String homeid);

    public long showAvailCash(String homeId);

    public List<GenLedger> getGenLedgeList(String gl_month, String gl_year);

    public CashDTO selCashBookFor(String ch_month, String ch_year);
}
