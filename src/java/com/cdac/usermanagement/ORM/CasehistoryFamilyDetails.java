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
@Table(name = "casehistory_family_details", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CasehistoryFamilyDetails.findAll", query = "SELECT c FROM CasehistoryFamilyDetails c"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByChildProfileId", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.casehistoryFamilyDetailsPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByFamilyType", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.familyType = :familyType"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByFmRelation", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.fmRelation = :fmRelation"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByFcRelation", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.fcRelation = :fcRelation"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByMcRelation", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.mcRelation = :mcRelation"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByFsRelation", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.fsRelation = :fsRelation"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByMsRelation", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.msRelation = :msRelation"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByJsRelation", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.jsRelation = :jsRelation"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByPropertyFamilyHousehold", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.propertyFamilyHousehold = :propertyFamilyHousehold"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByPropertyFamilyVehicals", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.propertyFamilyVehicals = :propertyFamilyVehicals"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByMarriageDetailsParents", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.marriageDetailsParents = :marriageDetailsParents"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByMarriageDetailsBrothers", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.marriageDetailsBrothers = :marriageDetailsBrothers"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByMarriageDetailsSisters", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.marriageDetailsSisters = :marriageDetailsSisters"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findBySocialActivityFamily", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.socialActivityFamily = :socialActivityFamily"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByParentalCareJuvnileBeforeAdmission", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.parentalCareJuvnileBeforeAdmission = :parentalCareJuvnileBeforeAdmission"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByLastModifiedDate", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.casehistoryFamilyDetailsPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "CasehistoryFamilyDetails.findByLastModifiedBy", query = "SELECT c FROM CasehistoryFamilyDetails c WHERE c.lastModifiedBy = :lastModifiedBy")})
public class CasehistoryFamilyDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CasehistoryFamilyDetailsPK casehistoryFamilyDetailsPK;
    @Size(max = 25)
    @Column(name = "FAMILY_TYPE", length = 25)
    private String familyType;
    @Size(max = 20)
    @Column(name = "FM_RELATION", length = 20)
    private String fmRelation;
    @Size(max = 20)
    @Column(name = "FC_RELATION", length = 20)
    private String fcRelation;
    @Size(max = 20)
    @Column(name = "MC_RELATION", length = 20)
    private String mcRelation;
    @Size(max = 20)
    @Column(name = "FS_RELATION", length = 20)
    private String fsRelation;
    @Size(max = 20)
    @Column(name = "MS_RELATION", length = 20)
    private String msRelation;
    @Size(max = 20)
    @Column(name = "JS_RELATION", length = 20)
    private String jsRelation;
    @Lob
    @Size(max = 65535)
    @Column(name = "PROPERTY_FAMILY_LANDED", length = 65535)
    private String propertyFamilyLanded;
    @Size(max = 10)
    @Column(name = "PROPERTY_FAMILY_HOUSEHOLD", length = 10)
    private String propertyFamilyHousehold;
    @Size(max = 25)
    @Column(name = "PROPERTY_FAMILY_VEHICALS", length = 25)
    private String propertyFamilyVehicals;
    @Lob
    @Size(max = 65535)
    @Column(name = "PROPERTY_FAMILY_OTHERS", length = 65535)
    private String propertyFamilyOthers;
    @Size(max = 30)
    @Column(name = "MARRIAGE_DETAILS_PARENTS", length = 30)
    private String marriageDetailsParents;
    @Size(max = 30)
    @Column(name = "MARRIAGE_DETAILS_BROTHERS", length = 30)
    private String marriageDetailsBrothers;
    @Size(max = 30)
    @Column(name = "MARRIAGE_DETAILS_SISTERS", length = 30)
    private String marriageDetailsSisters;
    @Size(max = 100)
    @Column(name = "SOCIAL_ACTIVITY_FAMILY", length = 100)
    private String socialActivityFamily;
    @Size(max = 30)
    @Column(name = "PARENTAL_CARE_JUVNILE_BEFORE_ADMISSION", length = 30)
    private String parentalCareJuvnileBeforeAdmission;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public CasehistoryFamilyDetails() {
    }

    public CasehistoryFamilyDetails(CasehistoryFamilyDetailsPK casehistoryFamilyDetailsPK) {
        this.casehistoryFamilyDetailsPK = casehistoryFamilyDetailsPK;
    }

    public CasehistoryFamilyDetails(String childProfileId, Date lastModifiedDate) {
        this.casehistoryFamilyDetailsPK = new CasehistoryFamilyDetailsPK(childProfileId, lastModifiedDate);
    }

    public CasehistoryFamilyDetailsPK getCasehistoryFamilyDetailsPK() {
        return casehistoryFamilyDetailsPK;
    }

    public void setCasehistoryFamilyDetailsPK(CasehistoryFamilyDetailsPK casehistoryFamilyDetailsPK) {
        this.casehistoryFamilyDetailsPK = casehistoryFamilyDetailsPK;
    }

    public String getFamilyType() {
        return familyType;
    }

    public void setFamilyType(String familyType) {
        this.familyType = familyType;
    }

    public String getFmRelation() {
        return fmRelation;
    }

    public void setFmRelation(String fmRelation) {
        this.fmRelation = fmRelation;
    }

    public String getFcRelation() {
        return fcRelation;
    }

    public void setFcRelation(String fcRelation) {
        this.fcRelation = fcRelation;
    }

    public String getMcRelation() {
        return mcRelation;
    }

    public void setMcRelation(String mcRelation) {
        this.mcRelation = mcRelation;
    }

    public String getFsRelation() {
        return fsRelation;
    }

    public void setFsRelation(String fsRelation) {
        this.fsRelation = fsRelation;
    }

    public String getMsRelation() {
        return msRelation;
    }

    public void setMsRelation(String msRelation) {
        this.msRelation = msRelation;
    }

    public String getJsRelation() {
        return jsRelation;
    }

    public void setJsRelation(String jsRelation) {
        this.jsRelation = jsRelation;
    }

    public String getPropertyFamilyLanded() {
        return propertyFamilyLanded;
    }

    public void setPropertyFamilyLanded(String propertyFamilyLanded) {
        this.propertyFamilyLanded = propertyFamilyLanded;
    }

    public String getPropertyFamilyHousehold() {
        return propertyFamilyHousehold;
    }

    public void setPropertyFamilyHousehold(String propertyFamilyHousehold) {
        this.propertyFamilyHousehold = propertyFamilyHousehold;
    }

    public String getPropertyFamilyVehicals() {
        return propertyFamilyVehicals;
    }

    public void setPropertyFamilyVehicals(String propertyFamilyVehicals) {
        this.propertyFamilyVehicals = propertyFamilyVehicals;
    }

    public String getPropertyFamilyOthers() {
        return propertyFamilyOthers;
    }

    public void setPropertyFamilyOthers(String propertyFamilyOthers) {
        this.propertyFamilyOthers = propertyFamilyOthers;
    }

    public String getMarriageDetailsParents() {
        return marriageDetailsParents;
    }

    public void setMarriageDetailsParents(String marriageDetailsParents) {
        this.marriageDetailsParents = marriageDetailsParents;
    }

    public String getMarriageDetailsBrothers() {
        return marriageDetailsBrothers;
    }

    public void setMarriageDetailsBrothers(String marriageDetailsBrothers) {
        this.marriageDetailsBrothers = marriageDetailsBrothers;
    }

    public String getMarriageDetailsSisters() {
        return marriageDetailsSisters;
    }

    public void setMarriageDetailsSisters(String marriageDetailsSisters) {
        this.marriageDetailsSisters = marriageDetailsSisters;
    }

    public String getSocialActivityFamily() {
        return socialActivityFamily;
    }

    public void setSocialActivityFamily(String socialActivityFamily) {
        this.socialActivityFamily = socialActivityFamily;
    }

    public String getParentalCareJuvnileBeforeAdmission() {
        return parentalCareJuvnileBeforeAdmission;
    }

    public void setParentalCareJuvnileBeforeAdmission(String parentalCareJuvnileBeforeAdmission) {
        this.parentalCareJuvnileBeforeAdmission = parentalCareJuvnileBeforeAdmission;
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
        hash += (casehistoryFamilyDetailsPK != null ? casehistoryFamilyDetailsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CasehistoryFamilyDetails)) {
            return false;
        }
        CasehistoryFamilyDetails other = (CasehistoryFamilyDetails) object;
        if ((this.casehistoryFamilyDetailsPK == null && other.casehistoryFamilyDetailsPK != null) || (this.casehistoryFamilyDetailsPK != null && !this.casehistoryFamilyDetailsPK.equals(other.casehistoryFamilyDetailsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CasehistoryFamilyDetails[ casehistoryFamilyDetailsPK=" + casehistoryFamilyDetailsPK + " ]";
    }
    
}
