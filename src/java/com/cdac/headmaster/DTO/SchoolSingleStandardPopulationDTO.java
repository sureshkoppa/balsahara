/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.headmaster.DTO;

/**
 *
 * @author ANUPAM
 */
public class SchoolSingleStandardPopulationDTO {
    
    private int schoolId;
    private String schoolName="Inside School and Vocational Training";
    private String courseName;
    private long noOfStudents;

    //for outside scool use this constructor
    public SchoolSingleStandardPopulationDTO(int schoolId,String schoolName,String courseName, long noOfStudents) {
        this.schoolId = schoolId;
        this.schoolName = schoolName;
        this.courseName = courseName;
        this.noOfStudents = noOfStudents;
    }
    
    //for inside school use this constructor
    public SchoolSingleStandardPopulationDTO(String courseName, long noOfStudents) {        
        this.courseName = courseName;
        this.noOfStudents = noOfStudents;
    }

    public int getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(int schoolId) {
        this.schoolId = schoolId;
    }

    
    
    
    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }
    
    
    

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public long getNoOfStudents() {
        return noOfStudents;
    }

    public void setNoOfStudents(long noOfStudents) {
        this.noOfStudents = noOfStudents;
    }

    @Override
    public String toString() {
        return "SchoolSingleStandardPopulationDTO{" + "schoolId=" + schoolId + ", schoolName=" + schoolName + ", courseName=" + courseName + ", noOfStudents=" + noOfStudents + '}';
    }
    
    
    
}
