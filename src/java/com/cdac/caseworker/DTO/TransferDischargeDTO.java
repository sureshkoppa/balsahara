/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.caseworker.DTO;

import java.util.Date;

/**
 *
 * @author NEELAVA
 */
public class TransferDischargeDTO {
     private String childIdToBeTransDis;
    private String transHomeId;
    private String cwcJjbNo;
    private String cwcJjbOrderDate;
    private String dateOfDischarge;
    private String remarks;

    private String handoverPersonName;
    private String personRelation;
    private String handoverPersonaddress;
    private String personContact;
    private String lastmodifiedBy;
    private String state;
    private String officerHome;
    private String homenameOtherstate;
    private String addressOtherstate;
    
    private String country;
    private String handedOverTo;

    private String actionTaken;
    
    public String getActionTaken() {
        return actionTaken;
    }

    public void setActionTaken(String actionTaken) {
        this.actionTaken = actionTaken;
    }

    public String getChildIdToBeTransDis() {
        return childIdToBeTransDis;
    }

    public void setChildIdToBeTransDis(String childIdToBeTransDis) {
        this.childIdToBeTransDis = childIdToBeTransDis;
    }

    public String getCwcJjbNo() {
        return cwcJjbNo;
    }

    public void setCwcJjbNo(String cwcJjbNo) {
        this.cwcJjbNo = cwcJjbNo;
    }

    public String getCwcJjbOrderDate() {
        return cwcJjbOrderDate;
    }

    public void setCwcJjbOrderDate(String cwcJjbOrderDate) {
        this.cwcJjbOrderDate = cwcJjbOrderDate;
    }

    public String getDateOfDischarge() {
        return dateOfDischarge;
    }

    public void setDateOfDischarge(String dateOfDischarge) {
        this.dateOfDischarge = dateOfDischarge;
    }

   

    public String getHandoverPersonName() {
        return handoverPersonName;
    }

    public void setHandoverPersonName(String handoverPersonName) {
        this.handoverPersonName = handoverPersonName;
    }

    public String getHandoverPersonaddress() {
        return handoverPersonaddress;
    }

    public void setHandoverPersonaddress(String handoverPersonaddress) {
        this.handoverPersonaddress = handoverPersonaddress;
    }

    public String getPersonRelation() {
        return personRelation;
    }

    public void setPersonRelation(String personRelation) {
        this.personRelation = personRelation;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getTransHomeId() {
        return transHomeId;
    }

    public void setTransHomeId(String transHomeId) {
        this.transHomeId = transHomeId;
    }

    public String getLastmodifiedBy() {
        return lastmodifiedBy;
    }

    public void setLastmodifiedBy(String lastmodifiedBy) {
        this.lastmodifiedBy = lastmodifiedBy;
    }

    public String getAddressOtherstate() {
        return addressOtherstate;
    }

    public void setAddressOtherstate(String addressOtherstate) {
        this.addressOtherstate = addressOtherstate;
    }

    public String getHomenameOtherstate() {
        return homenameOtherstate;
    }

    public void setHomenameOtherstate(String homenameOtherstate) {
        this.homenameOtherstate = homenameOtherstate;
    }

    public String getOfficerHome() {
        return officerHome;
    }

    public void setOfficerHome(String officerHome) {
        this.officerHome = officerHome;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPersonContact() {
        return personContact;
    }

    public void setPersonContact(String personContact) {
        this.personContact = personContact;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getHandedOverTo() {
        return handedOverTo;
    }

    public void setHandedOverTo(String handedOverTo) {
        this.handedOverTo = handedOverTo;
    }

    

    


}
