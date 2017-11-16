/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "transaction_details", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TransactionDetails.findAll", query = "SELECT t FROM TransactionDetails t"),
    @NamedQuery(name = "TransactionDetails.findByTransId", query = "SELECT t FROM TransactionDetails t WHERE t.transactionDetailsPK.transId = :transId"),
    @NamedQuery(name = "TransactionDetails.findByItemNo", query = "SELECT t FROM TransactionDetails t WHERE t.transactionDetailsPK.itemNo = :itemNo"),
    @NamedQuery(name = "TransactionDetails.findByQuantity", query = "SELECT t FROM TransactionDetails t WHERE t.quantity = :quantity"),
    @NamedQuery(name = "TransactionDetails.findByUnitPrice", query = "SELECT t FROM TransactionDetails t WHERE t.unitPrice = :unitPrice"),
    @NamedQuery(name = "TransactionDetails.findByUom", query = "SELECT t FROM TransactionDetails t WHERE t.uom = :uom"),
    @NamedQuery(name = "TransactionDetails.findBySizeCapacity", query = "SELECT t FROM TransactionDetails t WHERE t.sizeCapacity = :sizeCapacity"),
    @NamedQuery(name = "TransactionDetails.findByIssuedTo", query = "SELECT t FROM TransactionDetails t WHERE t.issuedTo = :issuedTo"),
    @NamedQuery(name = "TransactionDetails.findByRemarks", query = "SELECT t FROM TransactionDetails t WHERE t.remarks = :remarks"),
    @NamedQuery(name = "TransactionDetails.findByOpenBalance", query = "SELECT t FROM TransactionDetails t WHERE t.openBalance = :openBalance"),
    @NamedQuery(name = "TransactionDetails.findByCloseBalance", query = "SELECT t FROM TransactionDetails t WHERE t.closeBalance = :closeBalance")})
public class TransactionDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected TransactionDetailsPK transactionDetailsPK;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "QUANTITY", precision = 10, scale = 3)
    private Double quantity;
    @Column(name = "UNIT_PRICE", precision = 6, scale = 2)
    private BigDecimal unitPrice;
    @Size(max = 10)
    @Column(name = "UOM", length = 10)
    private String uom;
    @Size(max = 12)
    @Column(name = "SIZE_CAPACITY", length = 12)
    private String sizeCapacity;
    @Size(max = 50)
    @Column(name = "ISSUED_TO", length = 50)
    private String issuedTo;
    @Size(max = 150)
    @Column(name = "REMARKS", length = 150)
    private String remarks;
    @Column(name = "OPEN_BALANCE", precision = 10, scale = 3)
    private Double openBalance;
    @Column(name = "CLOSE_BALANCE", precision = 10, scale = 3)
    private Double closeBalance;
    @JoinColumn(name = "ITEM_NO", referencedColumnName = "ITEM_NO", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ItemMaster itemMaster;
    @JoinColumn(name = "TRANS_ID", referencedColumnName = "TRANS_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private TransactionMaster transactionMaster;

    public TransactionDetails() {
    }

    public TransactionDetails(TransactionDetailsPK transactionDetailsPK) {
        this.transactionDetailsPK = transactionDetailsPK;
    }

    public TransactionDetails(int transId, int itemNo) {
        this.transactionDetailsPK = new TransactionDetailsPK(transId, itemNo);
    }

    public TransactionDetailsPK getTransactionDetailsPK() {
        return transactionDetailsPK;
    }

    public void setTransactionDetailsPK(TransactionDetailsPK transactionDetailsPK) {
        this.transactionDetailsPK = transactionDetailsPK;
    }

    public Double getQuantity() {
        return quantity;
    }

    public void setQuantity(Double quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getUom() {
        return uom;
    }

    public void setUom(String uom) {
        this.uom = uom;
    }

    public String getSizeCapacity() {
        return sizeCapacity;
    }

    public void setSizeCapacity(String sizeCapacity) {
        this.sizeCapacity = sizeCapacity;
    }

    public String getIssuedTo() {
        return issuedTo;
    }

    public void setIssuedTo(String issuedTo) {
        this.issuedTo = issuedTo;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Double getOpenBalance() {
        return openBalance;
    }

    public void setOpenBalance(Double openBalance) {
        this.openBalance = openBalance;
    }

    public Double getCloseBalance() {
        return closeBalance;
    }

    public void setCloseBalance(Double closeBalance) {
        this.closeBalance = closeBalance;
    }

    public ItemMaster getItemMaster() {
        return itemMaster;
    }

    public void setItemMaster(ItemMaster itemMaster) {
        this.itemMaster = itemMaster;
    }

    public TransactionMaster getTransactionMaster() {
        return transactionMaster;
    }

    public void setTransactionMaster(TransactionMaster transactionMaster) {
        this.transactionMaster = transactionMaster;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (transactionDetailsPK != null ? transactionDetailsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TransactionDetails)) {
            return false;
        }
        TransactionDetails other = (TransactionDetails) object;
        if ((this.transactionDetailsPK == null && other.transactionDetailsPK != null) || (this.transactionDetailsPK != null && !this.transactionDetailsPK.equals(other.transactionDetailsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.TransactionDetails[ transactionDetailsPK=" + transactionDetailsPK + " ]";
    }
    
}
