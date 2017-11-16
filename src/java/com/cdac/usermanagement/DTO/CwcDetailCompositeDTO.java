/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.DTO;

/**
 *
 * @author ANUPAM
 */
public class CwcDetailCompositeDTO {
    
    private int[] cwcId_arr;
    private String [] userId_arr;
    private String [] lastModfiedDate_arr;

    public int[] getCwcId_arr() {
        return cwcId_arr;
    }

    public void setCwcId_arr(int[] cwcId_arr) {
        this.cwcId_arr = cwcId_arr;
    }

    public String[] getLastModfiedDate_arr() {
        return lastModfiedDate_arr;
    }

    public void setLastModfiedDate_arr(String[] lastModfiedDate_arr) {
        this.lastModfiedDate_arr = lastModfiedDate_arr;
    }

    public String[] getUserId_arr() {
        return userId_arr;
    }

    public void setUserId_arr(String[] userId_arr) {
        this.userId_arr = userId_arr;
    }
    
    
    
}
