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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
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
@Table(name = "education_admission", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EducationAdmission.findByChildProfileIdAndActiveStatus", query = "SELECT e FROM EducationAdmission e WHERE e.status='active' AND e.childProfileId = :childProfileId"),
    @NamedQuery(name = "EducationAdmission.findByHomeIdVocCourseAndActiveStatus", query = "SELECT e FROM EducationAdmission e WHERE e.eduStatus= :eduStatus AND e.homeId.homeId = :homeId"),
    @NamedQuery(name = "EducationAdmission.findByHomeIdSchoolIdClass", query = "SELECT c FROM ChildMaster c ,EducationAdmission e WHERE c.childProfileId = e.childProfileId AND c.childProfileId IN(Select e1.childProfileId from EducationAdmission e1 where e1.eduStatus= :eduStatus AND e1.homeId.homeId = :homeId AND e1.schoolMaster.schoolId = :schoolId)"),
    //@NamedQuery(name = "EducationAdmission.findSchoolTypeStudentsNoDTOsByHomeIdSchoolId_OUT_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO(s.schoolId,s.schoolName,e.eduStatus,count(*)) FROM EducationAdmission e ,SchoolMaster s WHERE  e.homeId.homeId = :homeId AND e.status = :schoolType AND e.schoolMaster.schoolId = s.schoolId  GROUP BY e.eduStatus"), 
    @NamedQuery(name = "EducationAdmission.findSchoolTypeStudentsNoDTOsByHomeIdSchoolId_OUT_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO(s.schoolId,s.schoolName,e.eduStatus,count(*)) FROM EducationAdmission e ,SchoolMaster s,ChildMaster c WHERE e.childProfileId =c.childProfileId AND c.status ='active' AND  e.homeId.homeId = :homeId AND e.status = :schoolType AND e.schoolMaster.schoolId = s.schoolId  GROUP BY s.schoolId,e.eduStatus"), 
    //@NamedQuery(name = "EducationAdmission.findSchoolTypeStudentsNoDTOsByHomeIdSchoolId_IN_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO(e.eduStatus,count(*)) FROM EducationAdmission e WHERE  e.homeId.homeId = :homeId AND e.status = :schoolType  GROUP BY e.eduStatus"), 
    @NamedQuery(name = "EducationAdmission.findSchoolTypeStudentsNoDTOsByHomeIdSchoolId_IN_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO(e.eduStatus,count(*)) FROM EducationAdmission e, ChildMaster c WHERE e.childProfileId = c.childProfileId AND e.homeId.homeId = :homeId AND e.status = :schoolType  GROUP BY e.eduStatus"), 
    
    @NamedQuery(name = "EducationAdmission.findVocationPoulation_OUT_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO(s.schoolId,s.schoolName,v.vocCourseName,count(*)) FROM EducationAdmission e ,SchoolMaster s ,VocationalMaster v WHERE concat(v.vocCourseId) = e.eduStatus AND e.schoolMaster.schoolId = s.schoolId AND e.status = :schoolType AND e.homeId.homeId = :homeId GROUP BY e.eduStatus"), 
    @NamedQuery(name = "EducationAdmission.findVocationPoulation_IN_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolSingleStandardPopulationDTO(v.vocCourseName,count(*)) FROM EducationAdmission e ,VocationalMaster v WHERE concat(v.vocCourseId) = e.eduStatus AND e.status = :schoolType AND e.homeId.homeId = :homeId GROUP BY e.eduStatus"), 
    
    @NamedQuery(name = "EducationAdmission.findVocationStudetsInASchool_OUT_SIDE", query = "SELECT new com.cdac.headmaster.DTO.VocationalStudentDTO(c.childProfileId, c.childName , v.vocCourseName) FROM ChildMaster c, EducationAdmission e, VocationalMaster v WHERE c.childProfileId = e.childProfileId AND e.eduStatus = v.vocCourseId AND e.homeId.homeId = :homeId AND e.schoolMaster.schoolId = :schoolId ORDER BY v.vocCourseName"), 
    @NamedQuery(name = "EducationAdmission.findVocationStudets_IN_SIDE", query = "SELECT new com.cdac.headmaster.DTO.VocationalStudentDTO(c.childProfileId, c.childName , v.vocCourseName) FROM ChildMaster c, EducationAdmission e, VocationalMaster v WHERE c.childProfileId = e.childProfileId AND e.eduStatus = v.vocCourseId AND e.homeId.homeId = :homeId AND e.status = 'inside vocational' ORDER BY v.vocCourseName"), 
    
    @NamedQuery(name = "EducationAdmission.findStudetsInASchool_OUT_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, c.childName , e.eduStatus) FROM ChildMaster c, EducationAdmission e WHERE c.childProfileId = e.childProfileId AND e.homeId.homeId = :homeId AND e.eduStatus = :eduStatus AND e.schoolMaster.schoolId = :schoolId ORDER BY c.childProfileId"), 
    @NamedQuery(name = "EducationAdmission.findStudetsInSchool_IN_SIDE", query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, c.childName , e.eduStatus) FROM ChildMaster c, EducationAdmission e WHERE c.childProfileId = e.childProfileId AND e.eduStatus = :eduStatus AND e.homeId.homeId = :homeId AND e.status = 'inside school' ORDER BY c.childProfileId"), 
    
    @NamedQuery(name = "EducationAdmission.findStudetBasedOnIN_OUTStatus", query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, c.childName , e.eduStatus) FROM ChildMaster c, EducationAdmission e WHERE c.childProfileId = e.childProfileId AND e.eduStatus = :eduStatus AND e.homeId.homeId = :homeId AND e.status = :status ORDER BY c.childProfileId"), 
    
    @NamedQuery(name = "EducationAdmission.findAllStudetOfAClass", query = "SELECT new com.cdac.headmaster.DTO.SchoolStudentDTO(c.childProfileId, c.childName , e.eduStatus , e.status) FROM ChildMaster c, EducationAdmission e WHERE c.childProfileId = e.childProfileId AND e.eduStatus = :eduStatus AND e.homeId.homeId = :homeId ORDER BY e.status"), //anupam added on 29-02-2012
    
    
    /*@NamedQuery(name = "EducationAdmission.findByClassStudensDetailsOfAHome", query = "SELECT c.childName, c.childProfileId, s.schoolName"+
    +"FROM"+ 
    +"ChildMaster c, EducationAdmission e, SchoolMaster s"+
    +"WHERE"+ 
    +"c.homeId = :homeId"+
    +"AND"+
    +"e.eduStatus = :eduStatus"+
    +"AND"+ 
    +"e.schoolId = s.schoolId"+
    +"AND"+
    +"c.childProfileId = e.childProfileId"+
    +"AND"+ 
    +"e.schoolId"+
    +"IN ("+
    +"SELECT schoolId"+
    +"FROM SchoolMaster s1"+
    +"WHERE s1.schoolType = :schoolType"+
    +")"), */
    
    
    @NamedQuery(name = "EducationAdmission.findAll", query = "SELECT e FROM EducationAdmission e"),
    @NamedQuery(name = "EducationAdmission.findByChildProfileId", query = "SELECT e FROM EducationAdmission e WHERE e.childProfileId = :childProfileId"),
    @NamedQuery(name = "EducationAdmission.findByEduStatus", query = "SELECT e FROM EducationAdmission e WHERE e.eduStatus = :eduStatus"),
    @NamedQuery(name = "EducationAdmission.findByYear", query = "SELECT e FROM EducationAdmission e WHERE e.year = :year"),
    @NamedQuery(name = "EducationAdmission.findByAdmissionNo", query = "SELECT e FROM EducationAdmission e WHERE e.admissionNo = :admissionNo"),
    @NamedQuery(name = "EducationAdmission.findByDateOfAdm", query = "SELECT e FROM EducationAdmission e WHERE e.dateOfAdm = :dateOfAdm"),
    @NamedQuery(name = "EducationAdmission.findByStatus", query = "SELECT e FROM EducationAdmission e WHERE e.status = :status")})
