/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "cwc_uppi", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CwcUppi.findAll", query = "SELECT c FROM CwcUppi c"),
    @NamedQuery(name = "CwcUppi.findByMeetingId", query = "SELECT c FROM CwcUppi c WHERE c.meetingId = :meetingId"),
    @NamedQuery(name = "CwcUppi.findByPName", query = "SELECT c FROM CwcUppi c WHERE c.pName = :pName"),
    @NamedQuery(name = "CwcUppi.findByPHouse", query = "SELECT c FROM CwcUppi c WHERE c.pHouse = :pHouse"),
    @NamedQuery(name = "CwcUppi.findByPStreet", query = "SELECT c FROM CwcUppi c WHERE c.pStreet = :pStreet"),
    @NamedQuery(name = "CwcUppi.findByPVilTwn", query = "SELECT c FROM CwcUppi c WHERE c.pVilTwn = :pVilTwn"),
    @NamedQuery(name = "CwcUppi.findByPDis", query = "SELECT c FROM CwcUppi c WHERE c.pDis = :pDis"),
    @NamedQuery(name = "CwcUppi.findByPState", query = "SELECT c FROM CwcUppi c WHERE c.pState = :pState"),
    @NamedQuery(name = "CwcUppi.findByPChild", query = "SELECT c FROM CwcUppi c WHERE c.pChild = :pChild"),
    @NamedQuery(name = "CwcUppi.findByPAge", query = "SELECT c FROM CwcUppi c WHERE c.pAge = :pAge")})
public class CwcUppi implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "meeting_id", nullable = false)
    private Integer meetingId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "pName", nullable = false, length = 20)
    private String pName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "pHouse", nullable = false, length = 20)
    private String pHouse;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "pStreet", nullable = false, length = 20)
    private String pStreet;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "pVilTwn", nullable = false, length = 20)
    private String pVilTwn;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "pDis", nullable = false, length = 20)
    private String pDis;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "pState", nullable = false, length = 20)
    private String pState;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "pChild", nullable = false, length = 20)
    private String pChild;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "pAge", nullable = false, length = 20)
    private String pAge;
    @JoinColumn(name = "meeting_id", referencedColumnName = "MEETING_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private CwcMeetings cwcMeetings;

    public CwcUppi() {
    }

    public CwcUppi(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public CwcUppi(Integer meetingId, String pName, String pHouse, String pStreet, String pVilTwn, String pDis, String pState, String pChild, String pAge) {
        this.meetingId = meetingId;
        this.pName = pName;
        this.pHouse = pHouse;
        this.pStreet = pStreet;
        this.pVilTwn = pVilTwn;
        this.pDis = pDis;
        this.pState = pState;
        this.pChild = pChild;
        this.pAge = pAge;
    }

    public Integer getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public String getPName() {
        return pName;
    }

    public void setPName(String pName) {
        this.pName = pName;
    }

    public String getPHouse() {
        return pHouse;
    }

    public void setPHouse(String pHouse) {
        this.pHouse = pHouse;
    }

    public String getPStreet() {
        return pStreet;
    }

    public void setPStreet(String pStreet) {
        this.pStreet = pStreet;
    }

    public String getPVilTwn() {
        return pVilTwn;
    }

    public void setPVilTwn(String pVilTwn) {
        this.pVilTwn = pVilTwn;
    }

    public String getPDis() {
        return pDis;
    }

    public void setPDis(String pDis) {
        this.pDis = pDis;
    }

    public String getPState() {
        return pState;
    }

    public void setPState(String pState) {
        this.pState = pState;
    }

    public String getPChild() {
        return pChild;
    }

    public void setPChild(String pChild) {
        this.pChild = pChild;
    }

    public String getPAge() {
        return pAge;
    }

    public void setPAge(String pAge) {
        this.pAge = pAge;
    }

    public CwcMeetings getCwcMeetings() {
        return cwcMeetings;
    }

    public void setCwcMeetings(CwcMeetings cwcMeetings) {
        this.cwcMeetings = cwcMeetings;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (meetingId != null ? meetingId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CwcUppi)) {
            return false;
        }
        CwcUppi other = (CwcUppi) object;
        if ((this.meetingId == null && other.meetingId != null) || (this.meetingId != null && !this.meetingId.equals(other.meetingId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcUppi[ meetingId=" + meetingId + " ]";
    }
    
}
