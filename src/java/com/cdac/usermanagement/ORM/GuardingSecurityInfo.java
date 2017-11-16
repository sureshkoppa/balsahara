/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "guarding_security_info", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "GuardingSecurityInfo.findAll", query = "SELECT g FROM GuardingSecurityInfo g"),
    @NamedQuery(name = "GuardingSecurityInfo.findByProfileidSecstaff", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.profileidSecstaff = :profileidSecstaff"),
    @NamedQuery(name = "GuardingSecurityInfo.findByName", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.name = :name"),
    @NamedQuery(name = "GuardingSecurityInfo.findByAge", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.age = :age"),
    @NamedQuery(name = "GuardingSecurityInfo.findByDesignation", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.designation = :designation"),
    @NamedQuery(name = "GuardingSecurityInfo.findByContactAddress", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.contactAddress = :contactAddress"),
    @NamedQuery(name = "GuardingSecurityInfo.findByContactNo", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.contactNo = :contactNo"),
    @NamedQuery(name = "GuardingSecurityInfo.findByEmailId", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.emailId = :emailId"),
    @NamedQuery(name = "GuardingSecurityInfo.findByDateOfJoining", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.dateOfJoining = :dateOfJoining"),
    @NamedQuery(name = "GuardingSecurityInfo.findByStatus", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.status = :status"),
    @NamedQuery(name = "GuardingSecurityInfo.findByLastModifiedDate", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "GuardingSecurityInfo.findByLastModifiedBy", query = "SELECT g FROM GuardingSecurityInfo g WHERE g.lastModifiedBy = :lastModifiedBy")})
public class GuardingSecurityInfo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "PROFILEID_SECSTAFF", nullable = false)
    private Integer profileidSecstaff;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "NAME", nullable = false, length = 50)
    private String name;
    @Basic(optional = false)
    @NotNull
    @Column(name = "AGE", nullable = false)
    private int age;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "DESIGNATION", nullable = false, length = 50)
    private String designation;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 75)
    @Column(name = "CONTACT_ADDRESS", nullable = false, length = 75)
    private String contactAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 12)
    @Column(name = "CONTACT_NO", nullable = false, length = 12)
    private String contactNo;
    @Size(max = 25)
    @Column(name = "EMAIL_ID", length = 25)
    private String emailId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DATE_OF_JOINING", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateOfJoining;
    @Basic(optional = false)
    @NotNull
    @Column(name = "STATUS", nullable = false)
    private int status;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "guardingSecurityInfo")
    private List<GuardingSecurityDuty> guardingSecurityDutyList;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false)
    @ManyToOne(optional = false)
    private HomeMaster homeId;

    public GuardingSecurityInfo() {
    }

    public GuardingSecurityInfo(Integer profileidSecstaff) {
        this.profileidSecstaff = profileidSecstaff;
    }

    public GuardingSecurityInfo(Integer profileidSecstaff, String name, int age, String designation, String contactAddress, String contactNo, Date dateOfJoining, int status) {
        this.profileidSecstaff = profileidSecstaff;
        this.name = name;
        this.age = age;
        this.designation = designation;
        this.contactAddress = contactAddress;
        this.contactNo = contactNo;
        this.dateOfJoining = dateOfJoining;
        this.status = status;
    }

    public Integer getProfileidSecstaff() {
        return profileidSecstaff;
    }

    public void setProfileidSecstaff(Integer profileidSecstaff) {
        this.profileidSecstaff = profileidSecstaff;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getContactAddress() {
        return contactAddress;
    }

    public void setContactAddress(String contactAddress) {
        this.contactAddress = contactAddress;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public Date getDateOfJoining() {
        return dateOfJoining;
    }

    public void setDateOfJoining(Date dateOfJoining) {
        this.dateOfJoining = dateOfJoining;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    @XmlTransient
    public List<GuardingSecurityDuty> getGuardingSecurityDutyList() {
        return guardingSecurityDutyList;
    }

    public void setGuardingSecurityDutyList(List<GuardingSecurityDuty> guardingSecurityDutyList) {
        this.guardingSecurityDutyList = guardingSecurityDutyList;
    }

    public HomeMaster getHomeId() {
        return homeId;
    }

    public void setHomeId(HomeMaster homeId) {
        this.homeId = homeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (profileidSecstaff != null ? profileidSecstaff.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GuardingSecurityInfo)) {
            return false;
        }
        GuardingSecurityInfo other = (GuardingSecurityInfo) object;
        if ((this.profileidSecstaff == null && other.profileidSecstaff != null) || (this.profileidSecstaff != null && !this.profileidSecstaff.equals(other.profileidSecstaff))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.GuardingSecurityInfo[ profileidSecstaff=" + profileidSecstaff + " ]";
    }
    
}
