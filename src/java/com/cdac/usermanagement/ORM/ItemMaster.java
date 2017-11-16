/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "item_master", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ItemMaster.findByProductSubcatNo", query = "SELECT i FROM ItemMaster i WHERE i.productSubcatNo =:productSubcatNo"),
        
    @NamedQuery(name = "ItemMaster.findAll", query = "SELECT i FROM ItemMaster i"),
    @NamedQuery(name = "ItemMaster.findByItemNo", query = "SELECT i FROM ItemMaster i WHERE i.itemNo = :itemNo"),
    @NamedQuery(name = "ItemMaster.findByItemName", query = "SELECT i FROM ItemMaster i WHERE i.itemName = :itemName"),
    @NamedQuery(name = "ItemMaster.findBySpecifications", query = "SELECT i FROM ItemMaster i WHERE i.specifications = :specifications"),
    @NamedQuery(name = "ItemMaster.findByUom", query = "SELECT i FROM ItemMaster i WHERE i.uom = :uom"),
    @NamedQuery(name = "ItemMaster.findByMfgDate", query = "SELECT i FROM ItemMaster i WHERE i.mfgDate = :mfgDate"),
    @NamedQuery(name = "ItemMaster.findByExpDate", query = "SELECT i FROM ItemMaster i WHERE i.expDate = :expDate"),
    @NamedQuery(name = "ItemMaster.findByUnitPrice", query = "SELECT i FROM ItemMaster i WHERE i.unitPrice = :unitPrice"),
    @NamedQuery(name = "ItemMaster.findByRemarks", query = "SELECT i FROM ItemMaster i WHERE i.remarks = :remarks"),
    @NamedQuery(name = "ItemMaster.findByLastModifiedDate", query = "SELECT i FROM ItemMaster i WHERE i.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "ItemMaster.findByLastModifiedBy", query = "SELECT i FROM ItemMaster i WHERE i.lastModifiedBy = :lastModifiedBy")})
public class ItemMaster implements Serializable {
    @Column(name =     "MFG_DATE")
    @Temporal(TemporalType.DATE)
    private Date mfgDate;
    @Column(name =     "EXP_DATE")
    @Temporal(TemporalType.DATE)
    private Date expDate;
    @Column(name =     "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "itemMaster")
    private List<DietChart> dietChartList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "itemMaster")
    private Collection<TransactionDetails> transactionDetailsCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "itemMaster")
    private Collection<DietChart> dietChartCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "itemMaster")
    private Collection<HomeItemQoh> homeItemQohCollection;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "ITEM_NO", nullable = false)
    private Integer itemNo;
    @Size(max = 75)
    @Column(name = "ITEM_NAME", length = 75)
    private String itemName;
    @Size(max = 150)
    @Column(name = "SPECIFICATIONS", length = 150)
    private String specifications;
    @Size(max = 10)
    @Column(name = "UOM", length = 10)
    private String uom;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "UNIT_PRICE", precision = 12, scale = 2)
    private BigDecimal unitPrice;
    @Size(max = 150)
    @Column(name = "REMARKS", length = 150)
    private String remarks;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @JoinColumn(name = "PRODUCT_SUBCAT_NO", referencedColumnName = "PRODUCT_SUBCAT_NO", nullable = false)
    @ManyToOne(optional = false)
    private ProductCatSubcat productSubcatNo;

    public ItemMaster() {
    }

    public ItemMaster(Integer itemNo) {
        this.itemNo = itemNo;
    }

    public Integer getItemNo() {
        return itemNo;
    }

    public void setItemNo(Integer itemNo) {
        this.itemNo = itemNo;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }

    public String getUom() {
        return uom;
    }

    public void setUom(String uom) {
        this.uom = uom;
    }

    public Date getMfgDate() {
        return mfgDate;
    }

    public void setMfgDate(Date mfgDate) {
        this.mfgDate = mfgDate;
    }

    public Date getExpDate() {
        return expDate;
    }

    public void setExpDate(Date expDate) {
        this.expDate = expDate;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
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

    public ProductCatSubcat getProductSubcatNo() {
        return productSubcatNo;
    }

    public void setProductSubcatNo(ProductCatSubcat productSubcatNo) {
        this.productSubcatNo = productSubcatNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (itemNo != null ? itemNo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ItemMaster)) {
            return false;
        }
        ItemMaster other = (ItemMaster) object;
        if ((this.itemNo == null && other.itemNo != null) || (this.itemNo != null && !this.itemNo.equals(other.itemNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ItemMaster[ itemNo=" + itemNo + " ]";
    }

   
    @XmlTransient
    public Collection<HomeItemQoh> getHomeItemQohCollection() {
        return homeItemQohCollection;
    }

    public void setHomeItemQohCollection(Collection<HomeItemQoh> homeItemQohCollection) {
        this.homeItemQohCollection = homeItemQohCollection;
    }

    

    @XmlTransient
    public Collection<DietChart> getDietChartCollection() {
        return dietChartCollection;
    }

    public void setDietChartCollection(Collection<DietChart> dietChartCollection) {
        this.dietChartCollection = dietChartCollection;
    }

  

    @XmlTransient
    public Collection<TransactionDetails> getTransactionDetailsCollection() {
        return transactionDetailsCollection;
    }

    public void setTransactionDetailsCollection(Collection<TransactionDetails> transactionDetailsCollection) {
        this.transactionDetailsCollection = transactionDetailsCollection;
    }

    

    @XmlTransient
    public List<DietChart> getDietChartList() {
        return dietChartList;
    }

    public void setDietChartList(List<DietChart> dietChartList) {
        this.dietChartList = dietChartList;
    }

  
}
