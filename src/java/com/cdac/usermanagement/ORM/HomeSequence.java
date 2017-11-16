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
@Table(name = "home_sequence", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "HomeSequence.findAll", query = "SELECT h FROM HomeSequence h"),
    @NamedQuery(name = "HomeSequence.findByHomeSeq", query = "SELECT h FROM HomeSequence h WHERE h.homeSeq = :homeSeq")})
public class HomeSequence implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "HOME_SEQ", nullable = false)
    private Integer homeSeq;

    public HomeSequence() {
    }

    public HomeSequence(Integer homeSeq) {
        this.homeSeq = homeSeq;
    }

    public Integer getHomeSeq() {
        return homeSeq;
    }

    public void setHomeSeq(Integer homeSeq) {
        this.homeSeq = homeSeq;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (homeSeq != null ? homeSeq.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HomeSequence)) {
            return false;
        }
        HomeSequence other = (HomeSequence) object;
        if ((this.homeSeq == null && other.homeSeq != null) || (this.homeSeq != null && !this.homeSeq.equals(other.homeSeq))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.HomeSequence[ homeSeq=" + homeSeq + " ]";
    }
    
}
