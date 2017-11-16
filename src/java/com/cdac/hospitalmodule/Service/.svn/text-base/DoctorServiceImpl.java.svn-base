/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.hospitalmodule.Service;

import com.cdac.common.util.StringToDate;
import com.cdac.hospitalmodule.DAO.DoctorDAO;
import com.cdac.exceptions.AppException;
import com.cdac.hospitalmodule.DTO.WeightHeightRegisterDTO;
import com.cdac.usermanagement.ORM.AdmMedicalRegister;
import com.cdac.usermanagement.ORM.HtWtRegister;
import com.cdac.usermanagement.ORM.MedicalGeneralRegister;
import com.cdac.usermanagement.ORM.OpRegister;
import com.cdac.usermanagement.ORM.ReferralRegister;
import com.cdac.usermanagement.ORM.UserMaster;
import com.cdac.usermanagement.ORM.ChildMaster;

import com.cdac.usermanagement.ORM.HtWtRegisterPK;
import java.math.BigDecimal;
import java.util.ArrayList;
//import java.util.Hashtable;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.dao.DuplicateKeyException;
//import java.util.StringTokenizer;
/**
 *
 * @author trainee
 */
public class DoctorServiceImpl implements DoctorService{

    private DoctorDAO doctorDAO;

    public DoctorDAO getDoctorDAO() {
        return doctorDAO;
    }

    public void setDoctorDAO(DoctorDAO doctorDAO) {
        this.doctorDAO = doctorDAO;
    }

