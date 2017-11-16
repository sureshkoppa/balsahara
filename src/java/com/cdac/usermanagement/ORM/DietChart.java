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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "diet_chart", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DietChart.findByBomAndItemNo", query = "SELECT d FROM DietChart d WHERE d.dietChartPK.itemNo = :itemNo and d.dietChartPK.bom = :bom"),
    
    @NamedQuery(name = "DietChart.findAll", query = "SELECT d FROM DietChart d"),
    @NamedQuery(name = "DietChart.findByBom", query = "SELECT d FROM DietChart d WHERE d.dietChartPK.bom = :bom"),
    @NamedQuery(name = "DietChart.findByItemNo", query = "SELECT d FROM DietChart d WHERE d.dietChartPK.itemNo = :itemNo"),
    @NamedQuery(name = "DietChart.findByScale", query = "SELECT d FROM DietChart d WHERE d.scale = :scale"),
    @NamedQuery(name = "DietChart.findByHomeId", query = "SELECT d FROM DietChart d WHERE d.homeId = :homeId"),
    @NamedQuery(name = "DietChart.findByLastModifiedDate", query = "SELECT d FROM DietChart d WHERE d.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "DietChart.findByLastModifiedBy", query = "SELECT d FROM DietChart d WHERE d.lastModifiedBy = :lastModifiedBy")})
public class DietChart implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected DietChartPK dietChartPK;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "SCALE", precision = 6, scale = 2)
    private Double scale;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "ITEM_NO", referencedColumnName = "ITEM_NO", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ItemMaster itemMaster;

    public DietChart() {
    }

    public DietChart(DietChartPK dietChartPK) {
        this.dietChartPK = dietChartPK;
    }

    public DietChart(DietChartPK dietChartPK, String homeId) {
        this.dietChartPK = dietChartPK;
        this.homeId = homeId;
    }

    public DietChart(int bom, int itemNo) {
        this.dietChartPK = new DietChartPK(bom, itemNo);
    }

    public DietChartPK getDietChartPK() {
        return dietChartPK;
    }

    public void setDietChartPK(DietChartPK dietChartPK) {
        this.dietChartPK = dietChartPK;
    }

    public Double getScale() {
        return scale;
    }

    public void setScale(Double scale) {
        this.scale = scale;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dietChartPK != null ? dietChartPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DietChart)) {
            return false;
        }
        DietChart other = (DietChart) object;
        if ((this.dietChartPK == null && other.dietChartPK != null) || (this.dietChartPK != null && !this.dietChartPK.equals(other.dietChartPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.DietChart[ dietChartPK=" + dietChartPK + " ]";
    }
    
}
