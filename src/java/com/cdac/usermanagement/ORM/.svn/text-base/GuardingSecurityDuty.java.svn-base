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
@Table(name = "guarding_security_duty", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "GuardingSecurityDuty.popDatedProfile", query = "SELECT distinct g FROM GuardingSecurityDuty g, GuardingSecurityInfo i where i.homeId=:homeId and g.guardingSecurityDutyPK.dateOfDuty=:dateOfDuty"),
    @NamedQuery(name = "GuardingSecurityDuty.findByProfileidSecstaffanddutydate", query = "SELECT  g FROM GuardingSecurityDuty g where g.guardingSecurityDutyPK.dateOfDuty=:dateOfDuty and g.guardingSecurityDutyPK.profileidSecstaff = :profileidSecstaff"),
    
    
    @NamedQuery(name = "GuardingSecurityDuty.findAll", query = "SELECT g FROM GuardingSecurityDuty g"),
    @NamedQuery(name = "GuardingSecurityDuty.findByProfileidSecstaff", query = "SELECT g FROM GuardingSecurityDuty g WHERE g.guardingSecurityDutyPK.profileidSecstaff = :profileidSecstaff"),
    @NamedQuery(name = "GuardingSecurityDuty.findByDateOfDuty", query = "SELECT g FROM GuardingSecurityDuty g WHERE g.guardingSecurityDutyPK.dateOfDuty = :dateOfDuty"),
    @NamedQuery(name = "GuardingSecurityDuty.findByFromTime", query = "SELECT g FROM GuardingSecurityDuty g WHERE g.fromTime = :fromTime"),
    @NamedQuery(name = "GuardingSecurityDuty.findByToTime", query = "SELECT g FROM GuardingSecurityDuty g WHERE g.toTime = :toTime"),
    @NamedQuery(name = "GuardingSecurityDuty.findByDutyAt", query = "SELECT g FROM GuardingSecurityDuty g WHERE g.dutyAt = :dutyAt"),
    @NamedQuery(name = "GuardingSecurityDuty.findByLastModifiedDate", query = "SELECT g FROM GuardingSecurityDuty g WHERE g.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "GuardingSecurityDuty.findByLastModifiedBy", query = "SELECT g FROM GuardingSecurityDuty g WHERE g.lastModifiedBy = :lastModifiedBy")})
public class GuardingSecurityDuty implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected GuardingSecurityDutyPK guardingSecurityDutyPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "FROM_TIME", nullable = false)
    @Temporal(TemporalType.TIME)
    private Date fromTime;
    @Basic(optional = false)
    @NotNull
    @Column(name = "TO_TIME", nullable = false)
    @Temporal(TemporalType.TIME)
    private Date toTime;
    @Size(max = 25)
    @Column(name = "DUTY_AT", length = 25)
    private String dutyAt;
    @Lob
    @Size(max = 65535)
    @Column(name = "OBSERVATIONS", length = 65535)
    private String observations;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "PROFILEID_SECSTAFF", referencedColumnName = "PROFILEID_SECSTAFF", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private GuardingSecurityInfo guardingSecurityInfo;

    public GuardingSecurityDuty() {
    }

    public GuardingSecurityDuty(GuardingSecurityDutyPK guardingSecurityDutyPK) {
        this.guardingSecurityDutyPK = guardingSecurityDutyPK;
    }

    public GuardingSecurityDuty(GuardingSecurityDutyPK guardingSecurityDutyPK, Date fromTime, Date toTime) {
        this.guardingSecurityDutyPK = guardingSecurityDutyPK;
        this.fromTime = fromTime;
        this.toTime = toTime;
    }

    public GuardingSecurityDuty(int profileidSecstaff, Date dateOfDuty) {
        this.guardingSecurityDutyPK = new GuardingSecurityDutyPK(profileidSecstaff, dateOfDuty);
    }

    public GuardingSecurityDutyPK getGuardingSecurityDutyPK() {
        return guardingSecurityDutyPK;
    }

    public void setGuardingSecurityDutyPK(GuardingSecurityDutyPK guardingSecurityDutyPK) {
        this.guardingSecurityDutyPK = guardingSecurityDutyPK;
    }

    public Date getFromTime() {
        return fromTime;
    }

    public void setFromTime(Date fromTime) {
        this.fromTime = fromTime;
    }

    public Date getToTime() {
        return toTime;
    }

    public void setToTime(Date toTime) {
        this.toTime = toTime;
    }

    public String getDutyAt() {
        return dutyAt;
    }

    public void setDutyAt(String dutyAt) {
        this.dutyAt = dutyAt;
    }

    public String getObservations() {
        return observations;
    }

    public void setObservations(String observations) {
        this.observations = observations;
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

    public GuardingSecurityInfo getGuardingSecurityInfo() {
        return guardingSecurityInfo;
    }

    public void setGuardingSecurityInfo(GuardingSecurityInfo guardingSecurityInfo) {
        this.guardingSecurityInfo = guardingSecurityInfo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (guardingSecurityDutyPK != null ? guardingSecurityDutyPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GuardingSecurityDuty)) {
            return false;
        }
        GuardingSecurityDuty other = (GuardingSecurityDuty) object;
        if ((this.guardingSecurityDutyPK == null && other.guardingSecurityDutyPK != null) || (this.guardingSecurityDutyPK != null && !this.guardingSecurityDutyPK.equals(other.guardingSecurityDutyPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.GuardingSecurityDuty[ guardingSecurityDutyPK=" + guardingSecurityDutyPK + " ]";
    }
    
}
