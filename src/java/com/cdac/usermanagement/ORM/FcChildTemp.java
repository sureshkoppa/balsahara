/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author suresh
 */
@Entity
@Table(name = "fc_child_temp", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FcChildTemp.findAll", query = "SELECT f FROM FcChildTemp f")
    , @NamedQuery(name = "FcChildTemp.findById", query = "SELECT f FROM FcChildTemp f WHERE f.id = :id")
    , @NamedQuery(name = "FcChildTemp.findByProfileId", query = "SELECT f FROM FcChildTemp f WHERE f.profileId = :profileId")
    , @NamedQuery(name = "FcChildTemp.findByFirstName", query = "SELECT f FROM FcChildTemp f WHERE f.firstName = :firstName")
    , @NamedQuery(name = "FcChildTemp.findByFatherName", query = "SELECT f FROM FcChildTemp f WHERE f.fatherName = :fatherName")
    , @NamedQuery(name = "FcChildTemp.findByMotherName", query = "SELECT f FROM FcChildTemp f WHERE f.motherName = :motherName")
    , @NamedQuery(name = "FcChildTemp.findByGender", query = "SELECT f FROM FcChildTemp f WHERE f.gender = :gender")
    , @NamedQuery(name = "FcChildTemp.findByIdentificationmarks", query = "SELECT f FROM FcChildTemp f WHERE f.identificationmarks = :identificationmarks")
    , @NamedQuery(name = "FcChildTemp.findByAgeofchild", query = "SELECT f FROM FcChildTemp f WHERE f.ageofchild = :ageofchild")
    , @NamedQuery(name = "FcChildTemp.findByChildnature", query = "SELECT f FROM FcChildTemp f WHERE f.childnature = :childnature")
    , @NamedQuery(name = "FcChildTemp.findByDisabled", query = "SELECT f FROM FcChildTemp f WHERE f.disabled = :disabled")
    , @NamedQuery(name = "FcChildTemp.findByNatureofdisablilty", query = "SELECT f FROM FcChildTemp f WHERE f.natureofdisablilty = :natureofdisablilty")
    , @NamedQuery(name = "FcChildTemp.findByReligion", query = "SELECT f FROM FcChildTemp f WHERE f.religion = :religion")
    , @NamedQuery(name = "FcChildTemp.findByReligionothers", query = "SELECT f FROM FcChildTemp f WHERE f.religionothers = :religionothers")
    , @NamedQuery(name = "FcChildTemp.findByCaste", query = "SELECT f FROM FcChildTemp f WHERE f.caste = :caste")
    , @NamedQuery(name = "FcChildTemp.findBySubcaste", query = "SELECT f FROM FcChildTemp f WHERE f.subcaste = :subcaste")
    , @NamedQuery(name = "FcChildTemp.findByFatheroccupation", query = "SELECT f FROM FcChildTemp f WHERE f.fatheroccupation = :fatheroccupation")
    , @NamedQuery(name = "FcChildTemp.findByMotheroccupation", query = "SELECT f FROM FcChildTemp f WHERE f.motheroccupation = :motheroccupation")
    , @NamedQuery(name = "FcChildTemp.findByNoofbrothers", query = "SELECT f FROM FcChildTemp f WHERE f.noofbrothers = :noofbrothers")
    , @NamedQuery(name = "FcChildTemp.findByNoofsisters", query = "SELECT f FROM FcChildTemp f WHERE f.noofsisters = :noofsisters")
    , @NamedQuery(name = "FcChildTemp.findByLanguagesknown", query = "SELECT f FROM FcChildTemp f WHERE f.languagesknown = :languagesknown")
    , @NamedQuery(name = "FcChildTemp.findByAddofparents", query = "SELECT f FROM FcChildTemp f WHERE f.addofparents = :addofparents")
    , @NamedQuery(name = "FcChildTemp.findByEducation", query = "SELECT f FROM FcChildTemp f WHERE f.education = :education")
    , @NamedQuery(name = "FcChildTemp.findByDetailsofbelongs", query = "SELECT f FROM FcChildTemp f WHERE f.detailsofbelongs = :detailsofbelongs")
    , @NamedQuery(name = "FcChildTemp.findByIdentifiedproblms", query = "SELECT f FROM FcChildTemp f WHERE f.identifiedproblms = :identifiedproblms")
    , @NamedQuery(name = "FcChildTemp.findByPlacefound", query = "SELECT f FROM FcChildTemp f WHERE f.placefound = :placefound")
    , @NamedQuery(name = "FcChildTemp.findByAdmittedby", query = "SELECT f FROM FcChildTemp f WHERE f.admittedby = :admittedby")
    , @NamedQuery(name = "FcChildTemp.findByDate", query = "SELECT f FROM FcChildTemp f WHERE f.date = :date")
    , @NamedQuery(name = "FcChildTemp.findByDpcudetails", query = "SELECT f FROM FcChildTemp f WHERE f.dpcudetails = :dpcudetails")
    , @NamedQuery(name = "FcChildTemp.findByChildlabour", query = "SELECT f FROM FcChildTemp f WHERE f.childlabour = :childlabour")
    , @NamedQuery(name = "FcChildTemp.findByLabourtype", query = "SELECT f FROM FcChildTemp f WHERE f.labourtype = :labourtype")
    , @NamedQuery(name = "FcChildTemp.findByLabourworkplace", query = "SELECT f FROM FcChildTemp f WHERE f.labourworkplace = :labourworkplace")
    , @NamedQuery(name = "FcChildTemp.findByLabourworkcarriedout", query = "SELECT f FROM FcChildTemp f WHERE f.labourworkcarriedout = :labourworkcarriedout")
    , @NamedQuery(name = "FcChildTemp.findByLaboursalary", query = "SELECT f FROM FcChildTemp f WHERE f.laboursalary = :laboursalary")
    , @NamedQuery(name = "FcChildTemp.findByAuthorizedname", query = "SELECT f FROM FcChildTemp f WHERE f.authorizedname = :authorizedname")
    , @NamedQuery(name = "FcChildTemp.findByAuthorizedage", query = "SELECT f FROM FcChildTemp f WHERE f.authorizedage = :authorizedage")
    , @NamedQuery(name = "FcChildTemp.findByAuthorizedcontact", query = "SELECT f FROM FcChildTemp f WHERE f.authorizedcontact = :authorizedcontact")
    , @NamedQuery(name = "FcChildTemp.findByAuthorizedaddress", query = "SELECT f FROM FcChildTemp f WHERE f.authorizedaddress = :authorizedaddress")
    , @NamedQuery(name = "FcChildTemp.findByDetailsofcaller", query = "SELECT f FROM FcChildTemp f WHERE f.detailsofcaller = :detailsofcaller")
    , @NamedQuery(name = "FcChildTemp.findByServicerequired", query = "SELECT f FROM FcChildTemp f WHERE f.servicerequired = :servicerequired")
    , @NamedQuery(name = "FcChildTemp.findByServiceothers", query = "SELECT f FROM FcChildTemp f WHERE f.serviceothers = :serviceothers")
    , @NamedQuery(name = "FcChildTemp.findByRemarks", query = "SELECT f FROM FcChildTemp f WHERE f.remarks = :remarks")
    , @NamedQuery(name = "FcChildTemp.findByChildnatureother", query = "SELECT f FROM FcChildTemp f WHERE f.childnatureother = :childnatureother")
    , @NamedQuery(name = "FcChildTemp.findByMothertongue", query = "SELECT f FROM FcChildTemp f WHERE f.mothertongue = :mothertongue")
    , @NamedQuery(name = "FcChildTemp.findByLastname", query = "SELECT f FROM FcChildTemp f WHERE f.lastname = :lastname")
    , @NamedQuery(name = "FcChildTemp.findByStatus", query = "SELECT f FROM FcChildTemp f WHERE f.status = :status")})
