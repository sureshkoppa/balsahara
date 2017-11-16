/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.ds.dto;

import com.cdac.usermanagement.ORM.TransactionMaster;
import java.util.Date;
import java.util.List;

/**
 *
 * @author suresh
 */
public class RepTransDTO {
    
    private long   transID;
    private long   itemNO;
    private String   transDate;
    private String transFrom;
    private String invNum;
    private String   invDate;
    private String itemName;
    private double quanRecv;
    private double openBal;
    private double closeBal;
    private String operType;
    private String remarks;
    private String itemRemarks;

    public long getItemNO() {
        return itemNO;
    }

    public void setItemNO(long itemNO) {
        this.itemNO = itemNO;
    }

    public long getTransID() {
        return transID;
    }

    public void setTransID(long transID) {
        this.transID = transID;
    }

    public String getInvDate() {
        return invDate;
    }

    public void setInvDate(String invDate) {
        this.invDate = invDate;
    }
    
   

    public String getInvNum() {
        return invNum;
    }

    public void setInvNum(String invNum) {
        this.invNum = invNum;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public double getCloseBal() {
        return closeBal;
    }

    public void setCloseBal(double closeBal) {
        this.closeBal = closeBal;
    }

    public double getOpenBal() {
        return openBal;
    }

    public void setOpenBal(double openBal) {
        this.openBal = openBal;
    }

   

    public String getOperType() {
        return operType;
    }

    public void setOperType(String operType) {
        this.operType = operType;
    }

   
    public double getQuanRecv() {
        return quanRecv;
    }

    public void setQuanRecv(double quanRecv) {
        this.quanRecv = quanRecv;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getTransDate() {
        return transDate;
    }

    public void setTransDate(String transDate) {
        this.transDate = transDate;
    }

   
    public String getTransFrom() {
        return transFrom;
    }

    public void setTransFrom(String transFrom) {
        this.transFrom = transFrom;
    }

    public String getItemRemarks() {
        return itemRemarks;
    }

    public void setItemRemarks(String itemRemarks) {
        this.itemRemarks = itemRemarks;
    }
     
     
    
}