public class EducationAdmission implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Size(max = 50)
    @Column(name = "EDU_STATUS", length = 50)
    private String eduStatus;
    @Size(max = 4)
    @Column(name = "YEAR", length = 4)
    private String year;
    @Column(name = "ADMISSION_NO")
    private String admissionNo;
    @Column(name = "DATE_OF_ADM")
    @Temporal(TemporalType.DATE)
    private Date dateOfAdm;
    @Size(max = 30)
    @Column(name = "STATUS", length = 30)
    private String status;
    
    //@Column(name = "SCHOOL_ID")
    //private Integer schoolId;
    
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private ChildMaster childMaster;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false)
    @ManyToOne(optional = false)
    private HomeMaster homeId;
    
    /*Anupam added this on 01-02-2012 START*/
    @JoinColumn(name = "SCHOOL_ID", referencedColumnName = "SCHOOL_ID")
    @ManyToOne(optional = true)  //this is must to make the null values for school accepting ANUPAM 02-02-2012
    private SchoolMaster schoolMaster;
    /*Anupam added this on 01-02-2012 END*/

    public EducationAdmission() {
    }

    public EducationAdmission(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getEduStatus() {
        return eduStatus;
    }

    public void setEduStatus(String eduStatus) {
        this.eduStatus = eduStatus;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getAdmissionNo() {
        return admissionNo;
    }

    public void setAdmissionNo(String admissionNo) {
        this.admissionNo = admissionNo;
    }

    public Date getDateOfAdm() {
        return dateOfAdm;
    }

    public void setDateOfAdm(Date dateOfAdm) {
        this.dateOfAdm = dateOfAdm;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public ChildMaster getChildMaster() {
        return childMaster;
    }

    public void setChildMaster(ChildMaster childMaster) {
        this.childMaster = childMaster;
    }

    public HomeMaster getHomeId() {
        return homeId;
    }

    public void setHomeId(HomeMaster homeId) {
        this.homeId = homeId;
    }

   /* public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }*/

    
    
    /*Anupam added this on 01-02-2012 START*/
   public SchoolMaster getSchoolMaster() {
        return schoolMaster;
    }

    public void setSchoolMaster(SchoolMaster schoolMaster) {
        this.schoolMaster = schoolMaster;
    }
    /*Anupam added this on 01-02-2012 END*/

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EducationAdmission)) {
            return false;
        }
        EducationAdmission other = (EducationAdmission) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.EducationAdmission[ childProfileId=" + childProfileId + " ]";
    }
    
}
