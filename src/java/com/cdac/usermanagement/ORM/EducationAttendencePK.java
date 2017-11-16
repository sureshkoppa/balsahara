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
public class EducationAttendencePK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "DATE_ATTD", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateAttd;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;

    public EducationAttendencePK() {
    }

    public EducationAttendencePK(Date dateAttd, String childProfileId) {
        this.dateAttd = dateAttd;
        this.childProfileId = childProfileId;
    }

    public Date getDateAttd() {
        return dateAttd;
    }

    public void setDateAttd(Date dateAttd) {
        this.dateAttd = dateAttd;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dateAttd != null ? dateAttd.hashCode() : 0);
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EducationAttendencePK)) {
            return false;
        }
        EducationAttendencePK other = (EducationAttendencePK) object;
        if ((this.dateAttd == null && other.dateAttd != null) || (this.dateAttd != null && !this.dateAttd.equals(other.dateAttd))) {
            return false;
        }
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.EducationAttendencePK[ dateAttd=" + dateAttd + ", childProfileId=" + childProfileId + " ]";
    }
    
}
