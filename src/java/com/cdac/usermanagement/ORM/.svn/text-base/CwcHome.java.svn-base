/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "cwc_home", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CwcHome.findByDistrictIdAndActiveStatus", query = "SELECT c FROM CwcHome c WHERE c.status = 'active' AND c.district = :district"),
    @NamedQuery(name = "CwcHome.findByCwcIdAndActiveStatus", query = "SELECT c FROM CwcHome c WHERE c.status = 'active' AND  c.cwcId = :cwcId"),
    
    @NamedQuery(name = "CwcHome.findAll", query = "SELECT c FROM CwcHome c"),
    @NamedQuery(name = "CwcHome.findByCwcId", query = "SELECT c FROM CwcHome c WHERE c.cwcId = :cwcId"),
    @NamedQuery(name = "CwcHome.findByDistrict", query = "SELECT c FROM CwcHome c WHERE c.district = :district"),
    @NamedQuery(name = "CwcHome.findByStatus", query = "SELECT c FROM CwcHome c WHERE c.status = :status")})
public class CwcHome implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GenericGenerator(name="generator", strategy="increment")
    @GeneratedValue(generator="generator")
    @NotNull
    @Column(name = "CWC_ID", nullable = false)
    private Integer cwcId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "DISTRICT", nullable = false, length = 150)
    private String district;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "STATUS", nullable = false, length = 25)
    private String status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cwcHome")
    private List<CwcDetail> cwcDetailList;

    public CwcHome() {
    }

    public CwcHome(Integer cwcId) {
        this.cwcId = cwcId;
    }

    public CwcHome(Integer cwcId, String district, String status) {
        this.cwcId = cwcId;
        this.district = district;
        this.status = status;
    }

    public Integer getCwcId() {
        return cwcId;
    }

    public void setCwcId(Integer cwcId) {
        this.cwcId = cwcId;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @XmlTransient
    public List<CwcDetail> getCwcDetailList() {
        return cwcDetailList;
    }

    public void setCwcDetailList(List<CwcDetail> cwcDetailList) {
        this.cwcDetailList = cwcDetailList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cwcId != null ? cwcId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CwcHome)) {
            return false;
        }
        CwcHome other = (CwcHome) object;
        if ((this.cwcId == null && other.cwcId != null) || (this.cwcId != null && !this.cwcId.equals(other.cwcId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.CwcHome[ cwcId=" + cwcId + " ]";
    }
    
}
