/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
 * @author suresh
 */
@Entity
@Table(name = "cwc_sir", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CwcSir.findAll", query = "SELECT c FROM CwcSir c"),
    @NamedQuery(name = "CwcSir.findByMeetingId", query = "SELECT c FROM CwcSir c WHERE c.meetingId = :meetingId"),
    @NamedQuery(name = "CwcSir.findBySirFir", query = "SELECT c FROM CwcSir c WHERE c.sirFir = :sirFir"),
    @NamedQuery(name = "CwcSir.findBySirSec", query = "SELECT c FROM CwcSir c WHERE c.sirSec = :sirSec"),
    @NamedQuery(name = "CwcSir.findBySirPs", query = "SELECT c FROM CwcSir c WHERE c.sirPs = :sirPs"),
    @NamedQuery(name = "CwcSir.findBySirName", query = "SELECT c FROM CwcSir c WHERE c.sirName = :sirName"),
    @NamedQuery(name = "CwcSir.findBySirFat", query = "SELECT c FROM CwcSir c WHERE c.sirFat = :sirFat"),
    @NamedQuery(name = "CwcSir.findBySirAge", query = "SELECT c FROM CwcSir c WHERE c.sirAge = :sirAge"),
    @NamedQuery(name = "CwcSir.findBySirPl", query = "SELECT c FROM CwcSir c WHERE c.sirPl = :sirPl"),
    @NamedQuery(name = "CwcSir.findBySirRepDt", query = "SELECT c FROM CwcSir c WHERE c.sirRepDt = :sirRepDt"),
    @NamedQuery(name = "CwcSir.findBySirDay", query = "SELECT c FROM CwcSir c WHERE c.sirDay = :sirDay"),
    @NamedQuery(name = "CwcSir.findBySirthDt", query = "SELECT c FROM CwcSir c WHERE c.sirthDt = :sirthDt"),
    @NamedQuery(name = "CwcSir.findBySirYr", query = "SELECT c FROM CwcSir c WHERE c.sirYr = :sirYr")})
public class CwcSir implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "meeting_id", nullable = false)
    private Integer meetingId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "sirFir", nullable = false, length = 20)
    private String sirFir;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "sirSec", nullable = false, length = 20)
    private String sirSec;
    @Size(max = 20)
    @Column(name = "sirPs", length = 20)
    private String sirPs;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "sirName", nullable = false, length = 20)
    private String sirName;
    @Size(max = 20)
    @Column(name = "sirFat", length = 20)
    private String sirFat;
    @Column(name = "sirAge")
    private Integer sirAge;
    @Size(max = 20)
    @Column(name = "sirPl", length = 20)
    private String sirPl;
    @Column(name = "sirRepDt")
    @Temporal(TemporalType.DATE)
    private Date sirRepDt;
    @Size(max = 20)
    @Column(name = "sirDay", length = 20)
    private String sirDay;
    @Size(max = 20)
    @Column(name = "sirthDt", length = 20)
    private String sirthDt;
    @Size(max = 20)
    @Column(name = "sirYr", length = 20)
    private String sirYr;
    @JoinColumn(name = "meeting_id", referencedColumnName = "MEETING_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private CwcMeetings cwcMeetings;

    public CwcSir() {
    }

    public CwcSir(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public CwcSir(Integer meetingId, String sirFir, String sirSec, String sirName) {
        this.meetingId = meetingId;
        this.sirFir = sirFir;
        this.sirSec = sirSec;
        this.sirName = sirName;
    }

    public Integer getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public String getSirFir() {
        return sirFir;
    }

    public void setSirFir(String sirFir) {
        this.sirFir = sirFir;
    }

    public String getSirSec() {
        return sirSec;
    }

    public void setSirSec(String sirSec) {
        this.sirSec = sirSec;
    }

    public String getSirPs() {
        return sirPs;
    }

    public void setSirPs(String sirPs) {
        this.sirPs = sirPs;
    }

    public String getSirName() {
        return sirName;
    }

    public void setSirName(String sirName) {
        this.sirName = sirName;
    }

    public String getSirFat() {
        return sirFat;
    }

    public void setSirFat(String sirFat) {
        this.sirFat = sirFat;
    }

    public Integer getSirAge() {
        return sirAge;
    }

    public void setSirAge(Integer sirAge) {
        this.sirAge = sirAge;
    }

    public String getSirPl() {
        return sirPl;
    }

    public void setSirPl(String sirPl) {
        this.sirPl = sirPl;
    }

    public Date getSirRepDt() {
        return sirRepDt;
    }

    public void setSirRepDt(Date sirRepDt) {
        this.sirRepDt = sirRepDt;
    }

    public String getSirDay() {
        return sirDay;
    }

    public void setSirDay(String sirDay) {
        this.sirDay = sirDay;
    }

    public String getSirthDt() {
        return sirthDt;
    }

    public void setSirthDt(String sirthDt) {
        this.sirthDt = sirthDt;
    }

    public String getSirYr() {
        return sirYr;
    }

    public void setSirYr(String sirYr) {
        this.sirYr = sirYr;
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
        if (!(object instanceof CwcSir)) {
            return false;
        }
        CwcSir other = (CwcSir) object;
        if ((this.meetingId == null && other.meetingId != null) || (this.meetingId != null && !this.meetingId.equals(other.meetingId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcSir[ meetingId=" + meetingId + " ]";
    }
    
}
