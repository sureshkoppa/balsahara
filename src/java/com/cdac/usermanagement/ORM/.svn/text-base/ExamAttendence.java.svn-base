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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "exam_attendence", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ExamAttendence.findAll", query = "SELECT e FROM ExamAttendence e"),
    @NamedQuery(name = "ExamAttendence.findByExamId", query = "SELECT e FROM ExamAttendence e WHERE e.examAttendencePK.examId = :examId"),
    @NamedQuery(name = "ExamAttendence.findByChildProfileId", query = "SELECT e FROM ExamAttendence e WHERE e.examAttendencePK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ExamAttendence.findByAttendence", query = "SELECT e FROM ExamAttendence e WHERE e.attendence = :attendence"),
    @NamedQuery(name = "ExamAttendence.findByRemarks", query = "SELECT e FROM ExamAttendence e WHERE e.remarks = :remarks")})
public class ExamAttendence implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ExamAttendencePK examAttendencePK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ATTENDENCE", nullable = false)
    private char attendence;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "REMARKS", nullable = false, length = 50)
    private String remarks;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;
    @JoinColumn(name = "EXAM_ID", referencedColumnName = "EXAM_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ExamMaster examMaster;

    public ExamAttendence() {
    }

    public ExamAttendence(ExamAttendencePK examAttendencePK) {
        this.examAttendencePK = examAttendencePK;
    }

    public ExamAttendence(ExamAttendencePK examAttendencePK, char attendence, String remarks) {
        this.examAttendencePK = examAttendencePK;
        this.attendence = attendence;
        this.remarks = remarks;
    }

    public ExamAttendence(int examId, String childProfileId) {
        this.examAttendencePK = new ExamAttendencePK(examId, childProfileId);
    }

    public ExamAttendencePK getExamAttendencePK() {
        return examAttendencePK;
    }

    public void setExamAttendencePK(ExamAttendencePK examAttendencePK) {
        this.examAttendencePK = examAttendencePK;
    }

    public char getAttendence() {
        return attendence;
    }

    public void setAttendence(char attendence) {
        this.attendence = attendence;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
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
        hash += (examAttendencePK != null ? examAttendencePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ExamAttendence)) {
            return false;
        }
        ExamAttendence other = (ExamAttendence) object;
        if ((this.examAttendencePK == null && other.examAttendencePK != null) || (this.examAttendencePK != null && !this.examAttendencePK.equals(other.examAttendencePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ExamAttendence[ examAttendencePK=" + examAttendencePK + " ]";
    }
    
}
