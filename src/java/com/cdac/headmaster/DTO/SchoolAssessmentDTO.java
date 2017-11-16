/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.headmaster.DTO;

import java.util.Date;

/**
 *
 * @author ANUPAM
 * This DTO class will be used to generate the report of the school it has 
 * static label fields(String) and dynamic value fields(integers).
 * 
 */
public class SchoolAssessmentDTO {
    
    //static or label fields----------------START
    private static final String nameLabel="Name";
    private static final String classLabel="Class";
    private static final String rollLabel="Roll";
    
    private static final String monthsLabel="Months";
    private static final String seriolNoLabel="Serial No";
    private static final String unitTestExamsLabel="Unit Test Exams";
    
    private static final String utAndAssignDetLabel="Details Of Unit Tests And Assignments";
    private static final String utAndAssignTotalLabel="Total of Unit Tests And Assignments";
    
    private static final String examsLabel="Exams";
    private static final String combinedResultLabel="Combined Result";
    private static final String subjectLabel="Subjects";
    
    private static final String firstTestLabel="First Test";
    private static final String secondTestLabel="Second Test";
    private static final String thirdTestLabel="Third Test";
    private static final String fourthTestLabel="Fourth Test";
    
    private static final String assignmentLabel="Assignment";
    private static final String unitTestlabel="Unit Test";
    private static final String totalLable="Total";
    
    private static final String quarterlyLabel="Quarterly";
    private static final String halfYearlyLabel="Half Yearly";
    private static final String querterlyHalfYearlyTotallabel="Total of Querterly and Half-Yearly";
    private static final String annualLabel="Annual";
    
    private static final String unitTestsAssignmentsLabel="Unit Tests And Assignments";
    private static final String quarterlyHalfYearlyLabel="Quertetly and Half-Yearly";
    private static final String finalResultsLabel="Final Results";
    
    private static final String marksLabel="Marks";
    
    private static final int assingFullMarks=25;
    private static final int unitTestFullMarks=25;
    private static final int assignUnitTestFullMarks=50;
    
    private static final int assignUnitTestFullTotalmarks=200;
    private static final int quarterlyFullMarks=100;
    private static final int halfYEarlyFullMarks=100;
    private static final int querterlyHalfYearlyFullMarks=200;
    
    private static final String unitTestAssignmentsPercentLabel="25%";
    private static final String quarterlyHalfyearlyPercentLabel="25%";
    private static final String annualPercentLabel="50%";
    
    private static final int finalResultsFullMarks=100;
    
    private static final String janLabel="January";
    private static final String febLabel="February";
    private static final String marLabel="March";
    private static final String aprLabel="April";
    private static final String mayLabel="May";
    private static final String junLabel="June";
    private static final String julLabel="July";
    private static final String augLabel="August";
    private static final String septLabel="September";
    private static final String octLabel="October";
    private static final String novLabel="November";
    private static final String decLabel="December"; 
    
    private static final String schoolWorkingDaysLabel="School Working Days";
    private static final String attendedDaysLabel="Attended Days";
    private static final String teachersSignatureLabel="Teacher's Signature";
    private static final String princilesSignatureLabel="Principle's Signature";
    
    private static final String noOfUTConductedLabel="No Of Unit Tests Conducted";
    private static final String noOfUTAttendedLabel="No Of Unit Tests Attended";
              
    private static final String noOfExamsConductedLabel="No Of Exams Conducted";
    private static final String noOfExamsAttendedLabel="No Of Exams Attended";
    private static final String attendencePercetaneLabel="Attendence %";
    private static final String gradeOnTotalLabel="Grade On Total (A,B,C,D,E)";
    
    private static final String passFailProLabel="Pass / Fail / Promoted";
    
    private static final String teleguUdrduLabel="Telegu / Urdu";
    private static final String hindiLabel="Hindi";
    private static final String englishLabel="English";
    private static final String mathsLabel="Maths";
    private static final String gScienceLabel="General Science";
    private static final String sScicenceLabel="Social Science";
     //static or label fields----------------END
    
    
     //dynamic fields----------------START
    
    //------subject telegu/urdu START
    private int teleguUrduFTassignMarks;
    private int teleguUrduFTunittestMarks;
    private int teleguUrduFTtotalMarks;
    
    private int teleguUrduSTassignMarks;
    private int teleguUrduSTunittestMarks;
    private int teleguUrduSTtotalMarks;
    
    private int teleguUrduTTassignMarks;
    private int teleguUrduTTunittestMarks;
    private int teleguUrduTTtotalMarks;
    
    private int teleguUrduFOTassignMarks;
    private int teleguUrduFOTunittestMarks;
    private int teleguUrduFOTtotalMarks;
    
    private int teleguUrduAssignUnitTestTotalMarks;
    
    private int teleguUrduQuarterMarks;
    private int teleguUrduHalfYearMarks;
    private int teleguUrduQuarterHalfYearTotalMarks;
    
    private int teleguUrduAnnualMarks;
    
    private int teleguUrduAssignUnitTestTotalPercentMarks;
    private int teleguUrduQuarterHalfYearTotalPercentMarks;
    
    private int teleguUrduAnnualPercentMarks;
    //------subject telegu/urdu END
    
   //------subject Hindi start
    private int hindiFTassignMarks;
    private int hindiFTunittestMarks;
    private int hindiFTtotalMarks;
    
    private int hindiSTassignMarks;
    private int hindiSTunittestMarks;
    private int hindiSTtotalMarks;
    
    private int hindiTTassignMarks;
    private int hindiTTunittestMarks;
    private int hindiTTtotalMarks;
    
    private int hindiFOTassignMarks;
    private int hindiFOTunittestMarks;
    private int hindiFOTtotalMarks;
    
    private int hindiAssignUnitTestTotalMarks;
    
    private int hindiQuarterMarks;
    private int hindiHalfYearMarks;
    private int hindiQuarterHalfYearTotalMarks;
    
    private int hindiAnnualMarks;
    
    private int hindiAssignUnitTestTotalPercentMarks;
    private int hindiQuarterHalfYearTotalPercentMarks;
    
    private int hindiAnnualPercentMarks;
   //------subject Hindi End 
    
    //------subject english start
    private int englishFTassignMarks;
    private int englishFTunittestMarks;
    private int englishFTtotalMarks;
    
    private int englishSTassignMarks;
    private int englishSTunittestMarks;
    private int englishSTtotalMarks;
    
    private int englishTTassignMarks;
    private int englishTTunittestMarks;
    private int englishTTtotalMarks;
    
    private int englishFOTassignMarks;
    private int englishFOTunittestMarks;
    private int englishFOTtotalMarks;
    
    private int englishAssignUnitTestTotalMarks;
    
    private int englishQuarterMarks;
    private int englishHalfYearMarks;
    private int englishQuarterHalfYearTotalMarks;
    
    private int englishAnnualMarks;
    
    private int englishAssignUnitTestTotalPercentMarks;
    private int englishQuarterHalfYearTotalPercentMarks;
    
    private int englishAnnualPercentMarks;
   //------subject english End 
    
    //------subject maths start
    private int mathsFTassignMarks;
    private int mathsFTunittestMarks;
    private int mathsFTtotalMarks;
    
    private int mathsSTassignMarks;
    private int mathsSTunittestMarks;
    private int mathsSTtotalMarks;
    
    private int mathsTTassignMarks;
    private int mathsTTunittestMarks;
    private int mathsTTtotalMarks;
    
    private int mathsFOTassignMarks;
    private int mathsFOTunittestMarks;
    private int mathsFOTtotalMarks;
    
    private int mathsAssignUnitTestTotalMarks;
    
    private int mathsQuarterMarks;
    private int mathsHalfYearMarks;
    private int mathsQuarterHalfYearTotalMarks;
    
    private int mathsAnnualMarks;
    
    private int mathsAssignUnitTestTotalPercentMarks;
    private int mathsQuarterHalfYearTotalPercentMarks;
    
