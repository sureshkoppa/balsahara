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
@Table(name = "op_register", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OpRegister.findAll", query = "SELECT o FROM OpRegister o"),
    @NamedQuery(name = "OpRegister.findByChildProfileId", query = "SELECT o FROM OpRegister o WHERE o.opRegisterPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "OpRegister.findByOpDate", query = "SELECT o FROM OpRegister o WHERE o.opRegisterPK.opDate = :opDate"),
    @NamedQuery(name = "OpRegister.findByDiagnosis", query = "SELECT o FROM OpRegister o WHERE o.diagnosis = :diagnosis"),
    @NamedQuery(name = "OpRegister.findByTreatment", query = "SELECT o FROM OpRegister o WHERE o.treatment = :treatment"),
    @NamedQuery(name = "OpRegister.findByTreatedAt", query = "SELECT o FROM OpRegister o WHERE o.treatedAt = :treatedAt")})
public class OpRegister implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected OpRegisterPK opRegisterPK;
    @Size(max = 100)
    @Column(name = "DIAGNOSIS", length = 100)
    private String diagnosis;
    @Size(max = 100)
    @Column(name = "TREATMENT", length = 100)
    private String treatment;
    @Size(max = 100)
    @Column(name = "TREATED_AT", length = 100)
    private String treatedAt;
    @Lob
    @Size(max = 65535)
    @Column(name = "REMARKS", length = 65535)
    private String remarks;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public OpRegister() {
    }

    public OpRegister(OpRegisterPK opRegisterPK) {
        this.opRegisterPK = opRegisterPK;
    }

    public OpRegister(String childProfileId, Date opDate) {
        this.opRegisterPK = new OpRegisterPK(childProfileId, opDate);
    }

    public OpRegisterPK getOpRegisterPK() {
        return opRegisterPK;
    }

    public void setOpRegisterPK(OpRegisterPK opRegisterPK) {
        this.opRegisterPK = opRegisterPK;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getTreatment() {
        return treatment;
    }

    public void setTreatment(String treatment) {
        this.treatment = treatment;
    }

    public String getTreatedAt() {
        return treatedAt;
    }

    public void setTreatedAt(String treatedAt) {
        this.treatedAt = treatedAt;
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
        hash += (opRegisterPK != null ? opRegisterPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OpRegister)) {
            return false;
        }
        OpRegister other = (OpRegister) object;
        if ((this.opRegisterPK == null && other.opRegisterPK != null) || (this.opRegisterPK != null && !this.opRegisterPK.equals(other.opRegisterPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.OpRegister[ opRegisterPK=" + opRegisterPK + " ]";
    }
    
}
