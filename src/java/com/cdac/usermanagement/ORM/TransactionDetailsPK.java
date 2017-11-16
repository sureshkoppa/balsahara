/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author suresh
 */
@Embeddable
public class TransactionDetailsPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "TRANS_ID", nullable = false)
    private int transId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ITEM_NO", nullable = false)
    private int itemNo;

    public TransactionDetailsPK() {
    }

    public TransactionDetailsPK(int transId, int itemNo) {
        this.transId = transId;
        this.itemNo = itemNo;
    }

    public int getTransId() {
        return transId;
    }

    public void setTransId(int transId) {
        this.transId = transId;
    }

    public int getItemNo() {
        return itemNo;
    }

    public void setItemNo(int itemNo) {
        this.itemNo = itemNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) transId;
        hash += (int) itemNo;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TransactionDetailsPK)) {
            return false;
        }
        TransactionDetailsPK other = (TransactionDetailsPK) object;
        if (this.transId != other.transId) {
            return false;
        }
        if (this.itemNo != other.itemNo) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.TransactionDetailsPK[ transId=" + transId + ", itemNo=" + itemNo + " ]";
    }
    
}
