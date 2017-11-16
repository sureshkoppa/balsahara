/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.hospitalmodule.DAO;

import com.cdac.exceptions.AppException;
import com.cdac.hospitalmodule.DTO.WeightHeightRegisterDTO;
import com.cdac.usermanagement.ORM.AdmMedicalRegister;
import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.HtWtRegister;
import com.cdac.usermanagement.ORM.MedicalGeneralRegister;
import com.cdac.usermanagement.ORM.OpRegister;
import com.cdac.usermanagement.ORM.ReferralRegister;
import com.cdac.usermanagement.ORM.UserMaster;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.OpRegisterPK;
import com.cdac.usermanagement.ORM.ReferralRegisterPK;
import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;
import org.hibernate.HibernateException;
import java.util.Iterator;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;

import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.hibernate.SessionFactory;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.orm.hibernate3.HibernateTemplate;
/**
 *
 * @author trainee
 */
public class DoctorDAOImpl implements DoctorDAO{

    private HibernateTemplate hibernateTemplate;
    public void setSessionFactory(SessionFactory sessionFactory){
     this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    /*functions to add data into database tables*/
    public boolean addReferralRegister(ReferralRegister refe_reg)throws AppException
    {
        boolean result=false;
        try
        {
            hibernateTemplate.save(refe_reg);
            result=true;
        }
        catch(HibernateException e)
        {
            result=false;
        }
        return result;
    }

    public boolean addMedicalGeneralRegister(MedicalGeneralRegister mgen_reg)throws AppException
    {
        boolean result=false;
        try
        {
            hibernateTemplate.save(mgen_reg);
            result=true;
        }
        catch(HibernateException e)
        {
            result=false;
        }
        return result;
    }

    public String addHTWTRegister(HtWtRegister ht_wt_reg)throws AppException
    {
        String result="false";
        try
        {
            try
            {
            hibernateTemplate.save(ht_wt_reg);
            result="true";
            }catch(DuplicateKeyException dkex)
            {
                //dkex.printStackTrace();
               result="duplicatekeyexception";
            }
        }
        catch(HibernateException e)
        {
            result="false";
        }
        return result;
    }

    public boolean addAdmMedicalRegister(AdmMedicalRegister adm_med_reg)throws AppException
    {
        boolean result=false;
        try
        {
            hibernateTemplate.save(adm_med_reg);
            result=true;
        }
        catch(HibernateException e)
        {
            result=false;
        }
        return result;
    }

    public boolean addOpRegister(OpRegister op_reg)throws AppException
    {
        boolean result=false;
        try
        {
            hibernateTemplate.save(op_reg);
            result=true;
        }
        catch(HibernateException e)
        {
            result=false;
        }
        return result;
    }

    /*functions to get list of data from the database tables*/
    public List<OpRegister> viewOpRegister()throws AppException
    {
       List<OpRegister> list = (List<OpRegister>) hibernateTemplate.find("from OpRegister");
       return list;
    }

    public List<ReferralRegister> viewReferralRegister()throws AppException
    {
        List<ReferralRegister> list = (List<ReferralRegister>) hibernateTemplate.find("from ReferralRegister");
       return list;
    }

    public List<UserMaster> viewUserMaster()throws AppException
    {
        List<UserMaster> list = (List<UserMaster>) hibernateTemplate.find("from UserMaster");
       return list;
    }

    public UserMaster getUser_by_id(String user_id)throws AppException
    {
        UserMaster um=new UserMaster();

        um.setUserId(user_id);
        try {
           um = (UserMaster)hibernateTemplate.get(UserMaster.class,um.getUserId());

            return um;

        } catch (HibernateException e) {
            e.getStackTrace();
        }
        return um;
    }

    public List<ChildMaster> viewChildMaster()throws AppException
    {
        ChildMaster tempcm=new ChildMaster();
        tempcm.setChildProfileId(null);
        List<ChildMaster> list = null;
        try
        {
        list = (List<ChildMaster>) hibernateTemplate.find("from ChildMaster");
        }catch(HibernateException e)
        {
            e.getStackTrace();
        }
        return list;
    }

    public ChildMaster getChild_by_id(String child_prof_id)throws AppException
    {
        ChildMaster cm=new ChildMaster();

        cm.setChildProfileId(child_prof_id);
        try {
           cm = (ChildMaster)hibernateTemplate.get(ChildMaster.class,cm.getChildProfileId());

            return cm;

        } catch (HibernateException e) {
            e.getStackTrace();
        }
        return cm;
    }

    public List<ChildMaster> viewChild_by_homeid(String child_by_homeid)throws AppException
    {
        List<ChildMaster> listcm_homeid = null;
        try
        {
        listcm_homeid = (List<ChildMaster>) hibernateTemplate.find("from ChildMaster cm where cm.homeId.homeId='"+child_by_homeid+"' AND cm.status='active'"); //anupam changed this on 12-01-2010
        }catch(HibernateException e)
        {
            e.getStackTrace();
        }
        return listcm_homeid;
    }

    public List<ChildMaster> viewChild_by_admregister(String admreg_homeid)throws AppException
    {
        List<ChildMaster> listcm_admreg = null;
        try
        {
        listcm_admreg = (List<ChildMaster>) hibernateTemplate.find("from ChildMaster cm inner join fetch cm.admMedicalRegister where cm.homeId.homeId='"+admreg_homeid+"'");
        }catch(HibernateException e)
        {
            e.getStackTrace();
        }
        return listcm_admreg;
    }

    public AdmMedicalRegister getAdmReg_by_id(String admreg_profid)throws AppException
    {
        AdmMedicalRegister admreg_view=new AdmMedicalRegister();

        admreg_view.setChildProfileId(admreg_profid);
        try {
           admreg_view = (AdmMedicalRegister)hibernateTemplate.get(AdmMedicalRegister.class,admreg_view.getChildProfileId());

            return admreg_view;

        } catch (HibernateException e) {
            e.getStackTrace();
        }
        return admreg_view;
    }

      public List<WeightHeightRegisterDTO> viewHtWt_by_date(Date fromdate, Date todate, String viewhwreg_homeid)
    {
        List<HtWtRegister> list_htwtreg = null;
        List<WeightHeightRegisterDTO> wtHtDtoList=null;
        try
        {
            System.out.println("******"+fromdate+todate);
        //list_htwtreg = (List<HtWtRegister>) hibernateTemplate.find("from HtWtRegister hwreg where hwreg.htWtRegisterPK.htWtDate > '"+fromdate+"' and hwreg.htWtRegisterPK.htWtDate < '"+todate+"' and hwreg inner join fetch hwreg.childMaster where hwreg.childMaster.homeMaster.homeId='APADICHB01'");
        //list_htwtreg = (List<HtWtRegister>) hibernateTemplate.find("from HtWtRegister hwreg inner join hwreg.childMaster with hwreg.childMaster.homeMaster.homeId='APADICHB01' where hwreg.htWtRegisterPK.htWtDate > '"+fromdate+"' and hwreg.htWtRegisterPK.htWtDate > '"+todate+"'");
         list_htwtreg=(List<HtWtRegister>) hibernateTemplate.find("from HtWtRegister");
         //DateFormat dfopreg=new SimpleDateFormat("yyyy-MM-dd");
         SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
         for(int i=0;i<list_htwtreg.size();i++)
         {
             System.out.println(list_htwtreg.get(i).getHtWtRegisterPK().getHtWtDate()+"---"+fromdate);
             //java.sql.Date sec_fromdate=null;
            /*try
            {
                fromdate = dfopreg.parse(fromdate.getYear()+"-"+fromdate.getMonth()+"-"+fromdate.getDate());
                sec_fromdate = new java.sql.Date(fromdate.getTime());
            }
            catch(ParseException pe)
            {
                pe.printStackTrace();
            }*/
             //sec_fromdate = new java.sql.Date(fromdate.getTime());
             //System.out.println("fromdate-->"+sec_fromdate);
             if(list_htwtreg.get(i).getHtWtRegisterPK().getHtWtDate().equals(sdf.format(fromdate)))
             {
                 System.out.println("hello");
             }
         }
         
         //list_htwtreg = (List<HtWtRegister>) hibernateTemplate.find("from HtWtRegister hwreg where hwreg.childMaster.homeId.homeId='"+viewhwreg_homeid+"' and hwreg.htWtRegisterPK.htWtDate > '"+sdf.format(fromdate)+"' and hwreg.htWtRegisterPK.htWtDate < '"+sdf.format(todate)+"'");
         list_htwtreg = (List<HtWtRegister>) hibernateTemplate.find("from HtWtRegister hwreg where hwreg.childMaster.homeId.homeId='"+viewhwreg_homeid+"' and hwreg.htWtRegisterPK.htWtDate BETWEEN '"+sdf.format(fromdate)+"' and '"+sdf.format(todate)+"'");
         
          wtHtDtoList=new ArrayList<WeightHeightRegisterDTO>();
         
         Iterator<HtWtRegister> htWtItr=list_htwtreg.iterator();
         Calendar cal= Calendar.getInstance();
         Calendar cal2= Calendar.getInstance();
         while(htWtItr.hasNext())
         {
             HtWtRegister htWtReg=(HtWtRegister)htWtItr.next();
             WeightHeightRegisterDTO wtHtDto=new WeightHeightRegisterDTO();
             
             System.out.println("CHILD TO BE  FETCHED----------------->"+htWtReg.getChildMaster().getChildProfileId());
             ChildDetails cd ;
             try{
             cd=(ChildDetails)hibernateTemplate.findByNamedQueryAndNamedParam("ChildDetails.findByChildProfileId_bom", "childProfileId",htWtReg.getChildMaster().getChildProfileId()).get(0);
             }catch(IndexOutOfBoundsException ie)
             {
                 ie.printStackTrace();
                 continue;
             }
             System.out.println("CHILD after FETCHED----------------->"+cd);
             cal.setTime(htWtReg.getHtWtRegisterPK().getHtWtDate());
             int curryear=cal.get(Calendar.YEAR);
             
             if(cd.getDob()!=null)
             {
             cal2.setTime(cd.getDob());
             int birthyear=cal2.get(Calendar.YEAR);
             
             int age= curryear-birthyear;
             wtHtDto.setAge(age);
             
             
             float height=htWtReg.getHtChild().floatValue();
             
             float bmi=((htWtReg.getWtChild().floatValue()/(height*height))*10000);
             wtHtDto.setBmi(bmi);
             }
             wtHtDto.setWhreg_profile_id(htWtReg.getHtWtRegisterPK().getChildProfileId());
             wtHtDto.setHtWtDate(htWtReg.getHtWtRegisterPK().getHtWtDate());
             wtHtDto.setWhreg_cname(cd.getChildName());
             
             wtHtDto.setWhreg_weight(htWtReg.getWtChild().toPlainString());
             wtHtDto.setWhreg_height(htWtReg.getHtChild().toPlainString());
             wtHtDto.setChildComplaints(htWtReg.getChildComplaints());
             wtHtDto.setWhreg_remarks(htWtReg.getRemarks());
             
             wtHtDtoList.add(wtHtDto);
         }
         
         
        System.out.println("******");
        }catch(HibernateException e)
        {
            e.getStackTrace();
        }
        return wtHtDtoList;
    }

    public List<MedicalGeneralRegister> viewMgen_by_date(Date mgen_fromdate, Date mgen_todate, String viewmgen_homeid)throws AppException
    {
        List<MedicalGeneralRegister> list_mgenreg = null;
        try
        {
            System.out.println("******"+mgen_fromdate+mgen_todate);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            //list_mgenreg = (List<MedicalGeneralRegister>) hibernateTemplate.find("from MedicalGeneralRegister mgenreg where mgenreg.medicalGeneralRegisterPK.homeId='"+viewmgen_homeid+"' and mgenreg.medicalGeneralRegisterPK.medRegDate > '"+sdf.format(mgen_fromdate)+"' and mgenreg.medicalGeneralRegisterPK.medRegDate < '"+sdf.format(mgen_todate)+"'");
            list_mgenreg = (List<MedicalGeneralRegister>) hibernateTemplate.find("from MedicalGeneralRegister mgenreg where mgenreg.medicalGeneralRegisterPK.homeId='"+viewmgen_homeid+"' and mgenreg.medicalGeneralRegisterPK.medRegDate BETWEEN '"+sdf.format(mgen_fromdate)+"' and '"+sdf.format(mgen_todate)+"'");
        System.out.println("******");
        }catch(HibernateException e)
        {
            e.getStackTrace();
        }
        return list_mgenreg;
    }

    public List<OpRegister> viewOP_by_date(Date op_fromdate, Date op_todate, String viewop_homeid)throws AppException
    {
        List list_opreg = null;
        Iterator iterator_opreg=null;
        List<OpRegister> listsecond_opreg = new ArrayList<OpRegister>();
        try
        {
            System.out.println("******"+op_fromdate+op_todate);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            //list_opreg =hibernateTemplate.find("select opreg.opRegisterPK.opDate, opreg.opRegisterPK.childProfileId, opreg.childMaster.childName from OpRegister opreg where opreg.childMaster.homeId.homeId='"+viewop_homeid+"' and opreg.opRegisterPK.opDate > '"+sdf.format(op_fromdate)+"' and opreg.opRegisterPK.opDate < '"+sdf.format(op_todate)+"'");
            list_opreg =hibernateTemplate.find("select opreg.opRegisterPK.opDate, opreg.opRegisterPK.childProfileId, opreg.childMaster.childName from OpRegister opreg where opreg.childMaster.homeId.homeId='"+viewop_homeid+"' and opreg.opRegisterPK.opDate BETWEEN '"+sdf.format(op_fromdate)+"' and '"+sdf.format(op_todate)+"'");

            /*for(OpRegister user: list_opreg){
                // you probably don't need the id, so I'll skip that
                Date date = user.getOpRegisterPK().getOpDate();
                String profid = user.getOpRegisterPK().getChildProfileId();
                String name = user.getChildMaster().getChildName();
                System.err.println(date+profid+name);
                // now do something with username and email address
            }*/
        for (int i = 0; i < list_opreg.size(); i++) {
            OpRegister tempopreg = new OpRegister();
            OpRegisterPK tempopregpk = new OpRegisterPK();
            ChildMaster tempopcm = new ChildMaster();
            Object[] obj = (Object[]) list_opreg.get(i);

            Date opdate = (Date) obj[0];
            tempopregpk.setOpDate(opdate);
            String opprofid = (String) obj[1];
            tempopregpk.setChildProfileId(opprofid);
            tempopcm.setChildProfileId(opprofid);
            String opchname = (String) obj[2];
            tempopcm.setChildName(opchname);
            tempopreg.setOpRegisterPK(tempopregpk);
            tempopreg.setChildMaster(tempopcm);
            listsecond_opreg.add(tempopreg);
        }

            /*System.out.println("size--->"+list_opreg.size());
            for(int i=0;i<listsecond_opreg.size();i++)
            {
                System.out.println(listsecond_opreg.get(i).getOpRegisterPK().getOpDate());
                System.out.println(listsecond_opreg.get(i).getOpRegisterPK().getChildProfileId());
                System.out.println(listsecond_opreg.get(i).getChildMaster().getChildName());
            }*/

            /*iterator_opreg=hibernateTemplate.iterate("select opreg.opRegisterPK.opDate, opreg.opRegisterPK.childProfileId, opreg.childMaster.childName from OpRegister opreg where opreg.childMaster.homeMaster.homeId='"+viewop_homeid+"' and opreg.opRegisterPK.opDate > '"+sdf.format(op_fromdate)+"' and opreg.opRegisterPK.opDate < '"+sdf.format(op_todate)+"'");
        for(int i=0;iterator_opreg.hasNext();i++){
            System.out.println("%%%%%%%%%");
       //Object[] row = (Object[]) iterator_opreg.next();
       System.out.println("date: " +iterator_opreg.next().toString());
       //System.out.println("profid: " + row[1]);
       //System.out.println("Name: " + row[2]);

     }*/
        System.out.println("******");
        }catch(HibernateException e)
        {
            System.out.println(e.getMessage());
            e.getStackTrace();
        }
        return listsecond_opreg;
    }

    public OpRegister getOPReg_by_id(String opreg_profid, Date opreg_date)throws AppException
    {
        OpRegister opreg_view=new OpRegister();
        List<OpRegister> single_opreg = null;
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
           single_opreg =(List<OpRegister>)hibernateTemplate.find("from OpRegister opreg where opreg.opRegisterPK.childProfileId='"+opreg_profid+"' and opreg.opRegisterPK.opDate = '"+sdf.format(opreg_date)+"'");
           for (int i = 0; i < single_opreg.size(); i++) {
            opreg_view=single_opreg.get(i);

           }
            return opreg_view;

        } catch (HibernateException e) {
            e.getStackTrace();
        }
        return opreg_view;
    }

