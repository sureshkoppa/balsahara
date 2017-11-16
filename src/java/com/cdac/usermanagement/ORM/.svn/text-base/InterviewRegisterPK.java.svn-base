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
public class InterviewRegisterPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "LAST_MODIFIED_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastModifiedDate;

    public InterviewRegisterPK() {
    }

    public InterviewRegisterPK(String childProfileId, Date lastModifiedDate) {
        this.childProfileId = childProfileId;
        this.lastModifiedDate = lastModifiedDate;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        hash += (lastModifiedDate != null ? lastModifiedDate.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof InterviewRegisterPK)) {
            return false;
        }
        InterviewRegisterPK other = (InterviewRegisterPK) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        if ((this.lastModifiedDate == null && other.lastModifiedDate != null) || (this.lastModifiedDate != null && !this.lastModifiedDate.equals(other.lastModifiedDate))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.InterviewRegisterPK[ childProfileId=" + childProfileId + ", lastModifiedDate=" + lastModifiedDate + " ]";
    }
    
}
