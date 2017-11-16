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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "referral_register", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ReferralRegister.findAll", query = "SELECT r FROM ReferralRegister r"),
    @NamedQuery(name = "ReferralRegister.findByChildProfileId", query = "SELECT r FROM ReferralRegister r WHERE r.referralRegisterPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ReferralRegister.findByReferralDate", query = "SELECT r FROM ReferralRegister r WHERE r.referralRegisterPK.referralDate = :referralDate"),
    @NamedQuery(name = "ReferralRegister.findByReferralHospital", query = "SELECT r FROM ReferralRegister r WHERE r.referralHospital = :referralHospital"),
    @NamedQuery(name = "ReferralRegister.findByReasonsReferral", query = "SELECT r FROM ReferralRegister r WHERE r.reasonsReferral = :reasonsReferral"),
    @NamedQuery(name = "ReferralRegister.findByAdmitDate", query = "SELECT r FROM ReferralRegister r WHERE r.admitDate = :admitDate"),
    @NamedQuery(name = "ReferralRegister.findByTreatedByReferralDoc", query = "SELECT r FROM ReferralRegister r WHERE r.treatedByReferralDoc = :treatedByReferralDoc"),
    @NamedQuery(name = "ReferralRegister.findByReferralTreatment", query = "SELECT r FROM ReferralRegister r WHERE r.referralTreatment = :referralTreatment"),
    @NamedQuery(name = "ReferralRegister.findByDischargeDate", query = "SELECT r FROM ReferralRegister r WHERE r.dischargeDate = :dischargeDate")})
public class ReferralRegister implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ReferralRegisterPK referralRegisterPK;
    @Size(max = 75)
    @Column(name = "REFERRAL_HOSPITAL", length = 75)
    private String referralHospital;
    @Size(max = 100)
    @Column(name = "REASONS_REFERRAL", length = 100)
    private String reasonsReferral;
    @Column(name = "ADMIT_DATE")
    @Temporal(TemporalType.DATE)
    private Date admitDate;
    @Size(max = 50)
    @Column(name = "TREATED_BY_REFERRAL_DOC", length = 50)
    private String treatedByReferralDoc;
    @Size(max = 100)
    @Column(name = "REFERRAL_TREATMENT", length = 100)
    private String referralTreatment;
    @Column(name = "DISCHARGE_DATE")
    @Temporal(TemporalType.DATE)
    private Date dischargeDate;
    @Lob
    @Size(max = 65535)
    @Column(name = "REMARKS", length = 65535)
    private String remarks;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public ReferralRegister() {
    }

    public ReferralRegister(ReferralRegisterPK referralRegisterPK) {
        this.referralRegisterPK = referralRegisterPK;
    }

    public ReferralRegister(String childProfileId, Date referralDate) {
        this.referralRegisterPK = new ReferralRegisterPK(childProfileId, referralDate);
    }

    public ReferralRegisterPK getReferralRegisterPK() {
        return referralRegisterPK;
    }

    public void setReferralRegisterPK(ReferralRegisterPK referralRegisterPK) {
        this.referralRegisterPK = referralRegisterPK;
    }

    public String getReferralHospital() {
        return referralHospital;
    }

    public void setReferralHospital(String referralHospital) {
        this.referralHospital = referralHospital;
    }

    public String getReasonsReferral() {
        return reasonsReferral;
    }

    public void setReasonsReferral(String reasonsReferral) {
        this.reasonsReferral = reasonsReferral;
    }

    public Date getAdmitDate() {
        return admitDate;
    }

    public void setAdmitDate(Date admitDate) {
        this.admitDate = admitDate;
    }

    public String getTreatedByReferralDoc() {
        return treatedByReferralDoc;
    }

    public void setTreatedByReferralDoc(String treatedByReferralDoc) {
        this.treatedByReferralDoc = treatedByReferralDoc;
    }

    public String getReferralTreatment() {
        return referralTreatment;
    }

    public void setReferralTreatment(String referralTreatment) {
        this.referralTreatment = referralTreatment;
    }

    public Date getDischargeDate() {
        return dischargeDate;
    }

    public void setDischargeDate(Date dischargeDate) {
        this.dischargeDate = dischargeDate;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
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
        hash += (referralRegisterPK != null ? referralRegisterPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ReferralRegister)) {
            return false;
        }
        ReferralRegister other = (ReferralRegister) object;
        if ((this.referralRegisterPK == null && other.referralRegisterPK != null) || (this.referralRegisterPK != null && !this.referralRegisterPK.equals(other.referralRegisterPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ReferralRegister[ referralRegisterPK=" + referralRegisterPK + " ]";
    }
    
}
