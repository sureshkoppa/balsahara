/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.DTO;

/**
 *
 * @author ANUPAM
 */
public class ChildDTO {
    private String childProfileId;
    private String childName;

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public ChildDTO(String childProfileId, String childName) {
        this.childProfileId = childProfileId;
        this.childName = childName;
    }
    

   
    
    
}
