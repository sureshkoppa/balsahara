/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
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
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "product_cat_subcat", catalog = "child_homes_new", schema = "")
@NamedQueries({
    @NamedQuery(name = "ProductCatSubcat.findByCatNo", query = "SELECT p FROM ProductCatSubcat p WHERE p.productCatNo = :productCatNo"), 
    @NamedQuery(name = "ProductCatSubcat.findByProductSubcatNoAndHomeId", query = "SELECT p FROM ProductCatSubcat p WHERE p.productCatNo = :productCatNo and p.homeId = :homeId"),
    @NamedQuery(name = "ProductCatSubcat.findByProductSubcatNameHomeId", query = "SELECT p FROM ProductCatSubcat p WHERE upper(p.productSubcatName) = :productSubcatName and p.homeId = :homeId"),
    @NamedQuery(name = "ProductCatSubcat.findByCatNoAndHome", query = "SELECT p FROM ProductCatSubcat p WHERE p.productCatNo = :productCatNo and p.homeId=:homeId"), 
        
    
    @NamedQuery(name = "ProductCatSubcat.findAll", query = "SELECT p FROM ProductCatSubcat p"),
    @NamedQuery(name = "ProductCatSubcat.findByProductSubcatNo", query = "SELECT p FROM ProductCatSubcat p WHERE p.productSubcatNo = :productSubcatNo"),
    @NamedQuery(name = "ProductCatSubcat.findByProductSubcatName", query = "SELECT p FROM ProductCatSubcat p WHERE p.productSubcatName = :productSubcatName"),
    @NamedQuery(name = "ProductCatSubcat.findByItemType", query = "SELECT p FROM ProductCatSubcat p WHERE p.itemType = :itemType"),
    @NamedQuery(name = "ProductCatSubcat.findByLastModifiedDate", query = "SELECT p FROM ProductCatSubcat p WHERE p.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "ProductCatSubcat.findByLastModifiedBy", query = "SELECT p FROM ProductCatSubcat p WHERE p.lastModifiedBy = :lastModifiedBy")})
public class ProductCatSubcat implements Serializable {
    @Column(name =     "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productSubcatNo")
    private Collection<ItemMaster> itemMasterCollection;
    @OneToMany(mappedBy = "productCatNo")
    private Collection<ProductCatSubcat> productCatSubcatCollection;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "PRODUCT_SUBCAT_NO", nullable = false)
    private Integer productSubcatNo;
    @Size(max = 50)
    @Column(name = "PRODUCT_SUBCAT_NAME", length = 50)
    private String productSubcatName;
    @Size(max = 50)
    @Column(name = "ITEM_TYPE", length = 50)
    private String itemType;
    @Size(max = 30)
    @Column(name = "LAST_MODIFIED_BY", length = 30)
    private String lastModifiedBy;
    @OneToMany(mappedBy = "productCatNo")
    private List<ProductCatSubcat> productCatSubcatList;
    @JoinColumn(name = "PRODUCT_CAT_NO", referencedColumnName = "PRODUCT_SUBCAT_NO")
    @ManyToOne
    private ProductCatSubcat productCatNo;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID")
    @ManyToOne
    private HomeMaster homeId;

    public ProductCatSubcat() {
    }

    public ProductCatSubcat(Integer productSubcatNo) {
        this.productSubcatNo = productSubcatNo;
    }

    public Integer getProductSubcatNo() {
        return productSubcatNo;
    }

    public void setProductSubcatNo(Integer productSubcatNo) {
        this.productSubcatNo = productSubcatNo;
    }

    public String getProductSubcatName() {
        return productSubcatName;
    }

    public void setProductSubcatName(String productSubcatName) {
        this.productSubcatName = productSubcatName;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
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

    public List<ProductCatSubcat> getProductCatSubcatList() {
        return productCatSubcatList;
    }

    public void setProductCatSubcatList(List<ProductCatSubcat> productCatSubcatList) {
        this.productCatSubcatList = productCatSubcatList;
    }

    public ProductCatSubcat getProductCatNo() {
        return productCatNo;
    }

    public void setProductCatNo(ProductCatSubcat productCatNo) {
        this.productCatNo = productCatNo;
    }

    public HomeMaster getHomeId() {
        return homeId;
    }

    public void setHomeId(HomeMaster homeId) {
        this.homeId = homeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productSubcatNo != null ? productSubcatNo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductCatSubcat)) {
            return false;
        }
        ProductCatSubcat other = (ProductCatSubcat) object;
        if ((this.productSubcatNo == null && other.productSubcatNo != null) || (this.productSubcatNo != null && !this.productSubcatNo.equals(other.productSubcatNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ProductCatSubcat[ productSubcatNo=" + productSubcatNo + " ]";
    }

   
    @XmlTransient
    public Collection<ItemMaster> getItemMasterCollection() {
        return itemMasterCollection;
    }

    public void setItemMasterCollection(Collection<ItemMaster> itemMasterCollection) {
        this.itemMasterCollection = itemMasterCollection;
    }

    @XmlTransient
    public Collection<ProductCatSubcat> getProductCatSubcatCollection() {
        return productCatSubcatCollection;
    }

    public void setProductCatSubcatCollection(Collection<ProductCatSubcat> productCatSubcatCollection) {
        this.productCatSubcatCollection = productCatSubcatCollection;
    }

}
