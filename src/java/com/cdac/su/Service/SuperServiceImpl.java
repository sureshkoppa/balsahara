/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.su.Service;


import com.cdac.common.util.CurrentDateProvider;
import com.cdac.common.util.StringToDate;
import com.cdac.ds.dao.InventoryDAO;
import com.cdac.su.DAO.SuperDAO;
import com.cdac.su.DTO.CashDTO;
import com.cdac.su.DTO.ChildStatusDTO;
import com.cdac.su.DTO.GASDutyDTO;
import com.cdac.su.DTO.GASProfileDTO;
import com.cdac.su.DTO.GenLedger;
import com.cdac.usermanagement.ORM.CashBook;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.GuardingSecurityDuty;
import com.cdac.usermanagement.ORM.GuardingSecurityDutyPK;
import com.cdac.usermanagement.ORM.GuardingSecurityInfo;
import com.cdac.usermanagement.ORM.HomeMaster;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.ArrayList;
//import java.util.Hashtable;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

//import java.util.StringTokenizer;
/**
 *
 * @author trainee
 */
public class SuperServiceImpl implements SuperService{

    private SuperDAO superDAO;

    public SuperDAO getSuperDAO() {
        return superDAO;
    }

    public void setSuperDAO(SuperDAO superDAO) {
        this.superDAO = superDAO;
    }
    
    

    public HomeDetails getHomeDetails(String homeId) {
        return superDAO.getHomeDetails(homeId);
    }
    
    
    

    public String saveHomeDetails(HomeDetails homeDetails) {
        return superDAO.saveHomeDetails(homeDetails);
    }

    
    public List<GuardingSecurityInfo> populateAllProfile(String homeid)
   {
//       List<GASProfileDTO> gaspDtoList=new ArrayList<GASProfileDTO>();
//       
//       List<GuardingSecurityInfo> gasInfoList=superDAO.getAllProfiles();
//       
//       for(int i=0;i<gasInfoList.size();i++)
//       {
//           GASProfileDTO gasdto=new GASProfileDTO();
//           
//           gasdto.setProfile_id(gasInfoList.get(i).getProfileidSecstaff());
//           gasdto.setProfile_name(gasInfoList.get(i).getName());
//           
//           gaspDtoList.add(gasdto);
//           
//           
//       }
//       
//       System.out.println("in service: gas dto list:"+gaspDtoList);
//       return gaspDtoList;
       
       return superDAO.getAllProfiles(homeid);
       
   }

