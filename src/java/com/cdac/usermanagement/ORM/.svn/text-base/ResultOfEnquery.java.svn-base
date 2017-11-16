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
@Table(name = "result_of_enquery", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ResultOfEnquery.findAll", query = "SELECT r FROM ResultOfEnquery r"),
    @NamedQuery(name = "ResultOfEnquery.findByChildProfileId", query = "SELECT r FROM ResultOfEnquery r WHERE r.resultOfEnqueryPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ResultOfEnquery.findByLastModifiedDate", query = "SELECT r FROM ResultOfEnquery r WHERE r.resultOfEnqueryPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "ResultOfEnquery.findByLastModifiedBy", query = "SELECT r FROM ResultOfEnquery r WHERE r.lastModifiedBy = :lastModifiedBy")})
public class ResultOfEnquery implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ResultOfEnqueryPK resultOfEnqueryPK;
    @Lob
    @Size(max = 65535)
    @Column(name = "IMPACT_EMOTIONAL_MENTAL", length = 65535)
    private String impactEmotionalMental;
    @Lob
    @Size(max = 65535)
    @Column(name = "IMPACT_SOCIO_ECONOMIC", length = 65535)
    private String impactSocioEconomic;
    @Lob
    @Size(max = 65535)
    @Column(name = "IMPACT_ABUSE_ILLTREATMENT", length = 65535)
    private String impactAbuseIlltreatment;
    @Lob
    @Size(max = 65535)
    @Column(name = "INTELLIGENT_ASSESSSMENT", length = 65535)
    private String intelligentAssesssment;
    @Lob
    @Size(max = 65535)
    @Column(name = "IDENTIFIED_PROBLEMS", length = 65535)
    private String identifiedProblems;
    @Lob
    @Size(max = 65535)
    @Column(name = "RESPONSE_FAMILY_HELP", length = 65535)
    private String responseFamilyHelp;
    @Lob
    @Size(max = 65535)
    @Column(name = "ANALYSIS_PROBLEMS", length = 65535)
    private String analysisProblems;
    @Lob
    @Size(max = 65535)
    @Column(name = "TREATMENT_PLAN_PO", length = 65535)
    private String treatmentPlanPo;
    @Lob
    @Size(max = 65535)
    @Column(name = "CONDITION_PROBATION", length = 65535)
    private String conditionProbation;
    @Lob
    @Size(max = 65535)
    @Column(name = "CONDITION_COMMUNITY", length = 65535)
    private String conditionCommunity;
    @Lob
    @Size(max = 65535)
    @Column(name = "SUGGESTED_TREATMENT_DRUGS", length = 65535)
    private String suggestedTreatmentDrugs;
    @Lob
    @Size(max = 65535)
    @Column(name = "TREATMENT_CENTER", length = 65535)
    private String treatmentCenter;
    @Lob
    @Size(max = 65535)
    @Column(name = "RESTITUTION_REASON", length = 65535)
    private String restitutionReason;
    @Lob
    @Size(max = 65535)
    @Column(name = "INSTI_TREATMENT_REASON", length = 65535)
    private String instiTreatmentReason;
    @Lob
    @Size(max = 65535)
    @Column(name = "NONINSTI_TREATMENT_REASON", length = 65535)
    private String noninstiTreatmentReason;
    @Lob
    @Size(max = 65535)
    @Column(name = "PARENT_ATTITUDE_RESPONSIBILITY", length = 65535)
    private String parentAttitudeResponsibility;
    @Lob
    @Size(max = 65535)
    @Column(name = "SUGGESTED_TREATMENT_INSTI", length = 65535)
    private String suggestedTreatmentInsti;
    @Lob
    @Size(max = 65535)
    @Column(name = "OTHERS", length = 65535)
    private String others;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public ResultOfEnquery() {
    }

    public ResultOfEnquery(ResultOfEnqueryPK resultOfEnqueryPK) {
        this.resultOfEnqueryPK = resultOfEnqueryPK;
    }

    public ResultOfEnquery(String childProfileId, Date lastModifiedDate) {
        this.resultOfEnqueryPK = new ResultOfEnqueryPK(childProfileId, lastModifiedDate);
    }

    public ResultOfEnqueryPK getResultOfEnqueryPK() {
        return resultOfEnqueryPK;
    }

    public void setResultOfEnqueryPK(ResultOfEnqueryPK resultOfEnqueryPK) {
        this.resultOfEnqueryPK = resultOfEnqueryPK;
    }

    public String getImpactEmotionalMental() {
        return impactEmotionalMental;
    }

    public void setImpactEmotionalMental(String impactEmotionalMental) {
        this.impactEmotionalMental = impactEmotionalMental;
    }

    public String getImpactSocioEconomic() {
        return impactSocioEconomic;
    }

    public void setImpactSocioEconomic(String impactSocioEconomic) {
        this.impactSocioEconomic = impactSocioEconomic;
    }

    public String getImpactAbuseIlltreatment() {
        return impactAbuseIlltreatment;
    }

    public void setImpactAbuseIlltreatment(String impactAbuseIlltreatment) {
        this.impactAbuseIlltreatment = impactAbuseIlltreatment;
    }

    public String getIntelligentAssesssment() {
        return intelligentAssesssment;
    }

    public void setIntelligentAssesssment(String intelligentAssesssment) {
        this.intelligentAssesssment = intelligentAssesssment;
    }

    public String getIdentifiedProblems() {
        return identifiedProblems;
    }

    public void setIdentifiedProblems(String identifiedProblems) {
        this.identifiedProblems = identifiedProblems;
    }

    public String getResponseFamilyHelp() {
        return responseFamilyHelp;
    }

    public void setResponseFamilyHelp(String responseFamilyHelp) {
        this.responseFamilyHelp = responseFamilyHelp;
    }

    public String getAnalysisProblems() {
        return analysisProblems;
    }

    public void setAnalysisProblems(String analysisProblems) {
        this.analysisProblems = analysisProblems;
    }

    public String getTreatmentPlanPo() {
        return treatmentPlanPo;
    }

    public void setTreatmentPlanPo(String treatmentPlanPo) {
        this.treatmentPlanPo = treatmentPlanPo;
    }

    public String getConditionProbation() {
        return conditionProbation;
    }

    public void setConditionProbation(String conditionProbation) {
        this.conditionProbation = conditionProbation;
    }

    public String getConditionCommunity() {
        return conditionCommunity;
    }

    public void setConditionCommunity(String conditionCommunity) {
        this.conditionCommunity = conditionCommunity;
    }

    public String getSuggestedTreatmentDrugs() {
        return suggestedTreatmentDrugs;
    }

    public void setSuggestedTreatmentDrugs(String suggestedTreatmentDrugs) {
        this.suggestedTreatmentDrugs = suggestedTreatmentDrugs;
    }

    public String getTreatmentCenter() {
        return treatmentCenter;
    }

    public void setTreatmentCenter(String treatmentCenter) {
        this.treatmentCenter = treatmentCenter;
    }

    public String getRestitutionReason() {
        return restitutionReason;
    }

    public void setRestitutionReason(String restitutionReason) {
        this.restitutionReason = restitutionReason;
    }

    public String getInstiTreatmentReason() {
        return instiTreatmentReason;
    }

    public void setInstiTreatmentReason(String instiTreatmentReason) {
        this.instiTreatmentReason = instiTreatmentReason;
    }

    public String getNoninstiTreatmentReason() {
        return noninstiTreatmentReason;
    }

    public void setNoninstiTreatmentReason(String noninstiTreatmentReason) {
        this.noninstiTreatmentReason = noninstiTreatmentReason;
    }

    public String getParentAttitudeResponsibility() {
        return parentAttitudeResponsibility;
    }

    public void setParentAttitudeResponsibility(String parentAttitudeResponsibility) {
        this.parentAttitudeResponsibility = parentAttitudeResponsibility;
    }

    public String getSuggestedTreatmentInsti() {
        return suggestedTreatmentInsti;
    }

    public void setSuggestedTreatmentInsti(String suggestedTreatmentInsti) {
        this.suggestedTreatmentInsti = suggestedTreatmentInsti;
    }

    public String getOthers() {
        return others;
    }

    public void setOthers(String others) {
        this.others = others;
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
        hash += (resultOfEnqueryPK != null ? resultOfEnqueryPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ResultOfEnquery)) {
            return false;
        }
        ResultOfEnquery other = (ResultOfEnquery) object;
        if ((this.resultOfEnqueryPK == null && other.resultOfEnqueryPK != null) || (this.resultOfEnqueryPK != null && !this.resultOfEnqueryPK.equals(other.resultOfEnqueryPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ResultOfEnquery[ resultOfEnqueryPK=" + resultOfEnqueryPK + " ]";
    }
    
}
