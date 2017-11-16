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
public class HtWtRegisterPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "HT_WT_DATE", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date htWtDate;

    public HtWtRegisterPK() {
    }

    public HtWtRegisterPK(String childProfileId, Date htWtDate) {
        this.childProfileId = childProfileId;
        this.htWtDate = htWtDate;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public Date getHtWtDate() {
        return htWtDate;
    }

    public void setHtWtDate(Date htWtDate) {
        this.htWtDate = htWtDate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        hash += (htWtDate != null ? htWtDate.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HtWtRegisterPK)) {
            return false;
        }
        HtWtRegisterPK other = (HtWtRegisterPK) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        if ((this.htWtDate == null && other.htWtDate != null) || (this.htWtDate != null && !this.htWtDate.equals(other.htWtDate))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.HtWtRegisterPK[ childProfileId=" + childProfileId + ", htWtDate=" + htWtDate + " ]";
    }
    
}
