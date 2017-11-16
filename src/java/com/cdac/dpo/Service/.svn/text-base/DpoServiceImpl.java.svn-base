/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.dpo.Service;

import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.ResultOfEnquery;
import com.cdac.usermanagement.ORM.SiChildDetails;
import com.cdac.usermanagement.ORM.SiChildhistoryDetails;
import com.cdac.usermanagement.ORM.SiFamily;
import java.util.List;
import com.cdac.dpo.DAO.DpoDAO;
import com.cdac.dpo.DTO.SiChildDTO;
import com.cdac.usermanagement.ORM.SiFamilyDetails;
import java.util.ArrayList;

/**
 *
 * @author Ramu Parupalli
 */
public class DpoServiceImpl implements DpoService {

  //  private DpoDAO
    
    private DpoDAO dpoDAO ;

    public DpoDAO getDpoDAO() {
        return dpoDAO;
    }

    public void setDpoDAO(DpoDAO dpoDAO) {
        this.dpoDAO = dpoDAO;
    }
    
    
    public List<DistrictMaster> getDistrictList() {
        //throw new UnsupportedOperationException("Not supported yet.");
        return dpoDAO.getDistrictList();
        
    }

    public List<ChildMaster> getCallforDPOChildList(String homeId) {
       // throw new UnsupportedOperationException("Not supported yet.");
        return dpoDAO.getCallforDPOChildList(homeId);
        
    }

    public ChildDetails getChildDetails(String childProfileId) {
      //  throw new UnsupportedOperationException("Not supported yet.");
        
        return dpoDAO.getChildDetails(childProfileId);
        
    }

    public String saveSIChildDetails(SiChildDetails siChildDetails) {
      //  throw new UnsupportedOperationException("Not supported yet.");
        
        return dpoDAO.save(siChildDetails);
        
        
    }

    public List<String> getCallforDPOChildIdStringList(String homeId) {
        //throw new UnsupportedOperationException("Not supported yet.");
        return dpoDAO.getCallForDPOChildIdStringList(homeId);
    }

    public String saveSIFamilyDetails(SiFamilyDetails siFamilyDetails) {
        return dpoDAO.saveSIFamilyDetails(siFamilyDetails);
        
        //throw new UnsupportedOperationException("Not supported yet.");
    }

    public String saveChildBackgrounddetails(SiFamily siFamily) {
        //throw new UnsupportedOperationException("Not supported yet.");
        
        
        return dpoDAO.saveChildBackgroundDetails(siFamily); 
    }

    public String saveChildHistory(SiChildhistoryDetails siChildhistoryDetails) {
       // throw new UnsupportedOperationException("Not supported yet.");
        
        return dpoDAO.saveChildHistory(siChildhistoryDetails);
    }

    public String saveReultofEnquiry(ResultOfEnquery resultOfEnquery) {
        //throw new UnsupportedOperationException("Not supported yet.");
        
        return dpoDAO.saveResultofEnquiry(resultOfEnquery);
    }

   //Added by vinumol
    public List<SiChildDTO>  getSichildDetails(String childProfileId) {
    List<SiChildDTO> sdtoList=new ArrayList<SiChildDTO>();     
    List<SiChildDetails> sicdList=new ArrayList<SiChildDetails>();
    List<SiFamilyDetails> sfdList=new ArrayList<SiFamilyDetails>();
    List<SiFamily> sifList=new ArrayList<SiFamily>();
    List<SiChildhistoryDetails> sihdList=new ArrayList<SiChildhistoryDetails>();
     List<ResultOfEnquery> eList=new ArrayList<ResultOfEnquery>();
    SiChildDTO sdto=new SiChildDTO();
    sicdList=dpoDAO.getSichildDetails(childProfileId);
    
    System.out.println("-------LIST in SERVICE getSiChildDetails-----"+sicdList.get(0).getChildName());
    if(!sicdList.isEmpty())
    {
     for(SiChildDetails sid:sicdList)   
     {
       sdto.setCwcJjbOrderNo(sid.getCwcJjbOrderNo());
       sdto.setOrderDate(sid.getOrderDate());
       sdto.setUndersection(sid.getUndersection());
       sdto.setNatureOffence(sid.getNatureOffence());
       sdto.setChildName(sid.getChildName());
       sdto.setFatherName(sid.getFatherName());
       sdto.setPermanentAddress(sid.getPermanentAddress());
       sdto.setPresentAddress(sid.getPresentAddress());
       sdto.setReligion(sid.getReligion());
       sdto.setCaste(sid.getCaste());
       sdto.setDob(sid.getDob());
       sdto.setAge(sid.getAge());
       sdto.setGender(sid.getGender());
       sdto.setPreviousInstiDetails(sid.getPreviousInstiDetails());
      
       sfdList=dpoDAO.getSiChildFamilyDetails(childProfileId);
       if(!sfdList.isEmpty())
       {
           sdto.setSifdList(sfdList);
       }
       sifList=dpoDAO.getSiChildFamily(childProfileId);
       if(!sifList.isEmpty())
       {
           sdto.setSifList(sifList);
       }
       sihdList=dpoDAO.getSiChildhistoryDetails(childProfileId);
      if(!sihdList.isEmpty())
       {
           sdto.setSihdList(sihdList);
       }
      eList=dpoDAO.getSiResultOfEnquery(childProfileId);
      if(!eList.isEmpty())
       {
           sdto.setEnqList(eList);
       }
       sdtoList.add(sdto);
     }
    }
      System.out.println("-------LIST in getSiChildDetails DTO -----"+sdto.getChildName());
     
      return sdtoList;
    }

 //Ended by vinumol  
    
}
