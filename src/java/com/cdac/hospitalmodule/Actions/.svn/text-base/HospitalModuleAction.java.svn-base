/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.hospitalmodule.Actions;

import com.cdac.common.util.StringToDate;
import com.cdac.hospitalmodule.Service.DoctorService;
import com.cdac.exceptions.AppException;
import com.cdac.hospitalmodule.DTO.WeightHeightRegisterDTO;
import com.cdac.usermanagement.ORM.HtWtRegister;
import com.cdac.usermanagement.ORM.HtWtRegisterPK;
import com.cdac.usermanagement.ORM.ReferralRegister;
import com.cdac.usermanagement.ORM.MedicalGeneralRegister;
import com.cdac.usermanagement.ORM.MedicalGeneralRegisterPK;
import com.cdac.usermanagement.ORM.ReferralRegisterPK;
import com.cdac.usermanagement.ORM.OpRegister;
import com.cdac.usermanagement.ORM.OpRegisterPK;
import com.cdac.usermanagement.ORM.AdmMedicalRegister;
import com.cdac.usermanagement.ORM.UserMaster;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer; 
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.dao.DuplicateKeyException;
/**
 *
 * @author trainee
 */
public class HospitalModuleAction extends ActionSupport implements ModelDriven,ServletRequestAware,ServletResponseAware,SessionAware{

    /***************Variables***********************/

    //----------Common for all methods
     private HttpServletRequest request;
     private HttpServletResponse response;
     private Map session;
     //spring DI
     private DoctorService doctorService;
    // private Logger log=Logger.getLogger(HospitalModuleAction.class);

     //for adding Referral Register
     private ReferralRegister refe_reg=new ReferralRegister();
     private ReferralRegisterPK refe_regpk=new ReferralRegisterPK();
     private String refe_reg_profile_id;
     private Date referralDate;
     private Date refe_reg_admitdate;
     private Date refe_reg_dischargedate;
     //for adding Medical General Register
     private MedicalGeneralRegister mgen_reg=new MedicalGeneralRegister();
     private MedicalGeneralRegisterPK mgen_regpk=new MedicalGeneralRegisterPK();
     //for modal driven
     //session = ActionContext.getContext().getSession();
     //session.put("loggedin","true");
     private String form_name;

     //for Medical General Register
     private Date date;
     //for Height Weight Register
     private Date wh_reg_date;
     private String[] wh_reg_profile_id;
     private String[] htChild;
     private String[] wtChild;
     private String[] remarks;
     private String[] childComplaints;
     private ArrayList<AdmMedicalRegister> data = new ArrayList<AdmMedicalRegister>();
     private Map<String,Integer> diseaseMap;

    public Map<String, Integer> getDiseaseMap() {
        return diseaseMap;
    }

    public void setDiseaseMap(Map<String, Integer> diseaseMap) {
        this.diseaseMap = diseaseMap;
    }
     
     

    public String[] getChildComplaints() {
        return childComplaints;
    }

    public void setChildComplaints(String[] childComplaints) {
        this.childComplaints = childComplaints;
    }
     private  List<WeightHeightRegisterDTO> htwtlist;
     //for adding OP Register
     private OpRegister op_reg=new OpRegister();
     private OpRegisterPK op_regpk=new OpRegisterPK();
     private String op_reg_profile_id;
     private Date op_reg_date;
     //for adding into referral register in OP form
     private String op_reg_hosp;
     private String op_reg_reason;
     private Date op_reg_admit_date;
     private String op_reg_treated_by;
     private String op_reg_treatment_given;
     private Date op_reg_discharge_date;
     private String op_reg_remarks;
     //for adding Admission Medical Register
     private AdmMedicalRegister adm_reg=new AdmMedicalRegister();
     private String[] localexam=new String[0];
     private Date lmp_temp;
     private String adm_reg_gender;
     //for setting a parameter testing
     private String testing;
     //for Fetch_profileid
     private List<UserMaster> example_profid;
     private List<ChildMaster> child_profid_list;
     private String adm_reg_profile_id;
     private String admreg_profid;

   
     private UserMaster profile_det;
     private ChildMaster child_det;
     //for testing database
     private List<OpRegister> database_opreg;
     //for viewing Admission Medical Register
     private String viewregisters;
     private List<ChildMaster> admreg_child_profid;
     private AdmMedicalRegister admreg_view=new AdmMedicalRegister();
     private String admreg_sel_profid;
     private String view_admreg_gender;
     //for view Height Weight Register
     private Date htwt_fromdate;
     private Date htwt_todate;
     private List<WeightHeightRegisterDTO> htwtreg_view;
     //for view Medical General Register
     private Date mgen_fromdate;
     private Date mgen_todate;
     private List<MedicalGeneralRegister> mgenreg_view;
     //for view OP Register
     private Date op_fromdate;
     private Date op_todate;
     private List<OpRegister> opreg_viewprofiles;
     private List <AdmMedicalRegister> viewdisease_viewprofiles;
     private Date opreg_sel_date;
     private String opreg_sel_profid;
     private OpRegister opreg_view=new OpRegister();
     //for view Referral Register
     private Date refe_fromdate;
     private Date refe_todate;
     private List<ReferralRegister> refereg_viewprofiles;
     private Date refereg_sel_date;
     private String refereg_sel_profid;
     private ReferralRegister refereg_view=new ReferralRegister();
     //for update admission book register
     private List<String> admreg_locexamval=new ArrayList<String>();
     private List<String> diseaselist =new ArrayList<String>();
 private String viewChildDisease_fromDate;  private String viewChildDisease_toDate;
 private String diseaselist_select;

    public String getDiseaselist_select() {
        return diseaselist_select;
    }

    public void setDiseaselist_select(String diseaselist_select) {
        this.diseaselist_select = diseaselist_select;
    }

    public String getViewChildDisease_fromDate() {
        return viewChildDisease_fromDate;
    }

    public void setViewChildDisease_fromDate(String viewChildDisease_fromDate) {
        this.viewChildDisease_fromDate = viewChildDisease_fromDate;
    }

    public String getViewChildDisease_toDate() {
        return viewChildDisease_toDate;
    }

    public void setViewChildDisease_toDate(String viewChildDisease_toDate) {
        this.viewChildDisease_toDate = viewChildDisease_toDate;
    }
    public List<String> getDiseaselist() {
        return diseaselist;
    }

    public void setDiseaselist(List<String> diseaselist) {
        this.diseaselist = diseaselist;
    }
     
