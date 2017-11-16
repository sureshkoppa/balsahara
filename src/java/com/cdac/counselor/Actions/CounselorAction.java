/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.counselor.Actions;


import com.cdac.counselor.Service.CounselorService;
import com.cdac.common.util.StringToDate;
import java.util.List;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.CounselingDetails;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Iterator;
/**
 *
 * @author suresh
 */
public class CounselorAction extends ActionSupport{
     
     
     
    
     private List<ChildMaster> counsel_listChilds;
    
//     private CaseWorkerService caseWorkerService;
//
//    public CaseWorkerService getCaseWorkerService() {
//        return caseWorkerService;
//    }
//
//    public void setCaseWorkerService(CaseWorkerService caseWorkerService) {
//        this.caseWorkerService = caseWorkerService;
//    }

    public List<ChildMaster> getCounsel_listChilds() {
        return counsel_listChilds;
    }

    public void setCounsel_listChilds(List<ChildMaster> counsel_listChilds) {
        this.counsel_listChilds = counsel_listChilds;
    }

   
    
    public CounselorAction() {
    }
    
    public String execute() throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    public String populateAllChilds()
    {
        System.out.println("in side counselor action::populateAllChilds");
        try {
            List<ChildMaster> cList=counselorService.popChildsinHome(getLoggedInhome()); 
        setCounsel_listChilds(cList);
        } catch (Exception e) {
            System.out.println("ERROR in pop ---- ");
            e.printStackTrace();
        }
        
        
        return SUCCESS;
    }
    public String popCounseledChilds()
    {
        System.out.println("in side counselor action::popCounselChilds");
        try {
            List<ChildMaster> cList=counselorService.popCounselChilds(getLoggedInhome()); 
        setCounsel_listChilds(cList);
        } catch (Exception e) {
            System.out.println("ERROR in pop ---- ");
            e.printStackTrace();
        }
        
        
        return SUCCESS;
    }
    
    private String counsel_followup;
    private String counsel_profileId;
    private String counsel_date;
    private String child_counsel_select;
    private String counselTypeOthers;
    private String child_psycho_select;
    private String psychoTypeOthers;
    private String impress_case;
    private String isReported;
    private String reportingDate; 
    private String currSituation;
    private String followup_session;
    private String childCounsel;
    private String parentCounsel;
    private String siblingCounsel;
    private String otherCounsel;
    private String referrOutside;
    private String rehebService;
    private String namePlaceInst;   
    private String sharingChild;
    private String counselNotes;
    private String followUp_date;

    public String getChildCounsel() {
        return childCounsel;
    }

    public void setChildCounsel(String childCounsel) {
        this.childCounsel = childCounsel;
    }

    public String getChild_counsel_select() {
        return child_counsel_select;
    }

    public void setChild_counsel_select(String child_counsel_select) {
        this.child_counsel_select = child_counsel_select;
    }

    public String getCounsel_date() {
        return counsel_date;
    }

    public void setCounsel_date(String counsel_date) {
        this.counsel_date = counsel_date;
    }

    
    public String getChild_psycho_select() {
        return child_psycho_select;
    }

    public void setChild_psycho_select(String child_psycho_select) {
        this.child_psycho_select = child_psycho_select;
    }

    public String getCounselNotes() {
        return counselNotes;
    }

    public void setCounselNotes(String counselNotes) {
        this.counselNotes = counselNotes;
    }

    public String getCounselTypeOthers() {
        return counselTypeOthers;
    }

    public void setCounselTypeOthers(String counselTypeOthers) {
        this.counselTypeOthers = counselTypeOthers;
    }

    public String getCounsel_followup() {
        return counsel_followup;
    }

    public void setCounsel_followup(String counsel_followup) {
        this.counsel_followup = counsel_followup;
    }

    public String getCounsel_profileId() {
        return counsel_profileId;
    }

    public void setCounsel_profileId(String counsel_profileId) {
        this.counsel_profileId = counsel_profileId;
    }

    public String getCurrSituation() {
        return currSituation;
    }

    public void setCurrSituation(String currSituation) {
        this.currSituation = currSituation;
    }

    public String getFollowUp_date() {
        return followUp_date;
    }

    public void setFollowUp_date(String followUp_date) {
        this.followUp_date = followUp_date;
    }

    public String getFollowup_session() {
        return followup_session;
    }

    public void setFollowup_session(String followup_session) {
        this.followup_session = followup_session;
    }

    public String getImpress_case() {
        return impress_case;
    }

    public void setImpress_case(String impress_case) {
        this.impress_case = impress_case;
    }

    public String getIsReported() {
        return isReported;
    }

    public void setIsReported(String isReported) {
        this.isReported = isReported;
    }

    public String getNamePlaceInst() {
        return namePlaceInst;
    }

    public void setNamePlaceInst(String namePlaceInst) {
        this.namePlaceInst = namePlaceInst;
    }

