/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.su.DTO;

import java.util.Date;

/**
 *
 * @author vinumol
 */
public class ChildStatusDTO {
    private String fromDate;
    private String toDate;
    private int numOfOpenAdm;
    private int numOfNewAdm;
    
    private int numOfReturnSL;
    private int numOfRunBrtBk;
    private int numOfMissFnd;
    private int numOfReturnResdent;

    
    
    private int numOfSentSL;
    private int numOfRunAway;
    private int numOfRelease;
    private int numofMissing;
    private int numofResidential;
    
    private int numOfClosing;
    private String homename;

    public String getHomename() {
        return homename;
    }

    public void setHomename(String homename) {
        this.homename = homename;
    }

    public String getFromDate() {
        return fromDate;
    }

    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public int getNumOfClosing() {
        return numOfClosing;
    }

    public void setNumOfClosing(int numOfClosing) {
        this.numOfClosing = numOfClosing;
    }

    public int getNumOfNewAdm() {
        return numOfNewAdm;
    }

    public void setNumOfNewAdm(int numOfNewAdm) {
        this.numOfNewAdm = numOfNewAdm;
    }

    public int getNumOfOpenAdm() {
        return numOfOpenAdm;
    }

    public void setNumOfOpenAdm(int numOfOpenAdm) {
        this.numOfOpenAdm = numOfOpenAdm;
    }

    public int getNumOfRelease() {
        return numOfRelease;
    }

    public void setNumOfRelease(int numOfRelease) {
        this.numOfRelease = numOfRelease;
    }
    public int getNumOfMissFnd() {
        return numOfMissFnd;
    }

    public void setNumOfMissFnd(int numOfMissFnd) {
        this.numOfMissFnd = numOfMissFnd;
    }

    public int getNumOfReturnResdent() {
        return numOfReturnResdent;
    }

    public void setNumOfReturnResdent(int numOfReturnResdent) {
        this.numOfReturnResdent = numOfReturnResdent;
    }

    public int getNumofMissing() {
        return numofMissing;
    }

    public void setNumofMissing(int numofMissing) {
        this.numofMissing = numofMissing;
    }

    public int getNumofResidential() {
        return numofResidential;
    }

    public void setNumofResidential(int numofResidential) 
    {
        this.numofResidential = numofResidential;
    }
    public int getNumOfReturnSL() 
    {
        return numOfReturnSL;
    }

    public void setNumOfReturnSL(int numOfReturnSL)
    {
        this.numOfReturnSL = numOfReturnSL;
    }

    public int getNumOfRunAway() 
    {
        return numOfRunAway;
    }

    public void setNumOfRunAway(int numOfRunAway) {
        this.numOfRunAway = numOfRunAway;
    }

    public int getNumOfRunBrtBk() {
        return numOfRunBrtBk;
    }

    public void setNumOfRunBrtBk(int numOfRunBrtBk) {
        this.numOfRunBrtBk = numOfRunBrtBk;
    }

    public int getNumOfSentSL() {
        return numOfSentSL;
    }

    public void setNumOfSentSL(int numOfSentSL) {
        this.numOfSentSL = numOfSentSL;
    }

    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }
    
}
