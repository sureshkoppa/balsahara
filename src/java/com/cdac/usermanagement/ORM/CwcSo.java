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
@Table(name = "cwc_so", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CwcSo.findAll", query = "SELECT c FROM CwcSo c"),
    @NamedQuery(name = "CwcSo.findByMeetingId", query = "SELECT c FROM CwcSo c WHERE c.meetingId = :meetingId"),
    @NamedQuery(name = "CwcSo.findBySoDDNo", query = "SELECT c FROM CwcSo c WHERE c.soDDNo = :soDDNo"),
    @NamedQuery(name = "CwcSo.findBySoBank", query = "SELECT c FROM CwcSo c WHERE c.soBank = :soBank"),
    @NamedQuery(name = "CwcSo.findBySoYear", query = "SELECT c FROM CwcSo c WHERE c.soYear = :soYear"),
    @NamedQuery(name = "CwcSo.findBySoPS", query = "SELECT c FROM CwcSo c WHERE c.soPS = :soPS"),
    @NamedQuery(name = "CwcSo.findBySoName", query = "SELECT c FROM CwcSo c WHERE c.soName = :soName"),
    @NamedQuery(name = "CwcSo.findBySoCareName", query = "SELECT c FROM CwcSo c WHERE c.soCareName = :soCareName"),
    @NamedQuery(name = "CwcSo.findBySoCareAddr", query = "SELECT c FROM CwcSo c WHERE c.soCareAddr = :soCareAddr"),
    @NamedQuery(name = "CwcSo.findBySoSaidPer", query = "SELECT c FROM CwcSo c WHERE c.soSaidPer = :soSaidPer")})
public class CwcSo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "meeting_id", nullable = false)
    private Integer meetingId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "soDDNo", nullable = false, length = 20)
    private String soDDNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "soBank", nullable = false, length = 20)
    private String soBank;
    @Column(name = "soYear")
    private Integer soYear;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "soPS", nullable = false, length = 20)
    private String soPS;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "soName", nullable = false, length = 20)
    private String soName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "soCareName", nullable = false, length = 20)
    private String soCareName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "soCareAddr", nullable = false, length = 20)
    private String soCareAddr;
    @Size(max = 50)
    @Column(name = "soSaidPer", length = 50)
    private String soSaidPer;
    @JoinColumn(name = "meeting_id", referencedColumnName = "MEETING_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private CwcMeetings cwcMeetings;

    public CwcSo() {
    }

    public CwcSo(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public CwcSo(Integer meetingId, String soDDNo, String soBank, String soPS, String soName, String soCareName, String soCareAddr) {
        this.meetingId = meetingId;
        this.soDDNo = soDDNo;
        this.soBank = soBank;
        this.soPS = soPS;
        this.soName = soName;
        this.soCareName = soCareName;
        this.soCareAddr = soCareAddr;
    }

    public Integer getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Integer meetingId) {
        this.meetingId = meetingId;
    }

    public String getSoDDNo() {
        return soDDNo;
    }

    public void setSoDDNo(String soDDNo) {
        this.soDDNo = soDDNo;
    }

    public String getSoBank() {
        return soBank;
    }

    public void setSoBank(String soBank) {
        this.soBank = soBank;
    }

    public Integer getSoYear() {
        return soYear;
    }

    public void setSoYear(Integer soYear) {
        this.soYear = soYear;
    }

    public String getSoPS() {
        return soPS;
    }

    public void setSoPS(String soPS) {
        this.soPS = soPS;
    }

    public String getSoName() {
        return soName;
    }

    public void setSoName(String soName) {
        this.soName = soName;
    }

    public String getSoCareName() {
        return soCareName;
    }

    public void setSoCareName(String soCareName) {
        this.soCareName = soCareName;
    }

    public String getSoCareAddr() {
        return soCareAddr;
    }

    public void setSoCareAddr(String soCareAddr) {
        this.soCareAddr = soCareAddr;
    }

    public String getSoSaidPer() {
        return soSaidPer;
    }

    public void setSoSaidPer(String soSaidPer) {
        this.soSaidPer = soSaidPer;
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
        if (!(object instanceof CwcSo)) {
            return false;
        }
        CwcSo other = (CwcSo) object;
        if ((this.meetingId == null && other.meetingId != null) || (this.meetingId != null && !this.meetingId.equals(other.meetingId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcSo[ meetingId=" + meetingId + " ]";
    }
    
}
