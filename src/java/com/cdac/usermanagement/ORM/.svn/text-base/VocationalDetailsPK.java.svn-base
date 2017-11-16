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
public class VocationalDetailsPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "VOC_COURSE_ID", nullable = false)
    private int vocCourseId;

    public VocationalDetailsPK() {
    }

    public VocationalDetailsPK(String childProfileId, int vocCourseId) {
        this.childProfileId = childProfileId;
        this.vocCourseId = vocCourseId;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public int getVocCourseId() {
        return vocCourseId;
    }

    public void setVocCourseId(int vocCourseId) {
        this.vocCourseId = vocCourseId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        hash += (int) vocCourseId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VocationalDetailsPK)) {
            return false;
        }
        VocationalDetailsPK other = (VocationalDetailsPK) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        if (this.vocCourseId != other.vocCourseId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.VocationalDetailsPK[ childProfileId=" + childProfileId + ", vocCourseId=" + vocCourseId + " ]";
    }
    
}
