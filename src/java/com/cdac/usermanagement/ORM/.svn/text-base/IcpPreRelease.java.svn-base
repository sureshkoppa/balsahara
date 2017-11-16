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

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "icp_pre_release", catalog = "child_homes", schema = "")
@NamedQueries({
    @NamedQuery(name = "IcpPreRelease.findAll", query = "SELECT i FROM IcpPreRelease i"),
    @NamedQuery(name = "IcpPreRelease.findByChildProfileId", query = "SELECT i FROM IcpPreRelease i WHERE i.childProfileId = :childProfileId"),
    @NamedQuery(name = "IcpPreRelease.findByReleaseType", query = "SELECT i FROM IcpPreRelease i WHERE i.releaseType = :releaseType"),
    @NamedQuery(name = "IcpPreRelease.findByDateRelease", query = "SELECT i FROM IcpPreRelease i WHERE i.dateRelease = :dateRelease"),
    @NamedQuery(name = "IcpPreRelease.findByDateRepatriation", query = "SELECT i FROM IcpPreRelease i WHERE i.dateRepatriation = :dateRepatriation"),
    @NamedQuery(name = "IcpPreRelease.findByIdentOffPostrel", query = "SELECT i FROM IcpPreRelease i WHERE i.identOffPostrel = :identOffPostrel"),
    @NamedQuery(name = "IcpPreRelease.findByOptionChild", query = "SELECT i FROM IcpPreRelease i WHERE i.optionChild = :optionChild")})
