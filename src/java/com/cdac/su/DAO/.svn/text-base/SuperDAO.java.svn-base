/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.su.DAO;
import com.cdac.su.DTO.ChildStatusDTO;
import java.util.List;

import com.cdac.exceptions.AppException;
import com.cdac.usermanagement.ORM.AdmMedicalRegister;
import com.cdac.usermanagement.ORM.CashBook;
import com.cdac.usermanagement.ORM.HtWtRegister;
import com.cdac.usermanagement.ORM.MedicalGeneralRegister;
import com.cdac.usermanagement.ORM.OpRegister;
import com.cdac.usermanagement.ORM.ReferralRegister;
import com.cdac.usermanagement.ORM.UserMaster;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.GuardingSecurityDuty;
import com.cdac.usermanagement.ORM.GuardingSecurityInfo;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.HomeMaster;
import java.util.Date;

/**
 *
 * @author trainee
 */
public interface SuperDAO {
    public List<ChildMaster> getChildInHome(String loggedInhome);

    public HomeMaster getHomeMater(String loggedInhome);

    public HomeDetails getHomeDetails(String homeId);
    
    public String saveHomeDetails(HomeDetails homeDetails);
    
    public GuardingSecurityInfo addProfile(GuardingSecurityInfo gasinfo);
    
    public List<GuardingSecurityInfo> getAllProfiles(String homeid);
    
    public boolean addDuty(GuardingSecurityDuty gadinfo);
    
    public GuardingSecurityInfo populateSelectProfile(String str);
    
    public List<GuardingSecurityDuty> populateSelectDuty(String profile_id,Date fromDate,Date toDate);
    
    public List<GuardingSecurityDuty> popDatedProfile(String homeId,Date dutyDate);
    
    public boolean addObservation(Date dutyDate,String profId,String obs);
    
    public boolean updateObs(GuardingSecurityDuty gsd);

    public GuardingSecurityDuty popDutyProfile(String str, Date dutyDate);

    public ChildStatusDTO getChildStatus_by_date(String chomeId, Date report_fromdate1, Date report_todate1);

     public String saveCashTrans(CashBook cb);

    public long getCash(HomeMaster hm, String string);

    public List<CashBook> getCashTrByMonth(int genMonth, int genYear);

    public int getCurrentCash();

    public long getOpenBalFor(int chMonth, int chYear);
}
