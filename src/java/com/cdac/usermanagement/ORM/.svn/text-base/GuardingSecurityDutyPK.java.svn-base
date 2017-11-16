/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

/**
 *
 * @author ANUPAM
 */
@Embeddable
public class GuardingSecurityDutyPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "PROFILEID_SECSTAFF", nullable = false)
    private int profileidSecstaff;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DATE_OF_DUTY", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateOfDuty;

    public GuardingSecurityDutyPK() {
    }

    public GuardingSecurityDutyPK(int profileidSecstaff, Date dateOfDuty) {
        this.profileidSecstaff = profileidSecstaff;
        this.dateOfDuty = dateOfDuty;
    }

    public int getProfileidSecstaff() {
        return profileidSecstaff;
    }

    public void setProfileidSecstaff(int profileidSecstaff) {
        this.profileidSecstaff = profileidSecstaff;
    }

    public Date getDateOfDuty() {
        return dateOfDuty;
    }

    public void setDateOfDuty(Date dateOfDuty) {
        this.dateOfDuty = dateOfDuty;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) profileidSecstaff;
        hash += (dateOfDuty != null ? dateOfDuty.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GuardingSecurityDutyPK)) {
            return false;
        }
        GuardingSecurityDutyPK other = (GuardingSecurityDutyPK) object;
        if (this.profileidSecstaff != other.profileidSecstaff) {
            return false;
        }
        if ((this.dateOfDuty == null && other.dateOfDuty != null) || (this.dateOfDuty != null && !this.dateOfDuty.equals(other.dateOfDuty))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.GuardingSecurityDutyPK[ profileidSecstaff=" + profileidSecstaff + ", dateOfDuty=" + dateOfDuty + " ]";
    }
    
}
