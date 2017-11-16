/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.dpo.Service;
import com.cdac.dpo.DTO.SiChildDTO;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildDetailsPK;
import com.cdac.usermanagement.ORM.SiChildDetails;
import com.cdac.usermanagement.ORM.SiFamilyDetails;
import com.cdac.usermanagement.ORM.SiFamily;
import com.cdac.usermanagement.ORM.SiFamilyPK;
import com.cdac.usermanagement.ORM.SiChildhistoryDetails;
import com.cdac.usermanagement.ORM.ResultOfEnquery;
import java.util.List;

/**
 *
 * @author Ramu Parupalli
 */
public interface DpoService {
    
    public List<DistrictMaster> getDistrictList();

    public List<ChildMaster> getCallforDPOChildList(String homeId);

    public List<String> getCallforDPOChildIdStringList(String homeId);

    public ChildDetails getChildDetails(String childProfileId);

    public String saveSIChildDetails(SiChildDetails siChildDetails);

    public String saveSIFamilyDetails(SiFamilyDetails siFamilyDetails);

    public String saveChildBackgrounddetails(SiFamily siFamily);

    public String saveChildHistory(SiChildhistoryDetails siChildhistoryDetails);

    public String saveReultofEnquiry(ResultOfEnquery resultOfEnquery);
     
      //Added by vinumol
	
	public List<SiChildDTO>  getSichildDetails(String childProfileId);
	//ended by vinumol
}