public class FcChildTemp implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Id", nullable = false)
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "profile_id", nullable = false, length = 30)
    private String profileId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "first_name", nullable = false, length = 50)
    private String firstName;
    @Size(max = 50)
    @Column(name = "father_name", length = 50)
    private String fatherName;
    @Size(max = 50)
    @Column(name = "mother_name", length = 50)
    private String motherName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "gender", nullable = false, length = 10)
    private String gender;
    @Size(max = 100)
    @Column(name = "identificationmarks", length = 100)
    private String identificationmarks;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "ageofchild", nullable = false, length = 10)
    private String ageofchild;
    @Size(max = 20)
    @Column(name = "childnature", length = 20)
    private String childnature;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "disabled", nullable = false, length = 20)
    private String disabled;
    @Size(max = 20)
    @Column(name = "natureofdisablilty", length = 20)
    private String natureofdisablilty;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "religion", nullable = false, length = 20)
    private String religion;
    @Size(max = 20)
    @Column(name = "religionothers", length = 20)
    private String religionothers;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "caste", nullable = false, length = 20)
    private String caste;
    @Size(max = 20)
    @Column(name = "subcaste", length = 20)
    private String subcaste;
    @Size(max = 50)
    @Column(name = "fatheroccupation", length = 50)
    private String fatheroccupation;
    @Size(max = 50)
    @Column(name = "motheroccupation", length = 50)
    private String motheroccupation;
    @Size(max = 5)
    @Column(name = "noofbrothers", length = 5)
    private String noofbrothers;
    @Size(max = 5)
    @Column(name = "noofsisters", length = 5)
    private String noofsisters;
    @Size(max = 50)
    @Column(name = "languagesknown", length = 50)
    private String languagesknown;
    @Size(max = 100)
    @Column(name = "addofparents", length = 100)
    private String addofparents;
    @Size(max = 20)
    @Column(name = "education", length = 20)
    private String education;
    @Size(max = 100)
    @Column(name = "detailsofbelongs", length = 100)
    private String detailsofbelongs;
    @Size(max = 100)
    @Column(name = "identifiedproblms", length = 100)
    private String identifiedproblms;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "placefound", nullable = false, length = 100)
    private String placefound;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "admittedby", nullable = false, length = 20)
    private String admittedby;
    @Basic(optional = false)
    @NotNull
    @Column(name = "date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date date;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "dpcudetails", nullable = false, length = 50)
    private String dpcudetails;
    @Size(max = 5)
    @Column(name = "childlabour", length = 5)
    private String childlabour;
    @Size(max = 50)
    @Column(name = "labourtype", length = 50)
    private String labourtype;
    @Size(max = 50)
    @Column(name = "labourworkplace", length = 50)
    private String labourworkplace;
    @Size(max = 60)
    @Column(name = "labourworkcarriedout", length = 60)
    private String labourworkcarriedout;
    @Size(max = 20)
    @Column(name = "laboursalary", length = 20)
    private String laboursalary;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "authorizedname", nullable = false, length = 50)
    private String authorizedname;
    @Size(max = 20)
    @Column(name = "authorizedage", length = 20)
    private String authorizedage;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "authorizedcontact", nullable = false, length = 20)
    private String authorizedcontact;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "authorizedaddress", nullable = false, length = 100)
    private String authorizedaddress;
    @Size(max = 100)
    @Column(name = "detailsofcaller", length = 100)
    private String detailsofcaller;
    @Size(max = 20)
    @Column(name = "servicerequired", length = 20)
    private String servicerequired;
    @Size(max = 60)
    @Column(name = "serviceothers", length = 60)
    private String serviceothers;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "remarks", nullable = false, length = 100)
    private String remarks;
    @Size(max = 20)
    @Column(name = "childnatureother", length = 20)
    private String childnatureother;
    @Size(max = 20)
    @Column(name = "mothertongue", length = 20)
    private String mothertongue;
    @Size(max = 30)
    @Column(name = "lastname", length = 30)
    private String lastname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "status", nullable = false, length = 20)
    private String status;

    public FcChildTemp() {
    }

    public FcChildTemp(Integer id) {
        this.id = id;
    }

    public FcChildTemp(Integer id, String profileId, String firstName, String gender, String ageofchild, String disabled, String religion, String caste, String placefound, String admittedby, Date date, String dpcudetails, String authorizedname, String authorizedcontact, String authorizedaddress, String remarks, String status) {
        this.id = id;
        this.profileId = profileId;
        this.firstName = firstName;
        this.gender = gender;
        this.ageofchild = ageofchild;
        this.disabled = disabled;
        this.religion = religion;
        this.caste = caste;
        this.placefound = placefound;
        this.admittedby = admittedby;
        this.date = date;
        this.dpcudetails = dpcudetails;
        this.authorizedname = authorizedname;
        this.authorizedcontact = authorizedcontact;
        this.authorizedaddress = authorizedaddress;
        this.remarks = remarks;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProfileId() {
        return profileId;
    }

    public void setProfileId(String profileId) {
        this.profileId = profileId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIdentificationmarks() {
        return identificationmarks;
    }

    public void setIdentificationmarks(String identificationmarks) {
        this.identificationmarks = identificationmarks;
    }

    public String getAgeofchild() {
        return ageofchild;
    }

    public void setAgeofchild(String ageofchild) {
        this.ageofchild = ageofchild;
    }

    public String getChildnature() {
        return childnature;
    }

    public void setChildnature(String childnature) {
        this.childnature = childnature;
    }

    public String getDisabled() {
        return disabled;
    }

    public void setDisabled(String disabled) {
        this.disabled = disabled;
    }

    public String getNatureofdisablilty() {
        return natureofdisablilty;
    }

    public void setNatureofdisablilty(String natureofdisablilty) {
        this.natureofdisablilty = natureofdisablilty;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getReligionothers() {
        return religionothers;
    }

    public void setReligionothers(String religionothers) {
        this.religionothers = religionothers;
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

    public String getFatheroccupation() {
        return fatheroccupation;
    }

    public void setFatheroccupation(String fatheroccupation) {
        this.fatheroccupation = fatheroccupation;
    }

    public String getMotheroccupation() {
        return motheroccupation;
    }

    public void setMotheroccupation(String motheroccupation) {
        this.motheroccupation = motheroccupation;
    }

    public String getNoofbrothers() {
        return noofbrothers;
    }

    public void setNoofbrothers(String noofbrothers) {
        this.noofbrothers = noofbrothers;
    }

    public String getNoofsisters() {
        return noofsisters;
    }

    public void setNoofsisters(String noofsisters) {
        this.noofsisters = noofsisters;
    }

    public String getLanguagesknown() {
        return languagesknown;
    }

    public void setLanguagesknown(String languagesknown) {
        this.languagesknown = languagesknown;
    }

    public String getAddofparents() {
        return addofparents;
    }

    public void setAddofparents(String addofparents) {
        this.addofparents = addofparents;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getDetailsofbelongs() {
        return detailsofbelongs;
    }

    public void setDetailsofbelongs(String detailsofbelongs) {
        this.detailsofbelongs = detailsofbelongs;
    }

    public String getIdentifiedproblms() {
        return identifiedproblms;
    }

    public void setIdentifiedproblms(String identifiedproblms) {
        this.identifiedproblms = identifiedproblms;
    }

    public String getPlacefound() {
        return placefound;
    }

    public void setPlacefound(String placefound) {
        this.placefound = placefound;
    }

    public String getAdmittedby() {
        return admittedby;
    }

    public void setAdmittedby(String admittedby) {
        this.admittedby = admittedby;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDpcudetails() {
        return dpcudetails;
    }

    public void setDpcudetails(String dpcudetails) {
        this.dpcudetails = dpcudetails;
    }

    public String getChildlabour() {
        return childlabour;
    }

    public void setChildlabour(String childlabour) {
        this.childlabour = childlabour;
    }

    public String getLabourtype() {
        return labourtype;
    }

    public void setLabourtype(String labourtype) {
        this.labourtype = labourtype;
    }

    public String getLabourworkplace() {
        return labourworkplace;
    }

    public void setLabourworkplace(String labourworkplace) {
        this.labourworkplace = labourworkplace;
    }

    public String getLabourworkcarriedout() {
        return labourworkcarriedout;
    }

    public void setLabourworkcarriedout(String labourworkcarriedout) {
        this.labourworkcarriedout = labourworkcarriedout;
    }

    public String getLaboursalary() {
        return laboursalary;
    }

    public void setLaboursalary(String laboursalary) {
        this.laboursalary = laboursalary;
    }

    public String getAuthorizedname() {
        return authorizedname;
    }

    public void setAuthorizedname(String authorizedname) {
        this.authorizedname = authorizedname;
    }

    public String getAuthorizedage() {
        return authorizedage;
    }

    public void setAuthorizedage(String authorizedage) {
        this.authorizedage = authorizedage;
    }

    public String getAuthorizedcontact() {
        return authorizedcontact;
    }

    public void setAuthorizedcontact(String authorizedcontact) {
        this.authorizedcontact = authorizedcontact;
    }

    public String getAuthorizedaddress() {
        return authorizedaddress;
    }

    public void setAuthorizedaddress(String authorizedaddress) {
        this.authorizedaddress = authorizedaddress;
    }

    public String getDetailsofcaller() {
        return detailsofcaller;
    }

    public void setDetailsofcaller(String detailsofcaller) {
        this.detailsofcaller = detailsofcaller;
    }

    public String getServicerequired() {
        return servicerequired;
    }

    public void setServicerequired(String servicerequired) {
        this.servicerequired = servicerequired;
    }

    public String getServiceothers() {
        return serviceothers;
    }

    public void setServiceothers(String serviceothers) {
        this.serviceothers = serviceothers;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getChildnatureother() {
        return childnatureother;
    }

    public void setChildnatureother(String childnatureother) {
        this.childnatureother = childnatureother;
    }

    public String getMothertongue() {
        return mothertongue;
    }

    public void setMothertongue(String mothertongue) {
        this.mothertongue = mothertongue;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FcChildTemp)) {
            return false;
        }
        FcChildTemp other = (FcChildTemp) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.FcChildTemp[ id=" + id + " ]";
    }
    
}
