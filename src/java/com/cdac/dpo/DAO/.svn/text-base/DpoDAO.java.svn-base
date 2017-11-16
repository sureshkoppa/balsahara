/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.dpo.DAO;

import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.SiChildDetails;
import com.cdac.usermanagement.ORM.SiFamily;
import com.cdac.usermanagement.ORM.SiFamilyDetails;
import com.cdac.usermanagement.ORM.SiChildhistoryDetails;
import com.cdac.usermanagement.ORM.ResultOfEnquery;
import java.util.List;

/**
 *
 * @author Ramu Parupalli
 */
public interface DpoDAO {
     public List<DistrictMaster> getDistrictList();
     public List<ChildMaster> getCallforDPOChildList(String homeid);
     public List<String> getCallForDPOChildIdStringList(String homeid);
     public ChildDetails getChildDetails(String childProfileId);
     public String save(SiChildDetails siChildDetails);
      public String saveSIFamilyDetails(SiFamilyDetails siFamilyDetails);
      public String saveChildBackgroundDetails(SiFamily siFamily);
      public String saveChildHistory(SiChildhistoryDetails siChildhistoryDetails);
      public String saveResultofEnquiry(ResultOfEnquery resultOfEnquery);
      //Added by vinumol
    public List<SiChildDetails>  getSichildDetails(String childProfileId);

    public List<SiFamilyDetails> getSiChildFamilyDetails(String childProfileId);

    public List<SiFamily> getSiChildFamily(String childProfileId);

    public List<SiChildhistoryDetails> getSiChildhistoryDetails(String childProfileId);

    public List<ResultOfEnquery> getSiResultOfEnquery(String childProfileId);
    //ended by vinumol
    
}
