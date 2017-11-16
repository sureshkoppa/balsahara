/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

/**
 *
 * @author suresh
 */
@Embeddable
public class MenuDetailPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "MENU_ID", nullable = false)
    private int menuId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "MENU_DATE", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date menuDate;

    public MenuDetailPK() {
    }

    public MenuDetailPK(int menuId, Date menuDate) {
        this.menuId = menuId;
        this.menuDate = menuDate;
    }

    public int getMenuId() {
        return menuId;
    }

    public void setMenuId(int menuId) {
        this.menuId = menuId;
    }

    public Date getMenuDate() {
        return menuDate;
    }

    public void setMenuDate(Date menuDate) {
        this.menuDate = menuDate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) menuId;
        hash += (menuDate != null ? menuDate.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MenuDetailPK)) {
            return false;
        }
        MenuDetailPK other = (MenuDetailPK) object;
        if (this.menuId != other.menuId) {
            return false;
        }
        if ((this.menuDate == null && other.menuDate != null) || (this.menuDate != null && !this.menuDate.equals(other.menuDate))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.MenuDetailPK[ menuId=" + menuId + ", menuDate=" + menuDate + " ]";
    }
    
}
