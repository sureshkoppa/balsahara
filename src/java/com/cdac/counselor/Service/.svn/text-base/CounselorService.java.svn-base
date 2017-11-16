/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.counselor.Service;

import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.CounselingDetails;
import java.util.List;

/**
 *
 * @author suresh
 */
public interface CounselorService {

    public void saveCounselChild(String counsel_followup,String counsel_date, String counsel_profileId, String child_counsel_select, String counselTypeOthers, String child_psycho_select, String psychoTypeOthers, String impress_case, String reported, String reportingDate, String currSituation, String followup_session, String childCounsel, String parentCounsel, String siblingCousel, String otherCounsel, String referrOutside, String rehebService, String namePlaceInst, String sharingChild, String counselNotes, String followUp_date,String userId);

    public List<CounselingDetails> viewCounselChild(String view_counsel_profileId);
      
   public List<ChildMaster> popChildsinHome(String loggedInhome);

    public List<ChildMaster> popCounselChilds(String loggedInhome);
}
