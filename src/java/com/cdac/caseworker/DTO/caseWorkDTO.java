/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.DTO;

import com.cdac.usermanagement.ORM.HomeDetails;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Vinumol
 */
public class caseWorkDTO 
{
    
    private String childName;
    private String childSurname;
    private String religion;
    private String caste;
    private String subcaste;
    private Integer age;
    private Date dob;
    private String childProfileId;

    private String fatherName;
    private String fatherOccup;
    private String motherName;
    private String motherOccup;
    private Integer noBrothers;
    private Integer noSister;
   
    private String languagesKnown;
    private String addrParents;
    private String intrRelatives;
    private String eduStatus;
    private String identifiedProblemsChild;
    private String homeAddress;
    private String homeName;
    private String homeAddrMat;
List<HomeDetails>hdlist=new ArrayList<HomeDetails>();

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }
    
    
    public String getChildProfileId() 
    {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) 
    {
        this.childProfileId = childProfileId;
    }
    public List<HomeDetails> getHdlist() 
    {
        return hdlist;
    }

    public void setHdlist(List<HomeDetails> hdlist) {
        this.hdlist = hdlist;
    }

    
    public Integer getNoBrothers() 
    {
        return noBrothers;
    }

    public void setNoBrothers(Integer noBrothers) 
    {
        this.noBrothers = noBrothers;
    }

    public Integer getNoSister() 
    {
        return noSister;
    }
    public void setNoSister(Integer noSister) 
    {
        this.noSister = noSister;
    }
    public Integer getAge() 
    {
        return age;
    }

    public void setAge(Integer age) 
    {
        this.age = age;
    }

    public Date getDob() 
    {
        return dob;
    }

    public void setDob(Date dob) 
    {
        this.dob = dob;
    }
    
    public String getAddrParents() 
    {
        return addrParents;
    }

    public void setAddrParents(String addrParents) 
    {
        this.addrParents = addrParents;
    }

   

    public String getCaste() 
    {
        return caste;
    }

    public void setCaste(String caste) 
    {
        this.caste = caste;
    }

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public String getChildSurname() {
        return childSurname;
    }

    public void setChildSurname(String childSurname) {
        this.childSurname = childSurname;
    }

   
    public String getEduStatus() {
        return eduStatus;
    }

    public void setEduStatus(String eduStatus) {
        this.eduStatus = eduStatus;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getFatherOccup() {
        return fatherOccup;
    }

    public void setFatherOccup(String fatherOccup) {
        this.fatherOccup = fatherOccup;
    }

    public String getIdentifiedProblemsChild() {
        return identifiedProblemsChild;
    }

    public void setIdentifiedProblemsChild(String identifiedProblemsChild) {
        this.identifiedProblemsChild = identifiedProblemsChild;
    }

    public String getIntrRelatives() {
        return intrRelatives;
    }

    public void setIntrRelatives(String intrRelatives) {
        this.intrRelatives = intrRelatives;
    }

    public String getLanguagesKnown() {
        return languagesKnown;
    }

    public void setLanguagesKnown(String languagesKnown) {
        this.languagesKnown = languagesKnown;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getMotherOccup() {
        return motherOccup;
    }

    public void setMotherOccup(String motherOccup) {
        this.motherOccup = motherOccup;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getSubcaste() {
        return subcaste;
    }

    public void setSubcaste(String subcaste) {
        this.subcaste = subcaste;
    }

    public String getHomeName() {
        return homeName;
    }

    public void setHomeName(String homeName) {
        this.homeName = homeName;
    }

    public String getHomeAddrMat() {
        return homeAddrMat;
    }

    public void setHomeAddrMat(String homeAddrMat) {
        this.homeAddrMat = homeAddrMat;
    }
    
    
}
