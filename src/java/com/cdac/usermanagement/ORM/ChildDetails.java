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
@Table(name = "child_details", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ChildDetails.findByChildProfileId", query = "SELECT c FROM ChildDetails c where c.childDetailsPK.lastModifiedDate=(SELECT max(c1.childDetailsPK.lastModifiedDate) FROM ChildDetails c1 WHERE c1.childDetailsPK.childProfileId = :childProfileId)"),   
    @NamedQuery(name = "ChildDetails.findByChildProfileId_bom", query = "SELECT c FROM ChildDetails c WHERE c.childDetailsPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ChildDetails.findAll", query = "SELECT c FROM ChildDetails c"),
    //@NamedQuery(name = "ChildDetails.findByChildProfileId", query = "SELECT c FROM ChildDetails c WHERE c.childDetailsPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ChildDetails.findByLastModifiedDate", query = "SELECT c FROM ChildDetails c WHERE c.childDetailsPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "ChildDetails.findByChildName", query = "SELECT c FROM ChildDetails c WHERE c.childName = :childName"),
    @NamedQuery(name = "ChildDetails.findByChildSurname", query = "SELECT c FROM ChildDetails c WHERE c.childSurname = :childSurname"),
    @NamedQuery(name = "ChildDetails.findByReligion", query = "SELECT c FROM ChildDetails c WHERE c.religion = :religion"),
    @NamedQuery(name = "ChildDetails.findByCaste", query = "SELECT c FROM ChildDetails c WHERE c.caste = :caste"),
    @NamedQuery(name = "ChildDetails.findBySubcaste", query = "SELECT c FROM ChildDetails c WHERE c.subcaste = :subcaste"),
    @NamedQuery(name = "ChildDetails.findByAge", query = "SELECT c FROM ChildDetails c WHERE c.age = :age"),
    @NamedQuery(name = "ChildDetails.findByDob", query = "SELECT c FROM ChildDetails c WHERE c.dob = :dob"),
    @NamedQuery(name = "ChildDetails.findByFatherName", query = "SELECT c FROM ChildDetails c WHERE c.fatherName = :fatherName"),
    @NamedQuery(name = "ChildDetails.findByFatherOccup", query = "SELECT c FROM ChildDetails c WHERE c.fatherOccup = :fatherOccup"),
    @NamedQuery(name = "ChildDetails.findByMotherName", query = "SELECT c FROM ChildDetails c WHERE c.motherName = :motherName"),
    @NamedQuery(name = "ChildDetails.findByMotherOccup", query = "SELECT c FROM ChildDetails c WHERE c.motherOccup = :motherOccup"),
    @NamedQuery(name = "ChildDetails.findByNoBrothers", query = "SELECT c FROM ChildDetails c WHERE c.noBrothers = :noBrothers"),
    @NamedQuery(name = "ChildDetails.findByNoSister", query = "SELECT c FROM ChildDetails c WHERE c.noSister = :noSister"),
    @NamedQuery(name = "ChildDetails.findByLanguagesKnown", query = "SELECT c FROM ChildDetails c WHERE c.languagesKnown = :languagesKnown"),
    @NamedQuery(name = "ChildDetails.findByIntrRelatives", query = "SELECT c FROM ChildDetails c WHERE c.intrRelatives = :intrRelatives"),
    @NamedQuery(name = "ChildDetails.findByEduStatus", query = "SELECT c FROM ChildDetails c WHERE c.eduStatus = :eduStatus"),
    @NamedQuery(name = "ChildDetails.findByLastModifiedBy", query = "SELECT c FROM ChildDetails c WHERE c.lastModifiedBy = :lastModifiedBy")})
