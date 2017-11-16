/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "si_family", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SiFamily.findAll", query = "SELECT s FROM SiFamily s"),
    @NamedQuery(name = "SiFamily.findByChildProfileId", query = "SELECT s FROM SiFamily s WHERE s.siFamilyPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "SiFamily.findByMarriedPerticulars", query = "SELECT s FROM SiFamily s WHERE s.marriedPerticulars = :marriedPerticulars"),
    @NamedQuery(name = "SiFamily.findByRelativesIntrested", query = "SELECT s FROM SiFamily s WHERE s.relativesIntrested = :relativesIntrested"),
    @NamedQuery(name = "SiFamily.findByLastModifiedDate", query = "SELECT s FROM SiFamily s WHERE s.siFamilyPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "SiFamily.findByLastModifiedBy", query = "SELECT s FROM SiFamily s WHERE s.lastModifiedBy = :lastModifiedBy")})
public class SiFamily implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected SiFamilyPK siFamilyPK;
    @Size(max = 250)
    @Column(name = "MARRIED_PERTICULARS", length = 250)
    private String marriedPerticulars;
    @Size(max = 250)
    @Column(name = "RELATIVES_INTRESTED", length = 250)
    private String relativesIntrested;
    @Lob
    @Size(max = 65535)
    @Column(name = "ATTITUDE_RELIGION", length = 65535)
    private String attitudeReligion;
    @Lob
    @Size(max = 65535)
    @Column(name = "SOCIAL_STATUS", length = 65535)
    private String socialStatus;
    @Lob
    @Size(max = 65535)
    @Column(name = "DELINQUENCY_FAMILY", length = 65535)
    private String delinquencyFamily;
    @Lob
    @Size(max = 65535)
    @Column(name = "PRESENT_LIVING_CONDITION", length = 65535)
    private String presentLivingCondition;
    @Lob
    @Size(max = 65535)
    @Column(name = "RELATION_BW_PARENTS", length = 65535)
    private String relationBwParents;
    @Lob
    @Size(max = 65535)
    @Column(name = "OTHER_FACTS", length = 65535)
    private String otherFacts;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public SiFamily() {
    }

    public SiFamily(SiFamilyPK siFamilyPK) {
        this.siFamilyPK = siFamilyPK;
    }

    public SiFamily(String childProfileId, Date lastModifiedDate) {
        this.siFamilyPK = new SiFamilyPK(childProfileId, lastModifiedDate);
    }

    public SiFamilyPK getSiFamilyPK() {
        return siFamilyPK;
    }

    public void setSiFamilyPK(SiFamilyPK siFamilyPK) {
        this.siFamilyPK = siFamilyPK;
    }

    public String getMarriedPerticulars() {
        return marriedPerticulars;
    }

    public void setMarriedPerticulars(String marriedPerticulars) {
        this.marriedPerticulars = marriedPerticulars;
    }

    public String getRelativesIntrested() {
        return relativesIntrested;
    }

    public void setRelativesIntrested(String relativesIntrested) {
        this.relativesIntrested = relativesIntrested;
    }

    public String getAttitudeReligion() {
        return attitudeReligion;
    }

    public void setAttitudeReligion(String attitudeReligion) {
        this.attitudeReligion = attitudeReligion;
    }

    public String getSocialStatus() {
        return socialStatus;
    }

    public void setSocialStatus(String socialStatus) {
        this.socialStatus = socialStatus;
    }

    public String getDelinquencyFamily() {
        return delinquencyFamily;
    }

    public void setDelinquencyFamily(String delinquencyFamily) {
        this.delinquencyFamily = delinquencyFamily;
    }

    public String getPresentLivingCondition() {
        return presentLivingCondition;
    }

    public void setPresentLivingCondition(String presentLivingCondition) {
        this.presentLivingCondition = presentLivingCondition;
    }

    public String getRelationBwParents() {
        return relationBwParents;
    }

    public void setRelationBwParents(String relationBwParents) {
        this.relationBwParents = relationBwParents;
    }

    public String getOtherFacts() {
        return otherFacts;
    }

    public void setOtherFacts(String otherFacts) {
        this.otherFacts = otherFacts;
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
        hash += (siFamilyPK != null ? siFamilyPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SiFamily)) {
            return false;
        }
        SiFamily other = (SiFamily) object;
        if ((this.siFamilyPK == null && other.siFamilyPK != null) || (this.siFamilyPK != null && !this.siFamilyPK.equals(other.siFamilyPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.SiFamily[ siFamilyPK=" + siFamilyPK + " ]";
    }
    
}
