/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
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
@Table(name = "home_master", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "HomeMaster.findRCHomesInADistrict", query = "SELECT h.homeId||' , '||h.homeIdCat FROM HomeMaster h where h.homeIdCat like '%_CH%' AND h.districtId = :districtId"),
    @NamedQuery(name = "HomeMaster.findSHomesInADistrict", query = "SELECT h.homeId FROM HomeMaster h where h.homeIdCat='SH' AND h.districtId = :districtId"),
    @NamedQuery(name = "HomeMaster.findOHomesInADistrict", query = "SELECT h.homeId FROM HomeMaster h where h.homeIdCat='OH' AND h.districtId = :districtId"),
    @NamedQuery(name = "HomeMaster.findHomesInADistrict", query = "SELECT h.homeId FROM HomeMaster h where h.districtId = :districtId"),
    //suresh added 13-01-2011 start
    @NamedQuery(name = "HomeMaster.findHomesInADistrict1", query = "SELECT h FROM HomeMaster h where h.districtId = :districtId"),
    
    //suresh added 13-01-2011 end
    
    @NamedQuery(name = "HomeMaster.findAll", query = "SELECT h FROM HomeMaster h"),
    @NamedQuery(name = "HomeMaster.findByHomeId", query = "SELECT h FROM HomeMaster h WHERE h.homeId = :homeId"),
    @NamedQuery(name = "HomeMaster.findByHomeIdCat", query = "SELECT h FROM HomeMaster h WHERE h.homeIdCat = :homeIdCat"),
    @NamedQuery(name = "HomeMaster.findByHomeName", query = "SELECT h FROM HomeMaster h WHERE h.homeName = :homeName")})
public class HomeMaster implements Serializable {
    @Column(name =     "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @OneToMany(mappedBy = "homeId")
    private Collection<ProductCatSubcat> productCatSubcatCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private Collection<ChildMaster> childMasterCollection;
    @OneToMany(mappedBy = "homeId")
    private Collection<CashBook> cashBookCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private List<DietChart> dietChartList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private List<ProductCatSubcat> productCatSubcatList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeMaster")
    private Collection<HomeItemQoh> homeItemQohCollection;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Size(max = 30)
    @Column(name = "HOME_ID_CAT", length = 30)
    private String homeIdCat;
    @Size(max = 100)
    @Column(name = "HOME_NAME", length = 100)
    private String homeName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeMaster")
    private List<UserDetail> userDetailList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "homeMaster")
    private HomeDetails homeDetails;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeMaster")
    private List<ChildEnquery> childEnqueryList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private List<ChildMaster> childMasterList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private List<EducationAdmission> educationAdmissionList;
    @JoinColumn(name = "DISTRICT_ID", referencedColumnName = "DISTRICT_ID", nullable = false)
    @ManyToOne(optional = false)
    private DistrictMaster districtId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeMaster")
    private List<MedicalGeneralRegister> medicalGeneralRegisterList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private List<GuardingSecurityInfo> guardingSecurityInfoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeMaster")
    private List<HomeItemQoh> homeItemQohList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private List<ExamMaster> examMasterList;

    public HomeMaster() {
    }

