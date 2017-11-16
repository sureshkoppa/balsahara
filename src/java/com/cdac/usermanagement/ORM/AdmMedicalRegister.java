/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(name = "adm_medical_register", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AdmMedicalRegister.findAll", query = "SELECT a FROM AdmMedicalRegister a"),
    @NamedQuery(name = "AdmMedicalRegister.findByChildProfileId", query = "SELECT a FROM AdmMedicalRegister a WHERE a.childProfileId = :childProfileId"),
    @NamedQuery(name = "AdmMedicalRegister.findByWtAdm", query = "SELECT a FROM AdmMedicalRegister a WHERE a.wtAdm = :wtAdm"),
    @NamedQuery(name = "AdmMedicalRegister.findByHtAdm", query = "SELECT a FROM AdmMedicalRegister a WHERE a.htAdm = :htAdm"),
    @NamedQuery(name = "AdmMedicalRegister.findByCongenitalAnomalies", query = "SELECT a FROM AdmMedicalRegister a WHERE a.congenitalAnomalies = :congenitalAnomalies"),
    @NamedQuery(name = "AdmMedicalRegister.findBySpecCongenital", query = "SELECT a FROM AdmMedicalRegister a WHERE a.specCongenital = :specCongenital"),
    @NamedQuery(name = "AdmMedicalRegister.findByPhyHandicap", query = "SELECT a FROM AdmMedicalRegister a WHERE a.phyHandicap = :phyHandicap"),
    @NamedQuery(name = "AdmMedicalRegister.findBySpecifyPhyHandPercent", query = "SELECT a FROM AdmMedicalRegister a WHERE a.specifyPhyHandPercent = :specifyPhyHandPercent"),
    @NamedQuery(name = "AdmMedicalRegister.findByMentalHand", query = "SELECT a FROM AdmMedicalRegister a WHERE a.mentalHand = :mentalHand"),
    @NamedQuery(name = "AdmMedicalRegister.findBySpecifyMentalHand", query = "SELECT a FROM AdmMedicalRegister a WHERE a.specifyMentalHand = :specifyMentalHand"),
    @NamedQuery(name = "AdmMedicalRegister.findByCaseOfFits", query = "SELECT a FROM AdmMedicalRegister a WHERE a.caseOfFits = :caseOfFits"),
    @NamedQuery(name = "AdmMedicalRegister.findByFitsTreatment", query = "SELECT a FROM AdmMedicalRegister a WHERE a.fitsTreatment = :fitsTreatment"),
    @NamedQuery(name = "AdmMedicalRegister.findByHistCommunicableDisease", query = "SELECT a FROM AdmMedicalRegister a WHERE a.histCommunicableDisease = :histCommunicableDisease"),
    @NamedQuery(name = "AdmMedicalRegister.findBySpecifyCommDisease", query = "SELECT a FROM AdmMedicalRegister a WHERE a.specifyCommDisease = :specifyCommDisease"),
    @NamedQuery(name = "AdmMedicalRegister.findByOtherCommDisease", query = "SELECT a FROM AdmMedicalRegister a WHERE a.otherCommDisease = :otherCommDisease"),
    @NamedQuery(name = "AdmMedicalRegister.findByBodyPains", query = "SELECT a FROM AdmMedicalRegister a WHERE a.bodyPains = :bodyPains"),
    @NamedQuery(name = "AdmMedicalRegister.findByFever", query = "SELECT a FROM AdmMedicalRegister a WHERE a.fever = :fever"),
    @NamedQuery(name = "AdmMedicalRegister.findByVomiting", query = "SELECT a FROM AdmMedicalRegister a WHERE a.vomiting = :vomiting"),
    @NamedQuery(name = "AdmMedicalRegister.findByOtherCompl", query = "SELECT a FROM AdmMedicalRegister a WHERE a.otherCompl = :otherCompl"),
    @NamedQuery(name = "AdmMedicalRegister.findByPrevHealthHist", query = "SELECT a FROM AdmMedicalRegister a WHERE a.prevHealthHist = :prevHealthHist"),
    @NamedQuery(name = "AdmMedicalRegister.findByPhyAppear", query = "SELECT a FROM AdmMedicalRegister a WHERE a.phyAppear = :phyAppear"),
    @NamedQuery(name = "AdmMedicalRegister.findByDrugAddiction", query = "SELECT a FROM AdmMedicalRegister a WHERE a.drugAddiction = :drugAddiction"),
    @NamedQuery(name = "AdmMedicalRegister.findBySpecifyDrug", query = "SELECT a FROM AdmMedicalRegister a WHERE a.specifyDrug = :specifyDrug"),
    @NamedQuery(name = "AdmMedicalRegister.findByAnemic", query = "SELECT a FROM AdmMedicalRegister a WHERE a.anemic = :anemic"),
    @NamedQuery(name = "AdmMedicalRegister.findByAnemicLevel", query = "SELECT a FROM AdmMedicalRegister a WHERE a.anemicLevel = :anemicLevel"),
    @NamedQuery(name = "AdmMedicalRegister.findByHeartChd", query = "SELECT a FROM AdmMedicalRegister a WHERE a.heartChd = :heartChd"),
    @NamedQuery(name = "AdmMedicalRegister.findByHeartSounds", query = "SELECT a FROM AdmMedicalRegister a WHERE a.heartSounds = :heartSounds"),
    @NamedQuery(name = "AdmMedicalRegister.findByMurmur", query = "SELECT a FROM AdmMedicalRegister a WHERE a.murmur = :murmur"),
    @NamedQuery(name = "AdmMedicalRegister.findByLungsBea", query = "SELECT a FROM AdmMedicalRegister a WHERE a.lungsBea = :lungsBea"),
    @NamedQuery(name = "AdmMedicalRegister.findByCrepts", query = "SELECT a FROM AdmMedicalRegister a WHERE a.crepts = :crepts"),
    @NamedQuery(name = "AdmMedicalRegister.findByChestAbnormal", query = "SELECT a FROM AdmMedicalRegister a WHERE a.chestAbnormal = :chestAbnormal"),
    @NamedQuery(name = "AdmMedicalRegister.findByParabdomenOrg", query = "SELECT a FROM AdmMedicalRegister a WHERE a.parabdomenOrg = :parabdomenOrg"),
    @NamedQuery(name = "AdmMedicalRegister.findBySpecifyParabdomen", query = "SELECT a FROM AdmMedicalRegister a WHERE a.specifyParabdomen = :specifyParabdomen"),
    @NamedQuery(name = "AdmMedicalRegister.findBySkinDiseases", query = "SELECT a FROM AdmMedicalRegister a WHERE a.skinDiseases = :skinDiseases"),
    @NamedQuery(name = "AdmMedicalRegister.findByCnsDiag", query = "SELECT a FROM AdmMedicalRegister a WHERE a.cnsDiag = :cnsDiag"),
    @NamedQuery(name = "AdmMedicalRegister.findByCvsDiag", query = "SELECT a FROM AdmMedicalRegister a WHERE a.cvsDiag = :cvsDiag"),
    @NamedQuery(name = "AdmMedicalRegister.findByLungsDiag", query = "SELECT a FROM AdmMedicalRegister a WHERE a.lungsDiag = :lungsDiag"),
    @NamedQuery(name = "AdmMedicalRegister.findByGitDiag", query = "SELECT a FROM AdmMedicalRegister a WHERE a.gitDiag = :gitDiag"),
    @NamedQuery(name = "AdmMedicalRegister.findByKidneyDiag", query = "SELECT a FROM AdmMedicalRegister a WHERE a.kidneyDiag = :kidneyDiag"),
    @NamedQuery(name = "AdmMedicalRegister.findBySkeletalSysDiag", query = "SELECT a FROM AdmMedicalRegister a WHERE a.skeletalSysDiag = :skeletalSysDiag"),
    @NamedQuery(name = "AdmMedicalRegister.findByOtherDiag", query = "SELECT a FROM AdmMedicalRegister a WHERE a.otherDiag = :otherDiag"),
    @NamedQuery(name = "AdmMedicalRegister.findByLastModifiedDate", query = "SELECT a FROM AdmMedicalRegister a WHERE a.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "AdmMedicalRegister.findByLastModifiedBy", query = "SELECT a FROM AdmMedicalRegister a WHERE a.lastModifiedBy = :lastModifiedBy"),
    @NamedQuery(name = "AdmMedicalRegister.findByMaritalStatus", query = "SELECT a FROM AdmMedicalRegister a WHERE a.maritalStatus = :maritalStatus"),
    @NamedQuery(name = "AdmMedicalRegister.findByAttainedMenarche", query = "SELECT a FROM AdmMedicalRegister a WHERE a.attainedMenarche = :attainedMenarche"),
    @NamedQuery(name = "AdmMedicalRegister.findByAgeMenache", query = "SELECT a FROM AdmMedicalRegister a WHERE a.ageMenache = :ageMenache"),
    @NamedQuery(name = "AdmMedicalRegister.findByLmp", query = "SELECT a FROM AdmMedicalRegister a WHERE a.lmp = :lmp"),
    @NamedQuery(name = "AdmMedicalRegister.findBySexualAbuse", query = "SELECT a FROM AdmMedicalRegister a WHERE a.sexualAbuse = :sexualAbuse"),
    @NamedQuery(name = "AdmMedicalRegister.findByLocalExaminations", query = "SELECT a FROM AdmMedicalRegister a WHERE a.localExaminations = :localExaminations")})
