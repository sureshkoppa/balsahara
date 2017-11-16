/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.DTO;

/**
 *
 * @author Ramu Parupalli
 */
public class CWCMeetingMinutesDTO {
    

    private String childProfileId_cwc;
    private String observations;
    private String actiontobeTaken;
    private String followUp;
    private String orderIssued;
    private String cwcJjbOrderNo;
    private String remarks;

    public String getActiontobeTaken() {
        return actiontobeTaken;
    }

    public void setActiontobeTaken(String actiontobeTaken) {
        this.actiontobeTaken = actiontobeTaken;
    }

    public String getChildProfileId_cwc() {
        return childProfileId_cwc;
    }

    public void setChildProfileId_cwc(String childProfileId_cwc) {
        this.childProfileId_cwc = childProfileId_cwc;
    }

  

    public String getCwcJjbOrderNo() {
        return cwcJjbOrderNo;
    }

    public void setCwcJjbOrderNo(String cwcJjbOrderNo) {
        this.cwcJjbOrderNo = cwcJjbOrderNo;
    }

    public String getFollowUp() {
        return followUp;
    }

    public void setFollowUp(String followUp) {
        this.followUp = followUp;
    }

    public String getObservations() {
        return observations;
    }

    public void setObservations(String observations) {
        this.observations = observations;
    }

    public String getOrderIssued() {
        return orderIssued;
    }

    public void setOrderIssued(String orderIssued) {
        this.orderIssued = orderIssued;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
            
            
        
       
      
    
}
