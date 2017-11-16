/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
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
@Table(name = "cwc_meetings", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CwcMeetings.findAll", query = "SELECT c FROM CwcMeetings c"),
    @NamedQuery(name = "CwcMeetings.findByMeetingId", query = "SELECT c FROM CwcMeetings c WHERE c.meetingId = :meetingId"),
    @NamedQuery(name = "CwcMeetings.findByCwcId", query = "SELECT c FROM CwcMeetings c WHERE c.cwcId = :cwcId"),
    @NamedQuery(name = "CwcMeetings.findByMeetingDate", query = "SELECT c FROM CwcMeetings c WHERE c.meetingDate = :meetingDate"),
    @NamedQuery(name = "CwcMeetings.findByVenue", query = "SELECT c FROM CwcMeetings c WHERE c.venue = :venue"),
    @NamedQuery(name = "CwcMeetings.findByNoOfMembers", query = "SELECT c FROM CwcMeetings c WHERE c.noOfMembers = :noOfMembers")})
public class CwcMeetings implements Serializable {
    @Column(name =     "MEETING_DATE")
    @Temporal(TemporalType.DATE)
    private Date meetingDate;
    @Column(name =     "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "cwcMeetings")
    private CwcUppi cwcUppi;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "cwcMeetings")
    private CwcSo cwcSo;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "cwcMeetings")
    private CwcHop cwcHop;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "cwcMeetings")
    private CwcSir cwcSir;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "MEETING_ID", nullable = false)
    private Integer meetingId;
    @Column(name = "CWC_ID")
    private Integer cwcId;
    @Size(max = 50)
    @Column(name = "VENUE", length = 50)
    private String venue;
    @Column(name = "NO_OF_MEMBERS")
    private Integer noOfMembers;

    public CwcMeetings() {
    }

    public CwcMeetings(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public Integer getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public Integer getCwcId() {
        return cwcId;
    }

    public void setCwcId(Integer cwcId) {
        this.cwcId = cwcId;
    }

    public Date getMeetingDate() {
        return meetingDate;
    }

    public void setMeetingDate(Date meetingDate) {
        this.meetingDate = meetingDate;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public Integer getNoOfMembers() {
        return noOfMembers;
    }

    public void setNoOfMembers(Integer noOfMembers) {
        this.noOfMembers = noOfMembers;
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
        if (!(object instanceof CwcMeetings)) {
            return false;
        }
        CwcMeetings other = (CwcMeetings) object;
        if ((this.meetingId == null && other.meetingId != null) || (this.meetingId != null && !this.meetingId.equals(other.meetingId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcMeetings[ meetingId=" + meetingId + " ]";
    }

   
    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    public CwcSir getCwcSir() {
        return cwcSir;
    }

    public void setCwcSir(CwcSir cwcSir) {
        this.cwcSir = cwcSir;
    }

    

    public CwcHop getCwcHop() {
        return cwcHop;
    }

    public void setCwcHop(CwcHop cwcHop) {
        this.cwcHop = cwcHop;
    }

   
    public CwcUppi getCwcUppi() {
        return cwcUppi;
    }

    public void setCwcUppi(CwcUppi cwcUppi) {
        this.cwcUppi = cwcUppi;
    }

    public CwcSo getCwcSo() {
        return cwcSo;
    }

    public void setCwcSo(CwcSo cwcSo) {
        this.cwcSo = cwcSo;
    }

   
    
}
