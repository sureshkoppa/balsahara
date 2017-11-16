/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.ds.dto;

import com.cdac.usermanagement.ORM.TransactionMaster;
import java.util.List;

/**
 *
 * @author suresh
 */
public class TransDto {
     private TransactionMaster tm;
     private List<TransObjectDto> tdList;

    public List<TransObjectDto> getTdList() {
        return tdList;
    }

    public void setTdList(List<TransObjectDto> tdList) {
        this.tdList = tdList;
    }

    public TransactionMaster getTm() {
        return tm;
    }

    public void setTm(TransactionMaster tm) {
        this.tm = tm;
    }
     
     
    
}