    private int mathsAnnualPercentMarks;
   //------subject maths End 
   
    
    //------subject generalScience start
    private int generalScienceFTassignMarks;
    private int generalScienceFTunittestMarks;
    private int generalScienceFTtotalMarks;
    
    private int generalScienceSTassignMarks;
    private int generalScienceSTunittestMarks;
    private int generalScienceSTtotalMarks;
    
    private int generalScienceTTassignMarks;
    private int generalScienceTTunittestMarks;
    private int generalScienceTTtotalMarks;
    
    private int generalScienceFOTassignMarks;
    private int generalScienceFOTunittestMarks;
    private int generalScienceFOTtotalMarks;
    
    private int generalScienceAssignUnitTestTotalMarks;
    
    private int generalScienceQuarterMarks;
    private int generalScienceHalfYearMarks;
    private int generalScienceQuarterHalfYearTotalMarks;
    
    private int generalScienceAnnualMarks;
    
    private int generalScienceAssignUnitTestTotalPercentMarks;
    private int generalScienceQuarterHalfYearTotalPercentMarks;
    
    private int generalScienceAnnualPercentMarks;
   //------subject generalScience End 
    
    //------subject socialScience start
    private int socialScienceFTassignMarks;
    private int socialScienceFTunittestMarks;
    private int socialScienceFTtotalMarks;
    
    private int socialScienceSTassignMarks;
    private int socialScienceSTunittestMarks;
    private int socialScienceSTtotalMarks;
    
    private int socialScienceTTassignMarks;
    private int socialScienceTTunittestMarks;
    private int socialScienceTTtotalMarks;
    
    private int socialScienceFOTassignMarks;
    private int socialScienceFOTunittestMarks;
    private int socialScienceFOTtotalMarks;
    
    private int socialScienceAssignUnitTestTotalMarks;
    
    private int socialScienceQuarterMarks;
    private int socialScienceHalfYearMarks;
    private int socialScienceQuarterHalfYearTotalMarks;
    
    private int socialScienceAnnualMarks;
    
    private int socialScienceAssignUnitTestTotalPercentMarks;
    private int socialScienceQuarterHalfYearTotalPercentMarks;
    
    private int socialScienceAnnualPercentMarks;
   //------subject socialScience End 
    
    //------all subj final results 
    private int teleguUrduFinalResult;
    private int hindiFinalResult;
    private int englishFinalreslt;
    private int mathsFinalResult;
    private int generalScienceFinalResult;
    private int socialScienceFinalResult;
    
    
    //---totals START
    private int firstTestTotal;
    private int secondTestTotal;
    private int thirdTestTotal;
    private int fourthTestTotal;
    private int querterlyTotal;
    private int finalResultTotal;
    //---totals END
    
    //---working days START
    private int janWorkingDay;
    private int febWorkingDay;
    private int marWorkingDay;
    private int aprWorkingDay;
    private int mayWorkingDay;
    private int junWorkingDay;
    private int julWorkingDay;
    private int augWorkingDay;
    private int septWorkingDay;
    private int octWorkingDay;
    private int novWorkingDay;
    private int decWorkingDay; 
    private int totalWorkingDay;
    //---Working Days End
    
    
    //-----attended days START
    private int janAttendedDay;
    private int febAttendedDay;
    private int marAttendedDay;
    private int aprAttendedDay;
    private int mayAttendedDay;
    private int junAttendedDay;
    private int julAttendedDay;
    private int augAttendedDay;
    private int septAttendedDay;
    private int octAttendedDay;
    private int novAttendedDay;
    private int decAttendedDay; 
    private int totalAttendedDay;
    
    //-----attended days END
    
    private int noOfUTConductedValue;
    private int noOfUTAttendedValue;              
    private int noOfExamsConductedValue;
    private int noOfExamsAttendedValue;
    
    private String nameValue;
    private String classValue;
    private String rollValue;
    
    //anupam added on 25-01-2012 START
    private String userNameLabel;
    private String creationDate;
    

    public String getUserNameLabel() {
        return userNameLabel;
    }

