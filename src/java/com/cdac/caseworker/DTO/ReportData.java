/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.DTO;

/**
 *
 * @author ANUPAM
 */
public  class ReportData{
        private String key;
        private long value;
        private int keyLong;

    public int getKeyLong() {
        return keyLong;
    }

    public void setKeyLong(int keyLong) {
        this.keyLong = keyLong;
    }
        
        

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public long getValue() {
        return value;
    }

    public void setValue(long value) {
        this.value = value;
    }
        
        

    public ReportData(String key, long value) {
        this.key = key;
        this.value = value;
    }

    public ReportData(int keyLong,long value) {
        this.value = value;
        this.key = ""+keyLong;
    }
        
        
        
        
   }