    public List<ReferralRegister> viewRefe_by_date(Date refe_fromdate, Date refe_todate, String viewrefe_homeid)throws AppException
    {
       List list_refereg = null;
        List<ReferralRegister> listsecond_refereg = new ArrayList<ReferralRegister>();
        try
        {
            System.out.println("******"+refe_fromdate+refe_todate);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            //list_refereg =hibernateTemplate.find("select refereg.referralRegisterPK.referralDate, refereg.referralRegisterPK.childProfileId, refereg.childMaster.childName from ReferralRegister refereg where refereg.childMaster.homeId.homeId='"+viewrefe_homeid+"' and refereg.referralRegisterPK.referralDate > '"+sdf.format(refe_fromdate)+"' and refereg.referralRegisterPK.referralDate < '"+sdf.format(refe_todate)+"'");
            list_refereg =hibernateTemplate.find("select refereg.referralRegisterPK.referralDate, refereg.referralRegisterPK.childProfileId, refereg.childMaster.childName from ReferralRegister refereg where refereg.childMaster.homeId.homeId='"+viewrefe_homeid+"' and refereg.referralRegisterPK.referralDate BETWEEN '"+sdf.format(refe_fromdate)+"' and '"+sdf.format(refe_todate)+"'");

            for (int i = 0; i < list_refereg.size(); i++) {
            ReferralRegister temprefereg = new ReferralRegister();
            ReferralRegisterPK tempreferegpk = new ReferralRegisterPK();
            ChildMaster temprefecm = new ChildMaster();
            Object[] obj = (Object[]) list_refereg.get(i);

            Date refedate = (Date) obj[0];
            tempreferegpk.setReferralDate(refedate);
            String refeprofid = (String) obj[1];
            tempreferegpk.setChildProfileId(refeprofid);
            temprefecm.setChildProfileId(refeprofid);
            String refechname = (String) obj[2];
            temprefecm.setChildName(refechname);
            temprefereg.setReferralRegisterPK(tempreferegpk);
            temprefereg.setChildMaster(temprefecm);
            listsecond_refereg.add(temprefereg);
        }
        System.out.println("******");
        }catch(HibernateException e)
        {
            System.out.println(e.getMessage());
            e.getStackTrace();
        }
        return listsecond_refereg;
    }

