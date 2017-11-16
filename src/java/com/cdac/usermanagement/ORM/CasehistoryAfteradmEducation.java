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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
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
@Table(name = "casehistory_afteradm_education", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CasehistoryAfteradmEducation.findAll", query = "SELECT c FROM CasehistoryAfteradmEducation c"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findBySn", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.sn = :sn"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByChildProfileId", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.childProfileId = :childProfileId"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByYearAdmission", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.yearAdmission = :yearAdmission"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByTypeAdmission", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.typeAdmission = :typeAdmission"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByNameAdmission", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.nameAdmission = :nameAdmission"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByDetailsAdmission", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.detailsAdmission = :detailsAdmission"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByProficiency", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.proficiency = :proficiency"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByYearCompletion", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.yearCompletion = :yearCompletion"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByLastModifiedDate", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "CasehistoryAfteradmEducation.findByLastModifiedBy", query = "SELECT c FROM CasehistoryAfteradmEducation c WHERE c.lastModifiedBy = :lastModifiedBy")})
public class CasehistoryAfteradmEducation implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "SN", nullable = false)
    private Integer sn;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Column(name = "YEAR_ADMISSION")
    private Integer yearAdmission;
    @Size(max = 30)
    @Column(name = "TYPE_ADMISSION", length = 30)
    private String typeAdmission;
    @Size(max = 50)
    @Column(name = "NAME_ADMISSION", length = 50)
    private String nameAdmission;
    @Size(max = 100)
    @Column(name = "DETAILS_ADMISSION", length = 100)
    private String detailsAdmission;
    @Size(max = 250)
    @Column(name = "PROFICIENCY", length = 250)
    private String proficiency;
    @Column(name = "YEAR_COMPLETION")
    private Integer yearCompletion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "LAST_MODIFIED_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;

    public CasehistoryAfteradmEducation() {
    }

    public CasehistoryAfteradmEducation(Integer sn) {
        this.sn = sn;
    }

    public CasehistoryAfteradmEducation(Integer sn, String childProfileId, Date lastModifiedDate) {
        this.sn = sn;
        this.childProfileId = childProfileId;
        this.lastModifiedDate = lastModifiedDate;
    }

    public Integer getSn() {
        return sn;
    }

    public void setSn(Integer sn) {
        this.sn = sn;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public Integer getYearAdmission() {
        return yearAdmission;
    }

    public void setYearAdmission(Integer yearAdmission) {
        this.yearAdmission = yearAdmission;
    }

    public String getTypeAdmission() {
        return typeAdmission;
    }

    public void setTypeAdmission(String typeAdmission) {
        this.typeAdmission = typeAdmission;
    }

    public String getNameAdmission() {
        return nameAdmission;
    }

    public void setNameAdmission(String nameAdmission) {
        this.nameAdmission = nameAdmission;
    }

    public String getDetailsAdmission() {
        return detailsAdmission;
    }

    public void setDetailsAdmission(String detailsAdmission) {
        this.detailsAdmission = detailsAdmission;
    }

    public String getProficiency() {
        return proficiency;
    }

    public void setProficiency(String proficiency) {
        this.proficiency = proficiency;
    }

    public Integer getYearCompletion() {
        return yearCompletion;
    }

    public void setYearCompletion(Integer yearCompletion) {
        this.yearCompletion = yearCompletion;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sn != null ? sn.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CasehistoryAfteradmEducation)) {
            return false;
        }
        CasehistoryAfteradmEducation other = (CasehistoryAfteradmEducation) object;
        if ((this.sn == null && other.sn != null) || (this.sn != null && !this.sn.equals(other.sn))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CasehistoryAfteradmEducation[ sn=" + sn + " ]";
    }
    
}