      public String getAdmreg_profid() {
        return admreg_profid;
    }

    public void setAdmreg_profid(String admreg_profid) {
        this.admreg_profid = admreg_profid;
    }

    public List<AdmMedicalRegister> getViewdisease_viewprofiles() {
        return viewdisease_viewprofiles;
    }

    public void setViewdisease_viewprofiles(List<AdmMedicalRegister> viewdisease_viewprofiles) {
        this.viewdisease_viewprofiles = viewdisease_viewprofiles;
    }
     /*-----Anupam added on 09-01-2012-------START--*/
     
     private String wh_reg_profile_id_year;
     private int wh_reg_year;
     private int days_year[];
     private double htChild_year[];
     private double wtChild_year[];
     private String remarks_year[];
     private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
     
     

    public int[] getDays_year() {
        return days_year;
    }

    public void setDays_year(int[] days_year) {
        this.days_year = days_year;
    }

    public double[] getHtChild_year() {
        return htChild_year;
    }

    public void setHtChild_year(double[] htChild_year) {
        this.htChild_year = htChild_year;
    }

    public String[] getRemarks_year() {
        return remarks_year;
    }

    public void setRemarks_year(String[] remarks_year) {
        this.remarks_year = remarks_year;
    }

    public String getWh_reg_profile_id_year() {
        return wh_reg_profile_id_year;
    }

    public void setWh_reg_profile_id_year(String wh_reg_profile_id_year) {
        this.wh_reg_profile_id_year = wh_reg_profile_id_year;
    }

    public int getWh_reg_year() {
        return wh_reg_year;
    }

    public void setWh_reg_year(int wh_reg_year) {
        this.wh_reg_year = wh_reg_year;
    }

    public double[] getWtChild_year() {
        return wtChild_year;
    }

    public void setWtChild_year(double[] wtChild_year) {
        this.wtChild_year = wtChild_year;
    }
     
     
     
     
     
     
     /*-----Anupam added on 09-01-2012-------END--*/

    public Date getRefe_reg_admitdate() {
        return refe_reg_admitdate;
    }

    public void setRefe_reg_admitdate(String refe_reg_admitdate) {
        if(refe_reg_admitdate == null ? "" == null : refe_reg_admitdate.equals(""))
        {
           this.refe_reg_admitdate=null;
        }
        else
        {
            DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
            try
            {
                this.refe_reg_admitdate = dfopreg.parse(refe_reg_admitdate);
            }
            catch(ParseException pe)
            {
                pe.printStackTrace();
            }
        }
    }

    public Date getRefe_reg_dischargedate() {
        return refe_reg_dischargedate;
    }

    public void setRefe_reg_dischargedate(String refe_reg_dischargedate) {
        if(refe_reg_dischargedate == null ? "" == null : refe_reg_dischargedate.equals(""))
        {
           this.refe_reg_dischargedate=null;
        }
        else
        {
            DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
            try
            {
                this.refe_reg_dischargedate = dfopreg.parse(refe_reg_dischargedate);
            }
            catch(ParseException pe)
            {
                pe.printStackTrace();
            }
        }
    }

    public List<String> getAdmreg_locexamval() {
        return admreg_locexamval;
    }

    public void setAdmreg_locexamval(List<String> admreg_locexamval) {
        this.admreg_locexamval = admreg_locexamval;
    }

    public String getAdm_reg_gender() {
        return adm_reg_gender;
    }

    public void setAdm_reg_gender(String adm_reg_gender) {
        this.adm_reg_gender = adm_reg_gender;
    }

    public String getView_admreg_gender() {
        return view_admreg_gender;
    }

    public void setView_admreg_gender(String view_admreg_gender) {
        this.view_admreg_gender = view_admreg_gender;
    }
       
    public Date getLmp_temp() {
        return lmp_temp;
    }

    public void setLmp_temp(String lmp_temp) {
        if(lmp_temp == null ? "" == null : lmp_temp.equals(""))
        {
           this.lmp_temp=null;
        }
        else
        {
            DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
            try
            {
                this.lmp_temp = dfopreg.parse(lmp_temp);
            }
            catch(ParseException pe)
            {
                pe.printStackTrace();
            }
        }
    }

    public String[] getLocalexam() {
        return localexam;
    }

    public void setLocalexam(String[] localexam) {
        this.localexam = localexam;
    }

    public Date getRefereg_sel_date() {
        return refereg_sel_date;
    }

    public void setRefereg_sel_date(Date refereg_sel_date) {
        this.refereg_sel_date = refereg_sel_date;
    }

    public String getRefereg_sel_profid() {
        return refereg_sel_profid;
    }

    public void setRefereg_sel_profid(String refereg_sel_profid) {
        this.refereg_sel_profid = refereg_sel_profid;
    }

    public ReferralRegister getRefereg_view() {
        return refereg_view;
    }

    public void setRefereg_view(ReferralRegister refereg_view) {
        this.refereg_view = refereg_view;
    }

    public Date getRefe_fromdate() {
        return refe_fromdate;
    }

