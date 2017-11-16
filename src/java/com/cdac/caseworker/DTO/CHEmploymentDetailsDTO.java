/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.DTO;

/**
 *
 * @author Ramu Parupalli
 */
public class CHEmploymentDetailsDTO {
   
    
    private String detailsEmployment;
    private String duration;
    private String wagesEarned;
    private String experienceatwork;
    private String detailsEmployment_other;

    public String getDetailsEmployment() {
        return detailsEmployment;
    }

    public void setDetailsEmployment(String detailsEmployment) {
        System.out.println("inside pojo------------->>"+detailsEmployment);
        this.detailsEmployment = detailsEmployment;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getWagesEarned() {
        return wagesEarned;
    }

    public void setWagesEarned(String wagesEarned) {
        this.wagesEarned = wagesEarned;
    }

    public String getExperienceatwork() {
        return experienceatwork;
    }

    public void setExperienceatwork(String experienceatwork) {
        System.out.println("inside pojo------------->>"+experienceatwork);
        this.experienceatwork = experienceatwork;
    }

    public String getDetailsEmployment_other() {
        return detailsEmployment_other;
    }

    public void setDetailsEmployment_other(String detailsEmployment_other) {
         
        this.detailsEmployment_other = detailsEmployment_other;
    }
    
    
    
}
