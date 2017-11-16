/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.headmaster.DTO;

/**
 *
 * @author ANUPAM
 */
public class VocationalAssesmentDTO {
    
    private String childProfileId;
    private String nameOfTheChild;
    private int noOfDaysTrained;
    private String sectionOfTraining;
    private String trainedBy;
    private String postTrainingAssesment;
    

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getNameOfTheChild() {
        return nameOfTheChild;
    }

    public void setNameOfTheChild(String nameOfTheChild) {
        this.nameOfTheChild = nameOfTheChild;
    }

    public int getNoOfDaysTrained() {
        return noOfDaysTrained;
    }

    public void setNoOfDaysTrained(int noOfDaysTrained) {
        this.noOfDaysTrained = noOfDaysTrained;
    }

    public String getPostTrainingAssesment() {
        return postTrainingAssesment;
    }

    public void setPostTrainingAssesment(String postTrainingAssesment) {
        this.postTrainingAssesment = postTrainingAssesment;
    }

    public String getSectionOfTraining() {
        return sectionOfTraining;
    }

    public void setSectionOfTraining(String sectionOfTraining) {
        this.sectionOfTraining = sectionOfTraining;
    }

    public String getTrainedBy() {
        return trainedBy;
    }

    public void setTrainedBy(String trainedBy) {
        this.trainedBy = trainedBy;
    }
    
    
    
    
}
