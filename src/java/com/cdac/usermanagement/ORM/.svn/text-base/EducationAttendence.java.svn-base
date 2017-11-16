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
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "education_attendence", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EducationAttendence.findAll", query = "SELECT e FROM EducationAttendence e"),
    @NamedQuery(name = "EducationAttendence.findByDateAttd", query = "SELECT e FROM EducationAttendence e WHERE e.educationAttendencePK.dateAttd = :dateAttd"),
    @NamedQuery(name = "EducationAttendence.findByChildProfileId", query = "SELECT e FROM EducationAttendence e WHERE e.educationAttendencePK.childProfileId = :childProfileId"),
    @NamedQuery(name = "EducationAttendence.findByPresentAbsent", query = "SELECT e FROM EducationAttendence e WHERE e.presentAbsent = :presentAbsent")})
public class EducationAttendence implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EducationAttendencePK educationAttendencePK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "PRESENT_ABSENT", nullable = false)
    private char presentAbsent;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public EducationAttendence() {
    }

    public EducationAttendence(EducationAttendencePK educationAttendencePK) {
        this.educationAttendencePK = educationAttendencePK;
    }

    public EducationAttendence(EducationAttendencePK educationAttendencePK, char presentAbsent) {
        this.educationAttendencePK = educationAttendencePK;
        this.presentAbsent = presentAbsent;
    }

    public EducationAttendence(Date dateAttd, String childProfileId) {
        this.educationAttendencePK = new EducationAttendencePK(dateAttd, childProfileId);
    }

    public EducationAttendencePK getEducationAttendencePK() {
        return educationAttendencePK;
    }

    public void setEducationAttendencePK(EducationAttendencePK educationAttendencePK) {
        this.educationAttendencePK = educationAttendencePK;
    }

    public char getPresentAbsent() {
        return presentAbsent;
    }

    public void setPresentAbsent(char presentAbsent) {
        this.presentAbsent = presentAbsent;
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
        hash += (educationAttendencePK != null ? educationAttendencePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EducationAttendence)) {
            return false;
        }
        EducationAttendence other = (EducationAttendence) object;
        if ((this.educationAttendencePK == null && other.educationAttendencePK != null) || (this.educationAttendencePK != null && !this.educationAttendencePK.equals(other.educationAttendencePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.EducationAttendence[ educationAttendencePK=" + educationAttendencePK + " ]";
    }
    
}
