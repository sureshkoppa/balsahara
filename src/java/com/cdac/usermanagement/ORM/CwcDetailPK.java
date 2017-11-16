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
public class CwcDetailPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "CWC_ID", nullable = false)
    private int cwcId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "USER_ID", nullable = false, length = 30)
    private String userId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "LAST_MODIFIED_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastModifiedDate;

    public CwcDetailPK() {
    }

    public CwcDetailPK(int cwcId, String userId, Date lastModifiedDate) {
        this.cwcId = cwcId;
        this.userId = userId;
        this.lastModifiedDate = lastModifiedDate;
    }

    public int getCwcId() {
        return cwcId;
    }

    public void setCwcId(int cwcId) {
        this.cwcId = cwcId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
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
        hash += (int) cwcId;
        hash += (userId != null ? userId.hashCode() : 0);
        hash += (lastModifiedDate != null ? lastModifiedDate.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CwcDetailPK)) {
            return false;
        }
        CwcDetailPK other = (CwcDetailPK) object;
        if (this.cwcId != other.cwcId) {
            return false;
        }
        if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId))) {
            return false;
        }
        if ((this.lastModifiedDate == null && other.lastModifiedDate != null) || (this.lastModifiedDate != null && !this.lastModifiedDate.equals(other.lastModifiedDate))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcDetailPK[ cwcId=" + cwcId + ", userId=" + userId + ", lastModifiedDate=" + lastModifiedDate + " ]";
    }
    
}
