/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.hospitalmodule.DAO;
import java.util.List;

import com.cdac.exceptions.AppException;
import com.cdac.hospitalmodule.DTO.WeightHeightRegisterDTO;
import com.cdac.usermanagement.ORM.AdmMedicalRegister;
import com.cdac.usermanagement.ORM.HtWtRegister;
import com.cdac.usermanagement.ORM.MedicalGeneralRegister;
import com.cdac.usermanagement.ORM.OpRegister;
import com.cdac.usermanagement.ORM.ReferralRegister;
import com.cdac.usermanagement.ORM.UserMaster;
import com.cdac.usermanagement.ORM.ChildMaster;
import java.util.Date;
import java.util.Map;

/**
 *
 * @author trainee
 */
public interface DoctorDAO {

    public boolean addReferralRegister(ReferralRegister refe_reg)throws AppException;

    public boolean addMedicalGeneralRegister(MedicalGeneralRegister mgen_reg)throws AppException;

    public String addHTWTRegister(HtWtRegister ht_wt_reg)throws AppException;

    public boolean addAdmMedicalRegister(AdmMedicalRegister adm_med_reg)throws AppException;

    public boolean addOpRegister(OpRegister op_reg)throws AppException;

    public List<OpRegister> viewOpRegister()throws AppException;

    public List<ReferralRegister> viewReferralRegister()throws AppException;

    public List<UserMaster> viewUserMaster()throws AppException;

    public UserMaster getUser_by_id(String user_id)throws AppException;

    public List<ChildMaster> viewChildMaster()throws AppException;

    public ChildMaster getChild_by_id(String child_prof_id)throws AppException;

    public List<ChildMaster> viewChild_by_homeid(String child_by_homeid)throws AppException;

    public List<ChildMaster> viewChild_by_admregister(String admreg_homeid)throws AppException;

    public AdmMedicalRegister getAdmReg_by_id(String admreg_profid)throws AppException;

    public List<WeightHeightRegisterDTO> viewHtWt_by_date(Date fromdate, Date todate, String viewhwreg_homeid)throws AppException;

    public List<MedicalGeneralRegister> viewMgen_by_date(Date mgen_fromdate, Date mgen_todate, String viewmgen_homeid)throws AppException;

    public List<OpRegister> viewOP_by_date(Date op_fromdate, Date op_todate, String viewop_homeid)throws AppException;

    public OpRegister getOPReg_by_id(String opreg_profid, Date opreg_date)throws AppException;

    public List<ReferralRegister> viewRefe_by_date(Date refe_fromdate, Date refe_todate, String viewrefe_homeid)throws AppException;

    public ReferralRegister getRefeReg_by_id(String refereg_profid, Date refereg_date)throws AppException;

    public boolean updateAdmMedicalRegister(AdmMedicalRegister update_adm_reg)throws AppException;
    
    public String saveHtWtList(List<HtWtRegister> hwList);

    public List<AdmMedicalRegister> viewDiseaseChild_by_date(Date viewChildDisease_fromDate, Date viewChildDisease_toDate, String diseaselist_select, String view_childisease_homeid);

    public Map<String,Integer> getConsolidatedDiseaseReport();
}