    public void setRefe_fromdate(String refe_fromdate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.refe_fromdate = dfopreg.parse(refe_fromdate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public Date getRefe_todate() {
        return refe_todate;
    }

    public void setRefe_todate(String refe_todate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.refe_todate = dfopreg.parse(refe_todate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public List<ReferralRegister> getRefereg_viewprofiles() {
        return refereg_viewprofiles;
    }

    public void setRefereg_viewprofiles(List<ReferralRegister> refereg_viewprofiles) {
        this.refereg_viewprofiles = refereg_viewprofiles;
    }



    public OpRegister getOpreg_view() {
        return opreg_view;
    }

    public void setOpreg_view(OpRegister opreg_view) {
        this.opreg_view = opreg_view;
    }

    public Date getOpreg_sel_date() {
        return opreg_sel_date;
    }

    public void setOpreg_sel_date(Date opreg_sel_date) {
        this.opreg_sel_date = opreg_sel_date;
    }

    public String getOpreg_sel_profid() {
        return opreg_sel_profid;
    }

    public void setOpreg_sel_profid(String opreg_sel_profid) {
        this.opreg_sel_profid = opreg_sel_profid;
    }

    public List<OpRegister> getOpreg_viewprofiles() {
        return opreg_viewprofiles;
    }

    public void setOpreg_viewprofiles(List<OpRegister> opreg_viewprofiles) {
        this.opreg_viewprofiles = opreg_viewprofiles;
    }

    public Date getOp_fromdate() {
        return op_fromdate;
    }

    public void setOp_fromdate(String op_fromdate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.op_fromdate = dfopreg.parse(op_fromdate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public Date getOp_todate() {
        return op_todate;
    }

    public void setOp_todate(String op_todate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.op_todate = dfopreg.parse(op_todate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public Date getMgen_fromdate() {
        return mgen_fromdate;
    }

    public void setMgen_fromdate(String mgen_fromdate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.mgen_fromdate = dfopreg.parse(mgen_fromdate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public Date getMgen_todate() {
        return mgen_todate;
    }

    public void setMgen_todate(String mgen_todate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.mgen_todate = dfopreg.parse(mgen_todate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public List<MedicalGeneralRegister> getMgenreg_view() {
        return mgenreg_view;
    }

    public void setMgenreg_view(List<MedicalGeneralRegister> mgenreg_view) {
        this.mgenreg_view = mgenreg_view;
    }

    public Date getHtwt_fromdate() {
        return htwt_fromdate;
    }

    public void setHtwt_fromdate(String htwt_fromdate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.htwt_fromdate = dfopreg.parse(htwt_fromdate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public Date getHtwt_todate() {
        return htwt_todate;
    }

    public void setHtwt_todate(String htwt_todate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.htwt_todate = dfopreg.parse(htwt_todate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public List<WeightHeightRegisterDTO> getHtwtreg_view() {
        return htwtreg_view;
    }

    public void setHtwtreg_view(List<WeightHeightRegisterDTO> htwtreg_view) {
        this.htwtreg_view = htwtreg_view;
    }

   

    public String getAdmreg_sel_profid() {
        return admreg_sel_profid;
    }

    public void setAdmreg_sel_profid(String admreg_sel_profid) {
        this.admreg_sel_profid = admreg_sel_profid;
    }

    public AdmMedicalRegister getAdmreg_view() {
        return admreg_view;
    }

    public void setAdmreg_view(AdmMedicalRegister admreg_view) {
        this.admreg_view = admreg_view;
    }

    public String getViewregisters() {
        return viewregisters;
    }

    public void setViewregisters(String viewregisters) {
        this.viewregisters = viewregisters;
    }

    public List<ChildMaster> getAdmreg_child_profid() {
        return admreg_child_profid;
    }

    public void setAdmreg_child_profid(List<ChildMaster> admreg_child_profid) {
        this.admreg_child_profid = admreg_child_profid;
    }

    public List<OpRegister> getDatabase_opreg() {
        return database_opreg;
    }

    public void setDatabase_opreg(List<OpRegister> database_opreg) {
        this.database_opreg = database_opreg;
    }

    public AdmMedicalRegister getAdm_reg() {
        return adm_reg;
    }

    public void setAdm_reg(AdmMedicalRegister adm_reg) {
        this.adm_reg = adm_reg;
    }


    public Date getOp_reg_admit_date() {
        return op_reg_admit_date;
    }

    public void setOp_reg_admit_date(String op_reg_admit_date) {
        if(op_reg_admit_date.equals(", ")||op_reg_admit_date.equals(""))
        {
           this.op_reg_admit_date=null;
        }
        else
        {
            DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
            try
            {
                this.op_reg_admit_date = dfopreg.parse(op_reg_admit_date);
            }
            catch(ParseException pe)
            {
                pe.printStackTrace();
            }
        }
    }

    public Date getOp_reg_discharge_date() {
        return op_reg_discharge_date;
    }

    public void setOp_reg_discharge_date(String op_reg_discharge_date) {
        if(op_reg_discharge_date.equals(", ")||op_reg_discharge_date.equals(""))
        {
            this.op_reg_discharge_date=null;
        }
        else
        {
            DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
            try
            {
                this.op_reg_discharge_date = dfopreg.parse(op_reg_discharge_date);
            }
            catch(ParseException pe)
            {
                pe.printStackTrace();
            }
        }
    }

    public String getOp_reg_hosp() {
        return op_reg_hosp;
    }

    public void setOp_reg_hosp(String op_reg_hosp) {
        this.op_reg_hosp = op_reg_hosp;
    }

    public String getOp_reg_reason() {
        return op_reg_reason;
    }

    public void setOp_reg_reason(String op_reg_reason) {
        this.op_reg_reason = op_reg_reason;
    }

    public String getOp_reg_remarks() {
        return op_reg_remarks;
    }

    public void setOp_reg_remarks(String op_reg_remarks) {
        this.op_reg_remarks = op_reg_remarks;
    }

    public String getOp_reg_treated_by() {
        return op_reg_treated_by;
    }

    public void setOp_reg_treated_by(String op_reg_treated_by) {
        this.op_reg_treated_by = op_reg_treated_by;
    }

    public String getOp_reg_treatment_given() {
        return op_reg_treatment_given;
    }

    public void setOp_reg_treatment_given(String op_reg_treatment_given) {
        this.op_reg_treatment_given = op_reg_treatment_given;
    }


    public OpRegister getOp_reg() {
        return op_reg;
    }

    public void setOp_reg(OpRegister op_reg) {
        this.op_reg = op_reg;
    }

    public Date getOp_reg_date() {
        return op_reg_date;
    }

    public void setOp_reg_date(String op_reg_date) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.op_reg_date = dfopreg.parse(op_reg_date);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public String getOp_reg_profile_id() {
        return op_reg_profile_id;
    }

    public void setOp_reg_profile_id(String op_reg_profile_id) {
        this.op_reg_profile_id = op_reg_profile_id;
    }

    public OpRegisterPK getOp_regpk() {
        return op_regpk;
    }

    public void setOp_regpk(OpRegisterPK op_regpk) {
        this.op_regpk = op_regpk;
    }


    public ChildMaster getChild_det() {
        return child_det;
    }

    public void setChild_det(ChildMaster child_det) {
        this.child_det = child_det;
    }


    public List<ChildMaster> getChild_profid_list() {
        return child_profid_list;
    }

    public void setChild_profid_list(List<ChildMaster> child_profid_list) {
        this.child_profid_list = child_profid_list;
    }



    public ReferralRegisterPK getRefe_regpk() {
        return refe_regpk;
    }

    public void setRefe_regpk(ReferralRegisterPK refe_regpk) {
        this.refe_regpk = refe_regpk;
    }


    public String getRefe_reg_profile_id() {
        return refe_reg_profile_id;
    }

    public void setRefe_reg_profile_id(String refe_reg_profile_id) {
        this.refe_reg_profile_id = refe_reg_profile_id;
    }

    public Date getReferralDate() {
        return referralDate;
    }

    public void setReferralDate(String referralDate) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.referralDate = dfopreg.parse(referralDate);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }


    public UserMaster getProfile_det() {
        return profile_det;
    }

    public void setProfile_det(UserMaster profile_det) {
        this.profile_det = profile_det;
    }

    public String getAdm_reg_profile_id() {
        return adm_reg_profile_id;
    }

    public void setAdm_reg_profile_id(String adm_reg_profile_id) {
        this.adm_reg_profile_id = adm_reg_profile_id;
    }

    public List<UserMaster> getExample_profid() {
        return example_profid;
    }

    public void setExample_profid(List<UserMaster> example_profid) {
        this.example_profid = example_profid;
    }


    public String getTesting() {
        return testing;
    }

    public void setTesting(String testing) {
        this.testing = testing;
    }


    public Date getDate() {
        return date;
    }

    public void setDate(String date) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.date = dfopreg.parse(date);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
    }

    public MedicalGeneralRegisterPK getMgen_regpk() {
        return mgen_regpk;
    }

    public void setMgen_regpk(MedicalGeneralRegisterPK mgen_regpk) {
        this.mgen_regpk = mgen_regpk;
    }
    
    public String getForm_name() {
        return form_name;
    }

    public void setForm_name(String form_name) {
        this.form_name =request.getParameter("form_name").toString();
    }

     public HospitalModuleAction()
    {
    }
    /*to get details of referral register*/
     public Object getModel() {
         try
         {
         form_name=getSession().get("form_name").toString();
         //System.out.println("form_name"+getForm_name());
         //System.out.println(getRefe_register()+getUrl()+getForm_name());
         //return refe_reg;
        if(getForm_name().equals("refe_reg"))
        {
           //System.out.println(getForm_name());
           return refe_reg;
        }
        else if(getForm_name().equals("mgen_reg"))
        {
            //System.out.println("**********************");
            //mgen_regpk.setHomeId("APHYDCHB01");
            //mgen_regpk.setDate(getDate());
            //System.out.println(mgen_regpk.getDate()+mgen_regpk.getHomeId()+getDate());
            //mgen_reg.setMedicalGeneralRegisterPK(mgen_regpk);
            //System.out.println(mgen_reg.getMedicalGeneralRegisterPK().getDate());
            return mgen_reg;
        }
        else if(getForm_name().equals("op_reg"))
        {
            return op_reg;
        }
        else if(getForm_name().equals("adm_reg"))
        {
            return adm_reg;
        }
        else
        {
            return "HELLO";
        }
       }catch(NullPointerException e)
         {
           return "hello";
       }
    }

    public ReferralRegister getRefe_reg() {
        return refe_reg;
    }

    public void setRefe_reg(ReferralRegister refe_reg) {
        this.refe_reg = refe_reg;
    }

    public MedicalGeneralRegister getMgen_reg() {
        return mgen_reg;
    }

    public void setMgen_reg(MedicalGeneralRegister mgen_reg) {
        this.mgen_reg = mgen_reg;
    }

    public DoctorService getDoctorService() {
        return doctorService;
    }

    public void setDoctorService(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public Date getWh_reg_date() {
        return wh_reg_date;
    }

    public void setWh_reg_date(String wh_reg_date) {
        DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
        try
        {
            this.wh_reg_date = dfopreg.parse(wh_reg_date);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
        //this.wh_reg_date = wh_reg_date;
    }

    public String[] getWh_reg_profile_id() {
        return wh_reg_profile_id;
    }

    public void setWh_reg_profile_id(String[] wh_reg_profile_id) {
        this.wh_reg_profile_id = wh_reg_profile_id;
    }

    public String[] getHtChild() {
        return htChild;
    }

    public void setHtChild(String[] htChild) {
        this.htChild = htChild;
    }

    public String[] getRemarks() {
        return remarks;
    }

    public void setRemarks(String[] remarks) {
        this.remarks = remarks;
    }

    public String[] getWtChild() {
        return wtChild;
    }

    public void setWtChild(String[] wtChild) {
        this.wtChild = wtChild;
    }


    public List<WeightHeightRegisterDTO> getHtwtlist() {
        return htwtlist;
    }

    public void setHtwtlist(List<WeightHeightRegisterDTO> htwtlist) {
        this.htwtlist = htwtlist;
    }

    
    /*Method for adding Referral Register START*/
    public String Store_Referral_Register()
 {
        //System.out.println("hiii"+getForm_name());
 String result=null;
      //this function will take the action of adding the Referral Register to the database
      try{
          //System.out.println("hiii"+getForm_name()+getRefe_reg_profile_id());
          refe_regpk.setChildProfileId(getRefe_reg_profile_id());
          refe_regpk.setReferralDate(getReferralDate());
          refe_reg.setReferralRegisterPK(refe_regpk);
          refe_reg.setAdmitDate(getRefe_reg_admitdate());
          refe_reg.setDischargeDate(getRefe_reg_dischargedate());
          boolean insertResult=doctorService.addReferralRegister(refe_reg);
          //clean up
          //adminService=null;

          if(insertResult==true)
              result="AddRefeRegSuccess";
          else if(insertResult==false)
              result="AddRefeRegError";

      }
      catch(Exception e)
      {
          e.printStackTrace();
          result="AddRefeRegError";
      }
     return result;

 }
 /*Method for adding Referral Register END*/
    public void setServletRequest(HttpServletRequest hsr) {
        //throw new UnsupportedOperationException("Not supported yet.");
        request=hsr;
    }

    public void setServletResponse(HttpServletResponse hsr) {
        //throw new UnsupportedOperationException("Not supported yet.");
        response=hsr;
    }
    /*Method for adding Medical General Register START*/
    public String Store_MedicalGeneralRegister()
 {
 String result=null;
      //this function will take the action of adding the Medical General Register to the database
      try{
          String home_id=getSession().get("homeid").toString();
          String user_id=getSession().get("userid").toString();
          if(home_id==null ||user_id==null)
          {
              return "session_expire_error";
          }
          else
          {
          //System.out.println("^^^^^^^^^^^^");
          mgen_regpk.setHomeId(home_id);
          mgen_regpk.setMedRegDate(getDate());
          mgen_reg.setMedicalGeneralRegisterPK(mgen_regpk);
          //System.out.println("hiii"+getForm_name()+mgen_reg.getStateResidents()+mgen_reg.getMedicalGeneralRegisterPK().getDate()+getDate());
          mgen_reg.setUserId(user_id);
          boolean insertResult=doctorService.addMedicalGeneralRegister(mgen_reg);

          if(insertResult==true)
              result="AddMgenRegSuccess";
          else if(insertResult==false)
              result="AddMgenRegError";
        }

      }
      catch(Exception e)
      {
          e.printStackTrace();
          result="AddMgenRegError";
      }
     return result;

 }
 /*Method for adding Medical General Register END*/

/*Method for adding Height Weight Register START*/
public String Store_HtWtRegister()
 {
 String result=null;
      //this function will take the action of adding the Medical General Register to the database
      try{
          htwtlist=new ArrayList<WeightHeightRegisterDTO>(wh_reg_profile_id.length);
          //System.out.println("array length: "+wh_reg_profile_id.length);
          String insertResult="false";
        for(int i=0;i<wh_reg_profile_id.length;i++)
        {
            //System.out.println("using array ;-)------> "+getWh_reg_date()+"---"+getWh_reg_profile_id()[i]+"---"+getHtChild()[i]+"---"+getWtChild()[i]+"---"+getRemarks()[i]);

            HtWtRegister htwtreg=new HtWtRegister();
            HtWtRegisterPK htwtregpk=new HtWtRegisterPK();
            htwtregpk.setHtWtDate(getWh_reg_date());
            htwtreg.setHtWtRegisterPK(htwtregpk);
            htwtregpk.setChildProfileId(getWh_reg_profile_id()[i]);
            BigDecimal heig=new BigDecimal(getHtChild()[i]);
            htwtreg.setHtChild(heig);
            BigDecimal weig=new BigDecimal(getWtChild()[i]);
            htwtreg.setWtChild(weig);
            htwtreg.setChildComplaints(getChildComplaints()[i]);
            htwtreg.setRemarks(getRemarks()[i]);          
            insertResult=doctorService.addHtWtRegister(htwtreg);
            
            /*d.setName(getName()[i]);
            d.setQuantity(getQuantity()[i]);
            d.setRemarks(getRemarks()[i]);

            l.add(d);
            setL(l);
            setMadeMessage(message +getName()[i]);*/
        }

          if(insertResult=="true")
              result="AddHtWtRegSuccess";
          else if(insertResult=="duplicatekeyexception")
              result="AddHtWtRegdkex";
          else if(insertResult=="false")
              result="AddHtWtRegError";

      }
      catch(Exception e)
      {
          e.printStackTrace();
          result="AddHtWtRegError";
      }
     return result;

 }
 /*Method for adding Height Weight Register END*/

/*Method for adding OP Register START*/
    public String Store_OpRegister()
 {
        //System.out.println("hiii"+getForm_name());
 String result=null;
      //this function will take the action of adding the OP Register to the database
      try{
          //System.out.println("hiii"+getForm_name()+getOp_reg_profile_id()+op_reg.getTreatedAt());
          boolean insertResult=false;
          boolean insertOtherResult=true;
          if(op_reg.getTreatedAt().equals("Treated In Home"))
          {
              op_regpk.setChildProfileId(getOp_reg_profile_id());
              op_regpk.setOpDate(getOp_reg_date());
              op_reg.setOpRegisterPK(op_regpk);
              insertResult=doctorService.addOpRegister(op_reg);
          }
          else
          {
              op_regpk.setChildProfileId(getOp_reg_profile_id());
              op_regpk.setOpDate(getOp_reg_date());
              op_reg.setOpRegisterPK(op_regpk);
              insertResult=doctorService.addOpRegister(op_reg);
              refe_regpk.setChildProfileId(getOp_reg_profile_id());
              refe_regpk.setReferralDate(getOp_reg_date());
              refe_reg.setReferralRegisterPK(refe_regpk);
              refe_reg.setReferralHospital(getOp_reg_hosp());
              refe_reg.setReasonsReferral(getOp_reg_reason());
              refe_reg.setAdmitDate(getOp_reg_admit_date());
              refe_reg.setTreatedByReferralDoc(getOp_reg_treated_by());
              refe_reg.setReferralTreatment(getOp_reg_treatment_given());
              refe_reg.setDischargeDate(getOp_reg_discharge_date());
              refe_reg.setRemarks(getOp_reg_remarks());
              insertOtherResult=doctorService.addReferralRegister(refe_reg);

          }

          if(insertResult==true && insertOtherResult==true)
              result="AddOpRegSuccess";
          else if(insertResult==false || insertOtherResult==false)
              result="AddOpRegError";

      }
      catch(Exception e)
      {
          e.printStackTrace();
          result="AddOpRegError";
      }
     return result;

 }
 /*Method for adding OP Register END*/

/*Method for adding Admission Medical Register START*/
    public String Store_AdmissionMedicalRegister()
 {
 String result=null;
      //this function will take the action of adding the Medical General Register to the database
      try{
          String temp_lastmodby=getSession().get("userid").toString();
         if(    temp_lastmodby == null ? "" == null : temp_lastmodby.equals(""))
         {
           return "session_expire_error";
         }
         else
         {
              adm_reg.setChildProfileId(getAdm_reg_profile_id());
              //System.out.println("--->"+adm_reg.getChildProfileId());
              adm_reg.setChildMaster(new ChildMaster(adm_reg.getChildProfileId().trim()));
             // System.out.println("gender is"+getAdm_reg_gender());
              if(getAdm_reg_gender().equalsIgnoreCase("female"))
              {
                  /*this is for setting local examination values into object START*/
                  if(getLocalexam().length>0)
                  {
                      String temp_locexam="";
                      for(int i=0;i<getLocalexam().length;i++)
                      { if(i<getLocalexam().length-1)
                        {
                          temp_locexam=temp_locexam+getLocalexam()[i]+",";
                        }
                        else
                        {
                           temp_locexam=temp_locexam+getLocalexam()[i];
                        }
                      }
                      adm_reg.setLocalExaminations(temp_locexam);
                  }
                  else
                  {
                    adm_reg.setLocalExaminations(null);  
                  }
                  /*this is for setting local examination values into object END*/
                  /*this is for setting lmp date value into object START*/
                  adm_reg.setLmp(getLmp_temp());
                  /*this is for setting lmp date value into object END*/
              }
              adm_reg.setLastModifiedBy(temp_lastmodby);
              String date_format="yyyy-MM-dd";
              SimpleDateFormat sdf=new SimpleDateFormat(date_format);
              String temp_lastmoddate=sdf.format(new Date());
              try
              {
                adm_reg.setLastModifiedDate(sdf.parse(temp_lastmoddate));
              }
              catch(ParseException pe)
              {
                  pe.printStackTrace();
              }
              //System.out.println(adm_reg.getBodyPains()+adm_reg.getHtAdm().toString());
              boolean insertResult=doctorService.addAdmMedicalRegister(adm_reg);

              if(insertResult==true)
                  result="AddAdmRegSuccess";
              else if(insertResult==false)
                  result="AddAdmRegError";
         }

      }
      catch(Exception e)
      {
          e.printStackTrace();
          result="AddAdmRegError";
      }
     return result;

 }
 /*Method for adding Admission Medical Register END*/

/*Method for viewing Admission Medical Register START*/
 public String View_AdmissionMedicalRegister()
 {
     try
     {
       if(viewregisters.equalsIgnoreCase("viewadmreg_first"))
       {
         String admreg_childmaster=getSession().get("homeid").toString();
         if(    admreg_childmaster == null ? "" == null : admreg_childmaster.equals(""))
         {
           return "session_expire_error";
         }
         else
         {
             admreg_child_profid=doctorService.viewChild_by_admregister(admreg_childmaster);
             /*commented by swetha on 4Apr12 START*/
             //System.out.println(admreg_child_profid.size());
             //for(int i=0;i<admreg_child_profid.size();i++)
             //{
                 //System.out.println("******");
                 //System.out.println(admreg_child_profid.get(i).getChildProfileId());
             //}
             /*commented by swetha on 4Apr12 END*/
             return "ViewAdmRegSuccess";
         }
        }
        else if(viewregisters.equalsIgnoreCase("viewadmreg_select"))
        {
          admreg_view=doctorService.getAdmReg_by_id(admreg_sel_profid);
          //System.out.println(admreg_view.getSkinDiseases()+admreg_view.getCnsDiag());
          if(admreg_view.getChildMaster().getGender().equalsIgnoreCase("male"))
          {
             setView_admreg_gender("view_admreg_male");
          }
          else
          {
             setView_admreg_gender("view_admreg_female");
          }
          return "ViewAdmRegSuccess";
        }
        else
        {
           return "ViewAdmRegError";
        }
     }catch(Exception e)
     {
         e.printStackTrace();
         return "ViewAdmRegError";
     }
 }
/*Method for viewing Admission Medical Register END*/
 
 /*Method for viewing Height Weight Register START*/
 public String View_HeightWeightRegister()
 {
     try{
         String view_htwtreg_homeid=getSession().get("homeid").toString();
         /*checking if session expired or active*/
         if(    view_htwtreg_homeid == null ? "" == null : view_htwtreg_homeid.equals(""))
         {
           return "session_expire_error";
         }
         else
         {
             if(viewregisters.equalsIgnoreCase("viewhtwtreg_first"))
             {
                return "ViewHtWtRegSuccess";
             }
             else if(viewregisters.equalsIgnoreCase("viewhtwtreg_select"))
             {
                 //System.out.println("^^^^^^^^^"+htwt_fromdate+htwt_todate);
                  htwtreg_view=doctorService.viewHtWt_by_date(getHtwt_fromdate(), getHtwt_todate(), view_htwtreg_homeid);
                  //System.out.println(htwtreg_view.size());
                  return "ViewHtWtRegSuccess";
             }
             else
             {
                 return "ViewHtWtRegError";
             }
         }
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return "ViewHtWtRegError";
      }
 }

 /*Method for viewing Height Weight Register END*/

 /*Method for viewing Medical General Register START*/
 public String View_MedicalGeneralRegister()
 {
     try{
          String view_mgenreg_homeid=getSession().get("homeid").toString();
         /*checking if session expired or active*/
         if(    view_mgenreg_homeid == null ? "" == null : view_mgenreg_homeid.equals(""))
         {
           return "session_expire_error";
         }
         else
         {
             if(viewregisters.equalsIgnoreCase("viewmgenreg_first"))
             {
                return "ViewMgenRegSuccess";
             }
             else if(viewregisters.equalsIgnoreCase("viewmgenreg_select"))
             {
            //System.out.println("^^^^^^^^^"+mgen_fromdate+mgen_todate);
              mgenreg_view=doctorService.viewMgen_by_date(mgen_fromdate, mgen_todate, view_mgenreg_homeid);
              //System.out.println(mgenreg_view.size());
              return "ViewMgenRegSuccess";
             }
             else
             {
                 return "ViewMgenRegError";
             }
         }
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return "ViewMgenRegError";
      }
 }
 /*Method for viewing Medical General Register END*/

 /*Method for viewing OP Register START*/
 public String View_OPRegister()
 {
     try{
          String view_opreg_homeid=getSession().get("homeid").toString();
         /*checking if session expired or active*/
         if(    view_opreg_homeid == null ? "" == null : view_opreg_homeid.equals(""))
         {
           return "session_expire_error";
         }
         else
         {
             if(viewregisters.equalsIgnoreCase("viewopreg_first"))
             {
                return "ViewOPRegSuccess";
             }
             else if(viewregisters.equalsIgnoreCase("viewopreg_select"))
             {
               opreg_viewprofiles=doctorService.viewOP_by_date(op_fromdate, op_todate, view_opreg_homeid);
               //System.out.println(opreg_viewprofiles.size());
               return "ViewOPRegSuccess";
             }
             else if(viewregisters.equalsIgnoreCase("viewopreg_secondselect"))
             {
               //System.out.println(getOpreg_sel_date()+getOpreg_sel_profid());
               opreg_view=doctorService.getOPReg_by_id(opreg_sel_profid, opreg_sel_date);
               //System.out.println(opreg_view.getTreatment()+opreg_view.getTreatedAt()+opreg_view.getChildMaster().getChildName());
               return "ViewOPRegSuccess";
             }
             else
             {
                 return "ViewOPRegError";
             }
         }
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return "ViewOPRegError";
      }
 }
 /*Method for viewing OP Register END*/

 /*Method for viewing Referral Register START*/
 public String View_RefeRegister()
 {
     try{
          String view_refereg_homeid=getSession().get("homeid").toString();
         /*checking if session expired or active*/
         if(    view_refereg_homeid == null ? "" == null : view_refereg_homeid.equals(""))
         {
           return "session_expire_error";
         }
         else
         {
             if(viewregisters.equalsIgnoreCase("viewrefereg_first"))
             {
                return "ViewRefeRegSuccess";
             }
             else if(viewregisters.equalsIgnoreCase("viewrefereg_select"))
             {
               refereg_viewprofiles=doctorService.viewRefe_by_date(refe_fromdate, refe_todate, view_refereg_homeid);
               //System.out.println(refereg_viewprofiles.size());
               return "ViewRefeRegSuccess";
             }
             else if(viewregisters.equalsIgnoreCase("viewrefereg_secondselect"))
             {
               //System.out.println(getOpreg_sel_date()+getOpreg_sel_profid());
               refereg_view=doctorService.getRefeReg_by_id(refereg_sel_profid, refereg_sel_date);
               //System.out.println(refereg_view.getReasonsReferral());
               return "ViewRefeRegSuccess";
             }
             else
             {
                 return "ViewRefeRegError";
             }
         }
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return "ViewRefeRegError";
      }
 }
 /*Method for viewing Referral Register END*/

/*Method for Updating Admission Medical Register END*/
    public String Update_AdmissionMedicalRegister()
 {
 String result=null;
      //this function will take the action of adding the Medical General Register to the database
      try{
          String temp_lastmodby=getSession().get("userid").toString();
         if(    temp_lastmodby == null ? "" == null : temp_lastmodby.equals(""))
         {
           return "session_expire_error";
         }
         else
         {
              adm_reg.setChildProfileId(getAdm_reg_profile_id());
              //System.out.println("--->"+adm_reg.getChildProfileId());
              adm_reg.setChildMaster(new ChildMaster(adm_reg.getChildProfileId().trim()));
              //System.out.println(adm_reg.getBodyPains()+adm_reg.getHtAdm().toString());
              //System.out.println("gender is"+getAdm_reg_gender());
              if(getAdm_reg_gender().equalsIgnoreCase("female"))
              {
                  /*this is for setting local examination values into object START*/
                  if(getLocalexam().length>0)
                  {
                      String temp_locexam="";
                      for(int i=0;i<getLocalexam().length;i++)
                      { if(i<getLocalexam().length-1)
                        {
                          temp_locexam=temp_locexam+getLocalexam()[i]+",";
                        }
                        else
                        {
                           temp_locexam=temp_locexam+getLocalexam()[i];
                        }
                      }
                      adm_reg.setLocalExaminations(temp_locexam);
                  }
                  /*this is for setting local examination values into object END*/
                  /*this is for setting lmp date value into object START*/
                  adm_reg.setLmp(getLmp_temp());
                  /*this is for setting lmp date value into object END*/
              }
              adm_reg.setLastModifiedBy(temp_lastmodby);
              String date_format="yyyy-MM-dd";
              SimpleDateFormat sdf=new SimpleDateFormat(date_format);
              String temp_lastmoddate=sdf.format(new Date());
              try
              {
                adm_reg.setLastModifiedDate(sdf.parse(temp_lastmoddate));
              }
              catch(ParseException pe)
              {
                  pe.printStackTrace();
              }
              boolean insertResult=doctorService.updateAdmMedicalRegister(adm_reg);

              if(insertResult==true)
                  result="UpdateAdmRegSuccess";
              else if(insertResult==false)
                  result="UpdateAdmRegError";
         }

      }
      catch(Exception e)
      {
          e.printStackTrace();
          result="UpdateAdmRegError";
      }
     return result;

 }
 /*Method for Updating Admission Medical Register END*/

    
    /*Anupam added the method on 09-01-2012 START*/
public String fetchChildren(){
    String result="error";
    String childmaster_homeid = ActionContext.getContext().getSession().get("homeid").toString().trim();
    try {
      child_profid_list=doctorService.viewChild_by_homeid(childmaster_homeid);
      result = "success";
    } catch (Exception e) {
        result = "error";
        //System.out.println("----------------ERROR in fetchChildren()--------");
        e.printStackTrace();
    }
    
       return result;
                     

}    



public String saveHWData(){
    
    String result="error";

/*
     private String wh_reg_profile_id_year;
     private int wh_reg_year;
     private int days_year[];
     private double htChild_year[];
     private double wtChild_year[];
     private String remarks_year[];
     */
    
    
result =  doctorService.processAndSaveHeightWeight(wh_reg_profile_id_year,wh_reg_year,days_year,htChild_year,wtChild_year,remarks_year);

setDays_year(null);
setHtChild_year(null);
setWtChild_year(null);
setRemarks_year(null);

if(result.equalsIgnoreCase("success"))
{
setMessage(getText("global.errmsg.DocSuccEntNexRec"));
}
else if(result.equalsIgnoreCase("error"))
{
setMessage(getText("global.errmsg.DocErrTryAgain"));
}

return result;

}
/* Added by vinumol 17/02/2012 */
public String fetchChildDisease()
  {
      try{
          String view_childisease_homeid=getSession().get("homeid").toString();
         /*checking if session expired or active*/
         if(view_childisease_homeid == null ? "" == null : view_childisease_homeid.equals(""))
         {
           return "session_expire_error";
         }
         else
                      
         {
         if(viewregisters.equalsIgnoreCase("viewdisease_first"))
          {
            List dlist=new ArrayList();
            dlist.add(0,"Physically Handicapped");
            dlist.add(1,"Mentally Handicapped");
            dlist.add(2,"Fits");
            dlist.add(3,"Communicable Diseases");
            setDiseaselist(dlist);
            //System.out.println("Helooo unnicheytta");
            return "viewdiseasesuccess";
          }
          else if(viewregisters.equalsIgnoreCase("viewdisease_select"))
           {
           //System.out.println("");
               Date date1=StringToDate.getStringToDateTime(getViewChildDisease_fromDate(), "00:00");
               Date date2=StringToDate.getStringToDateTime(getViewChildDisease_toDate(),"00:00");
            viewdisease_viewprofiles=doctorService.viewDiseaseChild_by_date(date1,date2,diseaselist_select, view_childisease_homeid);
            
            //System.out.println(viewdisease_viewprofiles.size());
            return "viewdiseasesuccess";
           }
            else if(viewregisters.equalsIgnoreCase("viewdisease_profileIdselected"))
             {
               admreg_view=doctorService.getAdmReg_by_id(admreg_profid);
          //System.out.println("vinoos"+admreg_view.getSkinDiseases()+admreg_view.getCnsDiag());
          if(admreg_view.getChildMaster().getGender().equalsIgnoreCase("male"))
          {
             setView_admreg_gender("view_admreg_male");
          }
          else
          {
             setView_admreg_gender("view_admreg_female");
          }
         
               return "viewdiseasesuccess";
             }   
              else
             {
                 return "error";
             }
         }
      }
      catch(Exception e)
      {
          e.printStackTrace();
          return "error";
      }
  }
/* Ended by vinumol 17/02/2012 */
/*Anupam added the method on 09-01-2012 START*/


public String fetchprof_id()
    {
        try
         {
            //System.out.println("this is referralfirst");
            String childmaster_homeid=getSession().get("homeid").toString();
            if(childmaster_homeid == null ? "" == null : childmaster_homeid.equals(""))
            {
             return "session_expire_error";
            }
            else
            {
             example_profid=doctorService.viewUserMaster();
             //child_profid_list=doctorService.viewChildMaster();
             if(testing.equalsIgnoreCase("referralfirst"))
               {
                 child_profid_list=doctorService.viewChild_by_homeid(childmaster_homeid);
                 /*System.out.println(child_profid_list.size());
                 for(int i=0;i<child_profid_list.size();i++)
                 {
                     System.out.println(child_profid_list.get(i).getChildProfileId());
                 }
                 child_profid_list=doctorService.viewChildMaster();*/
                 //System.out.println("selected profile id : "+getAdm_reg_profile_id());
                //child_det=doctorService.getChild_by_id("ch_prof_01");
                 //System.out.println("this is referralfirst");
                 return "success";
               }
             /*else if(testing.equalsIgnoreCase("referralselect"))
               {
                 try
                 {
                     child_profid_list=doctorService.viewChildMaster();
                     System.out.println("selected profile id : "+getRefe_reg_profile_id());
                     child_det=doctorService.getChild_by_id(getRefe_reg_profile_id());
                     return "success";
                 }
                 catch(Exception e)
                 {
                     return "error";
                 }
               }*/
             else if(testing.equalsIgnoreCase("opregfirst"))
               {
                     child_profid_list=doctorService.viewChild_by_homeid(childmaster_homeid);
                     /*child_profid_list=doctorService.viewChildMaster();*/
                     database_opreg=doctorService.viewOpRegister();
                     return "success";
               }
             else if(testing.equalsIgnoreCase("admismedregfirst"))
               {
                     child_profid_list=doctorService.viewChild_by_homeid(childmaster_homeid);
                     /*child_profid_list=doctorService.viewChildMaster();*/
                     return "success";
               }
             else if(testing.equalsIgnoreCase("admismedregselect"))
               {
                 try
                 {
                     child_profid_list=doctorService.viewChild_by_homeid(childmaster_homeid);
                     /*child_profid_list=doctorService.viewChildMaster();*/
                     //System.out.println("selected profile id : "+getAdm_reg_profile_id());
                     //profile_det=doctorService.getUser_by_id(getAdm_reg_profile_id());
                     child_det=doctorService.getChild_by_id(getAdm_reg_profile_id());
                     if(child_det.getGender().equalsIgnoreCase("male"))
                     {
                       return "admreg_male";
                     }
                     else
                     {
                         return "admreg_female";
                     }
                 }
                 catch(Exception e)
                 {
                     return "error";
                 }
               }
             else if(testing.equalsIgnoreCase("updateadmregfirst"))
               {
                 /*Child details that are present in adm_medical_register only are populated*/
                     child_profid_list=doctorService.viewChild_by_admregister(childmaster_homeid);

                     return "success";
               }
             else if(testing.equalsIgnoreCase("updateadmregselect"))
               {
                 try
                 {
                     child_profid_list=doctorService.viewChild_by_admregister(childmaster_homeid);
                     //System.out.println("selected profile id : "+getAdm_reg_profile_id());
                     child_det=doctorService.getChild_by_id(getAdm_reg_profile_id());
                     admreg_view=doctorService.getAdmReg_by_id(getAdm_reg_profile_id());
                     //System.out.println(admreg_view.getSpecCongenital());
                     //data.add(admreg_view);
                     //getSession().put("dataList",data);
                    // System.out.println(admreg_view+": in hosptl");
                     ActionContext.getContext().getSession().put("dataList", admreg_view);
                     //HttpSession sess= request.getSession(false);
                     //sess.setAttribute("dataList", data);
                     //setSession(getSession().put("dataList",data));
                    // HttpServletRequest req = getRequest();
                    // req.setAttribute("dataList", data);
                    // setRequest(req);
                     if(child_det.getGender().equalsIgnoreCase("male"))
                     {
                       return "update_admreg_male";
                     }
                     else
                     {
                         if(admreg_view.getLocalExaminations()==null)
                         {
                               setAdmreg_locexamval(new ArrayList<String>());
                         }else
                         {
                             List<String> temp_locexam_list=new ArrayList<String>();

                             //System.out.println("hello..............."+admreg_view.getLocalExaminations());
                             StringTokenizer st = new StringTokenizer(admreg_view.getLocalExaminations(), ",");
                             //System.out.println(st.countTokens());
                             while(st.hasMoreTokens()) {
                              String val= st.nextToken().toString();
                             boolean temp_result=temp_locexam_list.add(val);
                             }
                         setAdmreg_locexamval(temp_locexam_list);
                         }
                         return "update_admreg_female";
                     }
                 }
                 catch(Exception e)
                 {
                     return "error";
                 }
               }
             else if(testing.equalsIgnoreCase("whregfirst"))
               {
                     child_profid_list=doctorService.viewChild_by_homeid(childmaster_homeid);
                     /*child_profid_list=doctorService.viewChildMaster();*/
                     //List <HtWtRegister> temphwreg=doctorService.viewHtWt_by_date(date, date);
                     //System.out.println(temphwreg.size());
                     return "success";
               }
             else
               {
                   return "error";
               }
           }
         }
         catch(Exception e)
         {
             return "error";
         }
       
    }

public String getConsolidatedDiseaseReport(){
    String result = "error";
    try {
        setDiseaseMap(doctorService.getConsolidatedDiseaseReport());
        result = "success";
    } catch (Exception e) {
        e.printStackTrace();
    }
    return result;
}

}
