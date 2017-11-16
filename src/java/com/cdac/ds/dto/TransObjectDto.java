/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.ds.dto;

import com.cdac.usermanagement.ORM.TransactionDetails;

/**
 *
 * @author suresh
 */
public class TransObjectDto {
    private TransactionDetails td;
    private String itemName;

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public TransactionDetails getTd() {
        return td;
    }

    public void setTd(TransactionDetails td) {
        this.td = td;
    }
    
    
    
}
