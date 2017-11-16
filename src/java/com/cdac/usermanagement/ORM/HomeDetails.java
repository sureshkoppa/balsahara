/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "home_details", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "HomeDetails.findAll", query = "SELECT h FROM HomeDetails h"),
    @NamedQuery(name = "HomeDetails.findByHomeId", query = "SELECT h FROM HomeDetails h WHERE h.homeId = :homeId"),
    @NamedQuery(name = "HomeDetails.findByYearOfEstb", query = "SELECT h FROM HomeDetails h WHERE h.yearOfEstb = :yearOfEstb"),
    @NamedQuery(name = "HomeDetails.findByHomeAddress", query = "SELECT h FROM HomeDetails h WHERE h.homeAddress = :homeAddress"),
    @NamedQuery(name = "HomeDetails.findByMandal", query = "SELECT h FROM HomeDetails h WHERE h.mandal = :mandal"),
    @NamedQuery(name = "HomeDetails.findByVillage", query = "SELECT h FROM HomeDetails h WHERE h.village = :village"),
    @NamedQuery(name = "HomeDetails.findByHeadOfInst", query = "SELECT h FROM HomeDetails h WHERE h.headOfInst = :headOfInst"),
    @NamedQuery(name = "HomeDetails.findByLandlineNo", query = "SELECT h FROM HomeDetails h WHERE h.landlineNo = :landlineNo"),
    @NamedQuery(name = "HomeDetails.findByHomeManagedBy", query = "SELECT h FROM HomeDetails h WHERE h.homeManagedBy = :homeManagedBy"),
    @NamedQuery(name = "HomeDetails.findByCompWall", query = "SELECT h FROM HomeDetails h WHERE h.compWall = :compWall"),
    @NamedQuery(name = "HomeDetails.findByVisitorsRoom", query = "SELECT h FROM HomeDetails h WHERE h.visitorsRoom = :visitorsRoom"),
    @NamedQuery(name = "HomeDetails.findBySecurityStaff", query = "SELECT h FROM HomeDetails h WHERE h.securityStaff = :securityStaff"),
    @NamedQuery(name = "HomeDetails.findByMedicalFacility", query = "SELECT h FROM HomeDetails h WHERE h.medicalFacility = :medicalFacility"),
    @NamedQuery(name = "HomeDetails.findByTotalPlinthArea", query = "SELECT h FROM HomeDetails h WHERE h.totalPlinthArea = :totalPlinthArea"),
    @NamedQuery(name = "HomeDetails.findByPlinthPerInmate", query = "SELECT h FROM HomeDetails h WHERE h.plinthPerInmate = :plinthPerInmate"),
    @NamedQuery(name = "HomeDetails.findByPlayGround", query = "SELECT h FROM HomeDetails h WHERE h.playGround = :playGround"),
    @NamedQuery(name = "HomeDetails.findByIndoorGamesEqup", query = "SELECT h FROM HomeDetails h WHERE h.indoorGamesEqup = :indoorGamesEqup"),
    @NamedQuery(name = "HomeDetails.findByOutdoorGamesEqup", query = "SELECT h FROM HomeDetails h WHERE h.outdoorGamesEqup = :outdoorGamesEqup"),
    @NamedQuery(name = "HomeDetails.findByPresDiet", query = "SELECT h FROM HomeDetails h WHERE h.presDiet = :presDiet"),
    @NamedQuery(name = "HomeDetails.findByDrinikingWater", query = "SELECT h FROM HomeDetails h WHERE h.drinikingWater = :drinikingWater"),
    @NamedQuery(name = "HomeDetails.findByNoOfBathrooms", query = "SELECT h FROM HomeDetails h WHERE h.noOfBathrooms = :noOfBathrooms"),
    @NamedQuery(name = "HomeDetails.findByNoOfToilets", query = "SELECT h FROM HomeDetails h WHERE h.noOfToilets = :noOfToilets"),
    @NamedQuery(name = "HomeDetails.findByCleanlinessStatus", query = "SELECT h FROM HomeDetails h WHERE h.cleanlinessStatus = :cleanlinessStatus"),
    @NamedQuery(name = "HomeDetails.findByKitchenAvailable", query = "SELECT h FROM HomeDetails h WHERE h.kitchenAvailable = :kitchenAvailable"),
    @NamedQuery(name = "HomeDetails.findByKitechenHygiene", query = "SELECT h FROM HomeDetails h WHERE h.kitechenHygiene = :kitechenHygiene"),
    @NamedQuery(name = "HomeDetails.findByDinningFacility", query = "SELECT h FROM HomeDetails h WHERE h.dinningFacility = :dinningFacility"),
    @NamedQuery(name = "HomeDetails.findByCounselFacility", query = "SELECT h FROM HomeDetails h WHERE h.counselFacility = :counselFacility"),
    @NamedQuery(name = "HomeDetails.findByPremisesMaint", query = "SELECT h FROM HomeDetails h WHERE h.premisesMaint = :premisesMaint"),
    @NamedQuery(name = "HomeDetails.findByRecreaction", query = "SELECT h FROM HomeDetails h WHERE h.recreaction = :recreaction"),
    @NamedQuery(name = "HomeDetails.findByVocationalTraining", query = "SELECT h FROM HomeDetails h WHERE h.vocationalTraining = :vocationalTraining"),
    @NamedQuery(name = "HomeDetails.findByInternetFacility", query = "SELECT h FROM HomeDetails h WHERE h.internetFacility = :internetFacility"),
    @NamedQuery(name = "HomeDetails.findByLastModifiedDate", query = "SELECT h FROM HomeDetails h WHERE h.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "HomeDetails.findByLastModifiedBy", query = "SELECT h FROM HomeDetails h WHERE h.lastModifiedBy = :lastModifiedBy")})
public class HomeDetails implements Serializable {
    @Column(name =     "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private Collection<TransactionMaster> transactionMasterCollection;
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;
    @Column(name = "YEAR_OF_ESTB")
    private Integer yearOfEstb;
    @Size(max = 150)
    @Column(name = "HOME_ADDRESS", length = 150)
    private String homeAddress;
    @Size(max = 50)
    @Column(name = "MANDAL", length = 50)
    private String mandal;
    @Size(max = 50)
    @Column(name = "VILLAGE", length = 50)
    private String village;
    @Size(max = 30)
    @Column(name = "HEAD_OF_INST", length = 30)
    private String headOfInst;
    @Size(max = 12)
    @Column(name = "LANDLINE_NO", length = 12)
    private String landlineNo;
    @Size(max = 25)
    @Column(name = "HOME_MANAGED_BY", length = 25)
    private String homeManagedBy;
    @Column(name = "COMP_WALL")
    private Character compWall;
    @Column(name = "VISITORS_ROOM")
    private Character visitorsRoom;
    @Column(name = "SECURITY_STAFF")
    private Character securityStaff;
    @Column(name = "MEDICAL_FACILITY")
    private Character medicalFacility;
    @Column(name = "TOTAL_PLINTH_AREA")
    private Integer totalPlinthArea;
    @Column(name = "PLINTH_PER_INMATE")
    private Integer plinthPerInmate;
    @Column(name = "PLAY_GROUND")
    private Character playGround;
    @Size(max = 255)
    @Column(name = "INDOOR_GAMES_EQUP", length = 255)
    private String indoorGamesEqup;
    @Size(max = 255)
    @Column(name = "OUTDOOR_GAMES_EQUP", length = 255)
    private String outdoorGamesEqup;
    @Column(name = "PRES_DIET")
    private Character presDiet;
    @Column(name = "DRINIKING_WATER")
    private Character drinikingWater;
    @Column(name = "NO_OF_BATHROOMS")
    private Integer noOfBathrooms;
    @Column(name = "NO_OF_TOILETS")
    private Integer noOfToilets;
    @Size(max = 75)
    @Column(name = "CLEANLINESS_STATUS", length = 75)
    private String cleanlinessStatus;
    @Column(name = "KITCHEN_AVAILABLE")
    private Character kitchenAvailable;
    @Size(max = 75)
    @Column(name = "KITECHEN_HYGIENE", length = 75)
    private String kitechenHygiene;
    @Column(name = "DINNING_FACILITY")
    private Character dinningFacility;
    @Column(name = "COUNSEL_FACILITY")
    private Character counselFacility;
    @Size(max = 75)
    @Column(name = "PREMISES_MAINT", length = 75)
    private String premisesMaint;
    @Size(max = 75)
    @Column(name = "RECREACTION", length = 75)
    private String recreaction;
    @Column(name = "VOCATIONAL_TRAINING")
    private Character vocationalTraining;
    @Column(name = "INTERNET_FACILITY")
    private Character internetFacility;
    @Lob
    @Size(max = 65535)
    @Column(name = "ANY_OTHER_INFO", length = 65535)
    private String anyOtherInfo;
    @Size(max = 50)
    @Column(name = "LAST_MODIFIED_BY", length = 50)
    private String lastModifiedBy;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private HomeMaster homeMaster;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "homeId")
    private List<TransactionMaster> transactionMasterList;

    public HomeDetails() {
    }

    public HomeDetails(String homeId) {
        this.homeId = homeId;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public Integer getYearOfEstb() {
        return yearOfEstb;
    }

    public void setYearOfEstb(Integer yearOfEstb) {
        this.yearOfEstb = yearOfEstb;
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public String getMandal() {
        return mandal;
    }

    public void setMandal(String mandal) {
        this.mandal = mandal;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public String getHeadOfInst() {
        return headOfInst;
    }

    public void setHeadOfInst(String headOfInst) {
        this.headOfInst = headOfInst;
    }

    public String getLandlineNo() {
        return landlineNo;
    }

    public void setLandlineNo(String landlineNo) {
        this.landlineNo = landlineNo;
    }

    public String getHomeManagedBy() {
        return homeManagedBy;
    }

    public void setHomeManagedBy(String homeManagedBy) {
        this.homeManagedBy = homeManagedBy;
    }

    public Character getCompWall() {
        return compWall;
    }

    public void setCompWall(Character compWall) {
        this.compWall = compWall;
    }

    public Character getVisitorsRoom() {
        return visitorsRoom;
    }

    public void setVisitorsRoom(Character visitorsRoom) {
        this.visitorsRoom = visitorsRoom;
    }

    public Character getSecurityStaff() {
        return securityStaff;
    }

    public void setSecurityStaff(Character securityStaff) {
        this.securityStaff = securityStaff;
    }

    public Character getMedicalFacility() {
        return medicalFacility;
    }

    public void setMedicalFacility(Character medicalFacility) {
        this.medicalFacility = medicalFacility;
    }

    public Integer getTotalPlinthArea() {
        return totalPlinthArea;
    }

    public void setTotalPlinthArea(Integer totalPlinthArea) {
        this.totalPlinthArea = totalPlinthArea;
    }

    public Integer getPlinthPerInmate() {
        return plinthPerInmate;
    }

    public void setPlinthPerInmate(Integer plinthPerInmate) {
        this.plinthPerInmate = plinthPerInmate;
    }

    public Character getPlayGround() {
        return playGround;
    }

    public void setPlayGround(Character playGround) {
        this.playGround = playGround;
    }

    public String getIndoorGamesEqup() {
        return indoorGamesEqup;
    }

    public void setIndoorGamesEqup(String indoorGamesEqup) {
        this.indoorGamesEqup = indoorGamesEqup;
    }

    public String getOutdoorGamesEqup() {
        return outdoorGamesEqup;
    }

    public void setOutdoorGamesEqup(String outdoorGamesEqup) {
        this.outdoorGamesEqup = outdoorGamesEqup;
    }

    public Character getPresDiet() {
        return presDiet;
    }

    public void setPresDiet(Character presDiet) {
        this.presDiet = presDiet;
    }

    public Character getDrinikingWater() {
        return drinikingWater;
    }

    public void setDrinikingWater(Character drinikingWater) {
        this.drinikingWater = drinikingWater;
    }

    public Integer getNoOfBathrooms() {
        return noOfBathrooms;
    }

    public void setNoOfBathrooms(Integer noOfBathrooms) {
        this.noOfBathrooms = noOfBathrooms;
    }

    public Integer getNoOfToilets() {
        return noOfToilets;
    }

    public void setNoOfToilets(Integer noOfToilets) {
        this.noOfToilets = noOfToilets;
    }

    public String getCleanlinessStatus() {
        return cleanlinessStatus;
    }

    public void setCleanlinessStatus(String cleanlinessStatus) {
        this.cleanlinessStatus = cleanlinessStatus;
    }

    public Character getKitchenAvailable() {
        return kitchenAvailable;
    }

    public void setKitchenAvailable(Character kitchenAvailable) {
        this.kitchenAvailable = kitchenAvailable;
    }

    public String getKitechenHygiene() {
        return kitechenHygiene;
    }

    public void setKitechenHygiene(String kitechenHygiene) {
        this.kitechenHygiene = kitechenHygiene;
    }

    public Character getDinningFacility() {
        return dinningFacility;
    }

    public void setDinningFacility(Character dinningFacility) {
        this.dinningFacility = dinningFacility;
    }

    public Character getCounselFacility() {
        return counselFacility;
    }

    public void setCounselFacility(Character counselFacility) {
        this.counselFacility = counselFacility;
    }

    public String getPremisesMaint() {
        return premisesMaint;
    }

    public void setPremisesMaint(String premisesMaint) {
        this.premisesMaint = premisesMaint;
    }

    public String getRecreaction() {
        return recreaction;
    }

    public void setRecreaction(String recreaction) {
        this.recreaction = recreaction;
    }

    public Character getVocationalTraining() {
        return vocationalTraining;
    }

    public void setVocationalTraining(Character vocationalTraining) {
        this.vocationalTraining = vocationalTraining;
    }

    public Character getInternetFacility() {
        return internetFacility;
    }

    public void setInternetFacility(Character internetFacility) {
        this.internetFacility = internetFacility;
    }

    public String getAnyOtherInfo() {
        return anyOtherInfo;
    }

    public void setAnyOtherInfo(String anyOtherInfo) {
        this.anyOtherInfo = anyOtherInfo;
    }

    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    public HomeMaster getHomeMaster() {
        return homeMaster;
    }

    public void setHomeMaster(HomeMaster homeMaster) {
        this.homeMaster = homeMaster;
    }

    @XmlTransient
    public List<TransactionMaster> getTransactionMasterList() {
        return transactionMasterList;
    }

    public void setTransactionMasterList(List<TransactionMaster> transactionMasterList) {
        this.transactionMasterList = transactionMasterList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (homeId != null ? homeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HomeDetails)) {
            return false;
        }
        HomeDetails other = (HomeDetails) object;
        if ((this.homeId == null && other.homeId != null) || (this.homeId != null && !this.homeId.equals(other.homeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.HomeDetails[ homeId=" + homeId + " ]";
    }

   

    @XmlTransient
    public Collection<TransactionMaster> getTransactionMasterCollection() {
        return transactionMasterCollection;
    }

    public void setTransactionMasterCollection(Collection<TransactionMaster> transactionMasterCollection) {
        this.transactionMasterCollection = transactionMasterCollection;
    }

   
}
