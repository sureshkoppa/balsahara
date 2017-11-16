/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.su.DAO;

import com.cdac.exceptions.AppException;
import com.cdac.su.DTO.ChildStatusDTO;
import com.cdac.usermanagement.ORM.AdmMedicalRegister;
import com.cdac.usermanagement.ORM.CashBook;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.HtWtRegister;
import com.cdac.usermanagement.ORM.MedicalGeneralRegister;
import com.cdac.usermanagement.ORM.OpRegister;
import com.cdac.usermanagement.ORM.ReferralRegister;
import com.cdac.usermanagement.ORM.UserMaster;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.GuardingSecurityDuty;
import com.cdac.usermanagement.ORM.GuardingSecurityInfo;
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
import org.hibernate.Criteria;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.orm.hibernate3.HibernateTemplate;
/**
 *
 * @author trainee
 */
public class SuperDAOImpl implements SuperDAO{

    private HibernateTemplate hibernateTemplate;
    public void setSessionFactory(SessionFactory sessionFactory){
     this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public HomeDetails getHomeDetails(String homeId) {
    HomeDetails homeDetails=new HomeDetails(homeId.trim());
    
        try {
            homeDetails=(HomeDetails)hibernateTemplate.get(HomeDetails.class, homeId.trim());
            
        } catch (Exception e) {
             System.out.println("----------------error in SuperDAO  getHomeDetails(String homeId)------");
            e.printStackTrace();
            
        }
    return homeDetails;
    
    }
    
    public String saveHomeDetails(HomeDetails homeDetails) {
        
        String result="error";
        
        try {
            hibernateTemplate.saveOrUpdate(homeDetails);
            result="success";
        } catch (Exception e) {
            System.out.println("----------------error in SuperDAO saveHomeDetails(HomeDetails homeDetails)------");
            e.printStackTrace();
            result="error";
        }
        return result;
    }
    
  public GuardingSecurityInfo addProfile(GuardingSecurityInfo gasinfo) {
        boolean save=false;
        
        System.out.println("::in dao::addProfile()::::"+gasinfo);
        try
        {
        System.out.println("::hibernateTemplate:::"+hibernateTemplate);    
        hibernateTemplate.saveOrUpdate(gasinfo);
        save=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            save=false;
        }
        System.out.println(":::in dao:::addProfile():::save="+save);
        return gasinfo;
    }

    public List<GuardingSecurityInfo> getAllProfiles(String homeid) {
        try
        {
        return hibernateTemplate.find("from GuardingSecurityInfo gsi where gsi.status=1 and gsi.homeId='"+homeid+"'");
        }
        catch(Exception e)
        {
            System.out.println(e);
            return null;
        }
        
    }

    public boolean addDuty(GuardingSecurityDuty gadinfo) 
    {
        boolean save=false;
        
        System.out.println("::in dao::addDuty()::::"+gadinfo);
        try
        {
        System.out.println("::hibernateTemplate:::"+hibernateTemplate);    
        hibernateTemplate.save(gadinfo);
        save=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            save=false;
        }
        System.out.println(":::in dao:::addDuty():::save="+save);
        return save;
        
    }

    public GuardingSecurityInfo populateSelectProfile(String str) {
        return (GuardingSecurityInfo)hibernateTemplate.find("from GuardingSecurityInfo gsi where gsi.status=1 and gsi.profileidSecstaff="+Integer.parseInt(str)).get(0);
        
    }

    public List<GuardingSecurityDuty> populateSelectDuty(String profile_id, Date fromDate, Date toDate) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        List l= hibernateTemplate.find("from GuardingSecurityDuty gsd where gsd.guardingSecurityDutyPK.profileidSecstaff="+profile_id+" and gsd.guardingSecurityDutyPK.dateOfDuty between '"+sdf.format(fromDate) +"'and '"+sdf.format(toDate)+"'");
        
        System.out.println("In dao::popSelectDuty():list is---->"+l);
        return l;
    }