    public HomeMaster(String homeId) {
        this.homeId = homeId;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public String getHomeIdCat() {
        return homeIdCat;
    }

    public void setHomeIdCat(String homeIdCat) {
        this.homeIdCat = homeIdCat;
    }

    public String getHomeName() {
        return homeName;
    }

    public void setHomeName(String homeName) {
        this.homeName = homeName;
    }

    @XmlTransient
    public List<UserDetail> getUserDetailList() {
        return userDetailList;
    }

    public void setUserDetailList(List<UserDetail> userDetailList) {
        this.userDetailList = userDetailList;
    }

    public HomeDetails getHomeDetails() {
        return homeDetails;
    }

    public void setHomeDetails(HomeDetails homeDetails) {
        this.homeDetails = homeDetails;
    }

    @XmlTransient
    public List<ChildEnquery> getChildEnqueryList() {
        return childEnqueryList;
    }

    public void setChildEnqueryList(List<ChildEnquery> childEnqueryList) {
        this.childEnqueryList = childEnqueryList;
    }

    @XmlTransient
    public List<ChildMaster> getChildMasterList() {
        return childMasterList;
    }

    public void setChildMasterList(List<ChildMaster> childMasterList) {
        this.childMasterList = childMasterList;
    }

    @XmlTransient
    public List<EducationAdmission> getEducationAdmissionList() {
        return educationAdmissionList;
    }

    public void setEducationAdmissionList(List<EducationAdmission> educationAdmissionList) {
        this.educationAdmissionList = educationAdmissionList;
    }

    public DistrictMaster getDistrictId() {
        return districtId;
    }

    public void setDistrictId(DistrictMaster districtId) {
        this.districtId = districtId;
    }

    @XmlTransient
    public List<MedicalGeneralRegister> getMedicalGeneralRegisterList() {
        return medicalGeneralRegisterList;
    }

    public void setMedicalGeneralRegisterList(List<MedicalGeneralRegister> medicalGeneralRegisterList) {
        this.medicalGeneralRegisterList = medicalGeneralRegisterList;
    }

    @XmlTransient
    public List<GuardingSecurityInfo> getGuardingSecurityInfoList() {
        return guardingSecurityInfoList;
    }

    public void setGuardingSecurityInfoList(List<GuardingSecurityInfo> guardingSecurityInfoList) {
        this.guardingSecurityInfoList = guardingSecurityInfoList;
    }

    @XmlTransient
    public List<HomeItemQoh> getHomeItemQohList() {
        return homeItemQohList;
    }

    public void setHomeItemQohList(List<HomeItemQoh> homeItemQohList) {
        this.homeItemQohList = homeItemQohList;
    }

    @XmlTransient
    public List<ExamMaster> getExamMasterList() {
        return examMasterList;
    }

    public void setExamMasterList(List<ExamMaster> examMasterList) {
        this.examMasterList = examMasterList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (homeId != null ? homeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HomeMaster)) {
            return false;
        }
        HomeMaster other = (HomeMaster) object;
        if ((this.homeId == null && other.homeId != null) || (this.homeId != null && !this.homeId.equals(other.homeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.HomeMaster[ homeId=" + homeId + " ]";
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
    public Collection<HomeItemQoh> getHomeItemQohCollection() {
        return homeItemQohCollection;
    }

    public void setHomeItemQohCollection(Collection<HomeItemQoh> homeItemQohCollection) {
        this.homeItemQohCollection = homeItemQohCollection;
    }

    
    public List<ProductCatSubcat> getProductCatSubcatList() {
        return productCatSubcatList;
    }

    public void setProductCatSubcatList(List<ProductCatSubcat> productCatSubcatList) {
        this.productCatSubcatList = productCatSubcatList;
    }

   
    public List<DietChart> getDietChartList() {
        return dietChartList;
    }

    public void setDietChartList(List<DietChart> dietChartList) {
        this.dietChartList = dietChartList;
    }

    @XmlTransient
    public Collection<CashBook> getCashBookCollection() {
        return cashBookCollection;
    }

    public void setCashBookCollection(Collection<CashBook> cashBookCollection) {
        this.cashBookCollection = cashBookCollection;
    }

   
    @XmlTransient
    public Collection<ChildMaster> getChildMasterCollection() {
        return childMasterCollection;
    }

    public void setChildMasterCollection(Collection<ChildMaster> childMasterCollection) {
        this.childMasterCollection = childMasterCollection;
    }
   
    @XmlTransient
    public Collection<ProductCatSubcat> getProductCatSubcatCollection() {
        return productCatSubcatCollection;
    }

    public void setProductCatSubcatCollection(Collection<ProductCatSubcat> productCatSubcatCollection) {
        this.productCatSubcatCollection = productCatSubcatCollection;
    }

   
    
}
