/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.ds.dto;

import java.util.Date;

/**
 *
 * @author suresh
 */
public class ItemDto {
    private int itemNO;
    private int productSubcatNo;
    private String itemName;
    private String specifications;
    private String UOM;
    private float unitPrice;
    private String remarks;
    
    private Date Mfg_date;
    private Date Exp_date;
    
    private String home_id;
    private double qoh;

    public Date getExp_date() {
        return Exp_date;
    }

    public void setExp_date(Date Exp_date) {
        this.Exp_date = Exp_date;
    }

    public Date getMfg_date() {
        return Mfg_date;
    }

    public void setMfg_date(Date Mfg_date) {
        this.Mfg_date = Mfg_date;
    }

    public String getUOM() {
        return UOM;
    }

    public void setUOM(String UOM) {
        this.UOM = UOM;
    }

    public String getHome_id() {
        return home_id;
    }

    public void setHome_id(String home_id) {
        this.home_id = home_id;
    }

    public int getItemNO() {
        return itemNO;
    }

    public void setItemNO(int itemNO) {
        this.itemNO = itemNO;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public int getProductSubcatNo() {
        return productSubcatNo;
    }

    public void setProductSubcatNo(int productSubcatNo) {
        this.productSubcatNo = productSubcatNo;
    }

    public double getQoh() {
        return qoh;
    }

    public void setQoh(double qoh) {
        this.qoh = qoh;
    }

    

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }

    public float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(float unitPrice) {
        this.unitPrice = unitPrice;
    }
    
    
    
}
