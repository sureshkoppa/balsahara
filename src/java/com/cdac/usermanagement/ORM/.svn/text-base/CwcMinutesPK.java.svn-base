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
public class CwcMinutesPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "MEETING_ID", nullable = false)
    private int meetingId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;

    public CwcMinutesPK() {
    }

    public CwcMinutesPK(int meetingId, String childProfileId) {
        this.meetingId = meetingId;
        this.childProfileId = childProfileId;
    }

    public int getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(int meetingId) {
        this.meetingId = meetingId;
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
        hash += (int) meetingId;
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CwcMinutesPK)) {
            return false;
        }
        CwcMinutesPK other = (CwcMinutesPK) object;
        if (this.meetingId != other.meetingId) {
            return false;
        }
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcMinutesPK[ meetingId=" + meetingId + ", childProfileId=" + childProfileId + " ]";
    }
    
}
