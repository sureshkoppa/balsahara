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
public class VocationalAllStandardPopulationDTO {
    
    private int schoolId = 0;
    private String schoolName="Inside Vocational";
    private List<SchoolSingleStandardPopulationDTO> schoolSingleStdDTOs;
    private List<VocationalStudentDTO> vocationalStudentDTOs;

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

    public List<SchoolSingleStandardPopulationDTO> getSchoolSingleStdDTOs() {
        return schoolSingleStdDTOs;
    }

    public void setSchoolSingleStdDTOs(List<SchoolSingleStandardPopulationDTO> schoolSingleStdDTOs) {
        this.schoolSingleStdDTOs = schoolSingleStdDTOs;
    }

    public List<VocationalStudentDTO> getVocationalStudentDTOs() {
        return vocationalStudentDTOs;
    }

    public void setVocationalStudentDTOs(List<VocationalStudentDTO> vocationalStudentDTOs) {
        this.vocationalStudentDTOs = vocationalStudentDTOs;
    }
    
    

    @Override
    public String toString() {
        StringBuilder objectDescription = new StringBuilder();        
        
        objectDescription.append("\n--VocationalAllStandardPopulationDTO--\n");
        objectDescription.append("\nschoolId ="+schoolId+"\n");
        objectDescription.append("\nschoolName ="+schoolName+"\n");
        objectDescription.append("\nVocation oBjects\n");
        
        Iterator i = schoolSingleStdDTOs.iterator();
        while(i.hasNext())
        {
        objectDescription.append(i.next().toString()+"\n");
        }
        objectDescription.append("\n---Student Info---\n");
        
       /* i = vocationalStudentDTOs.iterator();
        while(i.hasNext())
        {
        objectDescription.append(i.next().toString()+"\n");
        }*/
        
                
        
        return objectDescription.toString();
    }
    
    
     
    
}
