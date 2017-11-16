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
@Table(name = "si_child_details", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SiChildDetails.findAll", query = "SELECT s FROM SiChildDetails s"),
    @NamedQuery(name = "SiChildDetails.findByChildProfileId", query = "SELECT s FROM SiChildDetails s WHERE s.siChildDetailsPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "SiChildDetails.findByCwcJjbOrderNo", query = "SELECT s FROM SiChildDetails s WHERE s.cwcJjbOrderNo = :cwcJjbOrderNo"),
    @NamedQuery(name = "SiChildDetails.findByOrderDate", query = "SELECT s FROM SiChildDetails s WHERE s.orderDate = :orderDate"),
    @NamedQuery(name = "SiChildDetails.findByUndersection", query = "SELECT s FROM SiChildDetails s WHERE s.undersection = :undersection"),
    @NamedQuery(name = "SiChildDetails.findByNatureOffence", query = "SELECT s FROM SiChildDetails s WHERE s.natureOffence = :natureOffence"),
    @NamedQuery(name = "SiChildDetails.findByChildName", query = "SELECT s FROM SiChildDetails s WHERE s.childName = :childName"),
    @NamedQuery(name = "SiChildDetails.findByFatherName", query = "SELECT s FROM SiChildDetails s WHERE s.fatherName = :fatherName"),
    @NamedQuery(name = "SiChildDetails.findByReligion", query = "SELECT s FROM SiChildDetails s WHERE s.religion = :religion"),
    @NamedQuery(name = "SiChildDetails.findByDob", query = "SELECT s FROM SiChildDetails s WHERE s.dob = :dob"),
    @NamedQuery(name = "SiChildDetails.findByCaste", query = "SELECT s FROM SiChildDetails s WHERE s.caste = :caste"),
    @NamedQuery(name = "SiChildDetails.findByAge", query = "SELECT s FROM SiChildDetails s WHERE s.age = :age"),
    @NamedQuery(name = "SiChildDetails.findByGender", query = "SELECT s FROM SiChildDetails s WHERE s.gender = :gender"),
    @NamedQuery(name = "SiChildDetails.findByLastModifiedDate", query = "SELECT s FROM SiChildDetails s WHERE s.siChildDetailsPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "SiChildDetails.findByLastModifiedBy", query = "SELECT s FROM SiChildDetails s WHERE s.lastModifiedBy = :lastModifiedBy")})
public class SiChildDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected SiChildDetailsPK siChildDetailsPK;
    @Size(max = 30)
    @Column(name = "CWC_JJB_ORDER_NO", length = 30)
    private String cwcJjbOrderNo;
    @Column(name = "ORDER_DATE")
    @Temporal(TemporalType.DATE)
    private Date orderDate;
    @Size(max = 256)
    @Column(name = "UNDERSECTION", length = 256)
    private String undersection;
    @Size(max = 256)
    @Column(name = "NATURE_OFFENCE", length = 256)
    private String natureOffence;
    @Size(max = 30)
    @Column(name = "CHILD_NAME", length = 30)
    private String childName;
    @Size(max = 30)
    @Column(name = "FATHER_NAME", length = 30)
    private String fatherName;
    @Lob
    @Size(max = 65535)
    @Column(name = "PERMANENT_ADDRESS", length = 65535)
    private String permanentAddress;
    @Lob
    @Size(max = 65535)
    @Column(name = "PRESENT_ADDRESS", length = 65535)
    private String presentAddress;
    @Size(max = 20)
    @Column(name = "RELIGION", length = 20)
    private String religion;
    @Column(name = "DOB")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Size(max = 30)
    @Column(name = "CASTE", length = 30)
    private String caste;
    @Column(name = "AGE")
    private Integer age;
    @Size(max = 10)
    @Column(name = "GENDER", length = 10)
    private String gender;
    @Lob
    @Size(max = 65535)
    @Column(name = "PREVIOUS_INSTI_DETAILS", length = 65535)
    private String previousInstiDetails;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public SiChildDetails() {
    }

    public SiChildDetails(SiChildDetailsPK siChildDetailsPK) {
        this.siChildDetailsPK = siChildDetailsPK;
    }

    public SiChildDetails(String childProfileId, Date lastModifiedDate) {
        this.siChildDetailsPK = new SiChildDetailsPK(childProfileId, lastModifiedDate);
    }

    public SiChildDetailsPK getSiChildDetailsPK() {
        return siChildDetailsPK;
    }

    public void setSiChildDetailsPK(SiChildDetailsPK siChildDetailsPK) {
        this.siChildDetailsPK = siChildDetailsPK;
    }

    public String getCwcJjbOrderNo() {
        return cwcJjbOrderNo;
    }

    public void setCwcJjbOrderNo(String cwcJjbOrderNo) {
        this.cwcJjbOrderNo = cwcJjbOrderNo;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getUndersection() {
        return undersection;
    }

    public void setUndersection(String undersection) {
        this.undersection = undersection;
    }

    public String getNatureOffence() {
        return natureOffence;
    }

    public void setNatureOffence(String natureOffence) {
        this.natureOffence = natureOffence;
    }

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public String getPresentAddress() {
        return presentAddress;
    }

    public void setPresentAddress(String presentAddress) {
        this.presentAddress = presentAddress;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getCaste() {
        return caste;
    }

    public void setCaste(String caste) {
        this.caste = caste;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPreviousInstiDetails() {
        return previousInstiDetails;
    }

    public void setPreviousInstiDetails(String previousInstiDetails) {
        this.previousInstiDetails = previousInstiDetails;
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
        hash += (siChildDetailsPK != null ? siChildDetailsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SiChildDetails)) {
            return false;
        }
        SiChildDetails other = (SiChildDetails) object;
        if ((this.siChildDetailsPK == null && other.siChildDetailsPK != null) || (this.siChildDetailsPK != null && !this.siChildDetailsPK.equals(other.siChildDetailsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.SiChildDetails[ siChildDetailsPK=" + siChildDetailsPK + " ]";
    }
    
}