    public void setUserNameLabel(String userNameLabel) {
        this.userNameLabel = userNameLabel;
    }
    
    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }
    
    //anupam added on 25-01-2012  END

   

    
    
    
    
    
    
    
    
     //dynamic fields----------------END
    
    
    //----------------getters

    public static String getAnnualLabel() {
        return annualLabel;
    }

    public static String getAnnualPercentLabel() {
        return annualPercentLabel;
    }

    public static String getAprLabel() {
        return aprLabel;
    }

    public static int getAssignUnitTestFullMarks() {
        return assignUnitTestFullMarks;
    }

    public static int getAssignUnitTestFullTotalmarks() {
        return assignUnitTestFullTotalmarks;
    }

    public static String getAssignmentLabel() {
        return assignmentLabel;
    }

    public static int getAssingFullMarks() {
        return assingFullMarks;
    }

    public static String getAttendedDaysLabel() {
        return attendedDaysLabel;
    }

    public static String getAttendencePercetaneLabel() {
        return attendencePercetaneLabel;
    }

    public static String getAugLabel() {
        return augLabel;
    }

    public static String getClassLabel() {
        return classLabel;
    }

    public static String getCombinedResultLabel() {
        return combinedResultLabel;
    }

    public static String getDecLabel() {
        return decLabel;
    }

    public static String getEnglishLabel() {
        return englishLabel;
    }

    public static String getExamsLabel() {
        return examsLabel;
    }

    public static String getFebLabel() {
        return febLabel;
    }

    public static int getFinalResultsFullMarks() {
        return finalResultsFullMarks;
    }

    public static String getFinalResultsLabel() {
        return finalResultsLabel;
    }

    public static String getFirstTestLabel() {
        return firstTestLabel;
    }

    public static String getFourthTestLabel() {
        return fourthTestLabel;
    }

    public static String getgScienceLabel() {
        return gScienceLabel;
    }

    public static String getGradeOnTotalLabel() {
        return gradeOnTotalLabel;
    }

    public static int getHalfYEarlyFullMarks() {
        return halfYEarlyFullMarks;
    }

    public static String getHalfYearlyLabel() {
        return halfYearlyLabel;
    }

    public static String getHindiLabel() {
        return hindiLabel;
    }

    public static String getJanLabel() {
        return janLabel;
    }

    public static String getJulLabel() {
        return julLabel;
    }

    public static String getJunLabel() {
        return junLabel;
    }

    public static String getMarLabel() {
        return marLabel;
    }

    public static String getMarksLabel() {
        return marksLabel;
    }

    public static String getMathsLabel() {
        return mathsLabel;
    }

    public static String getMayLabel() {
        return mayLabel;
    }

    public static String getMonthsLabel() {
        return monthsLabel;
    }

    public static String getNameLabel() {
        return nameLabel;
    }

    public static String getNoOfExamsAttendedLabel() {
        return noOfExamsAttendedLabel;
    }

    public static String getNoOfExamsConductedLabel() {
        return noOfExamsConductedLabel;
    }

    public static String getNoOfUTAttendedLabel() {
        return noOfUTAttendedLabel;
    }

    public static String getNoOfUTConductedLabel() {
        return noOfUTConductedLabel;
    }

    public static String getNovLabel() {
        return novLabel;
    }

    public static String getOctLabel() {
        return octLabel;
    }

    public static String getPassFailProLabel() {
        return passFailProLabel;
    }

    public static String getPrincilesSignatureLabel() {
        return princilesSignatureLabel;
    }

    public static int getQuarterlyFullMarks() {
        return quarterlyFullMarks;
    }

    public static String getQuarterlyHalfYearlyLabel() {
        return quarterlyHalfYearlyLabel;
    }

    public static String getQuarterlyHalfyearlyPercentLabel() {
        return quarterlyHalfyearlyPercentLabel;
    }

    public static String getQuarterlyLabel() {
        return quarterlyLabel;
    }

    public static int getQuerterlyHalfYearlyFullMarks() {
        return querterlyHalfYearlyFullMarks;
    }

    public static String getQuerterlyHalfYearlyTotallabel() {
        return querterlyHalfYearlyTotallabel;
    }

    public static String getRollLabel() {
        return rollLabel;
    }

    public static String getsScicenceLabel() {
        return sScicenceLabel;
    }

    public static String getSchoolWorkingDaysLabel() {
        return schoolWorkingDaysLabel;
    }

    public static String getSecondTestLabel() {
        return secondTestLabel;
    }

    public static String getSeptLabel() {
        return septLabel;
    }

    public static String getSeriolNoLabel() {
        return seriolNoLabel;
    }

    public static String getSubjectLabel() {
        return subjectLabel;
    }

    public static String getTeachersSignatureLabel() {
        return teachersSignatureLabel;
    }

    public static String getTeleguUdrduLabel() {
        return teleguUdrduLabel;
    }

   
    public static String getThirdTestLabel() {
        return thirdTestLabel;
    }

    public static String getTotalLable() {
        return totalLable;
    }

    public static String getUnitTestAssignmentsPercentLabel() {
        return unitTestAssignmentsPercentLabel;
    }

    public static String getUnitTestExamsLabel() {
        return unitTestExamsLabel;
    }

    public static int getUnitTestFullMarks() {
        return unitTestFullMarks;
    }

    public static String getUnitTestlabel() {
        return unitTestlabel;
    }

    public static String getUnitTestsAssignmentsLabel() {
        return unitTestsAssignmentsLabel;
    }

    public static String getUtAndAssignDetLabel() {
        return utAndAssignDetLabel;
    }

    public static String getUtAndAssignTotalLabel() {
        return utAndAssignTotalLabel;
    }
    
    //---------------------dynamic fields getters and setters

    public int getAprAttendedDay() {
        return aprAttendedDay;
    }

    public void setAprAttendedDay(int aprAttendedDay) {
        this.aprAttendedDay = aprAttendedDay;
    }

    public int getAprWorkingDay() {
        return aprWorkingDay;
    }

    public void setAprWorkingDay(int aprWorkingDay) {
        this.aprWorkingDay = aprWorkingDay;
    }

    public int getAugAttendedDay() {
        return augAttendedDay;
    }

    public void setAugAttendedDay(int augAttendedDay) {
        this.augAttendedDay = augAttendedDay;
    }

    public int getAugWorkingDay() {
        return augWorkingDay;
    }

    public void setAugWorkingDay(int augWorkingDay) {
        this.augWorkingDay = augWorkingDay;
    }

    public String getClassValue() {
        return classValue;
    }

    public void setClassValue(String classValue) {
        this.classValue = classValue;
    }

    public int getDecAttendedDay() {
        return decAttendedDay;
    }

    public void setDecAttendedDay(int decAttendedDay) {
        this.decAttendedDay = decAttendedDay;
    }

    public int getDecWorkingDay() {
        return decWorkingDay;
    }

    public void setDecWorkingDay(int decWorkingDay) {
        this.decWorkingDay = decWorkingDay;
    }

    public int getEnglishAnnualMarks() {
        return englishAnnualMarks;
    }

    public void setEnglishAnnualMarks(int englishAnnualMarks) {
        this.englishAnnualMarks = englishAnnualMarks;
    }

    public int getEnglishAnnualPercentMarks() {
        return englishAnnualPercentMarks;
    }

    public void setEnglishAnnualPercentMarks(int englishAnnualPercentMarks) {
        this.englishAnnualPercentMarks = englishAnnualPercentMarks;
    }

    public int getEnglishAssignUnitTestTotalMarks() {
        return englishAssignUnitTestTotalMarks;
    }

    public void setEnglishAssignUnitTestTotalMarks(int englishAssignUnitTestTotalMarks) {
        this.englishAssignUnitTestTotalMarks = englishAssignUnitTestTotalMarks;
    }

    public int getEnglishAssignUnitTestTotalPercentMarks() {
        return englishAssignUnitTestTotalPercentMarks;
    }

    public void setEnglishAssignUnitTestTotalPercentMarks(int englishAssignUnitTestTotalPercentMarks) {
        this.englishAssignUnitTestTotalPercentMarks = englishAssignUnitTestTotalPercentMarks;
    }

    public int getEnglishFOTassignMarks() {
        return englishFOTassignMarks;
    }

    public void setEnglishFOTassignMarks(int englishFOTassignMarks) {
        if(englishFOTassignMarks==-1){englishFOTassignMarks=0;}
        this.englishFOTassignMarks = englishFOTassignMarks;
    }

    public int getEnglishFOTtotalMarks() {
        return englishFOTtotalMarks;
    }

    public void setEnglishFOTtotalMarks(int englishFOTtotalMarks) {
        this.englishFOTtotalMarks = englishFOTtotalMarks;
    }

    public int getEnglishFOTunittestMarks() {
        return englishFOTunittestMarks;
    }

    public void setEnglishFOTunittestMarks(int englishFOTunittestMarks) {
        this.englishFOTunittestMarks = englishFOTunittestMarks;
    }

    public int getEnglishFTassignMarks() {
        return englishFTassignMarks;
    }

    public void setEnglishFTassignMarks(int englishFTassignMarks) {
        if(englishFTassignMarks==-1){englishFTassignMarks=0;}
        this.englishFTassignMarks = englishFTassignMarks;
    }

    public int getEnglishFTtotalMarks() {
        return englishFTtotalMarks;
    }

    public void setEnglishFTtotalMarks(int englishFTtotalMarks) {
        this.englishFTtotalMarks = englishFTtotalMarks;
    }

    public int getEnglishFTunittestMarks() {
        return englishFTunittestMarks;
    }

    public void setEnglishFTunittestMarks(int englishFTunittestMarks) {
        this.englishFTunittestMarks = englishFTunittestMarks;
    }

    public int getEnglishHalfYearMarks() {
        return englishHalfYearMarks;
    }

    public void setEnglishHalfYearMarks(int englishHalfYearMarks) {
        this.englishHalfYearMarks = englishHalfYearMarks;
    }

    public int getEnglishQuarterHalfYearTotalMarks() {
        return englishQuarterHalfYearTotalMarks;
    }

    public void setEnglishQuarterHalfYearTotalMarks(int englishQuarterHalfYearTotalMarks) {
        this.englishQuarterHalfYearTotalMarks = englishQuarterHalfYearTotalMarks;
    }

    public int getEnglishQuarterHalfYearTotalPercentMarks() {
        return englishQuarterHalfYearTotalPercentMarks;
    }

    public void setEnglishQuarterHalfYearTotalPercentMarks(int englishQuarterHalfYearTotalPercentMarks) {
        this.englishQuarterHalfYearTotalPercentMarks = englishQuarterHalfYearTotalPercentMarks;
    }

    public int getEnglishQuarterMarks() {
        return englishQuarterMarks;
    }

    public void setEnglishQuarterMarks(int englishQuarterMarks) {
        this.englishQuarterMarks = englishQuarterMarks;
    }

    public int getEnglishSTassignMarks() {
        return englishSTassignMarks;
    }

    public void setEnglishSTassignMarks(int englishSTassignMarks) {
        if(englishSTassignMarks==-1){englishSTassignMarks=0;}
        this.englishSTassignMarks = englishSTassignMarks;
    }

    public int getEnglishSTtotalMarks() {
        return englishSTtotalMarks;
    }

    public void setEnglishSTtotalMarks(int englishSTtotalMarks) {
        this.englishSTtotalMarks = englishSTtotalMarks;
    }

    public int getEnglishSTunittestMarks() {
        return englishSTunittestMarks;
    }

    public void setEnglishSTunittestMarks(int englishSTunittestMarks) {
        this.englishSTunittestMarks = englishSTunittestMarks;
    }

    public int getEnglishTTassignMarks() {
        return englishTTassignMarks;
    }

    public void setEnglishTTassignMarks(int englishTTassignMarks) {
        if(englishTTassignMarks==-1){englishTTassignMarks=0;}
        this.englishTTassignMarks = englishTTassignMarks;
    }

    public int getEnglishTTtotalMarks() {
        return englishTTtotalMarks;
    }

    public void setEnglishTTtotalMarks(int englishTTtotalMarks) {
        this.englishTTtotalMarks = englishTTtotalMarks;
    }

    public int getEnglishTTunittestMarks() {
        return englishTTunittestMarks;
    }

    public void setEnglishTTunittestMarks(int englishTTunittestMarks) {
        this.englishTTunittestMarks = englishTTunittestMarks;
    }

    public int getFebAttendedDay() {
        return febAttendedDay;
    }

    public void setFebAttendedDay(int febAttendedDay) {
        this.febAttendedDay = febAttendedDay;
    }

    public int getFebWorkingDay() {
        return febWorkingDay;
    }

    public void setFebWorkingDay(int febWorkingDay) {
        this.febWorkingDay = febWorkingDay;
    }

    public int getFinalResultTotal() {
        return finalResultTotal;
    }

    public void setFinalResultTotal(int finalResultTotal) {
        this.finalResultTotal = finalResultTotal;
    }

    public int getFirstTestTotal() {
        return firstTestTotal;
    }

    public void setFirstTestTotal(int firstTestTotal) {
        this.firstTestTotal = firstTestTotal;
    }

    public int getFourthTestTotal() {
        return fourthTestTotal;
    }

    public void setFourthTestTotal(int fourthTestTotal) {
        this.fourthTestTotal = fourthTestTotal;
    }

    public int getGeneralScienceAnnualMarks() {
        return generalScienceAnnualMarks;
    }

    public void setGeneralScienceAnnualMarks(int generalScienceAnnualMarks) {
        this.generalScienceAnnualMarks = generalScienceAnnualMarks;
    }

    public int getGeneralScienceAnnualPercentMarks() {
        return generalScienceAnnualPercentMarks;
    }

    public void setGeneralScienceAnnualPercentMarks(int generalScienceAnnualPercentMarks) {
        this.generalScienceAnnualPercentMarks = generalScienceAnnualPercentMarks;
    }

    public int getGeneralScienceAssignUnitTestTotalMarks() {
        return generalScienceAssignUnitTestTotalMarks;
    }

    public void setGeneralScienceAssignUnitTestTotalMarks(int generalScienceAssignUnitTestTotalMarks) {
        this.generalScienceAssignUnitTestTotalMarks = generalScienceAssignUnitTestTotalMarks;
    }

    public int getGeneralScienceAssignUnitTestTotalPercentMarks() {
        return generalScienceAssignUnitTestTotalPercentMarks;
    }

    public void setGeneralScienceAssignUnitTestTotalPercentMarks(int generalScienceAssignUnitTestTotalPercentMarks) {
        this.generalScienceAssignUnitTestTotalPercentMarks = generalScienceAssignUnitTestTotalPercentMarks;
    }

    public int getGeneralScienceFOTassignMarks() {
        return generalScienceFOTassignMarks;
    }

    public void setGeneralScienceFOTassignMarks(int generalScienceFOTassignMarks) {
        if(generalScienceFOTassignMarks==-1){generalScienceFOTassignMarks=0;}
        this.generalScienceFOTassignMarks = generalScienceFOTassignMarks;
    }

    public int getGeneralScienceFOTtotalMarks() {
        return generalScienceFOTtotalMarks;
    }

    public void setGeneralScienceFOTtotalMarks(int generalScienceFOTtotalMarks) {
        this.generalScienceFOTtotalMarks = generalScienceFOTtotalMarks;
    }

    public int getGeneralScienceFOTunittestMarks() {
        return generalScienceFOTunittestMarks;
    }

    public void setGeneralScienceFOTunittestMarks(int generalScienceFOTunittestMarks) {
        this.generalScienceFOTunittestMarks = generalScienceFOTunittestMarks;
    }

    public int getGeneralScienceFTassignMarks() {        
        return generalScienceFTassignMarks;
    }

    public void setGeneralScienceFTassignMarks(int generalScienceFTassignMarks) {
        if(generalScienceFTassignMarks==-1){generalScienceFTassignMarks=0;}
        this.generalScienceFTassignMarks = generalScienceFTassignMarks;
    }

    public int getGeneralScienceFTtotalMarks() {
        return generalScienceFTtotalMarks;
    }

    public void setGeneralScienceFTtotalMarks(int generalScienceFTtotalMarks) {
        this.generalScienceFTtotalMarks = generalScienceFTtotalMarks;
    }

    public int getGeneralScienceFTunittestMarks() {
        return generalScienceFTunittestMarks;
    }

    public void setGeneralScienceFTunittestMarks(int generalScienceFTunittestMarks) {
        this.generalScienceFTunittestMarks = generalScienceFTunittestMarks;
    }

    public int getGeneralScienceHalfYearMarks() {
        return generalScienceHalfYearMarks;
    }

    public void setGeneralScienceHalfYearMarks(int generalScienceHalfYearMarks) {
        this.generalScienceHalfYearMarks = generalScienceHalfYearMarks;
    }

    public int getGeneralScienceQuarterHalfYearTotalMarks() {
        return generalScienceQuarterHalfYearTotalMarks;
    }

    public void setGeneralScienceQuarterHalfYearTotalMarks(int generalScienceQuarterHalfYearTotalMarks) {
        this.generalScienceQuarterHalfYearTotalMarks = generalScienceQuarterHalfYearTotalMarks;
    }

    public int getGeneralScienceQuarterHalfYearTotalPercentMarks() {
        return generalScienceQuarterHalfYearTotalPercentMarks;
    }

    public void setGeneralScienceQuarterHalfYearTotalPercentMarks(int generalScienceQuarterHalfYearTotalPercentMarks) {
        this.generalScienceQuarterHalfYearTotalPercentMarks = generalScienceQuarterHalfYearTotalPercentMarks;
    }

    public int getGeneralScienceQuarterMarks() {
        return generalScienceQuarterMarks;
    }

    public void setGeneralScienceQuarterMarks(int generalScienceQuarterMarks) {
        this.generalScienceQuarterMarks = generalScienceQuarterMarks;
    }

    public int getGeneralScienceSTassignMarks() {
        return generalScienceSTassignMarks;
    }

    public void setGeneralScienceSTassignMarks(int generalScienceSTassignMarks) {
        if(generalScienceSTassignMarks==-1){generalScienceSTassignMarks=0;}
        this.generalScienceSTassignMarks = generalScienceSTassignMarks;
    }

    public int getGeneralScienceSTtotalMarks() {
        return generalScienceSTtotalMarks;
    }

    public void setGeneralScienceSTtotalMarks(int generalScienceSTtotalMarks) {
        this.generalScienceSTtotalMarks = generalScienceSTtotalMarks;
    }

    public int getGeneralScienceSTunittestMarks() {
        return generalScienceSTunittestMarks;
    }

    public void setGeneralScienceSTunittestMarks(int generalScienceSTunittestMarks) {
        this.generalScienceSTunittestMarks = generalScienceSTunittestMarks;
    }

    public int getGeneralScienceTTassignMarks() {
        return generalScienceTTassignMarks;
    }

    public void setGeneralScienceTTassignMarks(int generalScienceTTassignMarks) {
        if(generalScienceTTassignMarks==-1){generalScienceTTassignMarks=0;}
        this.generalScienceTTassignMarks = generalScienceTTassignMarks;
    }

    public int getGeneralScienceTTtotalMarks() {
        return generalScienceTTtotalMarks;
    }

    public void setGeneralScienceTTtotalMarks(int generalScienceTTtotalMarks) {
        this.generalScienceTTtotalMarks = generalScienceTTtotalMarks;
    }

    public int getGeneralScienceTTunittestMarks() {
        return generalScienceTTunittestMarks;
    }

    public void setGeneralScienceTTunittestMarks(int generalScienceTTunittestMarks) {
        this.generalScienceTTunittestMarks = generalScienceTTunittestMarks;
    }

    public int getHindiAnnualMarks() {
        return hindiAnnualMarks;
    }

    public void setHindiAnnualMarks(int hindiAnnualMarks) {
        this.hindiAnnualMarks = hindiAnnualMarks;
    }

    public int getHindiAnnualPercentMarks() {
        return hindiAnnualPercentMarks;
    }

    public void setHindiAnnualPercentMarks(int hindiAnnualPercentMarks) {
        this.hindiAnnualPercentMarks = hindiAnnualPercentMarks;
    }

    public int getHindiAssignUnitTestTotalMarks() {
        return hindiAssignUnitTestTotalMarks;
    }

    public void setHindiAssignUnitTestTotalMarks(int hindiAssignUnitTestTotalMarks) {
        this.hindiAssignUnitTestTotalMarks = hindiAssignUnitTestTotalMarks;
    }

    public int getHindiAssignUnitTestTotalPercentMarks() {
        return hindiAssignUnitTestTotalPercentMarks;
    }

    public void setHindiAssignUnitTestTotalPercentMarks(int hindiAssignUnitTestTotalPercentMarks) {
        this.hindiAssignUnitTestTotalPercentMarks = hindiAssignUnitTestTotalPercentMarks;
    }

    public int getHindiFOTassignMarks() {
        return hindiFOTassignMarks;
    }

    public void setHindiFOTassignMarks(int hindiFOTassignMarks) {
        if(hindiFOTassignMarks==-1){hindiFOTassignMarks=0;}
        this.hindiFOTassignMarks = hindiFOTassignMarks;
    }

    public int getHindiFOTtotalMarks() {
        return hindiFOTtotalMarks;
    }

    public void setHindiFOTtotalMarks(int hindiFOTtotalMarks) {
        this.hindiFOTtotalMarks = hindiFOTtotalMarks;
    }

    public int getHindiFOTunittestMarks() {
        return hindiFOTunittestMarks;
    }

    public void setHindiFOTunittestMarks(int hindiFOTunittestMarks) {
        this.hindiFOTunittestMarks = hindiFOTunittestMarks;
    }

    public int getHindiFTassignMarks() {
        return hindiFTassignMarks;
    }

    public void setHindiFTassignMarks(int hindiFTassignMarks) {
        if(hindiFTassignMarks==-1){hindiFTassignMarks=0;}
        this.hindiFTassignMarks = hindiFTassignMarks;
    }

    public int getHindiFTtotalMarks() {
        return hindiFTtotalMarks;
    }

    public void setHindiFTtotalMarks(int hindiFTtotalMarks) {
        this.hindiFTtotalMarks = hindiFTtotalMarks;
    }

    public int getHindiFTunittestMarks() {
        return hindiFTunittestMarks;
    }

    public void setHindiFTunittestMarks(int hindiFTunittestMarks) {
        this.hindiFTunittestMarks = hindiFTunittestMarks;
    }

    public int getHindiHalfYearMarks() {
        return hindiHalfYearMarks;
    }

    public void setHindiHalfYearMarks(int hindiHalfYearMarks) {
        this.hindiHalfYearMarks = hindiHalfYearMarks;
    }

    public int getHindiQuarterHalfYearTotalMarks() {
        return hindiQuarterHalfYearTotalMarks;
    }

    public void setHindiQuarterHalfYearTotalMarks(int hindiQuarterHalfYearTotalMarks) {
        this.hindiQuarterHalfYearTotalMarks = hindiQuarterHalfYearTotalMarks;
    }

    public int getHindiQuarterHalfYearTotalPercentMarks() {
        return hindiQuarterHalfYearTotalPercentMarks;
    }

    public void setHindiQuarterHalfYearTotalPercentMarks(int hindiQuarterHalfYearTotalPercentMarks) {
        this.hindiQuarterHalfYearTotalPercentMarks = hindiQuarterHalfYearTotalPercentMarks;
    }

    public int getHindiQuarterMarks() {
        return hindiQuarterMarks;
    }

    public void setHindiQuarterMarks(int hindiQuarterMarks) {
        this.hindiQuarterMarks = hindiQuarterMarks;
    }

    public int getHindiSTassignMarks() {
        return hindiSTassignMarks;
    }

    public void setHindiSTassignMarks(int hindiSTassignMarks) {
        if(hindiSTassignMarks==-1){hindiSTassignMarks=0;}
        this.hindiSTassignMarks = hindiSTassignMarks;
    }

    public int getHindiSTtotalMarks() {
        return hindiSTtotalMarks;
    }

    public void setHindiSTtotalMarks(int hindiSTtotalMarks) {
        this.hindiSTtotalMarks = hindiSTtotalMarks;
    }

    public int getHindiSTunittestMarks() {
        return hindiSTunittestMarks;
    }

    public void setHindiSTunittestMarks(int hindiSTunittestMarks) {
        this.hindiSTunittestMarks = hindiSTunittestMarks;
    }

    public int getHindiTTassignMarks() {
        return hindiTTassignMarks;
    }

    public void setHindiTTassignMarks(int hindiTTassignMarks) {
        if(hindiTTassignMarks==-1){hindiTTassignMarks=0;}
        this.hindiTTassignMarks = hindiTTassignMarks;
    }

    public int getHindiTTtotalMarks() {
        return hindiTTtotalMarks;
    }

    public void setHindiTTtotalMarks(int hindiTTtotalMarks) {
        this.hindiTTtotalMarks = hindiTTtotalMarks;
    }

    public int getHindiTTunittestMarks() {
        return hindiTTunittestMarks;
    }

    public void setHindiTTunittestMarks(int hindiTTunittestMarks) {
        this.hindiTTunittestMarks = hindiTTunittestMarks;
    }

    public int getJanAttendedDay() {
        return janAttendedDay;
    }

    public void setJanAttendedDay(int janAttendedDay) {
        this.janAttendedDay = janAttendedDay;
    }

    public int getJanWorkingDay() {
        return janWorkingDay;
    }

    public void setJanWorkingDay(int janWorkingDay) {
        this.janWorkingDay = janWorkingDay;
    }

    public int getJulAttendedDay() {
        return julAttendedDay;
    }

    public void setJulAttendedDay(int julAttendedDay) {
        this.julAttendedDay = julAttendedDay;
    }

    public int getJulWorkingDay() {
        return julWorkingDay;
    }

    public void setJulWorkingDay(int julWorkingDay) {
        this.julWorkingDay = julWorkingDay;
    }

    public int getJunAttendedDay() {
        return junAttendedDay;
    }

    public void setJunAttendedDay(int junAttendedDay) {
        this.junAttendedDay = junAttendedDay;
    }

    public int getJunWorkingDay() {
        return junWorkingDay;
    }

    public void setJunWorkingDay(int junWorkingDay) {
        this.junWorkingDay = junWorkingDay;
    }

    public int getMarAttendedDay() {
        return marAttendedDay;
    }

    public void setMarAttendedDay(int marAttendedDay) {
        this.marAttendedDay = marAttendedDay;
    }

    public int getMarWorkingDay() {
        return marWorkingDay;
    }

    public void setMarWorkingDay(int marWorkingDay) {
        this.marWorkingDay = marWorkingDay;
    }

    public int getMathsAnnualMarks() {
        return mathsAnnualMarks;
    }

    public void setMathsAnnualMarks(int mathsAnnualMarks) {
        this.mathsAnnualMarks = mathsAnnualMarks;
    }

    public int getMathsAnnualPercentMarks() {
        return mathsAnnualPercentMarks;
    }

    public void setMathsAnnualPercentMarks(int mathsAnnualPercentMarks) {
        this.mathsAnnualPercentMarks = mathsAnnualPercentMarks;
    }

    public int getMathsAssignUnitTestTotalMarks() {
        return mathsAssignUnitTestTotalMarks;
    }

    public void setMathsAssignUnitTestTotalMarks(int mathsAssignUnitTestTotalMarks) {
        this.mathsAssignUnitTestTotalMarks = mathsAssignUnitTestTotalMarks;
    }

    public int getMathsAssignUnitTestTotalPercentMarks() {
        return mathsAssignUnitTestTotalPercentMarks;
    }

    public void setMathsAssignUnitTestTotalPercentMarks(int mathsAssignUnitTestTotalPercentMarks) {
        this.mathsAssignUnitTestTotalPercentMarks = mathsAssignUnitTestTotalPercentMarks;
    }

    public int getMathsFOTassignMarks() {
        return mathsFOTassignMarks;
    }

    public void setMathsFOTassignMarks(int mathsFOTassignMarks) {
        if(mathsFOTassignMarks==-1){mathsFOTassignMarks=0;}
        this.mathsFOTassignMarks = mathsFOTassignMarks;
    }

    public int getMathsFOTtotalMarks() {
        return mathsFOTtotalMarks;
    }

    public void setMathsFOTtotalMarks(int mathsFOTtotalMarks) {
        this.mathsFOTtotalMarks = mathsFOTtotalMarks;
    }

    public int getMathsFOTunittestMarks() {
        return mathsFOTunittestMarks;
    }

    public void setMathsFOTunittestMarks(int mathsFOTunittestMarks) {
        this.mathsFOTunittestMarks = mathsFOTunittestMarks;
    }

    public int getMathsFTassignMarks() {
        return mathsFTassignMarks;
    }

    public void setMathsFTassignMarks(int mathsFTassignMarks) {
        if(mathsFTassignMarks==-1){mathsFTassignMarks=0;}
        this.mathsFTassignMarks = mathsFTassignMarks;
    }

    public int getMathsFTtotalMarks() {
        return mathsFTtotalMarks;
    }

    public void setMathsFTtotalMarks(int mathsFTtotalMarks) {
        this.mathsFTtotalMarks = mathsFTtotalMarks;
    }

    public int getMathsFTunittestMarks() {
        return mathsFTunittestMarks;
    }

    public void setMathsFTunittestMarks(int mathsFTunittestMarks) {
        this.mathsFTunittestMarks = mathsFTunittestMarks;
    }

    public int getMathsHalfYearMarks() {
        return mathsHalfYearMarks;
    }

    public void setMathsHalfYearMarks(int mathsHalfYearMarks) {
        this.mathsHalfYearMarks = mathsHalfYearMarks;
    }

    public int getMathsQuarterHalfYearTotalMarks() {
        return mathsQuarterHalfYearTotalMarks;
    }

    public void setMathsQuarterHalfYearTotalMarks(int mathsQuarterHalfYearTotalMarks) {
        this.mathsQuarterHalfYearTotalMarks = mathsQuarterHalfYearTotalMarks;
    }

    public int getMathsQuarterHalfYearTotalPercentMarks() {
        return mathsQuarterHalfYearTotalPercentMarks;
    }

    public void setMathsQuarterHalfYearTotalPercentMarks(int mathsQuarterHalfYearTotalPercentMarks) {
        this.mathsQuarterHalfYearTotalPercentMarks = mathsQuarterHalfYearTotalPercentMarks;
    }

    public int getMathsQuarterMarks() {
        return mathsQuarterMarks;
    }

    public void setMathsQuarterMarks(int mathsQuarterMarks) {
        this.mathsQuarterMarks = mathsQuarterMarks;
    }

    public int getMathsSTassignMarks() {
        return mathsSTassignMarks;
    }

    public void setMathsSTassignMarks(int mathsSTassignMarks) {
        if(mathsSTassignMarks==-1){mathsSTassignMarks=0;}
        this.mathsSTassignMarks = mathsSTassignMarks;
    }

    public int getMathsSTtotalMarks() {
        return mathsSTtotalMarks;
    }

    public void setMathsSTtotalMarks(int mathsSTtotalMarks) {
        this.mathsSTtotalMarks = mathsSTtotalMarks;
    }

    public int getMathsSTunittestMarks() {
        return mathsSTunittestMarks;
    }

    public void setMathsSTunittestMarks(int mathsSTunittestMarks) {
        this.mathsSTunittestMarks = mathsSTunittestMarks;
    }

    public int getMathsTTassignMarks() {
        return mathsTTassignMarks;
    }

    public void setMathsTTassignMarks(int mathsTTassignMarks) {
        if(mathsTTassignMarks==-1){mathsTTassignMarks=0;}
        this.mathsTTassignMarks = mathsTTassignMarks;
    }

    public int getMathsTTtotalMarks() {
        return mathsTTtotalMarks;
    }

    public void setMathsTTtotalMarks(int mathsTTtotalMarks) {
        this.mathsTTtotalMarks = mathsTTtotalMarks;
    }

    public int getMathsTTunittestMarks() {
        return mathsTTunittestMarks;
    }

    public void setMathsTTunittestMarks(int mathsTTunittestMarks) {
        this.mathsTTunittestMarks = mathsTTunittestMarks;
    }

    public int getMayAttendedDay() {
        return mayAttendedDay;
    }

    public void setMayAttendedDay(int mayAttendedDay) {
        this.mayAttendedDay = mayAttendedDay;
    }

    public int getMayWorkingDay() {
        return mayWorkingDay;
    }

    public void setMayWorkingDay(int mayWorkingDay) {
        this.mayWorkingDay = mayWorkingDay;
    }

    public String getNameValue() {
        return nameValue;
    }

    public void setNameValue(String nameValue) {
        this.nameValue = nameValue;
    }

    public int getNoOfExamsAttendedValue() {
        return noOfExamsAttendedValue;
    }

    public void setNoOfExamsAttendedValue(int noOfExamsAttendedValue) {
        this.noOfExamsAttendedValue = noOfExamsAttendedValue;
    }

    public int getNoOfExamsConductedValue() {
        return noOfExamsConductedValue;
    }

    public void setNoOfExamsConductedValue(int noOfExamsConductedValue) {
        this.noOfExamsConductedValue = noOfExamsConductedValue;
    }

    public int getNoOfUTAttendedValue() {
        return noOfUTAttendedValue;
    }

    public void setNoOfUTAttendedValue(int noOfUTAttendedValue) {
        this.noOfUTAttendedValue = noOfUTAttendedValue;
    }

    public int getNoOfUTConductedValue() {
        return noOfUTConductedValue;
    }

    public void setNoOfUTConductedValue(int noOfUTConductedValue) {
        this.noOfUTConductedValue = noOfUTConductedValue;
    }

    public int getNovAttendedDay() {
        return novAttendedDay;
    }

    public void setNovAttendedDay(int novAttendedDay) {
        this.novAttendedDay = novAttendedDay;
    }

    public int getNovWorkingDay() {
        return novWorkingDay;
    }

    public void setNovWorkingDay(int novWorkingDay) {
        this.novWorkingDay = novWorkingDay;
    }

    public int getOctAttendedDay() {
        return octAttendedDay;
    }

    public void setOctAttendedDay(int octAttendedDay) {
        this.octAttendedDay = octAttendedDay;
    }

    public int getOctWorkingDay() {
        return octWorkingDay;
    }

    public void setOctWorkingDay(int octWorkingDay) {
        this.octWorkingDay = octWorkingDay;
    }

    public int getQuerterlyTotal() {
        return querterlyTotal;
    }

    public void setQuerterlyTotal(int querterlyTotal) {
        this.querterlyTotal = querterlyTotal;
    }

    public String getRollValue() {
        return rollValue;
    }

    public void setRollValue(String rollValue) {
        this.rollValue = rollValue;
    }

    public int getSecondTestTotal() {
        return secondTestTotal;
    }

    public void setSecondTestTotal(int secondTestTotal) {
        this.secondTestTotal = secondTestTotal;
    }

    public int getSeptAttendedDay() {
        return septAttendedDay;
    }

    public void setSeptAttendedDay(int septAttendedDay) {
        this.septAttendedDay = septAttendedDay;
    }

    public int getSeptWorkingDay() {
        return septWorkingDay;
    }

    public void setSeptWorkingDay(int septWorkingDay) {
        this.septWorkingDay = septWorkingDay;
    }

    public int getSocialScienceAnnualMarks() {
        return socialScienceAnnualMarks;
    }

    public void setSocialScienceAnnualMarks(int socialScienceAnnualMarks) {
        this.socialScienceAnnualMarks = socialScienceAnnualMarks;
    }

    public int getSocialScienceAnnualPercentMarks() {
        return socialScienceAnnualPercentMarks;
    }

    public void setSocialScienceAnnualPercentMarks(int socialScienceAnnualPercentMarks) {
        this.socialScienceAnnualPercentMarks = socialScienceAnnualPercentMarks;
    }

    public int getSocialScienceAssignUnitTestTotalMarks() {
        return socialScienceAssignUnitTestTotalMarks;
    }

    public void setSocialScienceAssignUnitTestTotalMarks(int socialScienceAssignUnitTestTotalMarks) {
        this.socialScienceAssignUnitTestTotalMarks = socialScienceAssignUnitTestTotalMarks;
    }

    public int getSocialScienceAssignUnitTestTotalPercentMarks() {
        return socialScienceAssignUnitTestTotalPercentMarks;
    }

    public void setSocialScienceAssignUnitTestTotalPercentMarks(int socialScienceAssignUnitTestTotalPercentMarks) {
        this.socialScienceAssignUnitTestTotalPercentMarks = socialScienceAssignUnitTestTotalPercentMarks;
    }

    public int getSocialScienceFOTassignMarks() {
        return socialScienceFOTassignMarks;
    }

    public void setSocialScienceFOTassignMarks(int socialScienceFOTassignMarks) {
        if(socialScienceFOTassignMarks==-1){socialScienceFOTassignMarks=0;}
        this.socialScienceFOTassignMarks = socialScienceFOTassignMarks;
    }

    public int getSocialScienceFOTtotalMarks() {
        return socialScienceFOTtotalMarks;
    }

    public void setSocialScienceFOTtotalMarks(int socialScienceFOTtotalMarks) {
        this.socialScienceFOTtotalMarks = socialScienceFOTtotalMarks;
    }

    public int getSocialScienceFOTunittestMarks() {
        return socialScienceFOTunittestMarks;
    }

    public void setSocialScienceFOTunittestMarks(int socialScienceFOTunittestMarks) {
        this.socialScienceFOTunittestMarks = socialScienceFOTunittestMarks;
    }

    public int getSocialScienceFTassignMarks() {
        return socialScienceFTassignMarks;
    }

    public void setSocialScienceFTassignMarks(int socialScienceFTassignMarks) {
        if(socialScienceFTassignMarks==-1){socialScienceFTassignMarks=0;}
        this.socialScienceFTassignMarks = socialScienceFTassignMarks;
    }

    public int getSocialScienceFTtotalMarks() {
        return socialScienceFTtotalMarks;
    }

    public void setSocialScienceFTtotalMarks(int socialScienceFTtotalMarks) {
        this.socialScienceFTtotalMarks = socialScienceFTtotalMarks;
    }

    public int getSocialScienceFTunittestMarks() {
        return socialScienceFTunittestMarks;
    }

    public void setSocialScienceFTunittestMarks(int socialScienceFTunittestMarks) {
        this.socialScienceFTunittestMarks = socialScienceFTunittestMarks;
    }

    public int getSocialScienceHalfYearMarks() {
        return socialScienceHalfYearMarks;
    }

    public void setSocialScienceHalfYearMarks(int socialScienceHalfYearMarks) {
        this.socialScienceHalfYearMarks = socialScienceHalfYearMarks;
    }

    public int getSocialScienceQuarterHalfYearTotalMarks() {
        return socialScienceQuarterHalfYearTotalMarks;
    }

    public void setSocialScienceQuarterHalfYearTotalMarks(int socialScienceQuarterHalfYearTotalMarks) {
        this.socialScienceQuarterHalfYearTotalMarks = socialScienceQuarterHalfYearTotalMarks;
    }

    public int getSocialScienceQuarterHalfYearTotalPercentMarks() {
        return socialScienceQuarterHalfYearTotalPercentMarks;
    }

    public void setSocialScienceQuarterHalfYearTotalPercentMarks(int socialScienceQuarterHalfYearTotalPercentMarks) {
        this.socialScienceQuarterHalfYearTotalPercentMarks = socialScienceQuarterHalfYearTotalPercentMarks;
    }

    public int getSocialScienceQuarterMarks() {
        return socialScienceQuarterMarks;
    }

    public void setSocialScienceQuarterMarks(int socialScienceQuarterMarks) {
        this.socialScienceQuarterMarks = socialScienceQuarterMarks;
    }

    public int getSocialScienceSTassignMarks() {
        return socialScienceSTassignMarks;
    }

    public void setSocialScienceSTassignMarks(int socialScienceSTassignMarks) {
        if(socialScienceSTassignMarks==-1){socialScienceSTassignMarks=0;}
        this.socialScienceSTassignMarks = socialScienceSTassignMarks;
    }

    public int getSocialScienceSTtotalMarks() {
        return socialScienceSTtotalMarks;
    }

    public void setSocialScienceSTtotalMarks(int socialScienceSTtotalMarks) {
        this.socialScienceSTtotalMarks = socialScienceSTtotalMarks;
    }

    public int getSocialScienceSTunittestMarks() {
        return socialScienceSTunittestMarks;
    }

    public void setSocialScienceSTunittestMarks(int socialScienceSTunittestMarks) {
        this.socialScienceSTunittestMarks = socialScienceSTunittestMarks;
    }

    public int getSocialScienceTTassignMarks() {
        return socialScienceTTassignMarks;
    }

    public void setSocialScienceTTassignMarks(int socialScienceTTassignMarks) {
        if(socialScienceTTassignMarks==-1){socialScienceTTassignMarks=0;}
        this.socialScienceTTassignMarks = socialScienceTTassignMarks;
    }

    public int getSocialScienceTTtotalMarks() {
        return socialScienceTTtotalMarks;
    }

    public void setSocialScienceTTtotalMarks(int socialScienceTTtotalMarks) {
        this.socialScienceTTtotalMarks = socialScienceTTtotalMarks;
    }

    public int getSocialScienceTTunittestMarks() {
        return socialScienceTTunittestMarks;
    }

    public void setSocialScienceTTunittestMarks(int socialScienceTTunittestMarks) {
        this.socialScienceTTunittestMarks = socialScienceTTunittestMarks;
    }

    public int getTeleguUrduAnnualMarks() {
        return teleguUrduAnnualMarks;
    }

    public void setTeleguUrduAnnualMarks(int teleguUrduAnnualMarks) {
        this.teleguUrduAnnualMarks = teleguUrduAnnualMarks;
    }

    public int getTeleguUrduAnnualPercentMarks() {
        return teleguUrduAnnualPercentMarks;
    }

    public void setTeleguUrduAnnualPercentMarks(int teleguUrduAnnualPercentMarks) {
        this.teleguUrduAnnualPercentMarks = teleguUrduAnnualPercentMarks;
    }

    public int getTeleguUrduAssignUnitTestTotalMarks() {
        return teleguUrduAssignUnitTestTotalMarks;
    }

    public void setTeleguUrduAssignUnitTestTotalMarks(int teleguUrduAssignUnitTestTotalMarks) {
        this.teleguUrduAssignUnitTestTotalMarks = teleguUrduAssignUnitTestTotalMarks;
    }

    public int getTeleguUrduAssignUnitTestTotalPercentMarks() {
        return teleguUrduAssignUnitTestTotalPercentMarks;
    }

    public void setTeleguUrduAssignUnitTestTotalPercentMarks(int teleguUrduAssignUnitTestTotalPercentMarks) {
        this.teleguUrduAssignUnitTestTotalPercentMarks = teleguUrduAssignUnitTestTotalPercentMarks;
    }

    public int getTeleguUrduFOTassignMarks() {
        return teleguUrduFOTassignMarks;
    }

    public void setTeleguUrduFOTassignMarks(int teleguUrduFOTassignMarks) {
        if(teleguUrduFOTassignMarks==-1){teleguUrduFOTassignMarks=0;}
        this.teleguUrduFOTassignMarks = teleguUrduFOTassignMarks;
    }

    public int getTeleguUrduFOTtotalMarks() {
        return teleguUrduFOTtotalMarks;
    }

    public void setTeleguUrduFOTtotalMarks(int teleguUrduFOTtotalMarks) {
        this.teleguUrduFOTtotalMarks = teleguUrduFOTtotalMarks;
    }

    public int getTeleguUrduFOTunittestMarks() {
        return teleguUrduFOTunittestMarks;
    }

    public void setTeleguUrduFOTunittestMarks(int teleguUrduFOTunittestMarks) {
        this.teleguUrduFOTunittestMarks = teleguUrduFOTunittestMarks;
    }

    public int getTeleguUrduFTassignMarks() {
        return teleguUrduFTassignMarks;
    }

    public void setTeleguUrduFTassignMarks(int teleguUrduFTassignMarks) {
        if(teleguUrduFTassignMarks==-1){teleguUrduFTassignMarks=0;}
        this.teleguUrduFTassignMarks = teleguUrduFTassignMarks;
    }

    public int getTeleguUrduFTtotalMarks() {
        return teleguUrduFTtotalMarks;
    }

    public void setTeleguUrduFTtotalMarks(int teleguUrduFTtotalMarks) {
        this.teleguUrduFTtotalMarks = teleguUrduFTtotalMarks;
    }

    public int getTeleguUrduFTunittestMarks() {
        return teleguUrduFTunittestMarks;
    }

    public void setTeleguUrduFTunittestMarks(int teleguUrduFTunittestMarks) {
        this.teleguUrduFTunittestMarks = teleguUrduFTunittestMarks;
    }

    public int getTeleguUrduHalfYearMarks() {
        return teleguUrduHalfYearMarks;
    }

    public void setTeleguUrduHalfYearMarks(int teleguUrduHalfYearMarks) {
        this.teleguUrduHalfYearMarks = teleguUrduHalfYearMarks;
    }

    public int getTeleguUrduQuarterHalfYearTotalMarks() {
        return teleguUrduQuarterHalfYearTotalMarks;
    }

    public void setTeleguUrduQuarterHalfYearTotalMarks(int teleguUrduQuarterHalfYearTotalMarks) {
        this.teleguUrduQuarterHalfYearTotalMarks = teleguUrduQuarterHalfYearTotalMarks;
    }

    public int getTeleguUrduQuarterHalfYearTotalPercentMarks() {
        return teleguUrduQuarterHalfYearTotalPercentMarks;
    }

    public void setTeleguUrduQuarterHalfYearTotalPercentMarks(int teleguUrduQuarterHalfYearTotalPercentMarks) {
        this.teleguUrduQuarterHalfYearTotalPercentMarks = teleguUrduQuarterHalfYearTotalPercentMarks;
    }

    public int getTeleguUrduQuarterMarks() {
        return teleguUrduQuarterMarks;
    }

    public void setTeleguUrduQuarterMarks(int teleguUrduQuarterMarks) {
        this.teleguUrduQuarterMarks = teleguUrduQuarterMarks;
    }

    public int getTeleguUrduSTassignMarks() {
        return teleguUrduSTassignMarks;
    }

    public void setTeleguUrduSTassignMarks(int teleguUrduSTassignMarks) {
        if(teleguUrduSTassignMarks==-1){teleguUrduSTassignMarks=0;}
        this.teleguUrduSTassignMarks = teleguUrduSTassignMarks;
    }

    public int getTeleguUrduSTtotalMarks() {
        return teleguUrduSTtotalMarks;
    }

    public void setTeleguUrduSTtotalMarks(int teleguUrduSTtotalMarks) {
        this.teleguUrduSTtotalMarks = teleguUrduSTtotalMarks;
    }

    public int getTeleguUrduSTunittestMarks() {
        return teleguUrduSTunittestMarks;
    }

    public void setTeleguUrduSTunittestMarks(int teleguUrduSTunittestMarks) {
        this.teleguUrduSTunittestMarks = teleguUrduSTunittestMarks;
    }

    public int getTeleguUrduTTassignMarks() {
        return teleguUrduTTassignMarks;
    }

    public void setTeleguUrduTTassignMarks(int teleguUrduTTassignMarks) {
        if(teleguUrduTTassignMarks==-1){teleguUrduTTassignMarks=0;}
        this.teleguUrduTTassignMarks = teleguUrduTTassignMarks;
    }

    public int getTeleguUrduTTtotalMarks() {
        return teleguUrduTTtotalMarks;
    }

    public void setTeleguUrduTTtotalMarks(int teleguUrduTTtotalMarks) {
        this.teleguUrduTTtotalMarks = teleguUrduTTtotalMarks;
    }

    public int getTeleguUrduTTunittestMarks() {
        return teleguUrduTTunittestMarks;
    }

    public void setTeleguUrduTTunittestMarks(int teleguUrduTTunittestMarks) {
        this.teleguUrduTTunittestMarks = teleguUrduTTunittestMarks;
    }

    public int getThirdTestTotal() {
        return thirdTestTotal;
    }

    public void setThirdTestTotal(int thirdTestTotal) {
        this.thirdTestTotal = thirdTestTotal;
    }

    public int getTotalAttendedDay() {
        return totalAttendedDay;
    }

    public void setTotalAttendedDay(int totalAttendedDay) {
        this.totalAttendedDay = totalAttendedDay;
    }

    public int getTotalWorkingDay() {
        return totalWorkingDay;
    }

    public void setTotalWorkingDay(int totalWorkingDay) {
        this.totalWorkingDay = totalWorkingDay;
    }

    public int getEnglishFinalreslt() {
        return englishFinalreslt;
    }

    public void setEnglishFinalreslt(int englishFinalreslt) {
        this.englishFinalreslt = englishFinalreslt;
    }

    public int getGeneralScienceFinalResult() {
        return generalScienceFinalResult;
    }

    public void setGeneralScienceFinalResult(int generalScienceFinalResult) {
        this.generalScienceFinalResult = generalScienceFinalResult;
    }

    public int getHindiFinalResult() {
        return hindiFinalResult;
    }

    public void setHindiFinalResult(int hindiFinalResult) {
        this.hindiFinalResult = hindiFinalResult;
    }

    public int getMathsFinalResult() {
        return mathsFinalResult;
    }

    public void setMathsFinalResult(int mathsFinalResult) {
        this.mathsFinalResult = mathsFinalResult;
    }

    public int getSocialScienceFinalResult() {
        return socialScienceFinalResult;
    }

    public void setSocialScienceFinalResult(int socialScienceFinalResult) {
        this.socialScienceFinalResult = socialScienceFinalResult;
    }

    public int getTeleguUrduFinalResult() {
        return teleguUrduFinalResult;
    }

    public void setTeleguUrduFinalResult(int teleguUrduFinalResult) {
        this.teleguUrduFinalResult = teleguUrduFinalResult;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
