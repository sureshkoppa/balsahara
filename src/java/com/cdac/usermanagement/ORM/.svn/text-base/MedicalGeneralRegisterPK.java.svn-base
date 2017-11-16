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
public class MedicalGeneralRegisterPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "MED_REG_DATE", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date medRegDate;

    public MedicalGeneralRegisterPK() {
    }

    public MedicalGeneralRegisterPK(String homeId, Date medRegDate) {
        this.homeId = homeId;
        this.medRegDate = medRegDate;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public Date getMedRegDate() {
        return medRegDate;
    }

    public void setMedRegDate(Date medRegDate) {
        this.medRegDate = medRegDate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (homeId != null ? homeId.hashCode() : 0);
        hash += (medRegDate != null ? medRegDate.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MedicalGeneralRegisterPK)) {
            return false;
        }
        MedicalGeneralRegisterPK other = (MedicalGeneralRegisterPK) object;
        if ((this.homeId == null && other.homeId != null) || (this.homeId != null && !this.homeId.equals(other.homeId))) {
            return false;
        }
        if ((this.medRegDate == null && other.medRegDate != null) || (this.medRegDate != null && !this.medRegDate.equals(other.medRegDate))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.MedicalGeneralRegisterPK[ homeId=" + homeId + ", medRegDate=" + medRegDate + " ]";
    }
    
}
