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
@Table(name = "casehistory_family_crime_details", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findAll", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findBySn", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.sn = :sn"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByChildProfileId", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.childProfileId = :childProfileId"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByName", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.name = :name"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByRelationship", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.relationship = :relationship"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByNatureCrime", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.natureCrime = :natureCrime"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByArrestMade", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.arrestMade = :arrestMade"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByPeriodConfinement", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.periodConfinement = :periodConfinement"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByPunishment", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.punishment = :punishment"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByLastModifiedDate", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "CasehistoryFamilyCrimeDetails.findByLastModifiedBy", query = "SELECT c FROM CasehistoryFamilyCrimeDetails c WHERE c.lastModifiedBy = :lastModifiedBy")})
public class CasehistoryFamilyCrimeDetails implements Serializable {
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
    @Size(max = 50)
    @Column(name = "NAME", length = 50)
    private String name;
    @Size(max = 50)
    @Column(name = "RELATIONSHIP", length = 50)
    private String relationship;
    @Size(max = 250)
    @Column(name = "NATURE_CRIME", length = 250)
    private String natureCrime;
    @Size(max = 250)
    @Column(name = "ARREST_MADE", length = 250)
    private String arrestMade;
    @Size(max = 150)
    @Column(name = "PERIOD_CONFINEMENT", length = 150)
    private String periodConfinement;
    @Size(max = 250)
    @Column(name = "PUNISHMENT", length = 250)
    private String punishment;
    @Basic(optional = false)
    @NotNull
    @Column(name = "LAST_MODIFIED_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;

    public CasehistoryFamilyCrimeDetails() {
    }

    public CasehistoryFamilyCrimeDetails(Integer sn) {
        this.sn = sn;
    }

    public CasehistoryFamilyCrimeDetails(Integer sn, String childProfileId, Date lastModifiedDate) {
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRelationship() {
        return relationship;
    }

    public void setRelationship(String relationship) {
        this.relationship = relationship;
    }

    public String getNatureCrime() {
        return natureCrime;
    }

    public void setNatureCrime(String natureCrime) {
        this.natureCrime = natureCrime;
    }

    public String getArrestMade() {
        return arrestMade;
    }

    public void setArrestMade(String arrestMade) {
        this.arrestMade = arrestMade;
    }

    public String getPeriodConfinement() {
        return periodConfinement;
    }

    public void setPeriodConfinement(String periodConfinement) {
        this.periodConfinement = periodConfinement;
    }

    public String getPunishment() {
        return punishment;
    }

    public void setPunishment(String punishment) {
        this.punishment = punishment;
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
        if (!(object instanceof CasehistoryFamilyCrimeDetails)) {
            return false;
        }
        CasehistoryFamilyCrimeDetails other = (CasehistoryFamilyCrimeDetails) object;
        if ((this.sn == null && other.sn != null) || (this.sn != null && !this.sn.equals(other.sn))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CasehistoryFamilyCrimeDetails[ sn=" + sn + " ]";
    }
    
}
