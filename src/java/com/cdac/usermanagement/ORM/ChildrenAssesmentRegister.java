/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
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
@Table(name = "children_assesment_register", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ChildrenAssesmentRegister.findAll", query = "SELECT c FROM ChildrenAssesmentRegister c"),
    @NamedQuery(name = "ChildrenAssesmentRegister.findByChildProfileId", query = "SELECT c FROM ChildrenAssesmentRegister c WHERE c.childrenAssesmentRegisterPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "ChildrenAssesmentRegister.findByExamId", query = "SELECT c FROM ChildrenAssesmentRegister c WHERE c.childrenAssesmentRegisterPK.examId = :examId"),
    @NamedQuery(name = "ChildrenAssesmentRegister.findByMarksObtained", query = "SELECT c FROM ChildrenAssesmentRegister c WHERE c.marksObtained = :marksObtained"),
    @NamedQuery(name = "ChildrenAssesmentRegister.findByEnteredBy", query = "SELECT c FROM ChildrenAssesmentRegister c WHERE c.enteredBy = :enteredBy"),
    @NamedQuery(name = "ChildrenAssesmentRegister.findByEntryDate", query = "SELECT c FROM ChildrenAssesmentRegister c WHERE c.entryDate = :entryDate")})
public class ChildrenAssesmentRegister implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ChildrenAssesmentRegisterPK childrenAssesmentRegisterPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "MARKS_OBTAINED", nullable = false)
    private int marksObtained;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "ENTERED_BY", nullable = false, length = 30)
    private String enteredBy;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ENTRY_DATE", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date entryDate;
    @JoinColumn(name = "EXAM_ID", referencedColumnName = "EXAM_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ExamMaster examMaster;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public ChildrenAssesmentRegister() {
    }

    public ChildrenAssesmentRegister(ChildrenAssesmentRegisterPK childrenAssesmentRegisterPK) {
        this.childrenAssesmentRegisterPK = childrenAssesmentRegisterPK;
    }

    public ChildrenAssesmentRegister(ChildrenAssesmentRegisterPK childrenAssesmentRegisterPK, int marksObtained, String enteredBy, Date entryDate) {
        this.childrenAssesmentRegisterPK = childrenAssesmentRegisterPK;
        this.marksObtained = marksObtained;
        this.enteredBy = enteredBy;
        this.entryDate = entryDate;
    }

    public ChildrenAssesmentRegister(String childProfileId, int examId) {
        this.childrenAssesmentRegisterPK = new ChildrenAssesmentRegisterPK(childProfileId, examId);
    }

    public ChildrenAssesmentRegisterPK getChildrenAssesmentRegisterPK() {
        return childrenAssesmentRegisterPK;
    }

    public void setChildrenAssesmentRegisterPK(ChildrenAssesmentRegisterPK childrenAssesmentRegisterPK) {
        this.childrenAssesmentRegisterPK = childrenAssesmentRegisterPK;
    }

    public int getMarksObtained() {
        return marksObtained;
    }

    public void setMarksObtained(int marksObtained) {
        this.marksObtained = marksObtained;
    }

    public String getEnteredBy() {
        return enteredBy;
    }

    public void setEnteredBy(String enteredBy) {
        this.enteredBy = enteredBy;
    }

    public Date getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(Date entryDate) {
        this.entryDate = entryDate;
    }

    public ExamMaster getExamMaster() {
        return examMaster;
    }

    public void setExamMaster(ExamMaster examMaster) {
        this.examMaster = examMaster;
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
        hash += (childrenAssesmentRegisterPK != null ? childrenAssesmentRegisterPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChildrenAssesmentRegister)) {
            return false;
        }
        ChildrenAssesmentRegister other = (ChildrenAssesmentRegister) object;
        if ((this.childrenAssesmentRegisterPK == null && other.childrenAssesmentRegisterPK != null) || (this.childrenAssesmentRegisterPK != null && !this.childrenAssesmentRegisterPK.equals(other.childrenAssesmentRegisterPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ChildrenAssesmentRegister[ childrenAssesmentRegisterPK=" + childrenAssesmentRegisterPK + " ]";
    }
    
}
