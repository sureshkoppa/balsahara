/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.headmaster.DTO;

import java.util.Iterator;
import java.util.List;

/**
 *
 * @author ANUPAM
 */
public class EducationTypeSchoolClassPopulationDTO {
    
    private   String homeId;
    private   String schoolType;
    private   String yearString;
    private   String monthString;    
    private List<SchoolAllStandardPopulationDTO> schoolAllStandardPopulationDTOs;

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public String getMonthString() {
        return monthString;
    }

    public void setMonthString(String monthString) {
        this.monthString = monthString;
    }

    public List<SchoolAllStandardPopulationDTO> getSchoolAllStandardPopulationDTOs() {
        return schoolAllStandardPopulationDTOs;
    }

    public void setSchoolAllStandardPopulationDTOs(List<SchoolAllStandardPopulationDTO> schoolAllStandardPopulationDTOs) {
        this.schoolAllStandardPopulationDTOs = schoolAllStandardPopulationDTOs;
    }

    

    public String getSchoolType() {
        return schoolType;
    }

    public void setSchoolType(String schoolType) {
        this.schoolType = schoolType;
    }

    public String getYearString() {
        return yearString;
    }

    public void setYearString(String yearString) {
        this.yearString = yearString;
    }
    

    

    
    
    
    
    public String toString(){   
       
        StringBuilder objectDescription = new StringBuilder();                
                objectDescription.append("\n"+"homeId ="+homeId+"\n");
                objectDescription.append("schoolType ="+schoolType+"\n");
                objectDescription.append("yearString ="+yearString+"\n");
                objectDescription.append("monthString ="+monthString+"\n");
                
                Iterator i = schoolAllStandardPopulationDTOs.iterator();
                
                while(i.hasNext())
                {
                objectDescription.append("---------containing list object-------");
                objectDescription.append(((SchoolAllStandardPopulationDTO)i.next()).toString());
                }
        
    //private List<SchoolClassWisePopulationDTO> schoolClassWisePopulationDTOs;
                
    
     return objectDescription.toString();
    }
    
    
    
    
}