    public String getOtherCounsel() {
        return otherCounsel;
    }

    public void setOtherCounsel(String otherCounsel) {
        this.otherCounsel = otherCounsel;
    }

    public String getParentCounsel() {
        return parentCounsel;
    }

    public void setParentCounsel(String parentCounsel) {
        this.parentCounsel = parentCounsel;
    }

    public String getPsychoTypeOthers() {
        return psychoTypeOthers;
    }

    public void setPsychoTypeOthers(String psychoTypeOthers) {
        this.psychoTypeOthers = psychoTypeOthers;
    }

    public String getReferrOutside() {
        return referrOutside;
    }

    public void setReferrOutside(String referrOutside) {
        this.referrOutside = referrOutside;
    }

    public String getRehebService() {
        return rehebService;
    }

    public void setRehebService(String rehebService) {
        this.rehebService = rehebService;
    }

    public String getReportingDate() {
        return reportingDate;
    }

    public void setReportingDate(String reportingDate) {
        this.reportingDate = reportingDate;
    }

    public String getSharingChild() {
        return sharingChild;
    }

    public void setSharingChild(String sharingChild) {
        this.sharingChild = sharingChild;
    }

    public String getSiblingCounsel() {
        return siblingCounsel;
    }

    public void setSiblingCounsel(String siblingCounsel) {
        this.siblingCounsel = siblingCounsel;
    }
    
    private CounselorService counselorService;

    public CounselorService getCounselorService() {
        return counselorService;
    }

    public void setCounselorService(CounselorService counselorService) {
        this.counselorService = counselorService;
    }

   
    
    public String counselChild()
    {
        try
        {
        String userid=ActionContext.getContext().getSession().get("userid").toString(); 
        counselorService.saveCounselChild(counsel_followup,counsel_date,counsel_profileId,child_counsel_select,counselTypeOthers,child_psycho_select,psychoTypeOthers,impress_case,isReported,reportingDate,currSituation,followup_session,childCounsel,parentCounsel,siblingCounsel,otherCounsel,referrOutside,rehebService,namePlaceInst,sharingChild,counselNotes,followUp_date,userid);
        
        return SUCCESS;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return ERROR;
        }
    }
    
    private String view_counsel_profileId;

    public String getView_counsel_profileId() {
        return view_counsel_profileId;
    }

    public void setView_counsel_profileId(String view_counsel_profileId) {
        this.view_counsel_profileId = view_counsel_profileId;
    }

    private List<CounselingDetails> counsel_profileId_view;

    public List<CounselingDetails> getCounsel_profileId_view() {
        return counsel_profileId_view;
    }

    public void setCounsel_profileId_view(List<CounselingDetails> counsel_profileId_view) {
        this.counsel_profileId_view = counsel_profileId_view;
    }

  

   
     public String viewCounselChid()
     {
        System.out.println("view_counsel_profileId = " + view_counsel_profileId);
        if(getView_counsel_profileId().equals("select"))
        {
            setCounsel_profileId_view(null);
        }
        else
        {
        List<CounselingDetails> cd= counselorService.viewCounselChild(getView_counsel_profileId());
        
        
        setCounsel_profileId_view(cd);
        }
        System.out.println("cd = " + getCounsel_profileId_view());
        
        return SUCCESS;
    }
    
    private String counselChildDate;

    public String getCounselChildDate() {
        return counselChildDate;
    }

    public void setCounselChildDate(String counselChildDate) {
        this.counselChildDate = counselChildDate;
    }
    private String selectCounselChild;

    public String getSelectCounselChild() {
        return selectCounselChild;
    }

    public void setSelectCounselChild(String selectCounselChild) {
        this.selectCounselChild = selectCounselChild;
    }

    private CounselingDetails counsel_Child_Detail;

    public CounselingDetails getCounsel_Child_Detail() {
        return counsel_Child_Detail;
    }

    public void setCounsel_Child_Detail(CounselingDetails counsel_Child_Detail) {
        this.counsel_Child_Detail = counsel_Child_Detail;
    }

    public String viewCounselDetail()
    {
        System.out.println("view_counsel_profileId = " + selectCounselChild);
        List<CounselingDetails> cd= counselorService.viewCounselChild(getSelectCounselChild());
        
        Iterator<CounselingDetails> cdItr= cd.iterator();
        
        while(cdItr.hasNext())
        {
            CounselingDetails cdObj=cdItr.next();
            if(cdObj.getCounselingDetailsPK().getDateOfCouncil().equals(StringToDate.getStringToDate(counselChildDate)))
            {
                setCounsel_Child_Detail(cdObj);
            }
        }
        //System.out.println("cd = " + cd);
        
        return SUCCESS;
    }
     public String getLoggedInhome()
    {
                System.out.println("gettig homeid"+ActionContext.getContext().getSession().get("homeid").toString());
              return ActionContext.getContext().getSession().get("homeid").toString(); 
    
    } 
}
