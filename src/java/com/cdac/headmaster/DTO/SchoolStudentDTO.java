/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.headmaster.DTO;

/**
 *
 * @author ANUPAM
 */
public class SchoolStudentDTO {
    
    private String profileId;
    private String name;
    private String course;
    private String status;

    public SchoolStudentDTO(String profileId, String name, String course) {
        this.profileId = profileId;
        this.name = name;
        this.course = course;
    }
    
    public SchoolStudentDTO(String profileId, String name, String course, String status) {
        this.profileId = profileId;
        this.name = name;
        this.course = course;
        this.status = status;
    }
    
    

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProfileId() {
        return profileId;
    }

    public void setProfileId(String profileId) {
        this.profileId = profileId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    

    
    
    
}
