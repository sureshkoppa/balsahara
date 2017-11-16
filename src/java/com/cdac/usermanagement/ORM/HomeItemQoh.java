/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "home_item_qoh", catalog = "child_homes", schema = "")
@NamedQueries({
    @NamedQuery(name = "HomeItemQoh.findByHomeIdAndItemNo", query = "SELECT h FROM HomeItemQoh h WHERE h.homeItemQohPK.homeId = :homeId and h.homeItemQohPK.itemNo = :itemNo"),    
    
    @NamedQuery(name = "HomeItemQoh.findAll", query = "SELECT h FROM HomeItemQoh h"),
    @NamedQuery(name = "HomeItemQoh.findByHomeId", query = "SELECT h FROM HomeItemQoh h WHERE h.homeItemQohPK.homeId = :homeId"),
    @NamedQuery(name = "HomeItemQoh.findByItemNo", query = "SELECT h FROM HomeItemQoh h WHERE h.homeItemQohPK.itemNo = :itemNo"),
    @NamedQuery(name = "HomeItemQoh.findByQoh", query = "SELECT h FROM HomeItemQoh h WHERE h.qoh = :qoh"),
    @NamedQuery(name = "HomeItemQoh.findByRemarks", query = "SELECT h FROM HomeItemQoh h WHERE h.remarks = :remarks"),
    @NamedQuery(name = "HomeItemQoh.findByLastModifiedDate", query = "SELECT h FROM HomeItemQoh h WHERE h.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "HomeItemQoh.findByLastModifiedBy", query = "SELECT h FROM HomeItemQoh h WHERE h.lastModifiedBy = :lastModifiedBy")})
public class HomeItemQoh implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected HomeItemQohPK homeItemQohPK;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "QOH", precision = 10, scale = 3)
    private Double qoh;
    @Size(max = 150)
    @Column(name = "REMARKS", length = 150)
    private String remarks;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "ITEM_NO", referencedColumnName = "ITEM_NO", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ItemMaster itemMaster;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private HomeMaster homeMaster;

    public HomeItemQoh() {
    }

    public HomeItemQoh(HomeItemQohPK homeItemQohPK) {
        this.homeItemQohPK = homeItemQohPK;
    }

    public HomeItemQoh(String homeId, int itemNo) {
        this.homeItemQohPK = new HomeItemQohPK(homeId, itemNo);
    }

    public HomeItemQohPK getHomeItemQohPK() {
        return homeItemQohPK;
    }

    public void setHomeItemQohPK(HomeItemQohPK homeItemQohPK) {
        this.homeItemQohPK = homeItemQohPK;
    }

    public Double getQoh() {
        return qoh;
    }

    public void setQoh(Double qoh) {
        this.qoh = qoh;
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

    public ItemMaster getItemMaster() {
        return itemMaster;
    }

    public void setItemMaster(ItemMaster itemMaster) {
        this.itemMaster = itemMaster;
    }

    public HomeMaster getHomeMaster() {
        return homeMaster;
    }

    public void setHomeMaster(HomeMaster homeMaster) {
        this.homeMaster = homeMaster;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (homeItemQohPK != null ? homeItemQohPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HomeItemQoh)) {
            return false;
        }
        HomeItemQoh other = (HomeItemQoh) object;
        if ((this.homeItemQohPK == null && other.homeItemQohPK != null) || (this.homeItemQohPK != null && !this.homeItemQohPK.equals(other.homeItemQohPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.HomeItemQoh[ homeItemQohPK=" + homeItemQohPK + " ]";
    }
    
}
