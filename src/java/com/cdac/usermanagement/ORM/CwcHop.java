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
@Table(name = "cwc_hop", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CwcHop.findAll", query = "SELECT c FROM CwcHop c"),
    @NamedQuery(name = "CwcHop.findByMeetingId", query = "SELECT c FROM CwcHop c WHERE c.meetingId = :meetingId"),
    @NamedQuery(name = "CwcHop.findByCipiDay", query = "SELECT c FROM CwcHop c WHERE c.cipiDay = :cipiDay"),
    @NamedQuery(name = "CwcHop.findByCipiYear", query = "SELECT c FROM CwcHop c WHERE c.cipiYear = :cipiYear"),
    @NamedQuery(name = "CwcHop.findByCName", query = "SELECT c FROM CwcHop c WHERE c.cName = :cName"),
    @NamedQuery(name = "CwcHop.findByCpFat", query = "SELECT c FROM CwcHop c WHERE c.cpFat = :cpFat"),
    @NamedQuery(name = "CwcHop.findByCAge", query = "SELECT c FROM CwcHop c WHERE c.cAge = :cAge"),
    @NamedQuery(name = "CwcHop.findByCVil", query = "SELECT c FROM CwcHop c WHERE c.cVil = :cVil"),
    @NamedQuery(name = "CwcHop.findByCpDD", query = "SELECT c FROM CwcHop c WHERE c.cpDD = :cpDD"),
    @NamedQuery(name = "CwcHop.findByCpPs", query = "SELECT c FROM CwcHop c WHERE c.cpPs = :cpPs"),
    @NamedQuery(name = "CwcHop.findByCpName", query = "SELECT c FROM CwcHop c WHERE c.cpName = :cpName"),
    @NamedQuery(name = "CwcHop.findByCpPer", query = "SELECT c FROM CwcHop c WHERE c.cpPer = :cpPer"),
    @NamedQuery(name = "CwcHop.findByCpHome", query = "SELECT c FROM CwcHop c WHERE c.cpHome = :cpHome"),
    @NamedQuery(name = "CwcHop.findByCpNd", query = "SELECT c FROM CwcHop c WHERE c.cpNd = :cpNd"),
    @NamedQuery(name = "CwcHop.findByCpDay", query = "SELECT c FROM CwcHop c WHERE c.cpDay = :cpDay"),
    @NamedQuery(name = "CwcHop.findByCpMon", query = "SELECT c FROM CwcHop c WHERE c.cpMon = :cpMon"),
    @NamedQuery(name = "CwcHop.findByCpYr", query = "SELECT c FROM CwcHop c WHERE c.cpYr = :cpYr")})
public class CwcHop implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "meeting_id", nullable = false)
    private Integer meetingId;
    @Size(max = 20)
    @Column(name = "cipiDay", length = 20)
    private String cipiDay;
    @Size(max = 10)
    @Column(name = "cipiYear", length = 10)
    private String cipiYear;
    @Size(max = 20)
    @Column(name = "cName", length = 20)
    private String cName;
    @Size(max = 20)
    @Column(name = "cpFat", length = 20)
    private String cpFat;
    @Size(max = 20)
    @Column(name = "cAge", length = 20)
    private String cAge;
    @Size(max = 20)
    @Column(name = "cVil", length = 20)
    private String cVil;
    @Size(max = 20)
    @Column(name = "cpDD", length = 20)
    private String cpDD;
    @Size(max = 20)
    @Column(name = "cpPs", length = 20)
    private String cpPs;
    @Size(max = 20)
    @Column(name = "cpName", length = 20)
    private String cpName;
    @Size(max = 20)
    @Column(name = "cpPer", length = 20)
    private String cpPer;
    @Size(max = 20)
    @Column(name = "cpHome", length = 20)
    private String cpHome;
    @Size(max = 20)
    @Column(name = "cpNd", length = 20)
    private String cpNd;
    @Size(max = 20)
    @Column(name = "cpDay", length = 20)
    private String cpDay;
    @Size(max = 20)
    @Column(name = "cpMon", length = 20)
    private String cpMon;
    @Size(max = 20)
    @Column(name = "cpYr", length = 20)
    private String cpYr;
    @JoinColumn(name = "meeting_id", referencedColumnName = "MEETING_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private CwcMeetings cwcMeetings;

    public CwcHop() {
    }

    public CwcHop(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public Integer getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public String getCipiDay() {
        return cipiDay;
    }

    public void setCipiDay(String cipiDay) {
        this.cipiDay = cipiDay;
    }

    public String getCipiYear() {
        return cipiYear;
    }

    public void setCipiYear(String cipiYear) {
        this.cipiYear = cipiYear;
    }

    public String getCName() {
        return cName;
    }

    public void setCName(String cName) {
        this.cName = cName;
    }

    public String getCpFat() {
        return cpFat;
    }

    public void setCpFat(String cpFat) {
        this.cpFat = cpFat;
    }

    public String getCAge() {
        return cAge;
    }

    public void setCAge(String cAge) {
        this.cAge = cAge;
    }

    public String getCVil() {
        return cVil;
    }

    public void setCVil(String cVil) {
        this.cVil = cVil;
    }

    public String getCpDD() {
        return cpDD;
    }

    public void setCpDD(String cpDD) {
        this.cpDD = cpDD;
    }

    public String getCpPs() {
        return cpPs;
    }

    public void setCpPs(String cpPs) {
        this.cpPs = cpPs;
    }

    public String getCpName() {
        return cpName;
    }

    public void setCpName(String cpName) {
        this.cpName = cpName;
    }

    public String getCpPer() {
        return cpPer;
    }

    public void setCpPer(String cpPer) {
        this.cpPer = cpPer;
    }

    public String getCpHome() {
        return cpHome;
    }

    public void setCpHome(String cpHome) {
        this.cpHome = cpHome;
    }

    public String getCpNd() {
        return cpNd;
    }

    public void setCpNd(String cpNd) {
        this.cpNd = cpNd;
    }

    public String getCpDay() {
        return cpDay;
    }

    public void setCpDay(String cpDay) {
        this.cpDay = cpDay;
    }

    public String getCpMon() {
        return cpMon;
    }

    public void setCpMon(String cpMon) {
        this.cpMon = cpMon;
    }

    public String getCpYr() {
        return cpYr;
    }

    public void setCpYr(String cpYr) {
        this.cpYr = cpYr;
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
        if (!(object instanceof CwcHop)) {
            return false;
        }
        CwcHop other = (CwcHop) object;
        if ((this.meetingId == null && other.meetingId != null) || (this.meetingId != null && !this.meetingId.equals(other.meetingId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcHop[ meetingId=" + meetingId + " ]";
    }
    
}
