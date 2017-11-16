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
import javax.persistence.Lob;
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
@Table(name = "cwc_minutes", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CwcMinutes.findByCWCOrderDate", query = "SELECT distinct c.orderDate FROM CwcMinutes c WHERE c.homeId=:homeId AND c.orderDate between :fromdate and :todate"),
    @NamedQuery(name = "CwcMinutes.findByorderDateAndHomeId", query = "SELECT c FROM CwcMinutes c WHERE c.homeId = :homeId AND c.orderDate = :orderDate"),    
    @NamedQuery(name = "CwcMinutes.findCWCOverViewByCWCOrderDate", query = "SELECT new com.cdac.caseworker.DTO.CWCMinutesOverViewDTO(c.orderDate  , count(c.orderDate)) FROM CwcMinutes c WHERE c.homeId=:homeId AND c.orderDate between :fromdate and :todate GROUP BY c.orderDate"),//anupam added on 8-2-2012
    
    @NamedQuery(name = "CwcMinutes.findAll", query = "SELECT c FROM CwcMinutes c"),
    @NamedQuery(name = "CwcMinutes.findByMeetingId", query = "SELECT c FROM CwcMinutes c WHERE c.cwcMinutesPK.meetingId = :meetingId"),
    @NamedQuery(name = "CwcMinutes.findByCwcId", query = "SELECT c FROM CwcMinutes c WHERE c.cwcId = :cwcId"),
    @NamedQuery(name = "CwcMinutes.findByChildProfileId", query = "SELECT c FROM CwcMinutes c WHERE c.cwcMinutesPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "CwcMinutes.findByHomeId", query = "SELECT c FROM CwcMinutes c WHERE c.homeId = :homeId"),
    @NamedQuery(name = "CwcMinutes.findByOrderIssued", query = "SELECT c FROM CwcMinutes c WHERE c.orderIssued = :orderIssued"),
    @NamedQuery(name = "CwcMinutes.findByOrderDate", query = "SELECT c FROM CwcMinutes c WHERE c.orderDate = :orderDate"),
    @NamedQuery(name = "CwcMinutes.findByCwcJjbOrderNo", query = "SELECT c FROM CwcMinutes c WHERE c.cwcJjbOrderNo = :cwcJjbOrderNo")})
public class CwcMinutes implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CwcMinutesPK cwcMinutesPK;
    @Column(name = "CWC_ID")
    private Integer cwcId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Lob
    @Size(max = 65535)
    @Column(name = "FOLLOW_UP", length = 65535)
    private String followUp;
    @Lob
    @Size(max = 65535)
    @Column(name = "ACTIONTOBE_TAKEN", length = 65535)
    private String actiontobeTaken;
    @Lob
    @Size(max = 65535)
    @Column(name = "OBSERVATIONS", length = 65535)
    private String observations;
    @Lob
    @Size(max = 65535)
    @Column(name = "REMARKS", length = 65535)
    private String remarks;
    @Size(max = 50)
    @Column(name = "ORDER_ISSUED", length = 50)
    private String orderIssued;
    @Column(name = "ORDER_DATE")
    @Temporal(TemporalType.DATE)
    private Date orderDate;
    @Size(max = 30)
    @Column(name = "CWC_JJB_ORDER_NO", length = 30)
    private String cwcJjbOrderNo;

    public CwcMinutes() {
    }

    public CwcMinutes(CwcMinutesPK cwcMinutesPK) {
        this.cwcMinutesPK = cwcMinutesPK;
    }

    public CwcMinutes(CwcMinutesPK cwcMinutesPK, String homeId) {
        this.cwcMinutesPK = cwcMinutesPK;
        this.homeId = homeId;
    }

    public CwcMinutes(int meetingId, String childProfileId) {
        this.cwcMinutesPK = new CwcMinutesPK(meetingId, childProfileId);
    }

    public CwcMinutesPK getCwcMinutesPK() {
        return cwcMinutesPK;
    }

    public void setCwcMinutesPK(CwcMinutesPK cwcMinutesPK) {
        this.cwcMinutesPK = cwcMinutesPK;
    }

    public Integer getCwcId() {
        return cwcId;
    }

    public void setCwcId(Integer cwcId) {
        this.cwcId = cwcId;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public String getFollowUp() {
        return followUp;
    }

    public void setFollowUp(String followUp) {
        this.followUp = followUp;
    }

    public String getActiontobeTaken() {
        return actiontobeTaken;
    }

    public void setActiontobeTaken(String actiontobeTaken) {
        this.actiontobeTaken = actiontobeTaken;
    }

    public String getObservations() {
        return observations;
    }

    public void setObservations(String observations) {
        this.observations = observations;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getOrderIssued() {
        return orderIssued;
    }

    public void setOrderIssued(String orderIssued) {
        this.orderIssued = orderIssued;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getCwcJjbOrderNo() {
        return cwcJjbOrderNo;
    }

    public void setCwcJjbOrderNo(String cwcJjbOrderNo) {
        this.cwcJjbOrderNo = cwcJjbOrderNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cwcMinutesPK != null ? cwcMinutesPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CwcMinutes)) {
            return false;
        }
        CwcMinutes other = (CwcMinutes) object;
        if ((this.cwcMinutesPK == null && other.cwcMinutesPK != null) || (this.cwcMinutesPK != null && !this.cwcMinutesPK.equals(other.cwcMinutesPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcMinutes[ cwcMinutesPK=" + cwcMinutesPK + " ]";
    }
    
}
