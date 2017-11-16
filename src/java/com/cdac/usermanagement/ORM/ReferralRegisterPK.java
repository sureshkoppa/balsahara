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
import javax.validation.constraints.Size;

/**
 *
 * @author ANUPAM
 */
@Embeddable
public class ReferralRegisterPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "REFERRAL_DATE", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date referralDate;

    public ReferralRegisterPK() {
    }

    public ReferralRegisterPK(String childProfileId, Date referralDate) {
        this.childProfileId = childProfileId;
        this.referralDate = referralDate;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public Date getReferralDate() {
        return referralDate;
    }

    public void setReferralDate(Date referralDate) {
        this.referralDate = referralDate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        hash += (referralDate != null ? referralDate.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ReferralRegisterPK)) {
            return false;
        }
        ReferralRegisterPK other = (ReferralRegisterPK) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        if ((this.referralDate == null && other.referralDate != null) || (this.referralDate != null && !this.referralDate.equals(other.referralDate))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ReferralRegisterPK[ childProfileId=" + childProfileId + ", referralDate=" + referralDate + " ]";
    }
    
}
