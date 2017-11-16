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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
 * @author suresh
 */
@Entity
@Table(name = "cash_book")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CashBook.findAll", query = "SELECT c FROM CashBook c"),
    @NamedQuery(name = "CashBook.findByCashTrId", query = "SELECT c FROM CashBook c WHERE c.cashTrId = :cashTrId"),
    @NamedQuery(name = "CashBook.findByChDate", query = "SELECT c FROM CashBook c WHERE c.chDate = :chDate"),
    @NamedQuery(name = "CashBook.findByAmount", query = "SELECT c FROM CashBook c WHERE c.amount = :amount"),
    @NamedQuery(name = "CashBook.findByParticulars", query = "SELECT c FROM CashBook c WHERE c.particulars = :particulars"),
    @NamedQuery(name = "CashBook.findByRecpay", query = "SELECT c FROM CashBook c WHERE c.recpay = :recpay"),
    @NamedQuery(name = "CashBook.findByRorpayno", query = "SELECT c FROM CashBook c WHERE c.rorpayno = :rorpayno"),
    @NamedQuery(name = "CashBook.findByRecorpaid", query = "SELECT c FROM CashBook c WHERE c.recorpaid = :recorpaid"),
    @NamedQuery(name = "CashBook.findByMonendBal", query = "SELECT c FROM CashBook c WHERE c.monendBal = :monendBal"),
    @NamedQuery(name = "CashBook.findByLastModifiedDate", query = "SELECT c FROM CashBook c WHERE c.lastModifiedDate = :lastModifiedDate")})
public class CashBook implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "CASH_TR_ID")
    private Integer cashTrId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "CH_DATE")
    @Temporal(TemporalType.DATE)
    private Date chDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "AMOUNT")
    private int amount;
    @Size(max = 250)
    @Column(name = "PARTICULARS")
    private String particulars;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1)
    @Column(name = "RECPAY")
    private String recpay;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "RORPAYNO")
    private String rorpayno;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "RECORPAID")
    private String recorpaid;
    @Column(name = "MONEND_BAL")
    private Integer monendBal;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID")
    @ManyToOne
    private HomeMaster homeId;

    public CashBook() {
    }

    public CashBook(Integer cashTrId) {
        this.cashTrId = cashTrId;
    }

    public CashBook(Integer cashTrId, Date chDate, int amount, String recpay, String rorpayno, String recorpaid) {
        this.cashTrId = cashTrId;
        this.chDate = chDate;
        this.amount = amount;
        this.recpay = recpay;
        this.rorpayno = rorpayno;
        this.recorpaid = recorpaid;
    }

    public Integer getCashTrId() {
        return cashTrId;
    }

    public void setCashTrId(Integer cashTrId) {
        this.cashTrId = cashTrId;
    }

    public Date getChDate() {
        return chDate;
    }

    public void setChDate(Date chDate) {
        this.chDate = chDate;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getParticulars() {
        return particulars;
    }

    public void setParticulars(String particulars) {
        this.particulars = particulars;
    }

    public String getRecpay() {
        return recpay;
    }

    public void setRecpay(String recpay) {
        this.recpay = recpay;
    }

    public String getRorpayno() {
        return rorpayno;
    }

    public void setRorpayno(String rorpayno) {
        this.rorpayno = rorpayno;
    }

    public String getRecorpaid() {
        return recorpaid;
    }

    public void setRecorpaid(String recorpaid) {
        this.recorpaid = recorpaid;
    }

    public Integer getMonendBal() {
        return monendBal;
    }

    public void setMonendBal(Integer monendBal) {
        this.monendBal = monendBal;
    }

    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    public HomeMaster getHomeId() {
        return homeId;
    }

    public void setHomeId(HomeMaster homeId) {
        this.homeId = homeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cashTrId != null ? cashTrId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CashBook)) {
            return false;
        }
        CashBook other = (CashBook) object;
        if ((this.cashTrId == null && other.cashTrId != null) || (this.cashTrId != null && !this.cashTrId.equals(other.cashTrId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CashBook[ cashTrId=" + cashTrId + " ]";
    }
    
}
