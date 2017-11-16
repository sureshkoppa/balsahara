/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "cwc_detail", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CwcDetail.findByActiveStatusAndCwcId", query = "SELECT c FROM CwcDetail c WHERE c.status='active' AND c.cwcDetailPK.cwcId = :cwcId"),
    @NamedQuery(name = "CwcDetail.findByUserIdAndActiveStatus", query = "SELECT c FROM CwcDetail c WHERE c.status='active' AND c.cwcDetailPK.userId = :userId"),
    
    
    
    @NamedQuery(name = "CwcDetail.findAll", query = "SELECT c FROM CwcDetail c"),
    @NamedQuery(name = "CwcDetail.findByCwcId", query = "SELECT c FROM CwcDetail c WHERE c.cwcDetailPK.cwcId = :cwcId"),
    @NamedQuery(name = "CwcDetail.findByUserId", query = "SELECT c FROM CwcDetail c WHERE c.cwcDetailPK.userId = :userId"),
    @NamedQuery(name = "CwcDetail.findByLastModifiedDate", query = "SELECT c FROM CwcDetail c WHERE c.cwcDetailPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "CwcDetail.findByDesignation", query = "SELECT c FROM CwcDetail c WHERE c.designation = :designation"),
    @NamedQuery(name = "CwcDetail.findByStartDate", query = "SELECT c FROM CwcDetail c WHERE c.startDate = :startDate"),
    @NamedQuery(name = "CwcDetail.findByEndDate", query = "SELECT c FROM CwcDetail c WHERE c.endDate = :endDate"),
    @NamedQuery(name = "CwcDetail.findByStatus", query = "SELECT c FROM CwcDetail c WHERE c.status = :status")})
public class CwcDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CwcDetailPK cwcDetailPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "DESIGNATION", nullable = false, length = 150)
    private String designation;
    @Column(name = "START_DATE")
    @Temporal(TemporalType.DATE)
    private Date startDate;
    @Column(name = "END_DATE")
    @Temporal(TemporalType.DATE)
    private Date endDate;
    @Size(max = 30)
    @Column(name = "STATUS", length = 30)
    private String status;
    @JoinColumn(name = "CWC_ID", referencedColumnName = "CWC_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private CwcHome cwcHome;

    public CwcDetail() {
    }

    public CwcDetail(CwcDetailPK cwcDetailPK) {
        this.cwcDetailPK = cwcDetailPK;
    }

    public CwcDetail(CwcDetailPK cwcDetailPK, String designation) {
        this.cwcDetailPK = cwcDetailPK;
        this.designation = designation;
    }

    public CwcDetail(int cwcId, String userId, Date lastModifiedDate) {
        this.cwcDetailPK = new CwcDetailPK(cwcId, userId, lastModifiedDate);
    }

    public CwcDetailPK getCwcDetailPK() {
        return cwcDetailPK;
    }

    public void setCwcDetailPK(CwcDetailPK cwcDetailPK) {
        this.cwcDetailPK = cwcDetailPK;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public CwcHome getCwcHome() {
        return cwcHome;
    }

    public void setCwcHome(CwcHome cwcHome) {
        this.cwcHome = cwcHome;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cwcDetailPK != null ? cwcDetailPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CwcDetail)) {
            return false;
        }
        CwcDetail other = (CwcDetail) object;
        if ((this.cwcDetailPK == null && other.cwcDetailPK != null) || (this.cwcDetailPK != null && !this.cwcDetailPK.equals(other.cwcDetailPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcDetail[ cwcDetailPK=" + cwcDetailPK + " ]";
    }
    
}
