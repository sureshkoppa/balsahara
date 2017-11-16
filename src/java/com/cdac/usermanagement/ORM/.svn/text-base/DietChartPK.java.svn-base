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
public class DietChartPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "BOM", nullable = false)
    private int bom;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ITEM_NO", nullable = false)
    private int itemNo;

    public DietChartPK() {
    }

    public DietChartPK(int bom, int itemNo) {
        this.bom = bom;
        this.itemNo = itemNo;
    }

    public int getBom() {
        return bom;
    }

    public void setBom(int bom) {
        this.bom = bom;
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
        hash += (int) bom;
        hash += (int) itemNo;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DietChartPK)) {
            return false;
        }
        DietChartPK other = (DietChartPK) object;
        if (this.bom != other.bom) {
            return false;
        }
        if (this.itemNo != other.itemNo) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.DietChartPK[ bom=" + bom + ", itemNo=" + itemNo + " ]";
    }
    
}
