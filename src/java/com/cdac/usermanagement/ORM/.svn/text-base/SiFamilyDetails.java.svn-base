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
import javax.persistence.Lob;
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
@Table(name = "si_family_details", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SiFamilyDetails.findAll", query = "SELECT s FROM SiFamilyDetails s"),
    @NamedQuery(name = "SiFamilyDetails.findBySn", query = "SELECT s FROM SiFamilyDetails s WHERE s.sn = :sn"),
    @NamedQuery(name = "SiFamilyDetails.findByChildProfileId", query = "SELECT s FROM SiFamilyDetails s WHERE s.childProfileId = :childProfileId"),
    @NamedQuery(name = "SiFamilyDetails.findByRelation", query = "SELECT s FROM SiFamilyDetails s WHERE s.relation = :relation"),
    @NamedQuery(name = "SiFamilyDetails.findByName", query = "SELECT s FROM SiFamilyDetails s WHERE s.name = :name"),
    @NamedQuery(name = "SiFamilyDetails.findByAge", query = "SELECT s FROM SiFamilyDetails s WHERE s.age = :age"),
    @NamedQuery(name = "SiFamilyDetails.findByOccupation", query = "SELECT s FROM SiFamilyDetails s WHERE s.occupation = :occupation"),
    @NamedQuery(name = "SiFamilyDetails.findByDisability", query = "SELECT s FROM SiFamilyDetails s WHERE s.disability = :disability"),
    @NamedQuery(name = "SiFamilyDetails.findByWages", query = "SELECT s FROM SiFamilyDetails s WHERE s.wages = :wages"),
    @NamedQuery(name = "SiFamilyDetails.findByLastModifiedDate", query = "SELECT s FROM SiFamilyDetails s WHERE s.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "SiFamilyDetails.findByLastModifiedBy", query = "SELECT s FROM SiFamilyDetails s WHERE s.lastModifiedBy = :lastModifiedBy")})
public class SiFamilyDetails implements Serializable {
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
    @Size(max = 256)
    @Column(name = "RELATION", length = 256)
    private String relation;
    @Size(max = 100)
    @Column(name = "NAME", length = 100)
    private String name;
    @Column(name = "AGE")
    private Integer age;
    @Lob
    @Size(max = 65535)
    @Column(name = "HEALTH", length = 65535)
    private String health;
    @Size(max = 256)
    @Column(name = "OCCUPATION", length = 256)
    private String occupation;
    @Size(max = 30)
    @Column(name = "DISABILITY", length = 30)
    private String disability;
    @Lob
    @Size(max = 65535)
    @Column(name = "HABITS", length = 65535)
    private String habits;
    @Lob
    @Size(max = 65535)
    @Column(name = "REMARKS", length = 65535)
    private String remarks;
    @Size(max = 256)
    @Column(name = "WAGES", length = 256)
    private String wages;
    @Basic(optional = false)
    @NotNull
    @Column(name = "LAST_MODIFIED_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;

    public SiFamilyDetails() {
    }

    public SiFamilyDetails(Integer sn) {
        this.sn = sn;
    }

    public SiFamilyDetails(Integer sn, String childProfileId, Date lastModifiedDate) {
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

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getHealth() {
        return health;
    }

    public void setHealth(String health) {
        this.health = health;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getDisability() {
        return disability;
    }

    public void setDisability(String disability) {
        this.disability = disability;
    }

    public String getHabits() {
        return habits;
    }

    public void setHabits(String habits) {
        this.habits = habits;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getWages() {
        return wages;
    }

    public void setWages(String wages) {
        this.wages = wages;
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
        if (!(object instanceof SiFamilyDetails)) {
            return false;
        }
        SiFamilyDetails other = (SiFamilyDetails) object;
        if ((this.sn == null && other.sn != null) || (this.sn != null && !this.sn.equals(other.sn))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.SiFamilyDetails[ sn=" + sn + " ]";
    }
    
}