public class IcpPreRelease implements Serializable {
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
    @Column(name = "RELEASE_TYPE", nullable = false, length = 2)
    private String releaseType;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "DETAILS_PLACE_TRANS", nullable = false, length = 65535)
    private String detailsPlaceTrans;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "CONCERN_AUTHORITY", nullable = false, length = 65535)
    private String concernAuthority;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "DETAILS_PLACEMENT", nullable = false, length = 65535)
    private String detailsPlacement;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DATE_RELEASE", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateRelease;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DATE_REPATRIATION", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateRepatriation;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "REQUISITION_ESCORT", nullable = false, length = 65535)
    private String requisitionEscort;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "IDENTIFY_ESCORT", nullable = false, length = 65535)
    private String identifyEscort;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "REHABILATION_PLAN", nullable = false, length = 65535)
    private String rehabilationPlan;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "SPONSER_REQMENT", nullable = false, length = 65535)
    private String sponserReqment;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 3)
    @Column(name = "IDENT_OFF_POSTREL", nullable = false, length = 3)
    private String identOffPostrel;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "MOU_POSTREL", nullable = false, length = 65535)
    private String mouPostrel;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "IDENT_OF_SPONSER", nullable = false, length = 65535)
    private String identOfSponser;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "MOU_SPONSER", nullable = false, length = 65535)
    private String mouSponser;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "DETAILS_SAV_ACC", nullable = false, length = 65535)
    private String detailsSavAcc;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "DETAILS_EARN_BEL", nullable = false, length = 65535)
    private String detailsEarnBel;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "DETAILS_AWARDS", nullable = false, length = 65535)
    private String detailsAwards;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1050)
    @Column(name = "OPTION_CHILD", nullable = false, length = 1050)
    private String optionChild;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "ANY_OTHER_INFO", nullable = false, length = 65535)
    private String anyOtherInfo;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private ChildMaster childMaster;

    public IcpPreRelease() {
    }

    public IcpPreRelease(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public IcpPreRelease(String childProfileId, String releaseType, String detailsPlaceTrans, String concernAuthority, String detailsPlacement, Date dateRelease, Date dateRepatriation, String requisitionEscort, String identifyEscort, String rehabilationPlan, String sponserReqment, String identOffPostrel, String mouPostrel, String identOfSponser, String mouSponser, String detailsSavAcc, String detailsEarnBel, String detailsAwards, String optionChild, String anyOtherInfo) {
        this.childProfileId = childProfileId;
        this.releaseType = releaseType;
        this.detailsPlaceTrans = detailsPlaceTrans;
        this.concernAuthority = concernAuthority;
        this.detailsPlacement = detailsPlacement;
        this.dateRelease = dateRelease;
        this.dateRepatriation = dateRepatriation;
        this.requisitionEscort = requisitionEscort;
        this.identifyEscort = identifyEscort;
        this.rehabilationPlan = rehabilationPlan;
        this.sponserReqment = sponserReqment;
        this.identOffPostrel = identOffPostrel;
        this.mouPostrel = mouPostrel;
        this.identOfSponser = identOfSponser;
        this.mouSponser = mouSponser;
        this.detailsSavAcc = detailsSavAcc;
        this.detailsEarnBel = detailsEarnBel;
        this.detailsAwards = detailsAwards;
        this.optionChild = optionChild;
        this.anyOtherInfo = anyOtherInfo;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getReleaseType() {
        return releaseType;
    }

    public void setReleaseType(String releaseType) {
        this.releaseType = releaseType;
    }

    public String getDetailsPlaceTrans() {
        return detailsPlaceTrans;
    }

    public void setDetailsPlaceTrans(String detailsPlaceTrans) {
        this.detailsPlaceTrans = detailsPlaceTrans;
    }

    public String getConcernAuthority() {
        return concernAuthority;
    }

    public void setConcernAuthority(String concernAuthority) {
        this.concernAuthority = concernAuthority;
    }

    public String getDetailsPlacement() {
        return detailsPlacement;
    }

    public void setDetailsPlacement(String detailsPlacement) {
        this.detailsPlacement = detailsPlacement;
    }

    public Date getDateRelease() {
        return dateRelease;
    }

    public void setDateRelease(Date dateRelease) {
        this.dateRelease = dateRelease;
    }

    public Date getDateRepatriation() {
        return dateRepatriation;
    }

    public void setDateRepatriation(Date dateRepatriation) {
        this.dateRepatriation = dateRepatriation;
    }

    public String getRequisitionEscort() {
        return requisitionEscort;
    }

    public void setRequisitionEscort(String requisitionEscort) {
        this.requisitionEscort = requisitionEscort;
    }

    public String getIdentifyEscort() {
        return identifyEscort;
    }

    public void setIdentifyEscort(String identifyEscort) {
        this.identifyEscort = identifyEscort;
    }

    public String getRehabilationPlan() {
        return rehabilationPlan;
    }

    public void setRehabilationPlan(String rehabilationPlan) {
        this.rehabilationPlan = rehabilationPlan;
    }

    public String getSponserReqment() {
        return sponserReqment;
    }

    public void setSponserReqment(String sponserReqment) {
        this.sponserReqment = sponserReqment;
    }

    public String getIdentOffPostrel() {
        return identOffPostrel;
    }

    public void setIdentOffPostrel(String identOffPostrel) {
        this.identOffPostrel = identOffPostrel;
    }

    public String getMouPostrel() {
        return mouPostrel;
    }

    public void setMouPostrel(String mouPostrel) {
        this.mouPostrel = mouPostrel;
    }

    public String getIdentOfSponser() {
        return identOfSponser;
    }

    public void setIdentOfSponser(String identOfSponser) {
        this.identOfSponser = identOfSponser;
    }

    public String getMouSponser() {
        return mouSponser;
    }

    public void setMouSponser(String mouSponser) {
        this.mouSponser = mouSponser;
    }

    public String getDetailsSavAcc() {
        return detailsSavAcc;
    }

    public void setDetailsSavAcc(String detailsSavAcc) {
        this.detailsSavAcc = detailsSavAcc;
    }

    public String getDetailsEarnBel() {
        return detailsEarnBel;
    }

    public void setDetailsEarnBel(String detailsEarnBel) {
        this.detailsEarnBel = detailsEarnBel;
    }

    public String getDetailsAwards() {
        return detailsAwards;
    }

    public void setDetailsAwards(String detailsAwards) {
        this.detailsAwards = detailsAwards;
    }

    public String getOptionChild() {
        return optionChild;
    }

    public void setOptionChild(String optionChild) {
        this.optionChild = optionChild;
    }

    public String getAnyOtherInfo() {
        return anyOtherInfo;
    }

    public void setAnyOtherInfo(String anyOtherInfo) {
        this.anyOtherInfo = anyOtherInfo;
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
        if (!(object instanceof IcpPreRelease)) {
            return false;
        }
        IcpPreRelease other = (IcpPreRelease) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.IcpPreRelease[ childProfileId=" + childProfileId + " ]";
    }
    
}
