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
 * @author suresh
 */
@Entity
@Table(name = "icp_post_release", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "IcpPostRelease.findAll", query = "SELECT i FROM IcpPostRelease i"),
    @NamedQuery(name = "IcpPostRelease.findByChildProfileId", query = "SELECT i FROM IcpPostRelease i WHERE i.childProfileId = :childProfileId"),
    @NamedQuery(name = "IcpPostRelease.findByStatusBankAcc", query = "SELECT i FROM IcpPostRelease i WHERE i.statusBankAcc = :statusBankAcc"),
    @NamedQuery(name = "IcpPostRelease.findByEarningsHandedOver", query = "SELECT i FROM IcpPostRelease i WHERE i.earningsHandedOver = :earningsHandedOver"),
    @NamedQuery(name = "IcpPostRelease.findByChildAdmitSchool", query = "SELECT i FROM IcpPostRelease i WHERE i.childAdmitSchool = :childAdmitSchool"),
    @NamedQuery(name = "IcpPostRelease.findByDateAdmit", query = "SELECT i FROM IcpPostRelease i WHERE i.dateAdmit = :dateAdmit"),
    @NamedQuery(name = "IcpPostRelease.findByNameSchool", query = "SELECT i FROM IcpPostRelease i WHERE i.nameSchool = :nameSchool")})
public class IcpPostRelease implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 210)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 210)
    private String childProfileId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "STATUS_BANK_ACC", nullable = false, length = 2)
    private String statusBankAcc;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1)
    @Column(name = "EARNINGS_HANDED_OVER", nullable = false, length = 1)
    private String earningsHandedOver;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "PLACEMENT_CHILD", nullable = false, length = 65535)
    private String placementChild;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "FAMILY_BEHAVIOUR", nullable = false, length = 65535)
    private String familyBehaviour;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "SOCIAL_MILIEU_CHILD", nullable = false, length = 65535)
    private String socialMilieuChild;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "CHILD_USING_SKILLS", nullable = false, length = 65535)
    private String childUsingSkills;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1)
    @Column(name = "CHILD_ADMIT_SCHOOL", nullable = false, length = 1)
    private String childAdmitSchool;
    @Column(name = "DATE_ADMIT")
    @Temporal(TemporalType.DATE)
    private Date dateAdmit;
    @Size(max = 1785)
    @Column(name = "NAME_SCHOOL", length = 1785)
    private String nameSchool;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private ChildMaster childMaster;

    public IcpPostRelease() {
    }

    public IcpPostRelease(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public IcpPostRelease(String childProfileId, String statusBankAcc, String earningsHandedOver, String placementChild, String familyBehaviour, String socialMilieuChild, String childUsingSkills, String childAdmitSchool) {
        this.childProfileId = childProfileId;
        this.statusBankAcc = statusBankAcc;
        this.earningsHandedOver = earningsHandedOver;
        this.placementChild = placementChild;
        this.familyBehaviour = familyBehaviour;
        this.socialMilieuChild = socialMilieuChild;
        this.childUsingSkills = childUsingSkills;
        this.childAdmitSchool = childAdmitSchool;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getStatusBankAcc() {
        return statusBankAcc;
    }

    public void setStatusBankAcc(String statusBankAcc) {
        this.statusBankAcc = statusBankAcc;
    }

    public String getEarningsHandedOver() {
        return earningsHandedOver;
    }

    public void setEarningsHandedOver(String earningsHandedOver) {
        this.earningsHandedOver = earningsHandedOver;
    }

    public String getPlacementChild() {
        return placementChild;
    }

    public void setPlacementChild(String placementChild) {
        this.placementChild = placementChild;
    }

    public String getFamilyBehaviour() {
        return familyBehaviour;
    }

    public void setFamilyBehaviour(String familyBehaviour) {
        this.familyBehaviour = familyBehaviour;
    }

    public String getSocialMilieuChild() {
        return socialMilieuChild;
    }

    public void setSocialMilieuChild(String socialMilieuChild) {
        this.socialMilieuChild = socialMilieuChild;
    }

    public String getChildUsingSkills() {
        return childUsingSkills;
    }

    public void setChildUsingSkills(String childUsingSkills) {
        this.childUsingSkills = childUsingSkills;
    }

    public String getChildAdmitSchool() {
        return childAdmitSchool;
    }

    public void setChildAdmitSchool(String childAdmitSchool) {
        this.childAdmitSchool = childAdmitSchool;
    }

    public Date getDateAdmit() {
        return dateAdmit;
    }

    public void setDateAdmit(Date dateAdmit) {
        this.dateAdmit = dateAdmit;
    }

    public String getNameSchool() {
        return nameSchool;
    }

    public void setNameSchool(String nameSchool) {
        this.nameSchool = nameSchool;
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
        if (!(object instanceof IcpPostRelease)) {
            return false;
        }
        IcpPostRelease other = (IcpPostRelease) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.IcpPostRelease[ childProfileId=" + childProfileId + " ]";
    }
    
}
