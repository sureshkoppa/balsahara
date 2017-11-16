/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "issue_details", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "IssueDetails.findAll", query = "SELECT i FROM IssueDetails i"),
    @NamedQuery(name = "IssueDetails.findByTransId", query = "SELECT i FROM IssueDetails i WHERE i.issueDetailsPK.transId = :transId"),
    @NamedQuery(name = "IssueDetails.findByItemNo", query = "SELECT i FROM IssueDetails i WHERE i.issueDetailsPK.itemNo = :itemNo"),
    @NamedQuery(name = "IssueDetails.findByUseridProfileid", query = "SELECT i FROM IssueDetails i WHERE i.issueDetailsPK.useridProfileid = :useridProfileid")})
public class IssueDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected IssueDetailsPK issueDetailsPK;
    @JoinColumn(name = "TRANS_ID", referencedColumnName = "TRANS_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private TransactionMaster transactionMaster;

    public IssueDetails() {
    }

    public IssueDetails(IssueDetailsPK issueDetailsPK) {
        this.issueDetailsPK = issueDetailsPK;
    }

    public IssueDetails(int transId, int itemNo, String useridProfileid) {
        this.issueDetailsPK = new IssueDetailsPK(transId, itemNo, useridProfileid);
    }

    public IssueDetailsPK getIssueDetailsPK() {
        return issueDetailsPK;
    }

    public void setIssueDetailsPK(IssueDetailsPK issueDetailsPK) {
        this.issueDetailsPK = issueDetailsPK;
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
        hash += (issueDetailsPK != null ? issueDetailsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof IssueDetails)) {
            return false;
        }
        IssueDetails other = (IssueDetails) object;
        if ((this.issueDetailsPK == null && other.issueDetailsPK != null) || (this.issueDetailsPK != null && !this.issueDetailsPK.equals(other.issueDetailsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.IssueDetails[ issueDetailsPK=" + issueDetailsPK + " ]";
    }
    
}
