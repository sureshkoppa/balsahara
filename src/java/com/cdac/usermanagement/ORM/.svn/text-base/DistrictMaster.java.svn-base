/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "district_master", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DistrictMaster.findDistWithOutCWC", query = "SELECT d FROM DistrictMaster d WHERE d.districtId NOT IN(SELECT d1.district FROM CwcHome d1 WHERE d1.status='active')"),
    @NamedQuery(name = "DistrictMaster.findDistWithCWC", query = "SELECT d FROM DistrictMaster d WHERE d.districtId IN(SELECT d1.district FROM CwcHome d1 WHERE d1.status='active')"),
    
    
    
    @NamedQuery(name = "DistrictMaster.findAll", query = "SELECT d FROM DistrictMaster d"),
    @NamedQuery(name = "DistrictMaster.findByDistrictId", query = "SELECT d FROM DistrictMaster d WHERE d.districtId = :districtId"),
    @NamedQuery(name = "DistrictMaster.findByDistrictName", query = "SELECT d FROM DistrictMaster d WHERE d.districtName = :districtName"),
    @NamedQuery(name = "DistrictMaster.findByStateName", query = "SELECT d FROM DistrictMaster d WHERE d.stateName = :stateName")})
public class DistrictMaster implements Serializable {
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "districtId")
    private Collection<ChildMaster> childMasterCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "districtId")
    private Collection<HomeMaster> homeMasterCollection;
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "DISTRICT_ID", nullable = false, length = 30)
    private String districtId;
    @Size(max = 50)
    @Column(name = "DISTRICT_NAME", length = 50)
    private String districtName;
    @Size(max = 30)
    @Column(name = "STATE_NAME", length = 30)
    private String stateName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "districtId")
    private List<ChildMaster> childMasterList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "districtId")
    private List<HomeMaster> homeMasterList;

    public DistrictMaster() {
    }

    public DistrictMaster(String districtId) {
        this.districtId = districtId;
    }

    public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId;
    }

    public String getDistrictName() {
        return districtName;
    }

    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    @XmlTransient
    public List<ChildMaster> getChildMasterList() {
        return childMasterList;
    }

    public void setChildMasterList(List<ChildMaster> childMasterList) {
        this.childMasterList = childMasterList;
    }

    @XmlTransient
    public List<HomeMaster> getHomeMasterList() {
        return homeMasterList;
    }

    public void setHomeMasterList(List<HomeMaster> homeMasterList) {
        this.homeMasterList = homeMasterList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (districtId != null ? districtId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DistrictMaster)) {
            return false;
        }
        DistrictMaster other = (DistrictMaster) object;
        if ((this.districtId == null && other.districtId != null) || (this.districtId != null && !this.districtId.equals(other.districtId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.DistrictMaster[ districtId=" + districtId + " ]";
    }

    @XmlTransient
    public Collection<HomeMaster> getHomeMasterCollection() {
        return homeMasterCollection;
    }

    public void setHomeMasterCollection(Collection<HomeMaster> homeMasterCollection) {
        this.homeMasterCollection = homeMasterCollection;
    }

    @XmlTransient
    public Collection<ChildMaster> getChildMasterCollection() {
        return childMasterCollection;
    }

    public void setChildMasterCollection(Collection<ChildMaster> childMasterCollection) {
        this.childMasterCollection = childMasterCollection;
    }
    
}
