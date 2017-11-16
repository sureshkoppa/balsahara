/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.ds.dto;

/**
 *
 * @author suresh
 */
public class DonationOrReceiptItem {
   
    private String itemNo;
    private float Qoh;
    private String remarks;

    public DonationOrReceiptItem(String itemNo, float quanDonate, String remarks) {
        
        this.itemNo = itemNo;
        this.Qoh = quanDonate;
        this.remarks = remarks;
    }

    public DonationOrReceiptItem() {
    }

  

    public String getItemNo() {
        return itemNo;
    }

    public void setItemNo(String itemNo) {
        this.itemNo = itemNo;
    }

    public float getQoh() {
        return Qoh;
    }

    public void setQoh(float Qoh) {
        this.Qoh = Qoh;
    }

  

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    
    
    
    
    
}
