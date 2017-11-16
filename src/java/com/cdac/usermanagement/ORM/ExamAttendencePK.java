/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author ANUPAM
 */
@Embeddable
public class ExamAttendencePK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "EXAM_ID", nullable = false)
    private int examId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;

    public ExamAttendencePK() {
    }

    public ExamAttendencePK(int examId, String childProfileId) {
        this.examId = examId;
        this.childProfileId = childProfileId;
    }

    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) examId;
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ExamAttendencePK)) {
            return false;
        }
        ExamAttendencePK other = (ExamAttendencePK) object;
        if (this.examId != other.examId) {
            return false;
        }
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ExamAttendencePK[ examId=" + examId + ", childProfileId=" + childProfileId + " ]";
    }
    
}
