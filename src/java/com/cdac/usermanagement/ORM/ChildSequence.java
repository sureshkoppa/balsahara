/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "child_sequence", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ChildSequence.findAll", query = "SELECT c FROM ChildSequence c"),
    @NamedQuery(name = "ChildSequence.findByChildSeq", query = "SELECT c FROM ChildSequence c WHERE c.childSeq = :childSeq")})
public class ChildSequence implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "CHILD_SEQ", nullable = false)
    private Integer childSeq;

    public ChildSequence() {
    }

    public ChildSequence(Integer childSeq) {
        this.childSeq = childSeq;
    }

    public Integer getChildSeq() {
        return childSeq;
    }

    public void setChildSeq(Integer childSeq) {
        this.childSeq = childSeq;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (childSeq != null ? childSeq.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChildSequence)) {
            return false;
        }
        ChildSequence other = (ChildSequence) object;
        if ((this.childSeq == null && other.childSeq != null) || (this.childSeq != null && !this.childSeq.equals(other.childSeq))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ChildSequence[ childSeq=" + childSeq + " ]";
    }
    
}
