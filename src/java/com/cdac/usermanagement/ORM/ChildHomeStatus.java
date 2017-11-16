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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "child_home_status", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ChildHomeStatus.findAll", query = "SELECT c FROM ChildHomeStatus c"),
    @NamedQuery(name = "ChildHomeStatus.findByHomeId", query = "SELECT c FROM ChildHomeStatus c WHERE c.homeId = :homeId"),
    @NamedQuery(name = "ChildHomeStatus.findByChildProfileId", query = "SELECT c FROM ChildHomeStatus c WHERE c.childHomeStatusPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ChildHomeStatus.findByDate", query = "SELECT c FROM ChildHomeStatus c WHERE c.childHomeStatusPK.date = :date"),
    @NamedQuery(name = "ChildHomeStatus.findByReason", query = "SELECT c FROM ChildHomeStatus c WHERE c.reason = :reason"),
    @NamedQuery(name = "ChildHomeStatus.findByStatus", query = "SELECT c FROM ChildHomeStatus c WHERE c.status = :status")})
public class ChildHomeStatus implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ChildHomeStatusPK childHomeStatusPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "HOME_ID", nullable = false, length = 50)
    private String homeId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "REASON", nullable = false, length = 150)
    private String reason;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "STATUS", nullable = false, length = 20)
    private String status;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public ChildHomeStatus() {
    }

    public ChildHomeStatus(ChildHomeStatusPK childHomeStatusPK) {
        this.childHomeStatusPK = childHomeStatusPK;
    }

    public ChildHomeStatus(ChildHomeStatusPK childHomeStatusPK, String homeId, String reason, String status) {
        this.childHomeStatusPK = childHomeStatusPK;
        this.homeId = homeId;
        this.reason = reason;
        this.status = status;
    }

    public ChildHomeStatus(String childProfileId, Date date) {
        this.childHomeStatusPK = new ChildHomeStatusPK(childProfileId, date);
    }

    public ChildHomeStatusPK getChildHomeStatusPK() {
        return childHomeStatusPK;
    }

    public void setChildHomeStatusPK(ChildHomeStatusPK childHomeStatusPK) {
        this.childHomeStatusPK = childHomeStatusPK;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
        hash += (childHomeStatusPK != null ? childHomeStatusPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChildHomeStatus)) {
            return false;
        }
        ChildHomeStatus other = (ChildHomeStatus) object;
        if ((this.childHomeStatusPK == null && other.childHomeStatusPK != null) || (this.childHomeStatusPK != null && !this.childHomeStatusPK.equals(other.childHomeStatusPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ChildHomeStatus[ childHomeStatusPK=" + childHomeStatusPK + " ]";
    }
    
}