public class ChildDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ChildDetailsPK childDetailsPK;
    @Size(max = 75)
    @Column(name = "CHILD_NAME", length = 75)
    private String childName;
    @Size(max = 75)
    @Column(name = "CHILD_SURNAME", length = 75)
    private String childSurname;
    @Size(max = 30)
    @Column(name = "RELIGION", length = 30)
    private String religion;
    @Size(max = 30)
    @Column(name = "CASTE", length = 30)
    private String caste;
    @Size(max = 30)
    @Column(name = "SUBCASTE", length = 30)
    private String subcaste;
    @Column(name = "AGE")
    private Integer age;
    @Column(name = "DOB")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Size(max = 75)
    @Column(name = "FATHER_NAME", length = 75)
    private String fatherName;
    @Size(max = 150)
    @Column(name = "FATHER_OCCUP", length = 150)
    private String fatherOccup;
    @Size(max = 75)
    @Column(name = "MOTHER_NAME", length = 75)
    private String motherName;
    @Size(max = 150)
    @Column(name = "MOTHER_OCCUP", length = 150)
    private String motherOccup;
    @Column(name = "NO_BROTHERS")
    private Integer noBrothers;
    @Column(name = "NO_SISTER")
    private Integer noSister;
    @Size(max = 250)
    @Column(name = "LANGUAGES_KNOWN", length = 250)
    private String languagesKnown;
    @Lob
    @Size(max = 65535)
    @Column(name = "ADDR_PARENTS", length = 65535)
    private String addrParents;
    @Size(max = 255)
    @Column(name = "INTR_RELATIVES", length = 255)
    private String intrRelatives;
    @Lob
    @Size(max = 65535)
    @Column(name = "IDENTIFIED_PROBLEMS_CHILD", length = 65535)
    private String identifiedProblemsChild;
    @Size(max = 255)
    @Column(name = "EDU_STATUS", length = 255)
    private String eduStatus;
    @Size(max = 50)
    @Column(name = "LAST_MODIFIED_BY", length = 50)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public ChildDetails() {
    }

    public ChildDetails(ChildDetailsPK childDetailsPK) {
        this.childDetailsPK = childDetailsPK;
    }

    public ChildDetails(String childProfileId, Date lastModifiedDate) {
        this.childDetailsPK = new ChildDetailsPK(childProfileId, lastModifiedDate);
    }

    public ChildDetailsPK getChildDetailsPK() {
        return childDetailsPK;
    }

    public void setChildDetailsPK(ChildDetailsPK childDetailsPK) {
        this.childDetailsPK = childDetailsPK;
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

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getFatherOccup() {
        return fatherOccup;
    }

    public void setFatherOccup(String fatherOccup) {
        this.fatherOccup = fatherOccup;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getMotherOccup() {
        return motherOccup;
    }

    public void setMotherOccup(String motherOccup) {
        this.motherOccup = motherOccup;
    }

    public Integer getNoBrothers() {
        return noBrothers;
    }

    public void setNoBrothers(Integer noBrothers) {
        this.noBrothers = noBrothers;
    }

    public Integer getNoSister() {
        return noSister;
    }

    public void setNoSister(Integer noSister) {
        this.noSister = noSister;
    }

    public String getLanguagesKnown() {
        return languagesKnown;
    }

    public void setLanguagesKnown(String languagesKnown) {
        this.languagesKnown = languagesKnown;
    }

    public String getAddrParents() {
        return addrParents;
    }

    public void setAddrParents(String addrParents) {
        this.addrParents = addrParents;
    }

    public String getIntrRelatives() {
        return intrRelatives;
    }

    public void setIntrRelatives(String intrRelatives) {
        this.intrRelatives = intrRelatives;
    }

    public String getIdentifiedProblemsChild() {
        return identifiedProblemsChild;
    }

    public void setIdentifiedProblemsChild(String identifiedProblemsChild) {
        this.identifiedProblemsChild = identifiedProblemsChild;
    }

    public String getEduStatus() {
        return eduStatus;
    }

    public void setEduStatus(String eduStatus) {
        this.eduStatus = eduStatus;
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
        hash += (childDetailsPK != null ? childDetailsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChildDetails)) {
            return false;
        }
        ChildDetails other = (ChildDetails) object;
        if ((this.childDetailsPK == null && other.childDetailsPK != null) || (this.childDetailsPK != null && !this.childDetailsPK.equals(other.childDetailsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ChildDetails[ childDetailsPK=" + childDetailsPK + " ]";
    }
    
}
