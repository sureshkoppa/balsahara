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
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
 * @author suresh
 */
@Entity
@Table(name = "menu_master", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MenuMaster.findAll", query = "SELECT m FROM MenuMaster m"),
    @NamedQuery(name = "MenuMaster.findByMenuId", query = "SELECT m FROM MenuMaster m WHERE m.menuId = :menuId"),
    @NamedQuery(name = "MenuMaster.findByItemName", query = "SELECT m FROM MenuMaster m WHERE m.itemName = :itemName"),
    @NamedQuery(name = "MenuMaster.findByType", query = "SELECT m FROM MenuMaster m WHERE m.type = :type"),
    @NamedQuery(name = "MenuMaster.findByHomeId", query = "SELECT m FROM MenuMaster m WHERE m.homeId = :homeId")})
public class MenuMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "MENU_ID", nullable = false)
    private Integer menuId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 75)
    @Column(name = "ITEM_NAME", nullable = false, length = 75)
    private String itemName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "TYPE", nullable = false, length = 30)
    private String type;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 210)
    @Column(name = "HOME_ID", nullable = false, length = 210)
    private String homeId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "menuMaster", fetch = FetchType.EAGER)
    private List<MenuDetail> menuDetailList;

    public MenuMaster() {
    }

    public MenuMaster(Integer menuId) {
        this.menuId = menuId;
    }

    public MenuMaster(Integer menuId, String itemName, String type, String homeId) {
        this.menuId = menuId;
        this.itemName = itemName;
        this.type = type;
        this.homeId = homeId;
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    @XmlTransient
    public List<MenuDetail> getMenuDetailList() {
        return menuDetailList;
    }

    public void setMenuDetailList(List<MenuDetail> menuDetailList) {
        this.menuDetailList = menuDetailList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (menuId != null ? menuId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MenuMaster)) {
            return false;
        }
        MenuMaster other = (MenuMaster) object;
        if ((this.menuId == null && other.menuId != null) || (this.menuId != null && !this.menuId.equals(other.menuId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.MenuMaster[ menuId=" + menuId + " ]";
    }
    
}
