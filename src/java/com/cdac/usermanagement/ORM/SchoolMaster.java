/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "school_master")
@XmlRootElement
@NamedQueries({
            
    @NamedQuery(name = "SchoolMaster.findAll", query = "SELECT s FROM SchoolMaster s"),
    @NamedQuery(name = "SchoolMaster.findBySchoolId", query = "SELECT s FROM SchoolMaster s WHERE s.schoolId = :schoolId"),
    @NamedQuery(name = "SchoolMaster.findBySchoolName", query = "SELECT s FROM SchoolMaster s WHERE s.schoolName = :schoolName"),
    @NamedQuery(name = "SchoolMaster.findByDistrictId", query = "SELECT s FROM SchoolMaster s WHERE s.districtId = :districtId"),
    @NamedQuery(name = "SchoolMaster.findBySchoolType", query = "SELECT s FROM SchoolMaster s WHERE s.schoolType = :schoolType")})
public class SchoolMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "SCHOOL_ID")
    private Integer schoolId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "SCHOOL_NAME")
    private String schoolName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "DISTRICT_ID")
    private String districtId;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "SCHOOL_ADDRESS")
    private String schoolAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "SCHOOL_TYPE")
    private String schoolType;
    
    /*Anupam added this on 01-02-2012 START*/
    
     @OneToMany(cascade = CascadeType.ALL, mappedBy = "schoolMaster")
    private List<EducationAdmission> educationAdmissionList;
     
     
    /*Anupam added this on 01-02-2012 END*/
     
     
     /*Anupam added this on 02-02-2012 START*/
    
     @OneToMany(cascade = CascadeType.ALL, mappedBy = "schoolMaster")
    private List<ExamMaster> examMasterList;
     
     
    /*Anupam added this on 02-02-2012 END*/
    
    public SchoolMaster() {
    }

    public SchoolMaster(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public SchoolMaster(Integer schoolId, String schoolName, String districtId, String schoolAddress, String schoolType) {
        this.schoolId = schoolId;
        this.schoolName = schoolName;
        this.districtId = districtId;
        this.schoolAddress = schoolAddress;
        this.schoolType = schoolType;
    }

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId;
    }

    public String getSchoolAddress() {
        return schoolAddress;
    }

    public void setSchoolAddress(String schoolAddress) {
        this.schoolAddress = schoolAddress;
    }

    public String getSchoolType() {
        return schoolType;
    }

    public void setSchoolType(String schoolType) {
        this.schoolType = schoolType;
    }
    
    /*---Anupam added this code on 01-02-2012 START ---*/

    public List<EducationAdmission> getEducationAdmissionList() {
        return educationAdmissionList;
    }

    public void setEducationAdmissionList(List<EducationAdmission> educationAdmissionList) {
        this.educationAdmissionList = educationAdmissionList;
    }

       
   
    
    /*---Anupam added this code on 01-02-2012 END ---*/
    
    
    /*Anupam added this on 02-02-2012 START*/
    
    public List<ExamMaster> getExamMasterList() {
        return examMasterList;
    }

    public void setExamMasterList(List<ExamMaster> examMasterList) {
        this.examMasterList = examMasterList;
    }
     
    /*Anupam added this on 02-02-2012 END*/

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (schoolId != null ? schoolId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SchoolMaster)) {
            return false;
        }
        SchoolMaster other = (SchoolMaster) object;
        if ((this.schoolId == null && other.schoolId != null) || (this.schoolId != null && !this.schoolId.equals(other.schoolId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.SchoolMaster[ schoolId=" + schoolId + " ]";
    }
    
}
