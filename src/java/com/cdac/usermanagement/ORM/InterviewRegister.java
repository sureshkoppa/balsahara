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
import javax.persistence.Lob;
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
@Table(name = "interview_register", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "InterviewRegister.findAll", query = "SELECT i FROM InterviewRegister i"),
    @NamedQuery(name = "InterviewRegister.findByHomeId", query = "SELECT i FROM InterviewRegister i WHERE i.homeId = :homeId"),
    @NamedQuery(name = "InterviewRegister.findByChildProfileId", query = "SELECT i FROM InterviewRegister i WHERE i.interviewRegisterPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "InterviewRegister.findByInterviewDate", query = "SELECT i FROM InterviewRegister i WHERE i.interviewDate = :interviewDate"),
    @NamedQuery(name = "InterviewRegister.findByInterviewer", query = "SELECT i FROM InterviewRegister i WHERE i.interviewer = :interviewer"),
    @NamedQuery(name = "InterviewRegister.findByRelationshipChild", query = "SELECT i FROM InterviewRegister i WHERE i.relationshipChild = :relationshipChild"),
    @NamedQuery(name = "InterviewRegister.findByAddrInterviewer", query = "SELECT i FROM InterviewRegister i WHERE i.addrInterviewer = :addrInterviewer"),
    @NamedQuery(name = "InterviewRegister.findByLastModifiedDate", query = "SELECT i FROM InterviewRegister i WHERE i.interviewRegisterPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "InterviewRegister.findByLastModifiedBy", query = "SELECT i FROM InterviewRegister i WHERE i.lastModifiedBy = :lastModifiedBy")})
public class InterviewRegister implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected InterviewRegisterPK interviewRegisterPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "INTERVIEW_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date interviewDate;
    @Size(max = 30)
    @Column(name = "INTERVIEWER", length = 30)
    private String interviewer;
    @Size(max = 100)
    @Column(name = "RELATIONSHIP_CHILD", length = 100)
    private String relationshipChild;
    @Size(max = 250)
    @Column(name = "ADDR_INTERVIEWER", length = 250)
    private String addrInterviewer;
    @Lob
    @Size(max = 65535)
    @Column(name = "CHILD_BEHAVIOUR_INT", length = 65535)
    private String childBehaviourInt;
    @Lob
    @Size(max = 65535)
    @Column(name = "CHILD_BEHAVIOUR_AFTER_INT", length = 65535)
    private String childBehaviourAfterInt;
    @Lob
    @Size(max = 65535)
    @Column(name = "SUGGESTED_ACTION", length = 65535)
    private String suggestedAction;
    @Lob
    @Size(max = 65535)
    @Column(name = "REMARKS_SUPER", length = 65535)
    private String remarksSuper;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public InterviewRegister() {
    }

    public InterviewRegister(InterviewRegisterPK interviewRegisterPK) {
        this.interviewRegisterPK = interviewRegisterPK;
    }

    public InterviewRegister(InterviewRegisterPK interviewRegisterPK, String homeId, Date interviewDate) {
        this.interviewRegisterPK = interviewRegisterPK;
        this.homeId = homeId;
        this.interviewDate = interviewDate;
    }

    public InterviewRegister(String childProfileId, Date lastModifiedDate) {
        this.interviewRegisterPK = new InterviewRegisterPK(childProfileId, lastModifiedDate);
    }

    public InterviewRegisterPK getInterviewRegisterPK() {
        return interviewRegisterPK;
    }

    public void setInterviewRegisterPK(InterviewRegisterPK interviewRegisterPK) {
        this.interviewRegisterPK = interviewRegisterPK;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public Date getInterviewDate() {
        return interviewDate;
    }

    public void setInterviewDate(Date interviewDate) {
        this.interviewDate = interviewDate;
    }

    public String getInterviewer() {
        return interviewer;
    }

    public void setInterviewer(String interviewer) {
        this.interviewer = interviewer;
    }

    public String getRelationshipChild() {
        return relationshipChild;
    }

    public void setRelationshipChild(String relationshipChild) {
        this.relationshipChild = relationshipChild;
    }

    public String getAddrInterviewer() {
        return addrInterviewer;
    }

    public void setAddrInterviewer(String addrInterviewer) {
        this.addrInterviewer = addrInterviewer;
    }

    public String getChildBehaviourInt() {
        return childBehaviourInt;
    }

    public void setChildBehaviourInt(String childBehaviourInt) {
        this.childBehaviourInt = childBehaviourInt;
    }
    public String getChildBehaviourAfterInt() {
        return childBehaviourAfterInt;
    }

    public void setChildBehaviourAfterInt(String childBehaviourAfterInt) {
        this.childBehaviourAfterInt = childBehaviourAfterInt;
    }
    public String getSuggestedAction() {
        return suggestedAction;
    }

    public void setSuggestedAction(String suggestedAction) {
        this.suggestedAction = suggestedAction;
    }

    public String getRemarksSuper() {
        return remarksSuper;
    }

    public void setRemarksSuper(String remarksSuper) {
        this.remarksSuper = remarksSuper;
    }

    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
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
        hash += (interviewRegisterPK != null ? interviewRegisterPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof InterviewRegister)) {
            return false;
        }
        InterviewRegister other = (InterviewRegister) object;
        if ((this.interviewRegisterPK == null && other.interviewRegisterPK != null) || (this.interviewRegisterPK != null && !this.interviewRegisterPK.equals(other.interviewRegisterPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.InterviewRegister[ interviewRegisterPK=" + interviewRegisterPK + " ]";
    }
    
}
