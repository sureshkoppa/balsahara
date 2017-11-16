/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "vocational_details", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VocationalDetails.findAll", query = "SELECT v FROM VocationalDetails v"),
    @NamedQuery(name = "VocationalDetails.findByHomeId", query = "SELECT v FROM VocationalDetails v WHERE v.homeId = :homeId"),
    @NamedQuery(name = "VocationalDetails.findByChildProfileId", query = "SELECT v FROM VocationalDetails v WHERE v.vocationalDetailsPK.childProfileId = :childProfileId"),
    @NamedQuery(name = "VocationalDetails.findByNoOfDaysTrains", query = "SELECT v FROM VocationalDetails v WHERE v.noOfDaysTrains = :noOfDaysTrains"),
    @NamedQuery(name = "VocationalDetails.findByTrainedBy", query = "SELECT v FROM VocationalDetails v WHERE v.trainedBy = :trainedBy"),
    @NamedQuery(name = "VocationalDetails.findByPostTrainingAssesment", query = "SELECT v FROM VocationalDetails v WHERE v.postTrainingAssesment = :postTrainingAssesment"),
    @NamedQuery(name = "VocationalDetails.findByVocCourseId", query = "SELECT v FROM VocationalDetails v WHERE v.vocationalDetailsPK.vocCourseId = :vocCourseId")})
public class VocationalDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected VocationalDetailsPK vocationalDetailsPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "NO_OF_DAYS_TRAINS", nullable = false)
    private int noOfDaysTrains;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "TRAINED_BY", nullable = false, length = 50)
    private String trainedBy;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "POST_TRAINING_ASSESMENT", nullable = false, length = 20)
    private String postTrainingAssesment;
    @JoinColumn(name = "VOC_COURSE_ID", referencedColumnName = "VOC_COURSE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private VocationalMaster vocationalMaster;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private ChildMaster childMaster;

    public VocationalDetails() {
    }

    public VocationalDetails(VocationalDetailsPK vocationalDetailsPK) {
        this.vocationalDetailsPK = vocationalDetailsPK;
    }

    public VocationalDetails(VocationalDetailsPK vocationalDetailsPK, String homeId, int noOfDaysTrains, String trainedBy, String postTrainingAssesment) {
        this.vocationalDetailsPK = vocationalDetailsPK;
        this.homeId = homeId;
        this.noOfDaysTrains = noOfDaysTrains;
        this.trainedBy = trainedBy;
        this.postTrainingAssesment = postTrainingAssesment;
    }

    public VocationalDetails(String childProfileId, int vocCourseId) {
        this.vocationalDetailsPK = new VocationalDetailsPK(childProfileId, vocCourseId);
    }

    public VocationalDetailsPK getVocationalDetailsPK() {
        return vocationalDetailsPK;
    }

    public void setVocationalDetailsPK(VocationalDetailsPK vocationalDetailsPK) {
        this.vocationalDetailsPK = vocationalDetailsPK;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public int getNoOfDaysTrains() {
        return noOfDaysTrains;
    }

    public void setNoOfDaysTrains(int noOfDaysTrains) {
        this.noOfDaysTrains = noOfDaysTrains;
    }

    public String getTrainedBy() {
        return trainedBy;
    }

    public void setTrainedBy(String trainedBy) {
        this.trainedBy = trainedBy;
    }

    public String getPostTrainingAssesment() {
        return postTrainingAssesment;
    }

    public void setPostTrainingAssesment(String postTrainingAssesment) {
        this.postTrainingAssesment = postTrainingAssesment;
    }

    public VocationalMaster getVocationalMaster() {
        return vocationalMaster;
    }

    public void setVocationalMaster(VocationalMaster vocationalMaster) {
        this.vocationalMaster = vocationalMaster;
    }

    public ChildMaster getChildMaster() {
        return childMaster;
    }

    public void setChildMaster(ChildMaster childMaster) {
        this.childMaster = childMaster;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vocationalDetailsPK != null ? vocationalDetailsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VocationalDetails)) {
            return false;
        }
        VocationalDetails other = (VocationalDetails) object;
        if ((this.vocationalDetailsPK == null && other.vocationalDetailsPK != null) || (this.vocationalDetailsPK != null && !this.vocationalDetailsPK.equals(other.vocationalDetailsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.VocationalDetails[ vocationalDetailsPK=" + vocationalDetailsPK + " ]";
    }
    
}