public class AdmMedicalRegister implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "WT_ADM", precision = 5, scale = 2)
    private BigDecimal wtAdm;
    @Column(name = "HT_ADM", precision = 5, scale = 2)
    private BigDecimal htAdm;
    @Column(name = "CONGENITAL_ANOMALIES")
    private Character congenitalAnomalies;
    @Size(max = 75)
    @Column(name = "SPEC_CONGENITAL", length = 75)
    private String specCongenital;
    @Column(name = "PHY_HANDICAP")
    private Character phyHandicap;
    @Size(max = 75)
    @Column(name = "SPECIFY_PHY_HAND_PERCENT", length = 75)
    private String specifyPhyHandPercent;
    @Column(name = "MENTAL_HAND")
    private Character mentalHand;
    @Size(max = 75)
    @Column(name = "SPECIFY_MENTAL_HAND", length = 75)
    private String specifyMentalHand;
    @Column(name = "CASE_OF_FITS")
    private Character caseOfFits;
    @Size(max = 75)
    @Column(name = "FITS_TREATMENT", length = 75)
    private String fitsTreatment;
    @Column(name = "HIST_COMMUNICABLE_DISEASE")
    private Character histCommunicableDisease;
    @Size(max = 75)
    @Column(name = "SPECIFY_COMM_DISEASE", length = 75)
    private String specifyCommDisease;
    @Size(max = 75)
    @Column(name = "OTHER_COMM_DISEASE", length = 75)
    private String otherCommDisease;
    @Column(name = "BODY_PAINS")
    private Character bodyPains;
    @Column(name = "FEVER")
    private Character fever;
    @Column(name = "VOMITING")
    private Character vomiting;
    @Size(max = 75)
    @Column(name = "OTHER_COMPL", length = 75)
    private String otherCompl;
    @Size(max = 75)
    @Column(name = "PREV_HEALTH_HIST", length = 75)
    private String prevHealthHist;
    @Size(max = 50)
    @Column(name = "PHY_APPEAR", length = 50)
    private String phyAppear;
    @Column(name = "DRUG_ADDICTION")
    private Character drugAddiction;
    @Size(max = 75)
    @Column(name = "SPECIFY_DRUG", length = 75)
    private String specifyDrug;
    @Column(name = "ANEMIC")
    private Character anemic;
    @Size(max = 30)
    @Column(name = "ANEMIC_LEVEL", length = 30)
    private String anemicLevel;
    @Column(name = "HEART_CHD")
    private Character heartChd;
    @Column(name = "HEART_SOUNDS")
    private Character heartSounds;
    @Column(name = "MURMUR")
    private Character murmur;
    @Column(name = "LUNGS_BEA")
    private Character lungsBea;
    @Column(name = "CREPTS")
    private Character crepts;
    @Column(name = "CHEST_ABNORMAL")
    private Character chestAbnormal;
    @Column(name = "PARABDOMEN_ORG")
    private Character parabdomenOrg;
    @Size(max = 75)
    @Column(name = "SPECIFY_PARABDOMEN", length = 75)
    private String specifyParabdomen;
    @Size(max = 75)
    @Column(name = "SKIN_DISEASES", length = 75)
    private String skinDiseases;
    @Size(max = 75)
    @Column(name = "CNS_DIAG", length = 75)
    private String cnsDiag;
    @Size(max = 75)
    @Column(name = "CVS_DIAG", length = 75)
    private String cvsDiag;
    @Size(max = 75)
    @Column(name = "LUNGS_DIAG", length = 75)
    private String lungsDiag;
    @Size(max = 75)
    @Column(name = "GIT_DIAG", length = 75)
    private String gitDiag;
    @Size(max = 75)
    @Column(name = "KIDNEY_DIAG", length = 75)
    private String kidneyDiag;
    @Size(max = 75)
    @Column(name = "SKELETAL_SYS_DIAG", length = 75)
    private String skeletalSysDiag;
    @Size(max = 75)
    @Column(name = "OTHER_DIAG", length = 75)
    private String otherDiag;
    @Lob
    @Size(max = 65535)
    @Column(name = "TREATMENT", length = 65535)
    private String treatment;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @Size(max = 75)
    @Column(name = "MARITAL_STATUS", length = 75)
    private String maritalStatus;
    @Column(name = "ATTAINED_MENARCHE")
    private Character attainedMenarche;
    @Column(name = "AGE_MENACHE")
    private Integer ageMenache;
    @Column(name = "LMP")
    @Temporal(TemporalType.DATE)
    private Date lmp;
    @Column(name = "SEXUAL_ABUSE")
    private Character sexualAbuse;
    @Lob
    @Size(max = 65535)
    @Column(name = "EXTERNAL_FINDINGS", length = 65535)
    private String externalFindings;
    @Size(max = 256)
    @Column(name = "LOCAL_EXAMINATIONS", length = 256)
    private String localExaminations;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private ChildMaster childMaster;

    public AdmMedicalRegister() {
    }

    public AdmMedicalRegister(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public BigDecimal getWtAdm() {
        return wtAdm;
    }

    public void setWtAdm(BigDecimal wtAdm) {
        this.wtAdm = wtAdm;
    }

    public BigDecimal getHtAdm() {
        return htAdm;
    }

    public void setHtAdm(BigDecimal htAdm) {
        this.htAdm = htAdm;
    }

    public Character getCongenitalAnomalies() {
        return congenitalAnomalies;
    }

    public void setCongenitalAnomalies(Character congenitalAnomalies) {
        this.congenitalAnomalies = congenitalAnomalies;
    }

    public String getSpecCongenital() {
        return specCongenital;
    }

    public void setSpecCongenital(String specCongenital) {
        this.specCongenital = specCongenital;
    }

    public Character getPhyHandicap() {
        return phyHandicap;
    }

    public void setPhyHandicap(Character phyHandicap) {
        this.phyHandicap = phyHandicap;
    }

    public String getSpecifyPhyHandPercent() {
        return specifyPhyHandPercent;
    }

    public void setSpecifyPhyHandPercent(String specifyPhyHandPercent) {
        this.specifyPhyHandPercent = specifyPhyHandPercent;
    }

    public Character getMentalHand() {
        return mentalHand;
    }

    public void setMentalHand(Character mentalHand) {
        this.mentalHand = mentalHand;
    }

    public String getSpecifyMentalHand() {
        return specifyMentalHand;
    }

    public void setSpecifyMentalHand(String specifyMentalHand) {
        this.specifyMentalHand = specifyMentalHand;
    }

    public Character getCaseOfFits() {
        return caseOfFits;
    }

    public void setCaseOfFits(Character caseOfFits) {
        this.caseOfFits = caseOfFits;
    }

    public String getFitsTreatment() {
        return fitsTreatment;
    }

    public void setFitsTreatment(String fitsTreatment) {
        this.fitsTreatment = fitsTreatment;
    }

    public Character getHistCommunicableDisease() {
        return histCommunicableDisease;
    }

    public void setHistCommunicableDisease(Character histCommunicableDisease) {
        this.histCommunicableDisease = histCommunicableDisease;
    }

    public String getSpecifyCommDisease() {
        return specifyCommDisease;
    }

    public void setSpecifyCommDisease(String specifyCommDisease) {
        this.specifyCommDisease = specifyCommDisease;
    }

    public String getOtherCommDisease() {
        return otherCommDisease;
    }

    public void setOtherCommDisease(String otherCommDisease) {
        this.otherCommDisease = otherCommDisease;
    }

    public Character getBodyPains() {
        return bodyPains;
    }

    public void setBodyPains(Character bodyPains) {
        this.bodyPains = bodyPains;
    }

    public Character getFever() {
        return fever;
    }

    public void setFever(Character fever) {
        this.fever = fever;
    }

    public Character getVomiting() {
        return vomiting;
    }

    public void setVomiting(Character vomiting) {
        this.vomiting = vomiting;
    }

    public String getOtherCompl() {
        return otherCompl;
    }

    public void setOtherCompl(String otherCompl) {
        this.otherCompl = otherCompl;
    }

    public String getPrevHealthHist() {
        return prevHealthHist;
    }

    public void setPrevHealthHist(String prevHealthHist) {
        this.prevHealthHist = prevHealthHist;
    }

    public String getPhyAppear() {
        return phyAppear;
    }

    public void setPhyAppear(String phyAppear) {
        this.phyAppear = phyAppear;
    }

    public Character getDrugAddiction() {
        return drugAddiction;
    }

    public void setDrugAddiction(Character drugAddiction) {
        this.drugAddiction = drugAddiction;
    }

    public String getSpecifyDrug() {
        return specifyDrug;
    }

    public void setSpecifyDrug(String specifyDrug) {
        this.specifyDrug = specifyDrug;
    }

    public Character getAnemic() {
        return anemic;
    }

    public void setAnemic(Character anemic) {
        this.anemic = anemic;
    }

    public String getAnemicLevel() {
        return anemicLevel;
    }

    public void setAnemicLevel(String anemicLevel) {
        this.anemicLevel = anemicLevel;
    }

    public Character getHeartChd() {
        return heartChd;
    }

    public void setHeartChd(Character heartChd) {
        this.heartChd = heartChd;
    }

    public Character getHeartSounds() {
        return heartSounds;
    }

    public void setHeartSounds(Character heartSounds) {
        this.heartSounds = heartSounds;
    }

    public Character getMurmur() {
        return murmur;
    }

    public void setMurmur(Character murmur) {
        this.murmur = murmur;
    }

    public Character getLungsBea() {
        return lungsBea;
    }

    public void setLungsBea(Character lungsBea) {
        this.lungsBea = lungsBea;
    }

    public Character getCrepts() {
        return crepts;
    }

    public void setCrepts(Character crepts) {
        this.crepts = crepts;
    }

    public Character getChestAbnormal() {
        return chestAbnormal;
    }

    public void setChestAbnormal(Character chestAbnormal) {
        this.chestAbnormal = chestAbnormal;
    }

    public Character getParabdomenOrg() {
        return parabdomenOrg;
    }

    public void setParabdomenOrg(Character parabdomenOrg) {
        this.parabdomenOrg = parabdomenOrg;
    }

    public String getSpecifyParabdomen() {
        return specifyParabdomen;
    }

    public void setSpecifyParabdomen(String specifyParabdomen) {
        this.specifyParabdomen = specifyParabdomen;
    }

    public String getSkinDiseases() {
        return skinDiseases;
    }

    public void setSkinDiseases(String skinDiseases) {
        this.skinDiseases = skinDiseases;
    }

    public String getCnsDiag() {
        return cnsDiag;
    }

    public void setCnsDiag(String cnsDiag) {
        this.cnsDiag = cnsDiag;
    }

    public String getCvsDiag() {
        return cvsDiag;
    }

    public void setCvsDiag(String cvsDiag) {
        this.cvsDiag = cvsDiag;
    }

    public String getLungsDiag() {
        return lungsDiag;
    }

    public void setLungsDiag(String lungsDiag) {
        this.lungsDiag = lungsDiag;
    }

    public String getGitDiag() {
        return gitDiag;
    }

    public void setGitDiag(String gitDiag) {
        this.gitDiag = gitDiag;
    }

    public String getKidneyDiag() {
        return kidneyDiag;
    }

    public void setKidneyDiag(String kidneyDiag) {
        this.kidneyDiag = kidneyDiag;
    }

    public String getSkeletalSysDiag() {
        return skeletalSysDiag;
    }

    public void setSkeletalSysDiag(String skeletalSysDiag) {
        this.skeletalSysDiag = skeletalSysDiag;
    }

    public String getOtherDiag() {
        return otherDiag;
    }

    public void setOtherDiag(String otherDiag) {
        this.otherDiag = otherDiag;
    }

    public String getTreatment() {
        return treatment;
    }

    public void setTreatment(String treatment) {
        this.treatment = treatment;
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

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public Character getAttainedMenarche() {
        return attainedMenarche;
    }

    public void setAttainedMenarche(Character attainedMenarche) {
        this.attainedMenarche = attainedMenarche;
    }

    public Integer getAgeMenache() {
        return ageMenache;
    }

    public void setAgeMenache(Integer ageMenache) {
        this.ageMenache = ageMenache;
    }

    public Date getLmp() {
        return lmp;
    }

    public void setLmp(Date lmp) {
        this.lmp = lmp;
    }

    public Character getSexualAbuse() {
        return sexualAbuse;
    }

    public void setSexualAbuse(Character sexualAbuse) {
        this.sexualAbuse = sexualAbuse;
    }

    public String getExternalFindings() {
        return externalFindings;
    }

    public void setExternalFindings(String externalFindings) {
        this.externalFindings = externalFindings;
    }

    public String getLocalExaminations() {
        return localExaminations;
    }

    public void setLocalExaminations(String localExaminations) {
        this.localExaminations = localExaminations;
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
        if (!(object instanceof AdmMedicalRegister)) {
            return false;
        }
        AdmMedicalRegister other = (AdmMedicalRegister) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.AdmMedicalRegister[ childProfileId=" + childProfileId + " ]";
    }
    
}
