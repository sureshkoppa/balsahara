/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "exam_marks", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ExamMarks.findExamIdAndChildProfileId", query = "SELECT e FROM ExamMarks e WHERE e.examMarksPK.examId =:examId AND e.examMarksPK.childProfileId = :childProfileId"), // added by anupam    
    @NamedQuery(name = "ExamMarks.findByMarksNotEntered", query = "SELECT DISTINCT e.examMarksPK.examId FROM ExamMarks e WHERE e.marksObtained = :marksObtained"), // added by anupam
    @NamedQuery(name = "ExamMaster.findUniqueExam", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.examDate = :examDate AND e.examType IN(SELECT e1.examType from ExamMaster e1 WHERE e1.examType = :examType AND e1.subject = :subject AND e1.class1 = :class1 )"),
    @NamedQuery(name = "ExamMaster.findAllScheduledExamsOfAHome", query = "SELECT e FROM ExamMaster e WHERE e.remarks = 'scheduled' AND e.homeId.homeId = :homeId "),
    @NamedQuery(name = "ExamMaster.findByHomeExamType2Dates", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.examType = :examType AND e.examDate BETWEEN :earlyDate AND :laterDate"),
    @NamedQuery(name = "ExamMaster.findByHomeClass2Dates", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.class1 = :class1 AND e.examDate BETWEEN :earlyDate AND :laterDate"),
    @NamedQuery(name = "ExamMaster.findByHomeSubject2Dates", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.subject = :subject AND e.examDate BETWEEN :earlyDate AND :laterDate"),
    @NamedQuery(name = "ExamMaster.findBy2Dates", query = "SELECT e FROM ExamMaster e WHERE e.homeId.homeId = :homeId AND e.examDate BETWEEN :earlyDate AND :laterDate"),

    
    
    @NamedQuery(name = "ExamMarks.findAll", query = "SELECT e FROM ExamMarks e"),
    @NamedQuery(name = "ExamMarks.findByExamId", query = "SELECT e FROM ExamMarks e WHERE e.examMarksPK.examId = :examId"),
    @NamedQuery(name = "ExamMarks.findByChildProfileId", query = "SELECT e FROM ExamMarks e WHERE e.examMarksPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ExamMarks.findByMarksObtained", query = "SELECT e FROM ExamMarks e WHERE e.marksObtained = :marksObtained")})
public class ExamMarks implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ExamMarksPK examMarksPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "MARKS_OBTAINED", nullable = false)
    private int marksObtained;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;
    @JoinColumn(name = "EXAM_ID", referencedColumnName = "EXAM_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ExamMaster examMaster;

    public ExamMarks() {
    }

    public ExamMarks(ExamMarksPK examMarksPK) {
        this.examMarksPK = examMarksPK;
    }

    public ExamMarks(ExamMarksPK examMarksPK, int marksObtained) {
        this.examMarksPK = examMarksPK;
        this.marksObtained = marksObtained;
    }

    public ExamMarks(int examId, String childProfileId) {
        this.examMarksPK = new ExamMarksPK(examId, childProfileId);
    }

    public ExamMarksPK getExamMarksPK() {
        return examMarksPK;
    }

    public void setExamMarksPK(ExamMarksPK examMarksPK) {
        this.examMarksPK = examMarksPK;
    }

    public int getMarksObtained() {
        return marksObtained;
    }

    public void setMarksObtained(int marksObtained) {
        this.marksObtained = marksObtained;
    }

    public ChildMaster getChildMaster() {
        return childMaster;
    }

    public void setChildMaster(ChildMaster childMaster) {
        this.childMaster = childMaster;
    }

    public ExamMaster getExamMaster() {
        return examMaster;
    }

    public void setExamMaster(ExamMaster examMaster) {
        this.examMaster = examMaster;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (examMarksPK != null ? examMarksPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ExamMarks)) {
            return false;
        }
        ExamMarks other = (ExamMarks) object;
        if ((this.examMarksPK == null && other.examMarksPK != null) || (this.examMarksPK != null && !this.examMarksPK.equals(other.examMarksPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ExamMarks[ examMarksPK=" + examMarksPK + " ]";
    }
    
}
