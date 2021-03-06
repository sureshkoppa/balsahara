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
@Table(name = "child_enquery", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ChildEnquery.findAll", query = "SELECT c FROM ChildEnquery c"),
    @NamedQuery(name = "ChildEnquery.findByChildProfileId", query = "SELECT c FROM ChildEnquery c WHERE c.childEnqueryPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ChildEnquery.findByHomeId", query = "SELECT c FROM ChildEnquery c WHERE c.childEnqueryPK.homeId = :homeId"),
    @NamedQuery(name = "ChildEnquery.findByUserId", query = "SELECT c FROM ChildEnquery c WHERE c.childEnqueryPK.userId = :userId"),
    @NamedQuery(name = "ChildEnquery.findByDateOfOrderIssued", query = "SELECT c FROM ChildEnquery c WHERE c.dateOfOrderIssued = :dateOfOrderIssued"),
    @NamedQuery(name = "ChildEnquery.findByOrderId", query = "SELECT c FROM ChildEnquery c WHERE c.orderId = :orderId"),
    @NamedQuery(name = "ChildEnquery.findByStatus", query = "SELECT c FROM ChildEnquery c WHERE c.status = :status"),
    @NamedQuery(name = "ChildEnquery.findByDateOfComplain", query = "SELECT c FROM ChildEnquery c WHERE c.dateOfComplain = :dateOfComplain")})
public class ChildEnquery implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ChildEnqueryPK childEnqueryPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "DATE_OF_ORDER_ISSUED", nullable = false, length = 30)
    private String dateOfOrderIssued;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "ORDER_ID", nullable = false, length = 30)
    private String orderId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "STATUS", nullable = false, length = 30)
    private String status;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DATE_OF_COMPLAIN", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateOfComplain;
    @JoinColumn(name = "USER_ID", referencedColumnName = "USER_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private UserMaster userMaster;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private HomeMaster homeMaster;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public ChildEnquery() {
    }

    public ChildEnquery(ChildEnqueryPK childEnqueryPK) {
        this.childEnqueryPK = childEnqueryPK;
    }

    public ChildEnquery(ChildEnqueryPK childEnqueryPK, String dateOfOrderIssued, String orderId, String status, Date dateOfComplain) {
        this.childEnqueryPK = childEnqueryPK;
        this.dateOfOrderIssued = dateOfOrderIssued;
        this.orderId = orderId;
        this.status = status;
        this.dateOfComplain = dateOfComplain;
    }

    public ChildEnquery(String childProfileId, String homeId, String userId) {
        this.childEnqueryPK = new ChildEnqueryPK(childProfileId, homeId, userId);
    }

    public ChildEnqueryPK getChildEnqueryPK() {
        return childEnqueryPK;
    }

    public void setChildEnqueryPK(ChildEnqueryPK childEnqueryPK) {
        this.childEnqueryPK = childEnqueryPK;
    }

    public String getDateOfOrderIssued() {
        return dateOfOrderIssued;
    }

    public void setDateOfOrderIssued(String dateOfOrderIssued) {
        this.dateOfOrderIssued = dateOfOrderIssued;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDateOfComplain() {
        return dateOfComplain;
    }

    public void setDateOfComplain(Date dateOfComplain) {
        this.dateOfComplain = dateOfComplain;
    }

    public UserMaster getUserMaster() {
        return userMaster;
    }

    public void setUserMaster(UserMaster userMaster) {
        this.userMaster = userMaster;
    }

    public HomeMaster getHomeMaster() {
        return homeMaster;
    }

    public void setHomeMaster(HomeMaster homeMaster) {
        this.homeMaster = homeMaster;
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
        hash += (childEnqueryPK != null ? childEnqueryPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChildEnquery)) {
            return false;
        }
        ChildEnquery other = (ChildEnquery) object;
        if ((this.childEnqueryPK == null && other.childEnqueryPK != null) || (this.childEnqueryPK != null && !this.childEnqueryPK.equals(other.childEnqueryPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ChildEnquery[ childEnqueryPK=" + childEnqueryPK + " ]";
    }
    
}