    public ReferralRegister getRefeReg_by_id(String refereg_profid, Date refereg_date)throws AppException
    {
        ReferralRegister refereg_view=new ReferralRegister();
        List<ReferralRegister> single_refereg = null;
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
           single_refereg =(List<ReferralRegister>)hibernateTemplate.find("from ReferralRegister refereg where refereg.referralRegisterPK.childProfileId='"+refereg_profid+"' and refereg.referralRegisterPK.referralDate = '"+sdf.format(refereg_date)+"'");
           for (int i = 0; i < single_refereg.size(); i++) {
            refereg_view=single_refereg.get(i);
           }
            return refereg_view;

        } catch (HibernateException e) {
            e.getStackTrace();
        }
        return refereg_view;
    }

    public boolean updateAdmMedicalRegister(AdmMedicalRegister update_adm_reg)throws AppException
    {
        boolean result=false;
        try
        {
            hibernateTemplate.update(update_adm_reg);
            result=true;
        }
        catch(HibernateException e)
        {
            result=false;
        }
        return result;
    }
    
    /*----Anupam added on 10-01-2012--------START*/
    
     public String saveHtWtList(List<HtWtRegister> hwList) {
       
         String result = "error";
         
         try {
             hibernateTemplate.saveOrUpdateAll(hwList);
             result="success";
         } catch (Exception e) {
             System.out.println("----------------*Exception in saveHtWtList(List<HtWtRegister> hwList)*-------------");
             e.printStackTrace();
         }
         
         return result;
         
    }
    
    /*----Anupam added on 10-01-2012--------END*/
