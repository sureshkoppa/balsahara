/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "icp_personal_details", catalog = "child_homes", schema = "")
@NamedQueries({
    @NamedQuery(name = "IcpPersonalDetails.findAll", query = "SELECT i FROM IcpPersonalDetails i"),
    @NamedQuery(name = "IcpPersonalDetails.findByChildProfileId", query = "SELECT i FROM IcpPersonalDetails i WHERE i.childProfileId = :childProfileId"),
    @NamedQuery(name = "IcpPersonalDetails.findByFirstName", query = "SELECT i FROM IcpPersonalDetails i WHERE i.firstName = :firstName"),
    @NamedQuery(name = "IcpPersonalDetails.findByLastName", query = "SELECT i FROM IcpPersonalDetails i WHERE i.lastName = :lastName"),
    @NamedQuery(name = "IcpPersonalDetails.findByAge", query = "SELECT i FROM IcpPersonalDetails i WHERE i.age = :age"),
    @NamedQuery(name = "IcpPersonalDetails.findBySex", query = "SELECT i FROM IcpPersonalDetails i WHERE i.sex = :sex"),
    @NamedQuery(name = "IcpPersonalDetails.findByFatherName", query = "SELECT i FROM IcpPersonalDetails i WHERE i.fatherName = :fatherName"),
    @NamedQuery(name = "IcpPersonalDetails.findByMotherName", query = "SELECT i FROM IcpPersonalDetails i WHERE i.motherName = :motherName"),
    @NamedQuery(name = "IcpPersonalDetails.findByNationality", query = "SELECT i FROM IcpPersonalDetails i WHERE i.nationality = :nationality"),
    @NamedQuery(name = "IcpPersonalDetails.findByReligion", query = "SELECT i FROM IcpPersonalDetails i WHERE i.religion = :religion"),
    @NamedQuery(name = "IcpPersonalDetails.findByCaste", query = "SELECT i FROM IcpPersonalDetails i WHERE i.caste = :caste"),
    @NamedQuery(name = "IcpPersonalDetails.findBySubcaste", query = "SELECT i FROM IcpPersonalDetails i WHERE i.subcaste = :subcaste"),
    @NamedQuery(name = "IcpPersonalDetails.findByEducationAttainment", query = "SELECT i FROM IcpPersonalDetails i WHERE i.educationAttainment = :educationAttainment")})
public class IcpPersonalDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 210)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 210)
    private String childProfileId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 525)
    @Column(name = "FIRST_NAME", nullable = false, length = 525)
    private String firstName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 525)
    @Column(name = "LAST_NAME", nullable = false, length = 525)
    private String lastName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "AGE", nullable = false)
    private int age;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "SEX", nullable = false, length = 10)
    private String sex;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 525)
    @Column(name = "FATHER_NAME", nullable = false, length = 525)
    private String fatherName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 525)
    @Column(name = "MOTHER_NAME", nullable = false, length = 525)
    private String motherName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 140)
    @Column(name = "NATIONALITY", nullable = false, length = 140)
    private String nationality;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 210)
    @Column(name = "RELIGION", nullable = false, length = 210)
    private String religion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 210)
    @Column(name = "CASTE", nullable = false, length = 210)
    private String caste;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 210)
    @Column(name = "SUBCASTE", nullable = false, length = 210)
    private String subcaste;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1785)
    @Column(name = "EDUCATION_ATTAINMENT", nullable = false, length = 1785)
    private String educationAttainment;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "HEALTH_NEEDS", nullable = false, length = 65535)
    private String healthNeeds;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "EMO_TRAIN_NEEDS", nullable = false, length = 65535)
    private String emoTrainNeeds;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "LEA_CREATE_PLAY", nullable = false, length = 65535)
    private String leaCreatePlay;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "ATTACH_RELATION", nullable = false, length = 65535)
    private String attachRelation;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "RELIG_BELIEFS", nullable = false, length = 65535)
    private String religBeliefs;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "PROTECT_NEGL_MALT", nullable = false, length = 65535)
    private String protectNeglMalt;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "SOCIAL_MAIN_STREAM", nullable = false, length = 65535)
    private String socialMainStream;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "FOLLOWUP_POST_REL", nullable = false, length = 65535)
    private String followupPostRel;
    @JoinColumn(name = "CHILD_PROFILE_ID", referencedColumnName = "CHILD_PROFILE_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private ChildMaster childMaster;

    public IcpPersonalDetails() {
    }

    public IcpPersonalDetails(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public IcpPersonalDetails(String childProfileId, String firstName, String lastName, int age, String sex, String fatherName, String motherName, String nationality, String religion, String caste, String subcaste, String educationAttainment, String healthNeeds, String emoTrainNeeds, String leaCreatePlay, String attachRelation, String religBeliefs, String protectNeglMalt, String socialMainStream, String followupPostRel) {
        this.childProfileId = childProfileId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.sex = sex;
        this.fatherName = fatherName;
        this.motherName = motherName;
        this.nationality = nationality;
        this.religion = religion;
        this.caste = caste;
        this.subcaste = subcaste;
        this.educationAttainment = educationAttainment;
        this.healthNeeds = healthNeeds;
        this.emoTrainNeeds = emoTrainNeeds;
        this.leaCreatePlay = leaCreatePlay;
        this.attachRelation = attachRelation;
        this.religBeliefs = religBeliefs;
        this.protectNeglMalt = protectNeglMalt;
        this.socialMainStream = socialMainStream;
        this.followupPostRel = followupPostRel;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getCaste() {
        return caste;
    }

    public void setCaste(String caste) {
        this.caste = caste;
    }

    public String getSubcaste() {
        return subcaste;
    }

    public void setSubcaste(String subcaste) {
        this.subcaste = subcaste;
    }

    public String getEducationAttainment() {
        return educationAttainment;
    }

    public void setEducationAttainment(String educationAttainment) {
        this.educationAttainment = educationAttainment;
    }

    public String getHealthNeeds() {
        return healthNeeds;
    }

    public void setHealthNeeds(String healthNeeds) {
        this.healthNeeds = healthNeeds;
    }

    public String getEmoTrainNeeds() {
        return emoTrainNeeds;
    }

    public void setEmoTrainNeeds(String emoTrainNeeds) {
        this.emoTrainNeeds = emoTrainNeeds;
    }

    public String getLeaCreatePlay() {
        return leaCreatePlay;
    }

    public void setLeaCreatePlay(String leaCreatePlay) {
        this.leaCreatePlay = leaCreatePlay;
    }

    public String getAttachRelation() {
        return attachRelation;
    }

    public void setAttachRelation(String attachRelation) {
        this.attachRelation = attachRelation;
    }

    public String getReligBeliefs() {
        return religBeliefs;
    }

    public void setReligBeliefs(String religBeliefs) {
        this.religBeliefs = religBeliefs;
    }

    public String getProtectNeglMalt() {
        return protectNeglMalt;
    }

    public void setProtectNeglMalt(String protectNeglMalt) {
        this.protectNeglMalt = protectNeglMalt;
    }

    public String getSocialMainStream() {
        return socialMainStream;
    }

    public void setSocialMainStream(String socialMainStream) {
        this.socialMainStream = socialMainStream;
    }

    public String getFollowupPostRel() {
        return followupPostRel;
    }

    public void setFollowupPostRel(String followupPostRel) {
        this.followupPostRel = followupPostRel;
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
        hash += (childProfileId != null ? childProfileId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof IcpPersonalDetails)) {
            return false;
        }
        IcpPersonalDetails other = (IcpPersonalDetails) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.IcpPersonalDetails[ childProfileId=" + childProfileId + " ]";
    }
    
}
