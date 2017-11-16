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
@Table(name = "casehistory_personal", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CasehistoryPersonal.findByChildProfileIdAndDate", query = "SELECT c FROM CasehistoryPersonal c where c.casehistoryPersonalPK.lastModifiedDate=(SELECT max(c1.casehistoryPersonalPK.lastModifiedDate) FROM CasehistoryPersonal c1 WHERE c1.casehistoryPersonalPK.childProfileId = :childProfileId)"),
    
    
    @NamedQuery(name = "CasehistoryPersonal.findAll", query = "SELECT c FROM CasehistoryPersonal c"),
    @NamedQuery(name = "CasehistoryPersonal.findByChildProfileId", query = "SELECT c FROM CasehistoryPersonal c WHERE c.casehistoryPersonalPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "CasehistoryPersonal.findByChildName", query = "SELECT c FROM CasehistoryPersonal c WHERE c.childName = :childName"),
    @NamedQuery(name = "CasehistoryPersonal.findByChildSurname", query = "SELECT c FROM CasehistoryPersonal c WHERE c.childSurname = :childSurname"),
    @NamedQuery(name = "CasehistoryPersonal.findByGender", query = "SELECT c FROM CasehistoryPersonal c WHERE c.gender = :gender"),
    @NamedQuery(name = "CasehistoryPersonal.findByAgeAdmission", query = "SELECT c FROM CasehistoryPersonal c WHERE c.ageAdmission = :ageAdmission"),
    @NamedQuery(name = "CasehistoryPersonal.findByAgePresent", query = "SELECT c FROM CasehistoryPersonal c WHERE c.agePresent = :agePresent"),
    @NamedQuery(name = "CasehistoryPersonal.findByReligion", query = "SELECT c FROM CasehistoryPersonal c WHERE c.religion = :religion"),
    @NamedQuery(name = "CasehistoryPersonal.findByCaste", query = "SELECT c FROM CasehistoryPersonal c WHERE c.caste = :caste"),
    @NamedQuery(name = "CasehistoryPersonal.findBySubcaste", query = "SELECT c FROM CasehistoryPersonal c WHERE c.subcaste = :subcaste"),
    @NamedQuery(name = "CasehistoryPersonal.findByLocalResidence", query = "SELECT c FROM CasehistoryPersonal c WHERE c.localResidence = :localResidence"),
    @NamedQuery(name = "CasehistoryPersonal.findByNativeDistrict", query = "SELECT c FROM CasehistoryPersonal c WHERE c.nativeDistrict = :nativeDistrict"),
    @NamedQuery(name = "CasehistoryPersonal.findByNativeState", query = "SELECT c FROM CasehistoryPersonal c WHERE c.nativeState = :nativeState"),
    @NamedQuery(name = "CasehistoryPersonal.findByHousingType", query = "SELECT c FROM CasehistoryPersonal c WHERE c.housingType = :housingType"),
    @NamedQuery(name = "CasehistoryPersonal.findByHousingSpace", query = "SELECT c FROM CasehistoryPersonal c WHERE c.housingSpace = :housingSpace"),
    @NamedQuery(name = "CasehistoryPersonal.findByHouseOwnership", query = "SELECT c FROM CasehistoryPersonal c WHERE c.houseOwnership = :houseOwnership"),
    @NamedQuery(name = "CasehistoryPersonal.findByBroughtbeforeCwc", query = "SELECT c FROM CasehistoryPersonal c WHERE c.broughtbeforeCwc = :broughtbeforeCwc"),
    @NamedQuery(name = "CasehistoryPersonal.findByParentRelation", query = "SELECT c FROM CasehistoryPersonal c WHERE c.parentRelation = :parentRelation"),
    @NamedQuery(name = "CasehistoryPersonal.findByReasonLeavingFamily", query = "SELECT c FROM CasehistoryPersonal c WHERE c.reasonLeavingFamily = :reasonLeavingFamily"),
    @NamedQuery(name = "CasehistoryPersonal.findByVerbalAbuse", query = "SELECT c FROM CasehistoryPersonal c WHERE c.verbalAbuse = :verbalAbuse"),
    @NamedQuery(name = "CasehistoryPersonal.findBySexualAbuse", query = "SELECT c FROM CasehistoryPersonal c WHERE c.sexualAbuse = :sexualAbuse"),
    @NamedQuery(name = "CasehistoryPersonal.findByIlltreatDenialFood", query = "SELECT c FROM CasehistoryPersonal c WHERE c.illtreatDenialFood = :illtreatDenialFood"),
    @NamedQuery(name = "CasehistoryPersonal.findByIlltreatBeatenMercilessly", query = "SELECT c FROM CasehistoryPersonal c WHERE c.illtreatBeatenMercilessly = :illtreatBeatenMercilessly"),
    @NamedQuery(name = "CasehistoryPersonal.findByIlltreatCauseInjury", query = "SELECT c FROM CasehistoryPersonal c WHERE c.illtreatCauseInjury = :illtreatCauseInjury"),
    @NamedQuery(name = "CasehistoryPersonal.findByExploitationChild", query = "SELECT c FROM CasehistoryPersonal c WHERE c.exploitationChild = :exploitationChild"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaRespiratory", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaRespiratory = :hsbaRespiratory"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaHearing", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaHearing = :hsbaHearing"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaEye", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaEye = :hsbaEye"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaDental", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaDental = :hsbaDental"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaCordiac", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaCordiac = :hsbaCordiac"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaSkin", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaSkin = :hsbaSkin"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaSexualDiseases", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaSexualDiseases = :hsbaSexualDiseases"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaNeurological", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaNeurological = :hsbaNeurological"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaMentalHandicap", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaMentalHandicap = :hsbaMentalHandicap"),
    @NamedQuery(name = "CasehistoryPersonal.findByHsbaPhysicalHandicap", query = "SELECT c FROM CasehistoryPersonal c WHERE c.hsbaPhysicalHandicap = :hsbaPhysicalHandicap"),
    @NamedQuery(name = "CasehistoryPersonal.findByChildStayPriorAdmission", query = "SELECT c FROM CasehistoryPersonal c WHERE c.childStayPriorAdmission = :childStayPriorAdmission"),
    @NamedQuery(name = "CasehistoryPersonal.findByGuardianRelation", query = "SELECT c FROM CasehistoryPersonal c WHERE c.guardianRelation = :guardianRelation"),
    @NamedQuery(name = "CasehistoryPersonal.findByVpmcPriorInsti", query = "SELECT c FROM CasehistoryPersonal c WHERE c.vpmcPriorInsti = :vpmcPriorInsti"),
    @NamedQuery(name = "CasehistoryPersonal.findByVpmcAfterInsti", query = "SELECT c FROM CasehistoryPersonal c WHERE c.vpmcAfterInsti = :vpmcAfterInsti"),
    @NamedQuery(name = "CasehistoryPersonal.findByVchfPriorInsti", query = "SELECT c FROM CasehistoryPersonal c WHERE c.vchfPriorInsti = :vchfPriorInsti"),
    @NamedQuery(name = "CasehistoryPersonal.findByVchfAfterInsti", query = "SELECT c FROM CasehistoryPersonal c WHERE c.vchfAfterInsti = :vchfAfterInsti"),
    @NamedQuery(name = "CasehistoryPersonal.findByCwpPriorInsti", query = "SELECT c FROM CasehistoryPersonal c WHERE c.cwpPriorInsti = :cwpPriorInsti"),
    @NamedQuery(name = "CasehistoryPersonal.findByCwpAfterInsti", query = "SELECT c FROM CasehistoryPersonal c WHERE c.cwpAfterInsti = :cwpAfterInsti"),
    @NamedQuery(name = "CasehistoryPersonal.findByLastModifiedDate", query = "SELECT c FROM CasehistoryPersonal c WHERE c.casehistoryPersonalPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "CasehistoryPersonal.findByLastModifiedBy", query = "SELECT c FROM CasehistoryPersonal c WHERE c.lastModifiedBy = :lastModifiedBy")})
public class CasehistoryPersonal implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CasehistoryPersonalPK casehistoryPersonalPK;
    @Size(max = 75)
    @Column(name = "CHILD_NAME", length = 75)
    private String childName;
    @Size(max = 50)
    @Column(name = "CHILD_SURNAME", length = 50)
    private String childSurname;
    @Size(max = 10)
    @Column(name = "GENDER", length = 10)
    private String gender;
    @Column(name = "AGE_ADMISSION")
    private Integer ageAdmission;
    @Column(name = "AGE_PRESENT")
    private Integer agePresent;
    @Size(max = 30)
    @Column(name = "RELIGION", length = 30)
    private String religion;
    @Size(max = 100)
    @Column(name = "CASTE", length = 100)
    private String caste;
    @Size(max = 100)
    @Column(name = "SUBCASTE", length = 100)
    private String subcaste;
    @Size(max = 50)
    @Column(name = "LOCAL_RESIDENCE", length = 50)
    private String localResidence;
    @Size(max = 50)
    @Column(name = "NATIVE_DISTRICT", length = 50)
    private String nativeDistrict;
    @Size(max = 150)
    @Column(name = "NATIVE_STATE", length = 150)
    private String nativeState;
    @Size(max = 50)
    @Column(name = "HOUSING_TYPE", length = 50)
    private String housingType;
    @Size(max = 30)
    @Column(name = "HOUSING_SPACE", length = 30)
    private String housingSpace;
    @Size(max = 10)
    @Column(name = "HOUSE_OWNERSHIP", length = 10)
    private String houseOwnership;
    @Size(max = 100)
    @Column(name = "BROUGHTBEFORE_CWC", length = 100)
    private String broughtbeforeCwc;
    @Size(max = 50)
    @Column(name = "PARENT_RELATION", length = 50)
    private String parentRelation;
    @Size(max = 250)
    @Column(name = "REASON_LEAVING_FAMILY", length = 250)
    private String reasonLeavingFamily;
    @Size(max = 30)
    @Column(name = "VERBAL_ABUSE", length = 30)
    private String verbalAbuse;
    @Lob
    @Size(max = 65535)
    @Column(name = "PHYSICAL_ABUSE", length = 65535)
    private String physicalAbuse;
    @Size(max = 30)
    @Column(name = "SEXUAL_ABUSE", length = 30)
    private String sexualAbuse;
    @Lob
    @Size(max = 65535)
    @Column(name = "OTHER_ABUSE", length = 65535)
    private String otherAbuse;
    @Size(max = 50)
    @Column(name = "ILLTREAT_DENIAL_FOOD", length = 50)
    private String illtreatDenialFood;
    @Size(max = 50)
    @Column(name = "ILLTREAT_BEATEN_MERCILESSLY", length = 50)
    private String illtreatBeatenMercilessly;
    @Size(max = 50)
    @Column(name = "ILLTREAT_CAUSE_INJURY", length = 50)
    private String illtreatCauseInjury;
    @Lob
    @Size(max = 65535)
    @Column(name = "ILLTREAT_OTHERS", length = 65535)
    private String illtreatOthers;
    @Size(max = 100)
    @Column(name = "EXPLOITATION_CHILD", length = 100)
    private String exploitationChild;
    @Size(max = 20)
    @Column(name = "HSBA_RESPIRATORY", length = 20)
    private String hsbaRespiratory;
    @Size(max = 20)
    @Column(name = "HSBA_HEARING", length = 20)
    private String hsbaHearing;
    @Size(max = 20)
    @Column(name = "HSBA_EYE", length = 20)
    private String hsbaEye;
    @Size(max = 20)
    @Column(name = "HSBA_DENTAL", length = 20)
    private String hsbaDental;
    @Size(max = 20)
    @Column(name = "HSBA_CORDIAC", length = 20)
    private String hsbaCordiac;
    @Size(max = 20)
    @Column(name = "HSBA_SKIN", length = 20)
    private String hsbaSkin;
    @Size(max = 20)
    @Column(name = "HSBA_SEXUAL_DISEASES", length = 20)
    private String hsbaSexualDiseases;
    @Size(max = 20)
    @Column(name = "HSBA_NEUROLOGICAL", length = 20)
    private String hsbaNeurological;
    @Size(max = 20)
    @Column(name = "HSBA_MENTAL_HANDICAP", length = 20)
    private String hsbaMentalHandicap;
    @Size(max = 20)
    @Column(name = "HSBA_PHYSICAL_HANDICAP", length = 20)
    private String hsbaPhysicalHandicap;
    @Lob
    @Size(max = 65535)
    @Column(name = "HSBA_OTHERS", length = 65535)
    private String hsbaOthers;
    @Size(max = 30)
    @Column(name = "CHILD_STAY_PRIOR_ADMISSION", length = 30)
    private String childStayPriorAdmission;
    @Size(max = 100)
    @Column(name = "GUARDIAN_RELATION", length = 100)
    private String guardianRelation;
    @Size(max = 25)
    @Column(name = "VPMC_PRIOR_INSTI", length = 25)
    private String vpmcPriorInsti;
    @Size(max = 25)
    @Column(name = "VPMC_AFTER_INSTI", length = 25)
    private String vpmcAfterInsti;
    @Size(max = 30)
    @Column(name = "VCHF_PRIOR_INSTI", length = 30)
    private String vchfPriorInsti;
    @Size(max = 30)
    @Column(name = "VCHF_AFTER_INSTI", length = 30)
    private String vchfAfterInsti;
    @Size(max = 30)
    @Column(name = "CWP_PRIOR_INSTI", length = 30)
    private String cwpPriorInsti;
    @Size(max = 30)
    @Column(name = "CWP_AFTER_INSTI", length = 30)
    private String cwpAfterInsti;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public CasehistoryPersonal() {
    }

    public CasehistoryPersonal(CasehistoryPersonalPK casehistoryPersonalPK) {
        this.casehistoryPersonalPK = casehistoryPersonalPK;
    }

    public CasehistoryPersonal(String childProfileId, Date lastModifiedDate) {
        this.casehistoryPersonalPK = new CasehistoryPersonalPK(childProfileId, lastModifiedDate);
    }

    public CasehistoryPersonalPK getCasehistoryPersonalPK() {
        return casehistoryPersonalPK;
    }

    public void setCasehistoryPersonalPK(CasehistoryPersonalPK casehistoryPersonalPK) {
        this.casehistoryPersonalPK = casehistoryPersonalPK;
    }

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public String getChildSurname() {
        return childSurname;
    }

    public void setChildSurname(String childSurname) {
        this.childSurname = childSurname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAgeAdmission() {
        return ageAdmission;
    }

    public void setAgeAdmission(Integer ageAdmission) {
        this.ageAdmission = ageAdmission;
    }

    public Integer getAgePresent() {
        return agePresent;
    }

    public void setAgePresent(Integer agePresent) {
        this.agePresent = agePresent;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getCaste() {
        return caste;
    }

    public void setCaste(String caste) {
        this.caste = caste;
    }

    public String getSubcaste() {
        return subcaste;
    }

    public void setSubcaste(String subcaste) {
        this.subcaste = subcaste;
    }

    public String getLocalResidence() {
        return localResidence;
    }

    public void setLocalResidence(String localResidence) {
        this.localResidence = localResidence;
    }

    public String getNativeDistrict() {
        return nativeDistrict;
    }

    public void setNativeDistrict(String nativeDistrict) {
        this.nativeDistrict = nativeDistrict;
    }

    public String getNativeState() {
        return nativeState;
    }

    public void setNativeState(String nativeState) {
        this.nativeState = nativeState;
    }

    public String getHousingType() {
        return housingType;
    }

    public void setHousingType(String housingType) {
        this.housingType = housingType;
    }

    public String getHousingSpace() {
        return housingSpace;
    }

    public void setHousingSpace(String housingSpace) {
        this.housingSpace = housingSpace;
    }

    public String getHouseOwnership() {
        return houseOwnership;
    }

    public void setHouseOwnership(String houseOwnership) {
        this.houseOwnership = houseOwnership;
    }

    public String getBroughtbeforeCwc() {
        return broughtbeforeCwc;
    }

    public void setBroughtbeforeCwc(String broughtbeforeCwc) {
        this.broughtbeforeCwc = broughtbeforeCwc;
    }

    public String getParentRelation() {
        return parentRelation;
    }

    public void setParentRelation(String parentRelation) {
        this.parentRelation = parentRelation;
    }

    public String getReasonLeavingFamily() {
        return reasonLeavingFamily;
    }

    public void setReasonLeavingFamily(String reasonLeavingFamily) {
        this.reasonLeavingFamily = reasonLeavingFamily;
    }

    public String getVerbalAbuse() {
        return verbalAbuse;
    }

    public void setVerbalAbuse(String verbalAbuse) {
        this.verbalAbuse = verbalAbuse;
    }

    public String getPhysicalAbuse() {
        return physicalAbuse;
    }

    public void setPhysicalAbuse(String physicalAbuse) {
        this.physicalAbuse = physicalAbuse;
    }

    public String getSexualAbuse() {
        return sexualAbuse;
    }

    public void setSexualAbuse(String sexualAbuse) {
        this.sexualAbuse = sexualAbuse;
    }

    public String getOtherAbuse() {
        return otherAbuse;
    }

    public void setOtherAbuse(String otherAbuse) {
        this.otherAbuse = otherAbuse;
    }

    public String getIlltreatDenialFood() {
        return illtreatDenialFood;
    }

    public void setIlltreatDenialFood(String illtreatDenialFood) {
        this.illtreatDenialFood = illtreatDenialFood;
    }

    public String getIlltreatBeatenMercilessly() {
        return illtreatBeatenMercilessly;
    }

    public void setIlltreatBeatenMercilessly(String illtreatBeatenMercilessly) {
        this.illtreatBeatenMercilessly = illtreatBeatenMercilessly;
    }

    public String getIlltreatCauseInjury() {
        return illtreatCauseInjury;
    }

    public void setIlltreatCauseInjury(String illtreatCauseInjury) {
        this.illtreatCauseInjury = illtreatCauseInjury;
    }

    public String getIlltreatOthers() {
        return illtreatOthers;
    }

    public void setIlltreatOthers(String illtreatOthers) {
        this.illtreatOthers = illtreatOthers;
    }

    public String getExploitationChild() {
        return exploitationChild;
    }

    public void setExploitationChild(String exploitationChild) {
        this.exploitationChild = exploitationChild;
    }

    public String getHsbaRespiratory() {
        return hsbaRespiratory;
    }

    public void setHsbaRespiratory(String hsbaRespiratory) {
        this.hsbaRespiratory = hsbaRespiratory;
    }

    public String getHsbaHearing() {
        return hsbaHearing;
    }

    public void setHsbaHearing(String hsbaHearing) {
        this.hsbaHearing = hsbaHearing;
    }

    public String getHsbaEye() {
        return hsbaEye;
    }

    public void setHsbaEye(String hsbaEye) {
        this.hsbaEye = hsbaEye;
    }

    public String getHsbaDental() {
        return hsbaDental;
    }

    public void setHsbaDental(String hsbaDental) {
        this.hsbaDental = hsbaDental;
    }

    public String getHsbaCordiac() {
        return hsbaCordiac;
    }

    public void setHsbaCordiac(String hsbaCordiac) {
        this.hsbaCordiac = hsbaCordiac;
    }

    public String getHsbaSkin() {
        return hsbaSkin;
    }

    public void setHsbaSkin(String hsbaSkin) {
        this.hsbaSkin = hsbaSkin;
    }

    public String getHsbaSexualDiseases() {
        return hsbaSexualDiseases;
    }

    public void setHsbaSexualDiseases(String hsbaSexualDiseases) {
        this.hsbaSexualDiseases = hsbaSexualDiseases;
    }

    public String getHsbaNeurological() {
        return hsbaNeurological;
    }

    public void setHsbaNeurological(String hsbaNeurological) {
        this.hsbaNeurological = hsbaNeurological;
    }

    public String getHsbaMentalHandicap() {
        return hsbaMentalHandicap;
    }

    public void setHsbaMentalHandicap(String hsbaMentalHandicap) {
        this.hsbaMentalHandicap = hsbaMentalHandicap;
    }

    public String getHsbaPhysicalHandicap() {
        return hsbaPhysicalHandicap;
    }

    public void setHsbaPhysicalHandicap(String hsbaPhysicalHandicap) {
        this.hsbaPhysicalHandicap = hsbaPhysicalHandicap;
    }

    public String getHsbaOthers() {
        return hsbaOthers;
    }

    public void setHsbaOthers(String hsbaOthers) {
        this.hsbaOthers = hsbaOthers;
    }

    public String getChildStayPriorAdmission() {
        return childStayPriorAdmission;
    }

    public void setChildStayPriorAdmission(String childStayPriorAdmission) {
        this.childStayPriorAdmission = childStayPriorAdmission;
    }

    public String getGuardianRelation() {
        return guardianRelation;
    }

    public void setGuardianRelation(String guardianRelation) {
        this.guardianRelation = guardianRelation;
    }

    public String getVpmcPriorInsti() {
        return vpmcPriorInsti;
    }

    public void setVpmcPriorInsti(String vpmcPriorInsti) {
        this.vpmcPriorInsti = vpmcPriorInsti;
    }

    public String getVpmcAfterInsti() {
        return vpmcAfterInsti;
    }

    public void setVpmcAfterInsti(String vpmcAfterInsti) {
        this.vpmcAfterInsti = vpmcAfterInsti;
    }

    public String getVchfPriorInsti() {
        return vchfPriorInsti;
    }

    public void setVchfPriorInsti(String vchfPriorInsti) {
        this.vchfPriorInsti = vchfPriorInsti;
    }

    public String getVchfAfterInsti() {
        return vchfAfterInsti;
    }

    public void setVchfAfterInsti(String vchfAfterInsti) {
        this.vchfAfterInsti = vchfAfterInsti;
    }

    public String getCwpPriorInsti() {
        return cwpPriorInsti;
    }

    public void setCwpPriorInsti(String cwpPriorInsti) {
        this.cwpPriorInsti = cwpPriorInsti;
    }

    public String getCwpAfterInsti() {
        return cwpAfterInsti;
    }

    public void setCwpAfterInsti(String cwpAfterInsti) {
        this.cwpAfterInsti = cwpAfterInsti;
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
        hash += (casehistoryPersonalPK != null ? casehistoryPersonalPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CasehistoryPersonal)) {
            return false;
        }
        CasehistoryPersonal other = (CasehistoryPersonal) object;
        if ((this.casehistoryPersonalPK == null && other.casehistoryPersonalPK != null) || (this.casehistoryPersonalPK != null && !this.casehistoryPersonalPK.equals(other.casehistoryPersonalPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CasehistoryPersonal[ casehistoryPersonalPK=" + casehistoryPersonalPK + " ]";
    }
    
}
