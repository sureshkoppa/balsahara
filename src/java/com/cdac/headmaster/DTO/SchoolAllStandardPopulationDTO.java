/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.headmaster.DTO;

/**
 *
 * @author ANUPAM
 */
public class SchoolAllStandardPopulationDTO {
    
    private int schoolId;
    private String schoolName;
    
    private  long studentsInStd1;
    private  long studentsInStd2;
    private  long studentsInStd3;
    private  long studentsInStd4;
    private  long studentsInStd5;
    private  long studentsInStd6;
    private  long studentsInStd7;
    private  long studentsInStd8;
    private  long studentsInStd9;
    private  long studentsInStd10;
    private  long studentsInStd11;
    private  long studentsInStd12;
    

   
    public SchoolAllStandardPopulationDTO(int schoolId) {
        this.schoolId = schoolId;
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

    public long getStudentsInStd1() {
        return studentsInStd1;
    }

    public void setStudentsInStd1(long studentsInStd1) {
        this.studentsInStd1 = studentsInStd1;
    }

    public long getStudentsInStd10() {
        return studentsInStd10;
    }

    public void setStudentsInStd10(long studentsInStd10) {
        this.studentsInStd10 = studentsInStd10;
    }

    public long getStudentsInStd2() {
        return studentsInStd2;
    }

    public void setStudentsInStd2(long studentsInStd2) {
        this.studentsInStd2 = studentsInStd2;
    }

    public long getStudentsInStd3() {
        return studentsInStd3;
    }

    public void setStudentsInStd3(long studentsInStd3) {
        this.studentsInStd3 = studentsInStd3;
    }

    public long getStudentsInStd4() {
        return studentsInStd4;
    }

    public void setStudentsInStd4(long studentsInStd4) {
        this.studentsInStd4 = studentsInStd4;
    }

    public long getStudentsInStd5() {
        return studentsInStd5;
    }

    public void setStudentsInStd5(long studentsInStd5) {
        this.studentsInStd5 = studentsInStd5;
    }

    public long getStudentsInStd6() {
        return studentsInStd6;
    }

    public void setStudentsInStd6(long studentsInStd6) {
        this.studentsInStd6 = studentsInStd6;
    }

    public long getStudentsInStd7() {
        return studentsInStd7;
    }

    public void setStudentsInStd7(long studentsInStd7) {
        this.studentsInStd7 = studentsInStd7;
    }

    public long getStudentsInStd8() {
        return studentsInStd8;
    }

    public void setStudentsInStd8(long studentsInStd8) {
        this.studentsInStd8 = studentsInStd8;
    }

    public long getStudentsInStd9() {
        return studentsInStd9;
    }

    public void setStudentsInStd9(long studentsInStd9) {
        this.studentsInStd9 = studentsInStd9;
    }

    public long getStudentsInStd11() {
        return studentsInStd11;
    }

    public void setStudentsInStd11(long studentsInStd11) {
        this.studentsInStd11 = studentsInStd11;
    }

    public long getStudentsInStd12() {
        return studentsInStd12;
    }

    public void setStudentsInStd12(long studentsInStd12) {
        this.studentsInStd12 = studentsInStd12;
    }
    
    
    
    public String toString(){
    
        return 
                
                "\n"+"schoolId = "+schoolId+"\n"+
                "schoolName = "+schoolName+"\n"+
                "studentsInStd1="+studentsInStd1+"\n"+
                "studentsInStd2="+studentsInStd2+"\n"+
                "studentsInStd3="+studentsInStd3+"\n"+
                "studentsInStd4="+studentsInStd4+"\n"+
                "studentsInStd5="+studentsInStd5+"\n"+
                "studentsInStd6="+studentsInStd6+"\n"+
                "studentsInStd7="+studentsInStd7+"\n"+
                "studentsInStd8="+studentsInStd8+"\n"+
                "studentsInStd9="+studentsInStd9+"\n"+
                "studentsInStd10="+studentsInStd10+"\n"+
                "studentsInStd10="+studentsInStd11+"\n"+
                "studentsInStd10="+studentsInStd12+"\n";
                
    
    }
    
}
