/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.DTO;

import java.util.Date;

/**
 *
 * @author ANUPAM
 */
public class StayingPeriodOfChildDTO {
    
    private String childProfileId;
    private String childName;
    private String childSurName;
    private Date dateOfAdmission;
    private int noOfMonthsStayed;

    public StayingPeriodOfChildDTO(String childProfileId, String childName, String childSurName, Date dateOfAdmission, int noOfMonthsStayed) {
        this.childProfileId = childProfileId;
        this.childName = childName;
        this.childSurName = childSurName;
        this.dateOfAdmission = dateOfAdmission;
        this.noOfMonthsStayed = noOfMonthsStayed;
    }
    
    
    

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getChildSurName() {
        return childSurName;
    }

    public void setChildSurName(String childSurName) {
        this.childSurName = childSurName;
    }

    public Date getDateOfAdmission() {
        return dateOfAdmission;
    }

    public void setDateOfAdmission(Date dateOfAdmission) {
        this.dateOfAdmission = dateOfAdmission;
    }

    public int getNoOfMonthsStayed() {
        return noOfMonthsStayed;
    }

    public void setNoOfMonthsStayed(int noOfMonthsStayed) {
        this.noOfMonthsStayed = noOfMonthsStayed;
    }

    @Override
    public String toString() {
        return "StayingPeriodOfChildDTO{" + "childProfileId=" + childProfileId + ", childName=" + childName + ", childSurName=" + childSurName + ", dateOfAdmission=" + dateOfAdmission + ", noOfMonthsStayed=" + noOfMonthsStayed + '}';
    }
    
    
    
}
