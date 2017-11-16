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
 * @author suresh
 */
@Embeddable
public class CounselingDetailsPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DATE_OF_COUNCIL", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateOfCouncil;

    public CounselingDetailsPK() {
    }

    public CounselingDetailsPK(String childProfileId, Date dateOfCouncil) {
        this.childProfileId = childProfileId;
        this.dateOfCouncil = dateOfCouncil;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public Date getDateOfCouncil() {
        return dateOfCouncil;
    }

    public void setDateOfCouncil(Date dateOfCouncil) {
        this.dateOfCouncil = dateOfCouncil;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        hash += (dateOfCouncil != null ? dateOfCouncil.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CounselingDetailsPK)) {
            return false;
        }
        CounselingDetailsPK other = (CounselingDetailsPK) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        if ((this.dateOfCouncil == null && other.dateOfCouncil != null) || (this.dateOfCouncil != null && !this.dateOfCouncil.equals(other.dateOfCouncil))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CounselingDetailsPK[ childProfileId=" + childProfileId + ", dateOfCouncil=" + dateOfCouncil + " ]";
    }
    
}