    public boolean addReferralRegister(ReferralRegister refe_reg) throws AppException
    {
        boolean success = false;

        try {
            doctorDAO.addReferralRegister(refe_reg);
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public boolean addMedicalGeneralRegister(MedicalGeneralRegister mgen_reg) throws AppException
    {
        boolean success = false;

        try {
            doctorDAO.addMedicalGeneralRegister(mgen_reg);
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public String addHtWtRegister(HtWtRegister wh_reg) throws AppException
    {
       String success = "false";

        try {
            success=doctorDAO.addHTWTRegister(wh_reg);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public boolean addOpRegister(OpRegister op_reg) throws AppException
    {
        boolean success = false;

        try {
            doctorDAO.addOpRegister(op_reg);
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public boolean addAdmMedicalRegister(AdmMedicalRegister adm_med_reg)throws AppException
    {
        boolean success = false;

        try {
            doctorDAO.addAdmMedicalRegister(adm_med_reg);
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public List<UserMaster> viewUserMaster() throws AppException
    {
        List<UserMaster> prof_id;
        prof_id=doctorDAO.viewUserMaster();
        return prof_id;
    }

    public UserMaster getUser_by_id(String userid) throws AppException
    {
        UserMaster usermaster=new UserMaster();
        try {
            usermaster=doctorDAO.getUser_by_id(userid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usermaster;
    }

    public List<ChildMaster> viewChildMaster() throws AppException
    {
        List<ChildMaster> prof_id=null;
        try
        {
        prof_id=doctorDAO.viewChildMaster();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return prof_id;
    }

    public ChildMaster getChild_by_id(String childprofid) throws AppException
    {
        ChildMaster childmaster=new ChildMaster();
        try {
            childmaster=doctorDAO.getChild_by_id(childprofid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return childmaster;
    }
    public List<OpRegister> viewOpRegister()throws AppException
    {
        List<OpRegister> op_reg_list=null;
        try
        {
        op_reg_list=doctorDAO.viewOpRegister();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return op_reg_list;
    }

    public List<ChildMaster> viewChild_by_homeid(String child_by_homeid)throws AppException
    {
        List<ChildMaster> cm_list=null;
        try
        {
        cm_list=doctorDAO.viewChild_by_homeid(child_by_homeid);
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return cm_list;
    }

    public List<ChildMaster> viewChild_by_admregister(String admreg_homeid)throws AppException
    {
        List<ChildMaster> cm_admreg=null;
        try
        {
        cm_admreg=doctorDAO.viewChild_by_admregister(admreg_homeid);
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return cm_admreg;
    }

        public AdmMedicalRegister getAdmReg_by_id(String admreg_profid)throws AppException
        {
            AdmMedicalRegister admreg_childprofile=new AdmMedicalRegister();
            try {
                admreg_childprofile=doctorDAO.getAdmReg_by_id(admreg_profid);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return admreg_childprofile;
        }

       public List<WeightHeightRegisterDTO> viewHtWt_by_date(Date fromdate, Date todate, String viewhwreg_homeid)throws AppException
     {
            List<WeightHeightRegisterDTO> htwtreg=null;
            try
            {
            htwtreg=doctorDAO.viewHtWt_by_date(fromdate, todate, viewhwreg_homeid);
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            return htwtreg;
     }



    public List<MedicalGeneralRegister> viewMgen_by_date(Date mgen_fromdate, Date mgen_todate, String viewmgen_homeid)throws AppException
     {
            List<MedicalGeneralRegister> mgenreg=null;
            try
            {
            mgenreg=doctorDAO.viewMgen_by_date(mgen_fromdate, mgen_todate, viewmgen_homeid);
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            return mgenreg;
     }
    public List<OpRegister> viewOP_by_date(Date op_fromdate, Date op_todate, String viewop_homeid)throws AppException
    {
        List opreg=null;
            try
            {
            opreg=doctorDAO.viewOP_by_date(op_fromdate, op_todate, viewop_homeid);
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            return opreg;
    }

    public OpRegister getOPReg_by_id(String opreg_profid, Date opreg_date)throws AppException
    {
        OpRegister opreg_childprofile=new OpRegister();
            try {
                opreg_childprofile=doctorDAO.getOPReg_by_id(opreg_profid, opreg_date);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return opreg_childprofile;
    }

    public List<ReferralRegister> viewRefe_by_date(Date refe_fromdate, Date refe_todate, String viewrefe_homeid)throws AppException
    {
        List refereg=null;
            try
            {
            refereg=doctorDAO.viewRefe_by_date(refe_fromdate, refe_todate, viewrefe_homeid);
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            return refereg;
    }

    public ReferralRegister getRefeReg_by_id(String refereg_profid, Date refereg_date)throws AppException
    {
        ReferralRegister refereg_childprofile=new ReferralRegister();
            try {
                refereg_childprofile=doctorDAO.getRefeReg_by_id(refereg_profid, refereg_date);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return refereg_childprofile;
    }
    public boolean updateAdmMedicalRegister(AdmMedicalRegister update_adm_reg)throws AppException
    {
        boolean success = false;

        try {
            doctorDAO.updateAdmMedicalRegister(update_adm_reg);
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }
    
    
    
    /*-----Anuapm added this on 09-01-2012-------START*/
    
    /*-----Anuapm added this on 09-01-2012-------END*/

    public String processAndSaveHeightWeight(String id, int year, int[] days, double[] heights, double[] weights, String[] remarks) {
        List<HtWtRegister> htWtList = new ArrayList<HtWtRegister>();
    // iterate over year
        System.out.println("-----------Values recieved from action ---------");
        for(int i=0;i<12;i++)
        {
            if(days[i]!= -1 && heights[i]!=-1 && weights[i]!=-1){
                    System.out.println("RECORD NO -"+i+"id ="+id+" year="+year+" day="+days[i]+" height= "+heights[i]+" weight= "+weights[i]+" remarks="+remarks[i]);

                    int month = i+1;

                    Date examinDate = StringToDate.getStringToDate(days[i]+"/"+month+"/"+year);

                    HtWtRegisterPK hwrPK = new HtWtRegisterPK(id, examinDate);
                    
                    HtWtRegister hwr = new HtWtRegister(hwrPK);
                    
                    hwr.setHtChild(new BigDecimal(heights[i]));
                    hwr.setWtChild(new BigDecimal(weights[i]));
                    hwr.setRemarks(remarks[i]);
                 
                    htWtList.add(hwr);
                }    
        
        
        }
        
        return doctorDAO.saveHtWtList(htWtList);
    }

    public List<AdmMedicalRegister> viewDiseaseChild_by_date(Date viewChildDisease_fromDate, Date viewChildDisease_toDate, String diseaselist_select, String view_childisease_homeid) {
      
       System.out.println("Vinumol's serviceimpl");
        List <AdmMedicalRegister> diseaseList=new ArrayList();
        diseaseList=doctorDAO.viewDiseaseChild_by_date(viewChildDisease_fromDate,viewChildDisease_toDate,diseaselist_select,view_childisease_homeid);
    return diseaseList;
    
    }

    public Map<String, Integer> getConsolidatedDiseaseReport() {
        
        return doctorDAO.getConsolidatedDiseaseReport();
        
    }
    
    
    
}
