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
@Table(name = "exam_master", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    /*
     String [] paramNames={"examType","homeId","fromDate","toDate"};
     */
        
    @NamedQuery(name = "ExamMaster.findByExamTypeHomeIdAndFromTo", query = "SELECT e FROM ExamMaster e where e.homeId.homeId = :homeId AND e.examType = :examType AND e.examDate BETWEEN :fromDate AND :toDate"),    
    
    @NamedQuery(name = "ExamMaster.findAll", query = "SELECT e FROM ExamMaster e"),
    @NamedQuery(name = "ExamMaster.findByExamId", query = "SELECT e FROM ExamMaster e WHERE e.examId = :examId"),
    @NamedQuery(name = "ExamMaster.findByExamDate", query = "SELECT e FROM ExamMaster e WHERE e.examDate = :examDate"),
    @NamedQuery(name = "ExamMaster.findByExamType", query = "SELECT e FROM ExamMaster e WHERE e.examType = :examType"),
    @NamedQuery(name = "ExamMaster.findByClass1", query = "SELECT e FROM ExamMaster e WHERE e.class1 = :class1"),
    @NamedQuery(name = "ExamMaster.findBySubject", query = "SELECT e FROM ExamMaster e WHERE e.subject = :subject"),
    @NamedQuery(name = "ExamMaster.findByMaxMarks", query = "SELECT e FROM ExamMaster e WHERE e.maxMarks = :maxMarks"),
    @NamedQuery(name = "ExamMaster.findByRemarks", query = "SELECT e FROM ExamMaster e WHERE e.remarks = :remarks")})
public class ExamMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "EXAM_ID", nullable = false)
    private Integer examId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "EXAM_DATE", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date examDate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "EXAM_TYPE", nullable = false, length = 30)
    private String examType;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "CLASS", nullable = false, length = 10)
    private String class1;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "SUBJECT", nullable = false, length = 50)
    private String subject;
    @Basic(optional = false)
    @NotNull
    @Column(name = "MAX_MARKS", nullable = false)
    private int maxMarks;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "REMARKS", nullable = false, length = 50)
    private String remarks;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "examMaster")
    private List<ExamAttendence> examAttendenceList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "examMaster")
    private List<ExamMarks> examMarksList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "examMaster")
    private List<ChildrenAssesmentRegister> childrenAssesmentRegisterList;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false)
    @ManyToOne(optional = false)
    private HomeMaster homeId;
    
    /*Anupam added this on 02-02-2012 START*/
    @JoinColumn(name = "SCHOOL_ID", referencedColumnName = "SCHOOL_ID")
    @ManyToOne(optional = true)  //this is must to make the null values for school accepting ANUPAM 02-02-2012
    private SchoolMaster schoolMaster;
    /*Anupam added this on 02-02-2012 END*/

    public ExamMaster() {
    }

    public ExamMaster(Integer examId) {
        this.examId = examId;
    }

    public ExamMaster(Integer examId, Date examDate, String examType, String class1, String subject, int maxMarks, String remarks) {
        this.examId = examId;
        this.examDate = examDate;
        this.examType = examType;
        this.class1 = class1;
        this.subject = subject;
        this.maxMarks = maxMarks;
        this.remarks = remarks;
    }

    public Integer getExamId() {
        return examId;
    }

    public void setExamId(Integer examId) {
        this.examId = examId;
    }

    public Date getExamDate() {
        return examDate;
    }

    public void setExamDate(Date examDate) {
        this.examDate = examDate;
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType;
    }

    public String getClass1() {
        return class1;
    }

    public void setClass1(String class1) {
        this.class1 = class1;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getMaxMarks() {
        return maxMarks;
    }

    public void setMaxMarks(int maxMarks) {
        this.maxMarks = maxMarks;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    
    /*Anupam added this on 02-02-2012 START*/

    public SchoolMaster getSchoolMaster() {
        return schoolMaster;
    }

    public void setSchoolMaster(SchoolMaster schoolMaster) {
        this.schoolMaster = schoolMaster;
    }
    
    
    
    /*Anupam added this on 02-02-2012 END*/

    @XmlTransient
    public List<ExamAttendence> getExamAttendenceList() {
        return examAttendenceList;
    }

    public void setExamAttendenceList(List<ExamAttendence> examAttendenceList) {
        this.examAttendenceList = examAttendenceList;
    }

    @XmlTransient
    public List<ExamMarks> getExamMarksList() {
        return examMarksList;
    }

    public void setExamMarksList(List<ExamMarks> examMarksList) {
        this.examMarksList = examMarksList;
    }

    @XmlTransient
    public List<ChildrenAssesmentRegister> getChildrenAssesmentRegisterList() {
        return childrenAssesmentRegisterList;
    }

    public void setChildrenAssesmentRegisterList(List<ChildrenAssesmentRegister> childrenAssesmentRegisterList) {
        this.childrenAssesmentRegisterList = childrenAssesmentRegisterList;
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
        hash += (examId != null ? examId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ExamMaster)) {
            return false;
        }
        ExamMaster other = (ExamMaster) object;
        if ((this.examId == null && other.examId != null) || (this.examId != null && !this.examId.equals(other.examId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ExamMaster[ examId=" + examId + " ]";
    }
    
}
