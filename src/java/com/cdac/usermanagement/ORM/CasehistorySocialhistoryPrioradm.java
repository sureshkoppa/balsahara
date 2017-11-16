/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "casehistory_socialhistory_prioradm", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findAll", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByChildProfileId", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.casehistorySocialhistoryPrioradmPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByFriendshipDetails", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.friendshipDetails = :friendshipDetails"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByFriendsMajority", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.friendsMajority = :friendsMajority"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByMembershipGroups", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.membershipGroups = :membershipGroups"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByPositionGroups", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.positionGroups = :positionGroups"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByPurposeMembership", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.purposeMembership = :purposeMembership"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByAttitudeGroup", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.attitudeGroup = :attitudeGroup"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByMeetingPointGroup", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.meetingPointGroup = :meetingPointGroup"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByReactionSocity", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.reactionSocity = :reactionSocity"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByReactionPolice", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.reactionPolice = :reactionPolice"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByLastModifiedDate", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.casehistorySocialhistoryPrioradmPK.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "CasehistorySocialhistoryPrioradm.findByLastModifiedBy", query = "SELECT c FROM CasehistorySocialhistoryPrioradm c WHERE c.lastModifiedBy = :lastModifiedBy")})
public class CasehistorySocialhistoryPrioradm implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CasehistorySocialhistoryPrioradmPK casehistorySocialhistoryPrioradmPK;
    @Size(max = 250)
    @Column(name = "FRIENDSHIP_DETAILS", length = 250)
    private String friendshipDetails;
    @Size(max = 20)
    @Column(name = "FRIENDS_MAJORITY", length = 20)
    private String friendsMajority;
    @Size(max = 60)
    @Column(name = "MEMBERSHIP_GROUPS", length = 60)
    private String membershipGroups;
    @Lob
    @Size(max = 65535)
    @Column(name = "MEMBERSHIP_DETAILS", length = 65535)
    private String membershipDetails;
    @Size(max = 50)
    @Column(name = "POSITION_GROUPS", length = 50)
    private String positionGroups;
    @Size(max = 250)
    @Column(name = "PURPOSE_MEMBERSHIP", length = 250)
    private String purposeMembership;
    @Size(max = 50)
    @Column(name = "ATTITUDE_GROUP", length = 50)
    private String attitudeGroup;
    @Size(max = 50)
    @Column(name = "MEETING_POINT_GROUP", length = 50)
    private String meetingPointGroup;
    @Size(max = 20)
    @Column(name = "REACTION_SOCITY", length = 20)
    private String reactionSocity;
    @Size(max = 20)
    @Column(name = "REACTION_POLICE", length = 20)
    private String reactionPolice;
    @Lob
    @Size(max = 65535)
    @Column(name = "RESPONSE_PUBLIC", length = 65535)
    private String responsePublic;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public CasehistorySocialhistoryPrioradm() {
    }

    public CasehistorySocialhistoryPrioradm(CasehistorySocialhistoryPrioradmPK casehistorySocialhistoryPrioradmPK) {
        this.casehistorySocialhistoryPrioradmPK = casehistorySocialhistoryPrioradmPK;
    }

    public CasehistorySocialhistoryPrioradm(String childProfileId, Date lastModifiedDate) {
        this.casehistorySocialhistoryPrioradmPK = new CasehistorySocialhistoryPrioradmPK(childProfileId, lastModifiedDate);
    }

    public CasehistorySocialhistoryPrioradmPK getCasehistorySocialhistoryPrioradmPK() {
        return casehistorySocialhistoryPrioradmPK;
    }

    public void setCasehistorySocialhistoryPrioradmPK(CasehistorySocialhistoryPrioradmPK casehistorySocialhistoryPrioradmPK) {
        this.casehistorySocialhistoryPrioradmPK = casehistorySocialhistoryPrioradmPK;
    }

    public String getFriendshipDetails() {
        return friendshipDetails;
    }

    public void setFriendshipDetails(String friendshipDetails) {
        this.friendshipDetails = friendshipDetails;
    }

    public String getFriendsMajority() {
        return friendsMajority;
    }

    public void setFriendsMajority(String friendsMajority) {
        this.friendsMajority = friendsMajority;
    }

    public String getMembershipGroups() {
        return membershipGroups;
    }

    public void setMembershipGroups(String membershipGroups) {
        this.membershipGroups = membershipGroups;
    }

    public String getMembershipDetails() {
        return membershipDetails;
    }

    public void setMembershipDetails(String membershipDetails) {
        this.membershipDetails = membershipDetails;
    }

    public String getPositionGroups() {
        return positionGroups;
    }

    public void setPositionGroups(String positionGroups) {
        this.positionGroups = positionGroups;
    }

    public String getPurposeMembership() {
        return purposeMembership;
    }

    public void setPurposeMembership(String purposeMembership) {
        this.purposeMembership = purposeMembership;
    }

    public String getAttitudeGroup() {
        return attitudeGroup;
    }

    public void setAttitudeGroup(String attitudeGroup) {
        this.attitudeGroup = attitudeGroup;
    }

    public String getMeetingPointGroup() {
        return meetingPointGroup;
    }

    public void setMeetingPointGroup(String meetingPointGroup) {
        this.meetingPointGroup = meetingPointGroup;
    }

    public String getReactionSocity() {
        return reactionSocity;
    }

    public void setReactionSocity(String reactionSocity) {
        this.reactionSocity = reactionSocity;
    }

    public String getReactionPolice() {
        return reactionPolice;
    }

    public void setReactionPolice(String reactionPolice) {
        this.reactionPolice = reactionPolice;
    }

    public String getResponsePublic() {
        return responsePublic;
    }

    public void setResponsePublic(String responsePublic) {
        this.responsePublic = responsePublic;
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
        hash += (casehistorySocialhistoryPrioradmPK != null ? casehistorySocialhistoryPrioradmPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CasehistorySocialhistoryPrioradm)) {
            return false;
        }
        CasehistorySocialhistoryPrioradm other = (CasehistorySocialhistoryPrioradm) object;
        if ((this.casehistorySocialhistoryPrioradmPK == null && other.casehistorySocialhistoryPrioradmPK != null) || (this.casehistorySocialhistoryPrioradmPK != null && !this.casehistorySocialhistoryPrioradmPK.equals(other.casehistorySocialhistoryPrioradmPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CasehistorySocialhistoryPrioradm[ casehistorySocialhistoryPrioradmPK=" + casehistorySocialhistoryPrioradmPK + " ]";
    }
    
}