/* Added by vinumol 17/02/2012*/
    public List<AdmMedicalRegister> viewDiseaseChild_by_date(Date viewChildDisease_fromDate, Date viewChildDisease_toDate, String diseaselist_select, String view_childisease_homeid) {
        //List list_refereg = null;
          System.out.println("Vinumol's DAOimpl");
        List<AdmMedicalRegister> admList = new ArrayList<AdmMedicalRegister>();
        try
        {
            System.out.println("******"+viewChildDisease_fromDate+viewChildDisease_toDate);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            //list_refereg =hibernateTemplate.find("select refereg.referralRegisterPK.referralDate, refereg.referralRegisterPK.childProfileId, refereg.childMaster.childName from ReferralRegister refereg where refereg.childMaster.homeId.homeId='"+viewrefe_homeid+"' and refereg.referralRegisterPK.referralDate > '"+sdf.format(refe_fromdate)+"' and refereg.referralRegisterPK.referralDate < '"+sdf.format(refe_todate)+"'");
           if(diseaselist_select.equalsIgnoreCase("Physically Handicapped"))
           admList =hibernateTemplate.find("from AdmMedicalRegister admreg where admreg.childMaster.homeId.homeId='"+view_childisease_homeid+"' and admreg.phyHandicap='"+'Y'+"' and  admreg.childMaster.dateTimeAdm BETWEEN '"+sdf.format(viewChildDisease_fromDate)+"' and '"+sdf.format(viewChildDisease_toDate)+"'");
           else if(diseaselist_select.equalsIgnoreCase("Mentally Handicapped"))
           admList =hibernateTemplate.find("from AdmMedicalRegister admreg where admreg.childMaster.homeId.homeId='"+view_childisease_homeid+"' and admreg.mentalHand='"+'Y'+"' and  admreg.childMaster.dateTimeAdm BETWEEN '"+sdf.format(viewChildDisease_fromDate)+"' and '"+sdf.format(viewChildDisease_toDate)+"'");  
           else if(diseaselist_select.equalsIgnoreCase("Fits"))
           admList =hibernateTemplate.find("from AdmMedicalRegister admreg where admreg.childMaster.homeId.homeId='"+view_childisease_homeid+"' and admreg.caseOfFits='"+'Y'+"' and  admreg.childMaster.dateTimeAdm BETWEEN '"+sdf.format(viewChildDisease_fromDate)+"' and '"+sdf.format(viewChildDisease_toDate)+"'");
           else if(diseaselist_select.equalsIgnoreCase("Communicable Diseases"))
           admList =hibernateTemplate.find("from AdmMedicalRegister admreg where admreg.childMaster.homeId.homeId='"+view_childisease_homeid+"' and admreg.histCommunicableDisease='"+'Y'+"' and  admreg.childMaster.dateTimeAdm BETWEEN '"+sdf.format(viewChildDisease_fromDate)+"' and '"+sdf.format(viewChildDisease_toDate)+"'");
           System.out.println(admList);
        System.out.println("Vinumol's DAOimpl End");
        }catch(Exception e)
        {System.out.println("Vinumol's catch");
            e.printStackTrace();
            
        }
        return admList;
    }

 /* Added by vinumol 17/02/2012*/  
    
    
    public Map<String,Integer> getConsolidatedDiseaseReport(){
    
        Map<String,Integer> diseaseMap = new HashMap<String, Integer>(4);
        Map<String,String> temp = new HashMap<String, String>(4);
        
        temp.put("Physically Handicapped","SELECT COUNT(*)from AdmMedicalRegister admreg where admreg.childMaster.status='active' AND admreg.phyHandicap='Y'");
        temp.put("Mentally Handicapped","SELECT COUNT(*) from AdmMedicalRegister admreg where admreg.childMaster.status='active' AND admreg.mentalHand='Y'");
        temp.put("Fits","SELECT COUNT(*) from AdmMedicalRegister admreg where admreg.childMaster.status='active' AND admreg.caseOfFits='Y'");
        temp.put("Communicable Diseases","SELECT COUNT(*) from AdmMedicalRegister admreg where admreg.childMaster.status='active' and admreg.histCommunicableDisease='Y'");
        
                for (Map.Entry<String, String> entry : temp.entrySet())
                {
                    System.out.println(entry.getKey() + "---" + entry.getValue());
                    diseaseMap.put(entry.getKey(),((Long)hibernateTemplate.find(entry.getValue()).get(0)).intValue());
                }
        
        System.out.println("MAP = "+diseaseMap);
    return diseaseMap;
           
    }

}
