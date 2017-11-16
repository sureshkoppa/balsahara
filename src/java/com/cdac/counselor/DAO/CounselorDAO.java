/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.counselor.DAO;

import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.CounselingDetails;
import java.util.List;

/**
 *
 * @author suresh
 */
public interface CounselorDAO {

    public void saveCounselingDetails(CounselingDetails cd);

    public List<CounselingDetails> getCounselingDetails(String view_counsel_profileId);
    
     public List<ChildMaster> fetchChildrenInAHome(String homeId);

    public List<ChildMaster> fetchCounselChilds(String loggedInhome);
}
