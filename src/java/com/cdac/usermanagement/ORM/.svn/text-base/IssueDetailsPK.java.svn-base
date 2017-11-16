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
import javax.validation.constraints.Size;

/**
 *
 * @author ANUPAM
 */
@Embeddable
public class IssueDetailsPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "TRANS_ID", nullable = false)
    private int transId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ITEM_NO", nullable = false)
    private int itemNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "USERID_PROFILEID", nullable = false, length = 30)
    private String useridProfileid;

    public IssueDetailsPK() {
    }

    public IssueDetailsPK(int transId, int itemNo, String useridProfileid) {
        this.transId = transId;
        this.itemNo = itemNo;
        this.useridProfileid = useridProfileid;
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

    public String getUseridProfileid() {
        return useridProfileid;
    }

    public void setUseridProfileid(String useridProfileid) {
        this.useridProfileid = useridProfileid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) transId;
        hash += (int) itemNo;
        hash += (useridProfileid != null ? useridProfileid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof IssueDetailsPK)) {
            return false;
        }
        IssueDetailsPK other = (IssueDetailsPK) object;
        if (this.transId != other.transId) {
            return false;
        }
        if (this.itemNo != other.itemNo) {
            return false;
        }
        if ((this.useridProfileid == null && other.useridProfileid != null) || (this.useridProfileid != null && !this.useridProfileid.equals(other.useridProfileid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.IssueDetailsPK[ transId=" + transId + ", itemNo=" + itemNo + ", useridProfileid=" + useridProfileid + " ]";
    }
    
}
