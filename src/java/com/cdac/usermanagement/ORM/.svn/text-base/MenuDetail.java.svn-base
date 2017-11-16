/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "menu_detail", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MenuDetail.findAll", query = "SELECT m FROM MenuDetail m"),
    @NamedQuery(name = "MenuDetail.findByMenuId", query = "SELECT m FROM MenuDetail m WHERE m.menuDetailPK.menuId = :menuId"),
    @NamedQuery(name = "MenuDetail.findByMenuDate", query = "SELECT m FROM MenuDetail m WHERE m.menuDetailPK.menuDate = :menuDate"),
    @NamedQuery(name = "MenuDetail.findByNumChild", query = "SELECT m FROM MenuDetail m WHERE m.numChild = :numChild")})
public class MenuDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected MenuDetailPK menuDetailPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "NUM_CHILD", nullable = false)
    private int numChild;
    @JoinColumn(name = "MENU_ID", referencedColumnName = "MENU_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private MenuMaster menuMaster;

    public MenuDetail() {
    }

    public MenuDetail(MenuDetailPK menuDetailPK) {
        this.menuDetailPK = menuDetailPK;
    }

    public MenuDetail(MenuDetailPK menuDetailPK, int numChild) {
        this.menuDetailPK = menuDetailPK;
        this.numChild = numChild;
    }

    public MenuDetail(int menuId, Date menuDate) {
        this.menuDetailPK = new MenuDetailPK(menuId, menuDate);
    }

    public MenuDetailPK getMenuDetailPK() {
        return menuDetailPK;
    }

    public void setMenuDetailPK(MenuDetailPK menuDetailPK) {
        this.menuDetailPK = menuDetailPK;
    }

    public int getNumChild() {
        return numChild;
    }

    public void setNumChild(int numChild) {
        this.numChild = numChild;
    }

    public MenuMaster getMenuMaster() {
        return menuMaster;
    }

    public void setMenuMaster(MenuMaster menuMaster) {
        this.menuMaster = menuMaster;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (menuDetailPK != null ? menuDetailPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MenuDetail)) {
            return false;
        }
        MenuDetail other = (MenuDetail) object;
        if ((this.menuDetailPK == null && other.menuDetailPK != null) || (this.menuDetailPK != null && !this.menuDetailPK.equals(other.menuDetailPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.MenuDetail[ menuDetailPK=" + menuDetailPK + " ]";
    }
    
}