    public Integer addProfile(GASProfileDTO gaspdto,String homeid,String userid) {
       
            System.out.println("In super service:::addProfile method::gasdto="+gaspdto+"::gasp doj::"+gaspdto.getProfile_doj());
            GuardingSecurityInfo gsinfo=new  GuardingSecurityInfo();
            System.out.println("In super service:::addProfile method(()1::gsinfo="+gsinfo);
            
            //gsinfo.setHomeId(new HomeMaster("AP_ADI_RHB_0021"));
            gsinfo.setHomeId(new HomeMaster(homeid));
            gsinfo.setName(gaspdto.getProfile_name());
            gsinfo.setAge(gaspdto.getProfile_age());
            gsinfo.setDesignation(gaspdto.getProfile_desig());
            gsinfo.setContactAddress(gaspdto.getProfile_contactAddr());
            gsinfo.setContactNo(gaspdto.getProfile_contactPhno());
            gsinfo.setEmailId(gaspdto.getProfile_emailId());
            gsinfo.setDateOfJoining(gaspdto.getProfile_doj());
            
            gsinfo.setLastModifiedBy(userid);
            gsinfo.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
            System.out.println("In super service:::addProfile method()2::gsinfo="+gsinfo.getHomeId()+"::gs doj::"+gsinfo.getDateOfJoining());
           // System.out.println("In super service:::addProfile method::uploaded file="+gaspdto.getAddProfile_photo());
//            try {
//            
//                gsinfo.setPhotograph(getBytesFromFile(gaspdto.getAddProfile_photo()));
//            } catch (IOException ex) {
//                System.out.println(ex);
//                ex.printStackTrace();
//                Logger.getLogger(GASServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
//           
//            }
            gsinfo.setStatus(1);       //indicates profile is in active state on adding
            
            Integer pid=-1;
           
        try
        {
            System.out.println("In super service:::addProfile method::gsinfo="+gsinfo);
            GuardingSecurityInfo profile=superDAO.addProfile(gsinfo);
            pid=profile.getProfileidSecstaff();
            System.out.println("profile added???="+pid);
            
           
        }
        catch(Exception e)
        {
            System.out.println(e);
            e.printStackTrace();
            return 0;
        }
         return pid;
        
    }
    public boolean addDuty(GASDutyDTO gddto,String userid)
    {
            System.out.println("In super service:::addDuty method::gddto="+gddto);
            GuardingSecurityDuty gsduty=new  GuardingSecurityDuty();
            System.out.println("In super service:::addProfile method::gsinfo="+gsduty);
            
            
            GuardingSecurityDutyPK gsdpk=new GuardingSecurityDutyPK(Integer.parseInt(gddto.getAddDuty_profileid()), gddto.getAddDuty_date());
            
            gsduty.setGuardingSecurityDutyPK(gsdpk);
            SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");
            
            Date fromdatetime=null;
        try {
            fromdatetime = formatter.parse(gddto.getAddDuty_fromTime());
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
            Date todatetime=null;
        try {
            todatetime = formatter.parse(gddto.getAddDuty_toTime());
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
            
            
            gsduty.setFromTime(fromdatetime);
           // gsduty.setFromTime(new Date());
            
            
            gsduty.setToTime(todatetime);
           // gsduty.setToTime(new Date());
            gsduty.setDutyAt(gddto.getAddDuty_dutyAt());
            gsduty.setObservations(gddto.getAddDuty_observations());
            
            gsduty.setLastModifiedBy(userid);
            gsduty.setLastModifiedDate(new Date());
            
            if(superDAO.addDuty(gsduty));
            
                       
            
            return true;
            
        
    }
    
    
     public GASProfileDTO populateSelectProfile(String str) {
        GuardingSecurityInfo gasinfo= superDAO.populateSelectProfile(str);
        
        GASProfileDTO gasdto=new GASProfileDTO();
        gasdto.setProfile_id(gasinfo.getProfileidSecstaff());
        gasdto.setProfile_name(gasinfo.getName());
        gasdto.setProfile_age(gasinfo.getAge());
        gasdto.setProfile_contactAddr(gasinfo.getContactAddress());
        gasdto.setProfile_contactPhno(gasinfo.getContactNo());
        gasdto.setProfile_desig(gasinfo.getDesignation());
        gasdto.setProfile_emailId(gasinfo.getEmailId());
        gasdto.setProfile_doj(gasinfo.getDateOfJoining());
        
        return gasdto;
     }
    public boolean inActivateProfile(String str)
    {
        GuardingSecurityInfo gasinfo= superDAO.populateSelectProfile(str);
        
        try {
            gasinfo.setStatus(0);//makes profile inactive
            superDAO.addProfile(gasinfo);
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        
        
        return true;
    }
    
    
    
    
    // Returns the contents of the file in a byte array.
private byte[] getBytesFromFile(File file) throws IOException {
    InputStream is = new FileInputStream(file);

    // Get the size of the file
    long length = file.length();

    // You cannot create an array using a long type.
    // It needs to be an int type.
    // Before converting to an int type, check
    // to ensure that file is not larger than Integer.MAX_VALUE.
    if (length > Integer.MAX_VALUE) {
        // File is too large
    }

    // Create the byte array to hold the data
    byte[] bytes = new byte[(int)length];

    // Read in the bytes
    int offset = 0;
    int numRead = 0;
    while (offset < bytes.length
           && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
        offset += numRead;
    }

    // Ensure all the bytes have been read in
    if (offset < bytes.length) {
        throw new IOException("Could not completely read file "+file.getName());
    }

    // Close the input stream and return bytes
    is.close();
    return bytes;
}

    public boolean modifyProfile(GASProfileDTO gpdto,String userId) {
        GuardingSecurityInfo gasinfo=superDAO.populateSelectProfile(Integer.toString(gpdto.getProfile_id()));
        //gasinfo.setHomeId(new HomeMaster("AP_ADI_RHB_0021"));
        gasinfo.setAge(gpdto.getProfile_age());
        gasinfo.setContactAddress(gpdto.getProfile_contactAddr());
        gasinfo.setContactNo(gpdto.getProfile_contactPhno());
        //gasinfo.setDesignation("securiry");
        //gasinfo.setEmailId(gpdto.getProfile_emailId());
        gasinfo.setName(gpdto.getProfile_name());
        gasinfo.setLastModifiedBy(userId);
        gasinfo.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        //gasinfo.setProfileidSecstaff(gpdto.getProfile_id());
        //gasinfo.setDateOfJoining(gpdto.getProfile_doj());
        //gasinfo.setStatus(1);
        
       if((superDAO.addProfile(gasinfo).getProfileidSecstaff())!=-1)
           return true;
       else
           return false;
    }

    public List<GASDutyDTO> selectDutyDetails(String profileId, Date fromDate, Date toDate) {
        
        List<GuardingSecurityDuty> listGasDuty=superDAO.populateSelectDuty(profileId, fromDate, toDate);
        
        
        System.out.println("in service::selectDutyDetails():size of duty items returned"+listGasDuty.size());
        
        
        List<GASDutyDTO> listDutyDto=new ArrayList<GASDutyDTO>();
        
        for(int i=0;i<listGasDuty.size();i++)
        {
             GuardingSecurityDuty gsd=(GuardingSecurityDuty)listGasDuty.get(i);
             GASDutyDTO gsddto=new GASDutyDTO();
             
             gsddto.setAddDuty_profileid(Integer.toString(gsd.getGuardingSecurityDutyPK().getProfileidSecstaff()));
             gsddto.setAddDuty_date(gsd.getGuardingSecurityDutyPK().getDateOfDuty());
             
             System.out.println("in service ::select duty details()::from time :::: to time"+gsd.getFromTime()+":::"+gsd.getToTime());
             
             
             SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");
            
             gsddto.setAddDuty_fromTime(formatter.format(gsd.getFromTime()));
             gsddto.setAddDuty_toTime(formatter.format(gsd.getToTime())); 
            
             gsddto.setAddDuty_dutyAt(gsd.getDutyAt());
             gsddto.setAddDuty_observations(gsd.getObservations());
             
             listDutyDto.add(gsddto);
        
                
        }
        System.out.println("in service::popDutyDto():size of duty items added"+listDutyDto.size());
        return listDutyDto;
        
        
    }

    public List<GASDutyDTO> populateDatedProfile(String homeId, Date dutyDate) {
     
      List<GuardingSecurityDuty> dutylist=superDAO.popDatedProfile(homeId,dutyDate);  
      
      System.out.println("in super service::populateDatedProfile:::ORM s got"+dutylist);
      
      List<GASDutyDTO> dutyDtoList=new ArrayList<GASDutyDTO>();
      if(dutylist!=null)
      {
          for (GuardingSecurityDuty dutyOrm : dutylist) {
              
              GASDutyDTO gasDutyDto = new GASDutyDTO();
              gasDutyDto.setAddDuty_profileid(Integer.toString(dutyOrm.getGuardingSecurityDutyPK().getProfileidSecstaff()));
              gasDutyDto.setAddDuty_date(dutyOrm.getGuardingSecurityDutyPK().getDateOfDuty());
              gasDutyDto.setAddDuty_fromTime(dutyOrm.getFromTime().toString());
              gasDutyDto.setAddDuty_toTime(dutyOrm.getToTime().toString());
              gasDutyDto.setAddDuty_dutyAt(dutyOrm.getDutyAt());
              gasDutyDto.setAddDuty_observations(dutyOrm.getObservations());
              
              GuardingSecurityInfo infoOrm=superDAO.populateSelectProfile(Integer.toString(dutyOrm.getGuardingSecurityDutyPK().getProfileidSecstaff()));
              
              gasDutyDto.setProfile_name(infoOrm.getName());
              gasDutyDto.setContactNo(infoOrm.getContactNo());
              gasDutyDto.setDesignation(infoOrm.getDesignation());
              
              dutyDtoList.add(gasDutyDto);
              
          }
          
         // GASDutyDTO dutyDto=new GASDutyDTO();
          
          System.out.println("in super service::populateDatedProfile:::DTO s set"+dutyDtoList);
          
          return  dutyDtoList;
             
      }
      else
      {
          
          return null;
          
      }
        
        
    }

    public boolean addObservation(Date dutyDate, List<String> profileList, Map<String,String> objMap) {
        
        try {
            for(String str:profileList)
            {
              String val=objMap.get(str);
              
              //GuardingSecurityDuty gsd=new GuardingSecurityDuty(Integer.parseInt(str), dutyDate);
              
              GuardingSecurityDuty gsd=superDAO.popDutyProfile(str,dutyDate);
              
              gsd.setObservations(val);
              
             // superDAO.addObservation(dutyDate, (String)str, val);
              
              superDAO.updateObs(gsd);
            
            }
            return true;
        
            
        } catch (Exception e) {
            e.printStackTrace();
            return  false;
                    
        }
          
    }
    
    
    
public Map<Integer,Integer> getAgewiseDetails(String loggedInhome) {
        
        
       List<ChildMaster> clist= superDAO.getChildInHome(loggedInhome);
       Iterator citr=clist.iterator();
       
       Map<Integer,Integer> ageMap=new HashMap<Integer,Integer>();
       
       for(int i=6;i<=19;i++)
       {
       ageMap.put(i, 0);
       }
       SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
       while(citr.hasNext())
       {
           ChildMaster cm=(ChildMaster)citr.next();
           
           int age=cm.getAge()+Calendar.getInstance().get(Calendar.YEAR)-Integer.parseInt(sdf.format(cm.getDateTimeAdm()));
           
           if(age<=6)
           {
               ageMap.put(6, ageMap.get(6)+1);
           }
           else if(age>=19)
           {
               ageMap.put(19, ageMap.get(19)+1);
           }
           else
               ageMap.put(age, ageMap.get(age)+1);
           
       }
       
       
       
        return ageMap;
    }

    public Map<String,String> getHomeAddress(String loggedInhome) {
        Map<String,String> address=new HashMap<String,String>();
        
        HomeMaster hm=superDAO.getHomeMater(loggedInhome);
        HomeDetails hd=superDAO.getHomeDetails(loggedInhome);
        
        Map<String,String> hometype=new HashMap();
        hometype.put("CHB", "Children Home For Boys");
        hometype.put("RUB", "Reception Unit For Boys");
        hometype.put("CHG", "Children Home For Girls");
        hometype.put("RUG", "Reception Unit For Girls");
        hometype.put("OHB", "Observation Home For Boys");
        hometype.put("SHB", "Special Home For Boys");
        hometype.put("OHG", "Observation Home For Girls");
        hometype.put("SHG", "Special Home For Girls");
        
        
        address.put("name",hometype.get(hm.getHomeName()));
        address.put("addr",hd.getHomeAddress());
        address.put("dist",hm.getDistrictId().getDistrictName());
        
                
        return  address;       
    }

    public List<ChildMaster> getChildsHome_Age(String loggedInhome, int childAge_report) {
       List<ChildMaster> clist= superDAO.getChildInHome(loggedInhome);
       Iterator citr=clist.iterator();
       
       List<ChildMaster> ageList=new ArrayList<ChildMaster>();
       
       SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
       while(citr.hasNext())
       {
           ChildMaster cm=(ChildMaster)citr.next();
           
           int age=cm.getAge()+Calendar.getInstance().get(Calendar.YEAR)-Integer.parseInt(sdf.format(cm.getDateTimeAdm()));
           
           if(childAge_report<=6)
           {
               if(age<=6)
               {
                   cm.setAge(age);
                   ageList.add(cm);
               }
           }
           else if(childAge_report>=19)
           {
               if(age>=19)
               {
                   cm.setAge(age);
                   ageList.add(cm);
               }
           }
           else if(age==childAge_report)
           {
               cm.setAge(age);
               ageList.add(cm);
           }
       
           
           
       }
    
      return ageList;
    

    }

    public ChildStatusDTO getChildStatus_by_date(String chomeId, Date report_fromdate1, Date report_todate1) {
      return superDAO.getChildStatus_by_date(chomeId,report_fromdate1,report_todate1);

    }


    public boolean saveCashTrans(String csh_date, String csh_amt, String csh_part, String csh_trans, String csh_rptNo, String csh_rptFrom, String csh_pmtNo, String csh_paidTo,String homeid) {
        try
        {
        CashBook cb=new CashBook();
        cb.setChDate(StringToDate.getStringToDate(csh_date));
        cb.setAmount(Integer.parseInt(csh_amt));
        cb.setParticulars(csh_part);
        cb.setRecpay(csh_trans);
        
        int currCash=superDAO.getCurrentCash();
        if(csh_trans.equals("r"))
        {
            cb.setRorpayno(csh_rptNo);
            cb.setRecorpaid(csh_rptFrom);
            cb.setMonendBal(currCash+Integer.parseInt(csh_amt));
        }
        else if(csh_trans.equals("p"))
        {
            cb.setRorpayno(csh_pmtNo);
            cb.setRecorpaid(csh_paidTo);
            cb.setMonendBal(currCash-Integer.parseInt(csh_amt));
        }
            cb.setHomeId(superDAO.getHomeMater(homeid));
            
            cb.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
            if(superDAO.saveCashTrans(cb).equals("error"))
                    {
                        return false;
                    }
            return true;
        }
        catch(Exception e)
        {
            System.out.println("exe------->"+e);
            return false;
        }
    }
   
   public long showAvailCash(String homeId)
   {
        try
        {
             HomeMaster hm=superDAO.getHomeMater(homeId);
             
             long recv_cash=superDAO.getCash(hm,"r");
             
             long paid_cash=superDAO.getCash(hm,"p");
             
             return recv_cash-paid_cash;
           
            
        }
        catch(Exception e)
        {
            System.out.println("exe-------->"+e);
            return 0;
        }
   }

    public List<GenLedger> getGenLedgeList(String gl_month, String gl_year) {
         int genMonth=Integer.parseInt(gl_month);
         int genYear=Integer.parseInt(gl_year);
        
         List<CashBook> cbList=superDAO.getCashTrByMonth(genMonth,genYear);
         
         System.out.println("in service-------->"+cbList);
         
         List<GenLedger> glList=new ArrayList<GenLedger>();
         
         for(int i=0;i<cbList.size();i++)
         {
             CashBook cb=cbList.get(i);
             
             GenLedger gl=new GenLedger();
            
            DateFormat outputFormatter = new SimpleDateFormat("dd/MM/yyyy");
             String output = outputFormatter.format(cb.getChDate()); // Output : 01/20/2012
           
             gl.setMonth(gl_month);
             gl.setDate(output);
             
             gl.setAccount("");
             gl.setAccDesc("");
             if(cb.getRecpay().equals("r"))
                 gl.setDebit(cb.getAmount());
             else 
                 gl.setCredit(cb.getAmount());
             gl.setJorHead("CASH");
             gl.setCumCrt(0);
             gl.setCumDbt(0);
             
             glList.add(gl);
         }
         
         return glList;
    }

    public CashDTO selCashBookFor(String ch_month, String ch_year) {
        int chMonth=Integer.parseInt(ch_month);
        int chYear=Integer.parseInt(ch_year);
         CashDTO cashDto=new CashDTO();
        try
        {
        List<CashBook> chMonList=superDAO.getCashTrByMonth(chMonth, chYear);
        
        System.out.println("ch list returned---->"+chMonList);
       
        cashDto.setChlist(chMonList);
        
        
         SimpleDateFormat sdfSource = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss");
         SimpleDateFormat sdfDest = new SimpleDateFormat("dd-MM-yyyy");
        
        long monOpenBal=superDAO.getOpenBalFor(chMonth,chYear);
        //cashDto.setMonOpen_Bal(chMonList.get(0).getMonendBal());
            System.out.println("got mon open bal---------->"+monOpenBal);
        cashDto.setMonOpen_Bal(monOpenBal);
        if(!chMonList.isEmpty())
        {
        CashBook cbLast=cashDto.getChlist().get(0);
        //cbLast.setChDate(sdfDest.parse(cbLast.getChDate().toString()));
        cashDto.getChlist().get(0).setHomeId(null);
            System.out.println("cbLast------------->"+cbLast);
         for (int j=1; j < cashDto.getChlist().size(); j++) {
             
            /* String dtr=cashDto.getChlist().get(i).getChDate().toString();
             System.out.println("conver string-----------"+i+"---->"+dtr);
             cashDto.getChlist().get(i).setChDate(sdfDest.parse(dtr));*/
             //System.out.println("j===>"+j+"++++++++++++chMonList");
             if(cbLast.getChDate().compareTo(cashDto.getChlist().get(j).getChDate())<0)
             {
                 
                 cbLast=cashDto.getChlist().get(j);
             }
             cashDto.getChlist().get(j).setHomeId(null);
             
           //  cashDto.getChlist().get(i).setChDate(sdfDest.parse(sdfSource.format(cashDto.getChlist().get(i).getChDate())));
         }
        
        cashDto.setMonEnd_Bal(cbLast.getMonendBal());
        }
        else
        {
            cashDto.setMonEnd_Bal(monOpenBal);
        }
        }
        catch(Exception e)
        {
            System.out.println("==exe==>"+e);
        }
        
        return cashDto;
    }
   
}
