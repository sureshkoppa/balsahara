/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.counselor.Service;

import com.cdac.counselor.DAO.CounselorDAO;
import com.cdac.common.util.StringToDate;
import com.cdac.usermanagement.ORM.ChildMaster;
import java.util.List;
import com.cdac.usermanagement.ORM.CounselingDetails;
import com.cdac.usermanagement.ORM.CounselingDetailsPK;

/**
 *
 * @author suresh
 */
public class CounselorServiceImpl implements CounselorService {
    
    private CounselorDAO counselorDAO;

    public CounselorDAO getCounselorDAO() {
        return counselorDAO;
    }

    public void setCounselorDAO(CounselorDAO counselorDAO) {
        this.counselorDAO = counselorDAO;
    }

    @Override
    public void saveCounselChild(String counsel_followup,String counsel_date, String counsel_profileId, String child_counsel_select, String counselTypeOthers, String child_psycho_select, String psychoTypeOthers, String impress_case, String reported, String reportingDate, String currSituation, String followup_session, String childCounsel, String parentCounsel, String siblingCousel, String otherCounsel, String referrOutside, String rehebService, String namePlaceInst, String sharingChild, String counselNotes, String followUp_date,String userId) {
        
        CounselingDetails cd=new CounselingDetails();
        CounselingDetailsPK cdpk;
        if(counsel_followup.equals("C"))
        {
            cdpk=new CounselingDetailsPK(counsel_profileId, StringToDate.getStringToDate(counsel_date));
         
          cd.setCounselingDetailsPK(cdpk);
          cd.setCounseling(child_counsel_select);
          
          if(child_counsel_select.equals("O"))
                cd.setCounselOthers(counselTypeOthers);
          
          cd.setPsychotherapy(child_psycho_select);
          if(child_psycho_select.equals("O"))
                cd.setPsychotherapy(psychoTypeOthers);
          
        }
        else if(counsel_followup.equals("F"))
        {
            cdpk=new CounselingDetailsPK(counsel_profileId, StringToDate.getStringToDate(reportingDate));
            cd.setCounselingDetailsPK(cdpk);
            cd.setCaseImpression(impress_case);
            cd.setCurrentSitChild(currSituation);
            cd.setFollowupSession(followup_session);
            
        }
        cd.setInmateCounsel(childCounsel);
        cd.setParentCounsel(parentCounsel);
        cd.setSiblingCounsel(siblingCousel);
        cd.setCounselOthers(otherCounsel);
        cd.setRefferedTo(referrOutside);
        cd.setRehabilation(rehebService);
        cd.setNameReferInst(namePlaceInst);
        cd.setSharingByChild(sharingChild);
        cd.setCounselorNotes(counselNotes);
        if(followUp_date!=null&&(!followUp_date.equals("")))
        cd.setFollowupDate(StringToDate.getStringToDate(followUp_date));
        cd.setLastModifiedBy(userId);
        
        
        counselorDAO.saveCounselingDetails(cd);
    }

    @Override
    public List<CounselingDetails> viewCounselChild(String view_counsel_profileId) {
        
         return counselorDAO.getCounselingDetails(view_counsel_profileId);
        
    }
    @Override
     public List<ChildMaster> popChildsinHome(String loggedInhome) {
        System.out.println("in side counselor service::populateAllChilds");
      return  counselorDAO.fetchChildrenInAHome(loggedInhome);
    }

    public List<ChildMaster> popCounselChilds(String loggedInhome) {
         return  counselorDAO.fetchCounselChilds(loggedInhome);
    }
     
    
    
}
