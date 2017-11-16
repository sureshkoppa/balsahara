/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "ht_wt_register", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "HtWtRegister.findAll", query = "SELECT h FROM HtWtRegister h"),
    @NamedQuery(name = "HtWtRegister.findByChildProfileId", query = "SELECT h FROM HtWtRegister h WHERE h.htWtRegisterPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "HtWtRegister.findByHtChild", query = "SELECT h FROM HtWtRegister h WHERE h.htChild = :htChild"),
    @NamedQuery(name = "HtWtRegister.findByWtChild", query = "SELECT h FROM HtWtRegister h WHERE h.wtChild = :wtChild"),
    @NamedQuery(name = "HtWtRegister.findByHtWtDate", query = "SELECT h FROM HtWtRegister h WHERE h.htWtRegisterPK.htWtDate = :htWtDate"),
    @NamedQuery(name = "HtWtRegister.findByLastModifiedDate", query = "SELECT h FROM HtWtRegister h WHERE h.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "HtWtRegister.findByLastModifiedBy", query = "SELECT h FROM HtWtRegister h WHERE h.lastModifiedBy = :lastModifiedBy")})
public class HtWtRegister implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected HtWtRegisterPK htWtRegisterPK;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "HT_CHILD", precision = 5, scale = 2)
    private BigDecimal htChild;
    @Column(name = "WT_CHILD", precision = 5, scale = 2)
    private BigDecimal wtChild;
    @Lob
    @Size(max = 65535)
    @Column(name = "CHILD_COMPLAINTS")
    private String childComplaints;

    public String getChildComplaints() {
        return childComplaints;
    }

    public void setChildComplaints(String childComplaints) {
        this.childComplaints = childComplaints;
    }
    @Lob
    @Size(max = 65535)
    @Column(name = "REMARKS", length = 65535)
    private String remarks;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Size(max = 50)
    @Column(name = "LAST_MODIFIED_BY", length = 50)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public HtWtRegister() {
    }

    public HtWtRegister(HtWtRegisterPK htWtRegisterPK) {
        this.htWtRegisterPK = htWtRegisterPK;
    }

    public HtWtRegister(String childProfileId, Date htWtDate) {
        this.htWtRegisterPK = new HtWtRegisterPK(childProfileId, htWtDate);
    }

    public HtWtRegisterPK getHtWtRegisterPK() {
        return htWtRegisterPK;
    }

    public void setHtWtRegisterPK(HtWtRegisterPK htWtRegisterPK) {
        this.htWtRegisterPK = htWtRegisterPK;
    }

    public BigDecimal getHtChild() {
        return htChild;
    }

    public void setHtChild(BigDecimal htChild) {
        this.htChild = htChild;
    }

    public BigDecimal getWtChild() {
        return wtChild;
    }

    public void setWtChild(BigDecimal wtChild) {
        this.wtChild = wtChild;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    public ChildMaster getChildMaster() {
        return childMaster;
    }

    public void setChildMaster(ChildMaster childMaster) {
        this.childMaster = childMaster;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (htWtRegisterPK != null ? htWtRegisterPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HtWtRegister)) {
            return false;
        }
        HtWtRegister other = (HtWtRegister) object;
        if ((this.htWtRegisterPK == null && other.htWtRegisterPK != null) || (this.htWtRegisterPK != null && !this.htWtRegisterPK.equals(other.htWtRegisterPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.HtWtRegister[ htWtRegisterPK=" + htWtRegisterPK + " ]";
    }
    
}