    public List<GuardingSecurityDuty> popDatedProfile(String homeId, Date dutyDate) {
        
        try {
            String[] paramNames={"homeId","dateOfDuty"};
            
            HomeMaster hm=new HomeMaster(homeId);
            
            Object[] values={hm,dutyDate};
            
            return hibernateTemplate.findByNamedQueryAndNamedParam("GuardingSecurityDuty.popDatedProfile", paramNames, values);
            
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
    }

    public boolean addObservation(Date dutyDate, String profId, String obs) {
        
        try
        {
//        Session sess=hibernateTemplate.getSessionFactory().getCurrentSession();
//        Criteria crit =  sess.createCriteria(GuardingSecurityDuty.class);
//        
//        List objList=crit.add(Restrictions.eq("guardingSecurityDutyPK.profileidSecstaff", profId)).add(Restrictions.eq("guardingSecurityDutyPK.dateOfDuty", dutyDate)).list();
//        
//        System.out.println("------>list after criteria------"+objList);
//        
//        
//        for(Object obj :objList)
//        {
//            GuardingSecurityDuty gsd=(GuardingSecurityDuty)obj;
//            gsd.setObservations(obs);
//            
//            sess.save(obj);
//        }
            hibernateTemplate.update(this);
            
        return true;
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
            return false;
        }
    }
    
    public boolean updateObs(GuardingSecurityDuty gsd) {
        
        try {
             hibernateTemplate.saveOrUpdate(gsd);
             return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
            
        }
       
    }

    public GuardingSecurityDuty popDutyProfile(String str, Date dutyDate) {
       // SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
     // List list= hibernateTemplate.find("from GuardingSecurityDuty g where g.guardingSecurityDutyPK.profileidSecstaff="+Integer.parseInt(str)+" and g.guardingSecurityDutyPK.dateOfDuty="+dutyDate);
    String[] paramNames={"profileidSecstaff","dateOfDuty"};
    
    Object[] values={Integer.parseInt(str),dutyDate};
    
    
        List list=hibernateTemplate.findByNamedQueryAndNamedParam("GuardingSecurityDuty.findByProfileidSecstaffanddutydate", paramNames, values);
      System.out.println("-------->size"+list.size());
      
      return (GuardingSecurityDuty)list.get(0);
      
    }
  public List<ChildMaster> getChildInHome(String loggedInhome) {
        String paramNames="homeId";
        Object values=new HomeMaster(loggedInhome);
        
        return hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeId", paramNames, values);
        
    }

    public HomeMaster getHomeMater(String loggedInhome) {
        
      return    (HomeMaster)hibernateTemplate.get(HomeMaster.class, loggedInhome);
       
    }

    /*public ChildStatusDTO getChildStatus_by_date(String chomeId, Date report_fromdate, Date report_todate) {
       SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
       SimpleDateFormat sdf1=new SimpleDateFormat("dd-MM-yy");
        List l; List l7;List l8;List sub1;List sub2;List sub3;List sub4;List sub5;List sub6;
        List l1;
        List l2;
        List l3;
        List l4;
        List l5;
        List l6;
        List lst1;List lst2;List lst3;List lst4;
        ChildStatusDTO childStatusDTO =new ChildStatusDTO(); ;
       // int sDate;int sMonth;int sYear;
          //Calendar cal;
         //date = sdf.parse(report_fromdate);
        //  cal = Calendar.getInstance();
        //  cal.setTime(report_fromdate);
         // cal.set(Calendar.DAY_OF_MONTH,1);
        //  Date startDate=cal.getTime();
         // sDate=cal.get(Calendar.DAY_OF_MONTH);
         // System.out.println("the date is"+sDate);
         // sMonth=cal.get(Calendar.MONTH);
          //System.out.println("the month is"+sMonth);
          //sYear=cal.get(Calendar.YEAR);
          //System.out.println("the year  is"+sYear);
          //Date date= (new GregorianCalendar(sYear, sMonth, sDate)).getTime();
          
        l= hibernateTemplate.find("select count(c.childProfileId) from ChildMaster c where c.dateTimeAdm <'"+sdf.format(report_fromdate)+ "'and c.homeId= '"+chomeId+"'");
        int noOfadm1 = Integer.parseInt(l.get(0).toString());
        System.out.println("First open admission....!!!!!"+noOfadm1 );
        //sub1=hibernateTemplate.find("select count(distinct c.childProfileId) from DischargeRegister c  where  c.homeId= '"+chomeId+"'and c.childMaster.dateTimeAdm < '"+sdf.format(report_fromdate)+"'");
        //int noOfadm2 = Integer.parseInt(sub1.get(0).toString());
        //sub2=hibernateTemplate.find("select count(c.childProfileId) from ChildMaster c where c.dateTimeAdm <'"+sdf.format(report_fromdate)+ "'and c.lastModifiedBy c.status is  'active' and c.homeId= '"+chomeId+"'");
            //System.out.println("Second open admission....!!!!!"+noOfadm2 );
        //sub2=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where   c.childMaster.dateTimeAdm<'"+sdf.format(report_fromdate)+"'and c.status='runaway'  and c.childStatusPK.homeId= '"+chomeId+"'" );
       // int noOfadm3=Integer.parseInt(sub2.get(0).toString());
            //System.out.println("Third open admission....!!!!!"+noOfadm3 );
       // sub3=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where   c.childMaster.dateTimeAdm<'"+sdf.format(report_fromdate)+"'and c.status='missing'  and c.childStatusPK.homeId= '"+chomeId+"'" );
        //int noOfadm4=Integer.parseInt(sub3.get(0).toString());
          //  System.out.println("4th open admission....!!!!!"+noOfadm4 );
        //sub4=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where   c.childMaster.dateTimeAdm<'"+sdf.format(report_fromdate)+"'and c.status='shortleave'  and c.childStatusPK.homeId= '"+chomeId+"'" );
        //int noOfadm5=Integer.parseInt(sub4.get(0).toString());
            //System.out.println("5th open admission....!!!!!"+noOfadm5 );
        //sub5=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where   c.childMaster.dateTimeAdm<'"+sdf.format(report_fromdate)+"'and c.status='residential'  and c.childStatusPK.homeId= '"+chomeId+"'" );
        //int noOfadm6=Integer.parseInt(sub5.get(0).toString());
        //sub6=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where  c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childMaster.dateTimeAdm<'"+sdf.format(report_fromdate)+"'c.childMaster.status='runaway'  and c.childStatusPK.homeId= '"+chomeId+"'" );
        
        //System.out.println("6 th open admission....!!!!!"+noOfadm6 );
        //int totalOpenAdm=noOfadm1+noOfadm2+noOfadm3+noOfadm4+noOfadm5+noOfadm6;
        childStatusDTO.setNumOfOpenAdm(noOfadm1);
        
        //childStatusDTO.setNumOfOpenAdm(69);
        System.out.println("the result is"+l.get(0) );   
        l1=hibernateTemplate.find("select count(c.childProfileId) from ChildMaster c where c.dateTimeAdm between '"+sdf.format(report_fromdate)+"' and '"+sdf.format(report_todate)+"'and c.homeId= '"+chomeId+"'");
        //childStatusDTO.setNumOfNewAdm(1);
        int numOfNewAdm=Integer.parseInt(l1.get(0).toString());
        childStatusDTO.setNumOfNewAdm(numOfNewAdm);
        
        l2=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='shortleavereturn' and c.toDate between '"+sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'"); 
        int numOfReturnSL=Integer.parseInt(l2.get(0).toString());
        childStatusDTO.setNumOfReturnSL(numOfReturnSL);
        l3=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='runawaycameback' and c.toDate between '"+sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"' and c.childStatusPK.homeId= '"+chomeId+"'");
        int numOfRunBrtBk=Integer.parseInt(l3.get(0).toString());
        childStatusDTO.setNumOfRunBrtBk(numOfRunBrtBk);
        
        lst1=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='missingfound' and c.toDate between '"+sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"' and c.childStatusPK.homeId= '"+chomeId+"'");
        int numOfMissFnd=Integer.parseInt(lst1.get(0).toString());
        childStatusDTO.setNumOfMissFnd(numOfMissFnd);
        lst2=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='residentialreturned' and c.toDate between '"+sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"' and c.childStatusPK.homeId= '"+chomeId+"'");
        int numOfReturnResdent=Integer.parseInt(lst2.get(0).toString());
        childStatusDTO.setNumOfReturnResdent(numOfReturnResdent);
        
        
        l4=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='runaway' and c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'");
        int numOfRunAway=Integer.parseInt(l4.get(0).toString());
        childStatusDTO.setNumOfRunAway(numOfRunAway);
        l5=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='shortleave' and c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'");
        int numOfSentSL=Integer.parseInt(l5.get(0).toString());
        childStatusDTO.setNumOfSentSL(numOfSentSL);
        
        lst3=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='residential' and c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'");
        int numofResidential=Integer.parseInt(lst3.get(0).toString());
        childStatusDTO.setNumofResidential(numofResidential);
        lst4=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='missing' and c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'");
        int numofMissing=Integer.parseInt(lst4.get(0).toString());
        childStatusDTO.setNumofMissing(numofMissing);
        
        
        
        l6=hibernateTemplate.find("select count(c.childProfileId) from DischargeRegister c where c.transDischargeDate between '" +sdf.format(report_fromdate)+"' and '"+sdf.format(report_todate)+"'and c.homeId= '"+chomeId+"'");
        int numOfRelease=Integer.parseInt(l6.get(0).toString());
        childStatusDTO.setNumOfRelease(numOfRelease);
       //childStatusDTO.setNumOfRelease(1);
        //l7= hibernateTemplate.find("select count(distinct c.childProfileId) from ChildMaster c where c.dateTimeAdm<'"+sdf.format(report_todate)+ "' and c.homeId= '"+chomeId+"'");
        
        int numOfClosing=((noOfadm1+numOfNewAdm+numOfReturnSL+numOfRunBrtBk+numOfMissFnd+numOfReturnResdent)-(numOfRunAway+numOfSentSL+numOfRelease+numofResidential+numofMissing));
        childStatusDTO.setNumOfClosing(numOfClosing);
        //childStatusDTO.setNumOfClosing(Integer.parseInt(l7.get(0).toString()));
        
        childStatusDTO.setFromDate(sdf1.format(report_fromdate));
        childStatusDTO.setToDate(sdf1.format(report_todate));
        l8=hibernateTemplate.find("select h.homeName from HomeMaster h where h.homeId='"+chomeId+"'");
        System.out.println("The home name is3333333333333333333"+l8.get(0).toString());
        childStatusDTO.setHomename(l8.get(0).toString());
        return childStatusDTO;
    }*/
    public ChildStatusDTO getChildStatus_by_date(String chomeId, Date report_fromdate, Date report_todate) {
       SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
       SimpleDateFormat sdf1=new SimpleDateFormat("EEE, d MMM yyyy");
        List l; List l7;List l8;
        List l1;
        List l2;
        List l3;
        List l4;
        List l5;
        List l6;
        List lst1;List lst2;List lst3;List lst4;
        ChildStatusDTO childStatusDTO =new ChildStatusDTO(); ;
       // int sDate;int sMonth;int sYear;
          //Calendar cal;
          
          
         //date = sdf.parse(report_fromdate);
        //  cal = Calendar.getInstance();
        //  cal.setTime(report_fromdate);
         // cal.set(Calendar.DAY_OF_MONTH,1);
        //  Date startDate=cal.getTime();
         // sDate=cal.get(Calendar.DAY_OF_MONTH);
         // System.out.println("the date is"+sDate);
         // sMonth=cal.get(Calendar.MONTH);
          //System.out.println("the month is"+sMonth);
          //sYear=cal.get(Calendar.YEAR);
          //System.out.println("the year  is"+sYear);
          //Date date= (new GregorianCalendar(sYear, sMonth, sDate)).getTime();
          

          
       l= hibernateTemplate.find("select count(c.childProfileId) from ChildMaster c where c.dateTimeAdm <'"+sdf.format(report_fromdate)+ "' and c.homeId= '"+chomeId+"'");
       int a=Integer.parseInt(l.get(0).toString());
       int d= Integer.parseInt(hibernateTemplate.find("select count(d.childProfileId) from DischargeRegister d where d.transDischargeDate <'"+sdf.format(report_fromdate)+ "' and d.homeId= '"+chomeId+"'").get(0).toString());
       
       int a1=Integer.parseInt(hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.toDate <'"+sdf.format(report_fromdate)+ "'and c.type='runawaycameback'||'shortleavereturn'||'residentialreturned'||'missingfound' and c.childStatusPK.homeId= '"+chomeId+"'").get(0).toString());
        a=a+a1;
        
       int d1=Integer.parseInt(hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.fromDate <'"+sdf.format(report_fromdate)+ "'and c.type='runaway'||'shortleave'||'residential'||'missing' and c.childStatusPK.homeId= '"+chomeId+"'").get(0).toString()); 
        d=d+d1;
       
        childStatusDTO.setNumOfOpenAdm(a-d);
        //childStatusDTO.setNumOfOpenAdm(69);
        System.out.println("the result is"+l.get(0) );   
        l1=hibernateTemplate.find("select count(c.childProfileId) from ChildMaster c where c.dateTimeAdm between '"+sdf.format(report_fromdate)+"' and '"+sdf.format(report_todate)+"'and c.homeId= '"+chomeId+"'");
        int p1Adm=Integer.parseInt(l1.get(0).toString());
        childStatusDTO.setNumOfNewAdm(p1Adm);
        lst1=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='missingfound' and c.toDate between '"+sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"' and c.childStatusPK.homeId= '"+chomeId+"'");
        int numOfMissFnd=Integer.parseInt(lst1.get(0).toString());
        childStatusDTO.setNumOfMissFnd(numOfMissFnd);
        
        lst2=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='residentialreturned' and c.toDate between '"+sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"' and c.childStatusPK.homeId= '"+chomeId+"'");
        int numOfReturnResdent=Integer.parseInt(lst2.get(0).toString());
        childStatusDTO.setNumOfReturnResdent(numOfReturnResdent);
        
        l2=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='shortleavereturn' and c.toDate between '"+sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'"); 
        int p2Ret=Integer.parseInt(l2.get(0).toString());
        childStatusDTO.setNumOfReturnSL(p2Ret);
        
        l3=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='runawaycameback' and c.toDate between '"+sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"' and c.childStatusPK.homeId= '"+chomeId+"'");
        int p3Came=Integer.parseInt(l3.get(0).toString());
        childStatusDTO.setNumOfRunBrtBk(p3Came);
        
        l4=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='runaway' and c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'");
        int m2Ra=Integer.parseInt(l4.get(0).toString());
        childStatusDTO.setNumOfRunAway(m2Ra);
        
        l5=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='shortleave' and c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'");
        int m1Sl=Integer.parseInt(l5.get(0).toString());
        childStatusDTO.setNumOfSentSL(m1Sl);
        
        lst3=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='residential' and c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'");
        int numofResidential=Integer.parseInt(lst3.get(0).toString());
        childStatusDTO.setNumofResidential(numofResidential);
        
        lst4=hibernateTemplate.find("select count(c.childStatusPK.childProfileId) from ChildStatus c where c.type='missing' and c.fromDate  between '" +sdf.format(report_fromdate)+"' and  '"+sdf.format(report_todate)+"'and c.childStatusPK.homeId= '"+chomeId+"'");
        int numofMissing=Integer.parseInt(lst4.get(0).toString());
        childStatusDTO.setNumofMissing(numofMissing);
                                       
        l6=hibernateTemplate.find("select count(c.childProfileId) from DischargeRegister c where c.transDischargeDate between '" +sdf.format(report_fromdate)+"' and '"+sdf.format(report_todate)+"'and c.homeId= '"+chomeId+"'");
        int m3Dc=Integer.parseInt(l6.get(0).toString());
        childStatusDTO.setNumOfRelease(m3Dc);
    
        /*commented bcz it is not required(commented by suresh)*/ 
        //l7= hibernateTemplate.find("select count(c.childProfileId) from ChildMaster c where c.dateTimeAdm<='"+sdf.format(report_todate)+ "'and (c.status='active' and c.homeId= '"+chomeId+"')");
        
        int clBal=(a-d)+(p1Adm+p2Ret+p3Came+numOfMissFnd+numOfReturnResdent)-(m1Sl+m2Ra+m3Dc+numofResidential+numofMissing);
        childStatusDTO.setNumOfClosing(clBal);
      
        childStatusDTO.setFromDate(sdf1.format(report_fromdate));
        childStatusDTO.setToDate(sdf1.format(report_todate));
        l8=hibernateTemplate.find("select h.homeAddress from HomeDetails h where h.homeId='"+chomeId+"'");
        System.out.println("The home name is3333333333333333333"+l8.get(0).toString());
        childStatusDTO.setHomename(l8.get(0).toString());
        return childStatusDTO;

    }
     public String saveCashTrans(CashBook cb) {
       String result="error";
        
        try {
            hibernateTemplate.saveOrUpdate(cb);
            result="success";
        } catch (Exception e) {
            System.out.println("----------------error in SuperDAO saveHomeDetails(HomeDetails homeDetails)------");
            e.printStackTrace();
            result="error";
        }
        return result;
    }
    
   public long  getCash(HomeMaster hm, String trans)
   {
       try
       {
       return (Long) hibernateTemplate.find("select sum(cb.amount) from CashBook cb where cb.homeId.homeId='"+hm.getHomeId()+"' and cb.recpay='"+trans+"'").get(0);
       }
       catch(Exception e)
       {
              System.out.println("DAO---->getCash()--->"+e);       
              return 0;
       }
    
   }

    public List<CashBook> getCashTrByMonth(int genMonth, int genYear) {
        
        System.out.println("In DAO---------->getCashTrByMonth()-------------mon--->"+genMonth+"--------------year-->"+genYear);
        return hibernateTemplate.find("from CashBook cb where month(cb.chDate)="+genMonth+" and year(cb.chDate)="+genYear); 
    }

    public int getCurrentCash() {
        CashBook cb=(CashBook)hibernateTemplate.find("from CashBook c where c.lastModifiedDate in (select max(cb.lastModifiedDate) from CashBook cb) order by cashTrId desc").get(0);
        return cb.getMonendBal();
        
    }

    public long getOpenBalFor(int chMonth, int chYear) {
        
        List<CashBook> ch_list=hibernateTemplate.find("from CashBook cb where cb.chDate < '"+chYear+"-"+chMonth+"-"+"01' order by cb.chDate desc");
        
        return ch_list.get(0).getMonendBal();
        
    }
}
