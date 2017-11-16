/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "transaction_master", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TransactionMaster.findTMbyDate", query = "SELECT  t FROM TransactionMaster t where t.homeId=:homeId and t.transType=:type and t.transDate between :fromDate and :toDate"),
     // @NamedQuery(name = "TransactionMaster.findLoansOfType", query = "SELECT new com.cdac.ds.dto.LoanDto(tm.transId,) FROM TransactionMaster tm,TransactionDetail td,HomeItemQoh hiq where tm.homeId = new HomeMaster(:loggedInhome) and tm.transType = :type "),
    @NamedQuery(name = "TransactionMaster.findTMbyType", query = "SELECT  t FROM TransactionMaster t where t.homeId=:homeId and t.transType=:type"),
   
    
    @NamedQuery(name = "TransactionMaster.findAll", query = "SELECT t FROM TransactionMaster t"),
    @NamedQuery(name = "TransactionMaster.findByTransId", query = "SELECT t FROM TransactionMaster t WHERE t.transId = :transId"),
    @NamedQuery(name = "TransactionMaster.findByTransDate", query = "SELECT t FROM TransactionMaster t WHERE t.transDate = :transDate"),
    @NamedQuery(name = "TransactionMaster.findByTransType", query = "SELECT t FROM TransactionMaster t WHERE t.transType = :transType"),
    @NamedQuery(name = "TransactionMaster.findByInvoiceNo", query = "SELECT t FROM TransactionMaster t WHERE t.invoiceNo = :invoiceNo"),
    @NamedQuery(name = "TransactionMaster.findByInvoiceDate", query = "SELECT t FROM TransactionMaster t WHERE t.invoiceDate = :invoiceDate"),
    @NamedQuery(name = "TransactionMaster.findByDonateReceivePurchaseFrom", query = "SELECT t FROM TransactionMaster t WHERE t.donateReceivePurchaseFrom = :donateReceivePurchaseFrom"),
    @NamedQuery(name = "TransactionMaster.findByRemarks", query = "SELECT t FROM TransactionMaster t WHERE t.remarks = :remarks"),
    @NamedQuery(name = "TransactionMaster.findByLastModifiedDate", query = "SELECT t FROM TransactionMaster t WHERE t.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "TransactionMaster.findByLastModifiedBy", query = "SELECT t FROM TransactionMaster t WHERE t.lastModifiedBy = :lastModifiedBy")})
public class TransactionMaster implements Serializable {
    @Column(name = "TRANS_DATE")
    @Temporal(TemporalType.DATE)
    private Date transDate;
    @Column(name = "INVOICE_DATE")
    @Temporal(TemporalType.DATE)
    private Date invoiceDate;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "TRANS_ID", nullable = false)
    private Integer transId;
    @Size(max = 30)
    @Column(name = "TRANS_TYPE", length = 30)
    private String transType;
    @Size(max = 50)
    @Column(name = "INVOICE_NO", length = 50)
    private String invoiceNo;
    @Size(max = 255)
    @Column(name = "DONATE_RECEIVE_PURCHASE_FROM", length = 255)
    private String donateReceivePurchaseFrom;
    @Size(max = 150)
    @Column(name = "REMARKS", length = 150)
    private String remarks;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false)
    @ManyToOne(optional = false)
    private HomeDetails homeId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "transactionMaster",fetch= FetchType.EAGER)
    private Collection<TransactionDetails> transactionDetailsCollection;

    public TransactionMaster() {
    }

    public TransactionMaster(Integer transId) {
        this.transId = transId;
    }

    public Integer getTransId() {
        return transId;
    }

    public void setTransId(Integer transId) {
        this.transId = transId;
    }

    public Date getTransDate() {
        return transDate;
    }

    public void setTransDate(Date transDate) {
        this.transDate = transDate;
    }

    public String getTransType() {
        return transType;
    }

    public void setTransType(String transType) {
        this.transType = transType;
    }

    public String getInvoiceNo() {
        return invoiceNo;
    }

    public void setInvoiceNo(String invoiceNo) {
        this.invoiceNo = invoiceNo;
    }

    public Date getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(Date invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public String getDonateReceivePurchaseFrom() {
        return donateReceivePurchaseFrom;
    }

    public void setDonateReceivePurchaseFrom(String donateReceivePurchaseFrom) {
        this.donateReceivePurchaseFrom = donateReceivePurchaseFrom;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
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

    public HomeDetails getHomeId() {
        return homeId;
    }

    public void setHomeId(HomeDetails homeId) {
        this.homeId = homeId;
    }

    @XmlTransient
    public Collection<TransactionDetails> getTransactionDetailsCollection() {
        return transactionDetailsCollection;
    }

    public void setTransactionDetailsCollection(Collection<TransactionDetails> transactionDetailsCollection) {
        this.transactionDetailsCollection = transactionDetailsCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (transId != null ? transId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TransactionMaster)) {
            return false;
        }
        TransactionMaster other = (TransactionMaster) object;
        if ((this.transId == null && other.transId != null) || (this.transId != null && !this.transId.equals(other.transId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.TransactionMaster[ transId=" + transId + " ]";
    }

   
    
}
