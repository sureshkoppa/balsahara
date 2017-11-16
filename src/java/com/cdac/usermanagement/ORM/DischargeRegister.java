/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
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
@Table(name = "discharge_register", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DischargeRegister.findAll", query = "SELECT d FROM DischargeRegister d"),
    @NamedQuery(name = "DischargeRegister.findByHomeId", query = "SELECT d FROM DischargeRegister d WHERE d.homeId = :homeId"),
    @NamedQuery(name = "DischargeRegister.findByChildProfileId", query = "SELECT d FROM DischargeRegister d WHERE d.childProfileId = :childProfileId"),
    @NamedQuery(name = "DischargeRegister.findByCwcJjbOrderNo", query = "SELECT d FROM DischargeRegister d WHERE d.cwcJjbOrderNo = :cwcJjbOrderNo"),
    @NamedQuery(name = "DischargeRegister.findByOrderDate", query = "SELECT d FROM DischargeRegister d WHERE d.orderDate = :orderDate"),
    @NamedQuery(name = "DischargeRegister.findByTransDischargeDate", query = "SELECT d FROM DischargeRegister d WHERE d.transDischargeDate = :transDischargeDate"),
    @NamedQuery(name = "DischargeRegister.findByTransHomeId", query = "SELECT d FROM DischargeRegister d WHERE d.transHomeId = :transHomeId"),
    @NamedQuery(name = "DischargeRegister.findByPersonHandedOver", query = "SELECT d FROM DischargeRegister d WHERE d.personHandedOver = :personHandedOver"),
    @NamedQuery(name = "DischargeRegister.findByRelationshipChild", query = "SELECT d FROM DischargeRegister d WHERE d.relationshipChild = :relationshipChild"),
    @NamedQuery(name = "DischargeRegister.findByPersonAddress", query = "SELECT d FROM DischargeRegister d WHERE d.personAddress = :personAddress"),
    @NamedQuery(name = "DischargeRegister.findByPersonContact", query = "SELECT d FROM DischargeRegister d WHERE d.personContact = :personContact"),
    @NamedQuery(name = "DischargeRegister.findByActionTaken", query = "SELECT d FROM DischargeRegister d WHERE d.actionTaken = :actionTaken"),
    @NamedQuery(name = "DischargeRegister.findByState", query = "SELECT d FROM DischargeRegister d WHERE d.state = :state"),
    @NamedQuery(name = "DischargeRegister.findByHomenameOtherstate", query = "SELECT d FROM DischargeRegister d WHERE d.homenameOtherstate = :homenameOtherstate"),
    @NamedQuery(name = "DischargeRegister.findByOfficerHome", query = "SELECT d FROM DischargeRegister d WHERE d.officerHome = :officerHome"),
    @NamedQuery(name = "DischargeRegister.findByRemarks", query = "SELECT d FROM DischargeRegister d WHERE d.remarks = :remarks"),
    @NamedQuery(name = "DischargeRegister.findByPersonPhoto", query = "SELECT d FROM DischargeRegister d WHERE d.personPhoto = :personPhoto"),
    @NamedQuery(name = "DischargeRegister.findByLastModifiedDate", query = "SELECT d FROM DischargeRegister d WHERE d.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "DischargeRegister.findByLastModifiedBy", query = "SELECT d FROM DischargeRegister d WHERE d.lastModifiedBy = :lastModifiedBy")})
public class DischargeRegister implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Size(max = 30)
    @Column(name = "CWC_JJB_ORDER_NO", length = 30)
    private String cwcJjbOrderNo;
    @Column(name = "ORDER_DATE")
    @Temporal(TemporalType.DATE)
    private Date orderDate;
    @Column(name = "TRANS_DISCHARGE_DATE")
    @Temporal(TemporalType.DATE)
    private Date transDischargeDate;
    @Size(max = 30)
    @Column(name = "TRANS_HOME_ID", length = 30)
    private String transHomeId;
    @Size(max = 30)
    @Column(name = "PERSON_HANDED_OVER", length = 30)
    private String personHandedOver;
    @Size(max = 30)
    @Column(name = "RELATIONSHIP_CHILD", length = 30)
    private String relationshipChild;
    @Size(max = 150)
    @Column(name = "PERSON_ADDRESS", length = 150)
    private String personAddress;
    @Size(max = 100)
    @Column(name = "PERSON_CONTACT", length = 100)
    private String personContact;
    @Size(max = 30)
    @Column(name = "ACTION_TAKEN", length = 30)
    private String actionTaken;
    @Size(max = 100)
    @Column(name = "STATE", length = 100)
    private String state;
    @Size(max = 250)
    @Column(name = "HOMENAME_OTHERSTATE", length = 250)
    private String homenameOtherstate;
    @Size(max = 250)
    @Column(name = "OFFICER_HOME", length = 250)
    private String officerHome;
    @Lob
    @Size(max = 65535)
    @Column(name = "ADDRESS_OTHERSTATE", length = 65535)
    private String addressOtherstate;
    @Size(max = 30)
    @Column(name = "REMARKS", length = 30)
    private String remarks;
    @Size(max = 150)
    @Column(name = "PERSON_PHOTO", length = 150)
    private String personPhoto;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private ChildMaster childMaster;

    public DischargeRegister() {
    }

    public DischargeRegister(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public DischargeRegister(String childProfileId, String homeId) {
        this.childProfileId = childProfileId;
        this.homeId = homeId;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getCwcJjbOrderNo() {
        return cwcJjbOrderNo;
    }

    public void setCwcJjbOrderNo(String cwcJjbOrderNo) {
        this.cwcJjbOrderNo = cwcJjbOrderNo;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getTransDischargeDate() {
        return transDischargeDate;
    }

    public void setTransDischargeDate(Date transDischargeDate) {
        this.transDischargeDate = transDischargeDate;
    }

    public String getTransHomeId() {
        return transHomeId;
    }

    public void setTransHomeId(String transHomeId) {
        this.transHomeId = transHomeId;
    }

    public String getPersonHandedOver() {
        return personHandedOver;
    }

    public void setPersonHandedOver(String personHandedOver) {
        this.personHandedOver = personHandedOver;
    }

    public String getRelationshipChild() {
        return relationshipChild;
    }

    public void setRelationshipChild(String relationshipChild) {
        this.relationshipChild = relationshipChild;
    }

    public String getPersonAddress() {
        return personAddress;
    }

    public void setPersonAddress(String personAddress) {
        this.personAddress = personAddress;
    }

    public String getPersonContact() {
        return personContact;
    }

    public void setPersonContact(String personContact) {
        this.personContact = personContact;
    }

    public String getActionTaken() {
        return actionTaken;
    }

    public void setActionTaken(String actionTaken) {
        this.actionTaken = actionTaken;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getHomenameOtherstate() {
        return homenameOtherstate;
    }

    public void setHomenameOtherstate(String homenameOtherstate) {
        this.homenameOtherstate = homenameOtherstate;
    }

    public String getOfficerHome() {
        return officerHome;
    }

    public void setOfficerHome(String officerHome) {
        this.officerHome = officerHome;
    }

    public String getAddressOtherstate() {
        return addressOtherstate;
    }

    public void setAddressOtherstate(String addressOtherstate) {
        this.addressOtherstate = addressOtherstate;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getPersonPhoto() {
        return personPhoto;
    }

    public void setPersonPhoto(String personPhoto) {
        this.personPhoto = personPhoto;
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
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DischargeRegister)) {
            return false;
        }
        DischargeRegister other = (DischargeRegister) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.DischargeRegister[ childProfileId=" + childProfileId + " ]";
    }
    
}
