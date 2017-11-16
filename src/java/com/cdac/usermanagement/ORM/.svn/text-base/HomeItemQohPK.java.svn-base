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
 * @author suresh
 */
@Embeddable
public class HomeItemQohPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ITEM_NO", nullable = false)
    private int itemNo;

    public HomeItemQohPK() {
    }

    public HomeItemQohPK(String homeId, int itemNo) {
        this.homeId = homeId;
        this.itemNo = itemNo;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
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
        hash += (homeId != null ? homeId.hashCode() : 0);
        hash += (int) itemNo;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HomeItemQohPK)) {
            return false;
        }
        HomeItemQohPK other = (HomeItemQohPK) object;
        if ((this.homeId == null && other.homeId != null) || (this.homeId != null && !this.homeId.equals(other.homeId))) {
            return false;
        }
        if (this.itemNo != other.itemNo) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.HomeItemQohPK[ homeId=" + homeId + ", itemNo=" + itemNo + " ]";
    }
    
}
