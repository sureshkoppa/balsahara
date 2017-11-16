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
@Table(name = "si_childhistory_details", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SiChildhistoryDetails.findAll", query = "SELECT s FROM SiChildhistoryDetails s"),
    @NamedQuery(name = "SiChildhistoryDetails.findByChildProfileId", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.siChildhistoryDetailsPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "SiChildhistoryDetails.findByMotherHealth", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.motherHealth = :motherHealth"),
    @NamedQuery(name = "SiChildhistoryDetails.findByMotherTreatmentUndergone", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.motherTreatmentUndergone = :motherTreatmentUndergone"),
    @NamedQuery(name = "SiChildhistoryDetails.findByAccidentPregnancy", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.accidentPregnancy = :accidentPregnancy"),
    @NamedQuery(name = "SiChildhistoryDetails.findByOtherComplications", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.otherComplications = :otherComplications"),
    @NamedQuery(name = "SiChildhistoryDetails.findByChildBirthType", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.childBirthType = :childBirthType"),
    @NamedQuery(name = "SiChildhistoryDetails.findByImmunizationChild", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.immunizationChild = :immunizationChild"),
    @NamedQuery(name = "SiChildhistoryDetails.findByTreatmentChildPostnatal", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.treatmentChildPostnatal = :treatmentChildPostnatal"),
    @NamedQuery(name = "SiChildhistoryDetails.findByPcDisability", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.pcDisability = :pcDisability"),
    @NamedQuery(name = "SiChildhistoryDetails.findByPcColorEye", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.pcColorEye = :pcColorEye"),
    @NamedQuery(name = "SiChildhistoryDetails.findByMcCapacityUnderstand", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.mcCapacityUnderstand = :mcCapacityUnderstand"),
    @NamedQuery(name = "SiChildhistoryDetails.findByMcStrongDepression", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.mcStrongDepression = :mcStrongDepression"),
    @NamedQuery(name = "SiChildhistoryDetails.findByHabits", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.habits = :habits"),
    @NamedQuery(name = "SiChildhistoryDetails.findByIntrests", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.intrests = :intrests"),
    @NamedQuery(name = "SiChildhistoryDetails.findByMoralValues", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.moralValues = :moralValues"),
    @NamedQuery(name = "SiChildhistoryDetails.findByRecreationActivities", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.recreationActivities = :recreationActivities"),
    @NamedQuery(name = "SiChildhistoryDetails.findByLastModifiedDate", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.siChildhistoryDetailsPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "SiChildhistoryDetails.findByLastModifiedBy", query = "SELECT s FROM SiChildhistoryDetails s WHERE s.lastModifiedBy = :lastModifiedBy")})
public class SiChildhistoryDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected SiChildhistoryDetailsPK siChildhistoryDetailsPK;
    @Size(max = 256)
    @Column(name = "MOTHER_HEALTH", length = 256)
    private String motherHealth;
    @Size(max = 256)
    @Column(name = "MOTHER_TREATMENT_UNDERGONE", length = 256)
    private String motherTreatmentUndergone;
    @Size(max = 256)
    @Column(name = "ACCIDENT_PREGNANCY", length = 256)
    private String accidentPregnancy;
    @Size(max = 256)
    @Column(name = "OTHER_COMPLICATIONS", length = 256)
    private String otherComplications;
    @Size(max = 256)
    @Column(name = "CHILD_BIRTH_TYPE", length = 256)
    private String childBirthType;
    @Size(max = 256)
    @Column(name = "IMMUNIZATION_CHILD", length = 256)
    private String immunizationChild;
    @Size(max = 256)
    @Column(name = "TREATMENT_CHILD_POSTNATAL", length = 256)
    private String treatmentChildPostnatal;
    @Size(max = 100)
    @Column(name = "PC_DISABILITY", length = 100)
    private String pcDisability;
    @Lob
    @Size(max = 65535)
    @Column(name = "PC_PHYSICAL_STRUCTURE", length = 65535)
    private String pcPhysicalStructure;
    @Size(max = 50)
    @Column(name = "PC_COLOR_EYE", length = 50)
    private String pcColorEye;
    @Lob
    @Size(max = 65535)
    @Column(name = "PC_OTHERS", length = 65535)
    private String pcOthers;
    @Lob
    @Size(max = 65535)
    @Column(name = "MC_RETARDATION", length = 65535)
    private String mcRetardation;
    @Size(max = 256)
    @Column(name = "MC_CAPACITY_UNDERSTAND", length = 256)
    private String mcCapacityUnderstand;
    @Size(max = 256)
    @Column(name = "MC_STRONG_DEPRESSION", length = 256)
    private String mcStrongDepression;
    @Lob
    @Size(max = 65535)
    @Column(name = "MC_PSYCOLOGISTS", length = 65535)
    private String mcPsycologists;
    @Lob
    @Size(max = 65535)
    @Column(name = "MC_OTHER", length = 65535)
    private String mcOther;
    @Lob
    @Size(max = 65535)
    @Column(name = "PHYSICAL_ABUSE", length = 65535)
    private String physicalAbuse;
    @Lob
    @Size(max = 65535)
    @Column(name = "SEXUAL_ABUSE", length = 65535)
    private String sexualAbuse;
    @Lob
    @Size(max = 65535)
    @Column(name = "PHYSICAL_NEGLECT_CONSEQUENCES", length = 65535)
    private String physicalNeglectConsequences;
    @Lob
    @Size(max = 65535)
    @Column(name = "ILL_TREATMENT", length = 65535)
    private String illTreatment;
    @Lob
    @Size(max = 65535)
    @Column(name = "OTHER_EXPLOITATION", length = 65535)
    private String otherExploitation;
    @Size(max = 150)
    @Column(name = "HABITS", length = 150)
    private String habits;
    @Size(max = 150)
    @Column(name = "INTRESTS", length = 150)
    private String intrests;
    @Size(max = 256)
    @Column(name = "MORAL_VALUES", length = 256)
    private String moralValues;
    @Size(max = 256)
    @Column(name = "RECREATION_ACTIVITIES", length = 256)
    private String recreationActivities;
    @Lob
    @Size(max = 65535)
    @Column(name = "OUTSTANDING_CHARERISTICS", length = 65535)
    private String outstandingChareristics;
    @Lob
    @Size(max = 65535)
    @Column(name = "COMPANIONS_INFLUENCE", length = 65535)
    private String companionsInfluence;
    @Lob
    @Size(max = 65535)
    @Column(name = "TRUANCY_HOME", length = 65535)
    private String truancyHome;
    @Lob
    @Size(max = 65535)
    @Column(name = "SCHOOL_DETAILS", length = 65535)
    private String schoolDetails;
    @Lob
    @Size(max = 65535)
    @Column(name = "WORK_RECORD", length = 65535)
    private String workRecord;
    @Lob
    @Size(max = 65535)
    @Column(name = "NEIGHBOURHOOD_REPORT", length = 65535)
    private String neighbourhoodReport;
    @Lob
    @Size(max = 65535)
    @Column(name = "PARENTS_DISCIPLANE", length = 65535)
    private String parentsDisciplane;
    @Lob
    @Size(max = 65535)
    @Column(name = "REMARKS", length = 65535)
    private String remarks;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public SiChildhistoryDetails() {
    }

    public SiChildhistoryDetails(SiChildhistoryDetailsPK siChildhistoryDetailsPK) {
        this.siChildhistoryDetailsPK = siChildhistoryDetailsPK;
    }

    public SiChildhistoryDetails(String childProfileId, Date lastModifiedDate) {
        this.siChildhistoryDetailsPK = new SiChildhistoryDetailsPK(childProfileId, lastModifiedDate);
    }

    public SiChildhistoryDetailsPK getSiChildhistoryDetailsPK() {
        return siChildhistoryDetailsPK;
    }

    public void setSiChildhistoryDetailsPK(SiChildhistoryDetailsPK siChildhistoryDetailsPK) {
        this.siChildhistoryDetailsPK = siChildhistoryDetailsPK;
    }

    public String getMotherHealth() {
        return motherHealth;
    }

    public void setMotherHealth(String motherHealth) {
        this.motherHealth = motherHealth;
    }

    public String getMotherTreatmentUndergone() {
        return motherTreatmentUndergone;
    }

    public void setMotherTreatmentUndergone(String motherTreatmentUndergone) {
        this.motherTreatmentUndergone = motherTreatmentUndergone;
    }

    public String getAccidentPregnancy() {
        return accidentPregnancy;
    }

    public void setAccidentPregnancy(String accidentPregnancy) {
        this.accidentPregnancy = accidentPregnancy;
    }

    public String getOtherComplications() {
        return otherComplications;
    }

    public void setOtherComplications(String otherComplications) {
        this.otherComplications = otherComplications;
    }

    public String getChildBirthType() {
        return childBirthType;
    }

    public void setChildBirthType(String childBirthType) {
        this.childBirthType = childBirthType;
    }

    public String getImmunizationChild() {
        return immunizationChild;
    }

    public void setImmunizationChild(String immunizationChild) {
        this.immunizationChild = immunizationChild;
    }

    public String getTreatmentChildPostnatal() {
        return treatmentChildPostnatal;
    }

    public void setTreatmentChildPostnatal(String treatmentChildPostnatal) {
        this.treatmentChildPostnatal = treatmentChildPostnatal;
    }

    public String getPcDisability() {
        return pcDisability;
    }

    public void setPcDisability(String pcDisability) {
        this.pcDisability = pcDisability;
    }

    public String getPcPhysicalStructure() {
        return pcPhysicalStructure;
    }

    public void setPcPhysicalStructure(String pcPhysicalStructure) {
        this.pcPhysicalStructure = pcPhysicalStructure;
    }

    public String getPcColorEye() {
        return pcColorEye;
    }

    public void setPcColorEye(String pcColorEye) {
        this.pcColorEye = pcColorEye;
    }

    public String getPcOthers() {
        return pcOthers;
    }

    public void setPcOthers(String pcOthers) {
        this.pcOthers = pcOthers;
    }

    public String getMcRetardation() {
        return mcRetardation;
    }

    public void setMcRetardation(String mcRetardation) {
        this.mcRetardation = mcRetardation;
    }

    public String getMcCapacityUnderstand() {
        return mcCapacityUnderstand;
    }

    public void setMcCapacityUnderstand(String mcCapacityUnderstand) {
        this.mcCapacityUnderstand = mcCapacityUnderstand;
    }

    public String getMcStrongDepression() {
        return mcStrongDepression;
    }

    public void setMcStrongDepression(String mcStrongDepression) {
        this.mcStrongDepression = mcStrongDepression;
    }

    public String getMcPsycologists() {
        return mcPsycologists;
    }

    public void setMcPsycologists(String mcPsycologists) {
        this.mcPsycologists = mcPsycologists;
    }

    public String getMcOther() {
        return mcOther;
    }

    public void setMcOther(String mcOther) {
        this.mcOther = mcOther;
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

    public String getPhysicalNeglectConsequences() {
        return physicalNeglectConsequences;
    }

    public void setPhysicalNeglectConsequences(String physicalNeglectConsequences) {
        this.physicalNeglectConsequences = physicalNeglectConsequences;
    }

    public String getIllTreatment() {
        return illTreatment;
    }

    public void setIllTreatment(String illTreatment) {
        this.illTreatment = illTreatment;
    }

    public String getOtherExploitation() {
        return otherExploitation;
    }

    public void setOtherExploitation(String otherExploitation) {
        this.otherExploitation = otherExploitation;
    }

    public String getHabits() {
        return habits;
    }

    public void setHabits(String habits) {
        this.habits = habits;
    }

    public String getIntrests() {
        return intrests;
    }

    public void setIntrests(String intrests) {
        this.intrests = intrests;
    }

    public String getMoralValues() {
        return moralValues;
    }

    public void setMoralValues(String moralValues) {
        this.moralValues = moralValues;
    }

    public String getRecreationActivities() {
        return recreationActivities;
    }

    public void setRecreationActivities(String recreationActivities) {
        this.recreationActivities = recreationActivities;
    }

    public String getOutstandingChareristics() {
        return outstandingChareristics;
    }

    public void setOutstandingChareristics(String outstandingChareristics) {
        this.outstandingChareristics = outstandingChareristics;
    }

    public String getCompanionsInfluence() {
        return companionsInfluence;
    }

    public void setCompanionsInfluence(String companionsInfluence) {
        this.companionsInfluence = companionsInfluence;
    }

    public String getTruancyHome() {
        return truancyHome;
    }

    public void setTruancyHome(String truancyHome) {
        this.truancyHome = truancyHome;
    }

    public String getSchoolDetails() {
        return schoolDetails;
    }

    public void setSchoolDetails(String schoolDetails) {
        this.schoolDetails = schoolDetails;
    }

    public String getWorkRecord() {
        return workRecord;
    }

    public void setWorkRecord(String workRecord) {
        this.workRecord = workRecord;
    }

    public String getNeighbourhoodReport() {
        return neighbourhoodReport;
    }

    public void setNeighbourhoodReport(String neighbourhoodReport) {
        this.neighbourhoodReport = neighbourhoodReport;
    }

    public String getParentsDisciplane() {
        return parentsDisciplane;
    }

    public void setParentsDisciplane(String parentsDisciplane) {
        this.parentsDisciplane = parentsDisciplane;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
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
        hash += (siChildhistoryDetailsPK != null ? siChildhistoryDetailsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SiChildhistoryDetails)) {
            return false;
        }
        SiChildhistoryDetails other = (SiChildhistoryDetails) object;
        if ((this.siChildhistoryDetailsPK == null && other.siChildhistoryDetailsPK != null) || (this.siChildhistoryDetailsPK != null && !this.siChildhistoryDetailsPK.equals(other.siChildhistoryDetailsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.SiChildhistoryDetails[ siChildhistoryDetailsPK=" + siChildhistoryDetailsPK + " ]";
    }
    
}
