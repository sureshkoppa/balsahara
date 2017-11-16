/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "medical_general_register", catalog = "child_homes", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MedicalGeneralRegister.findAll", query = "SELECT m FROM MedicalGeneralRegister m"),
    @NamedQuery(name = "MedicalGeneralRegister.findByHomeId", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.medicalGeneralRegisterPK.homeId = :homeId"),
    @NamedQuery(name = "MedicalGeneralRegister.findByMedRegDate", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.medicalGeneralRegisterPK.medRegDate = :medRegDate"),
    @NamedQuery(name = "MedicalGeneralRegister.findByStateResidents", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.stateResidents = :stateResidents"),
    @NamedQuery(name = "MedicalGeneralRegister.findByCleanlinessCookKitchen", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.cleanlinessCookKitchen = :cleanlinessCookKitchen"),
    @NamedQuery(name = "MedicalGeneralRegister.findByDiet", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.diet = :diet"),
    @NamedQuery(name = "MedicalGeneralRegister.findByMenuPres", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.menuPres = :menuPres"),
    @NamedQuery(name = "MedicalGeneralRegister.findByStatusPremises", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.statusPremises = :statusPremises"),
    @NamedQuery(name = "MedicalGeneralRegister.findByUserId", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.userId = :userId"),
    @NamedQuery(name = "MedicalGeneralRegister.findByLastModifiedDate", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "MedicalGeneralRegister.findByLastModifiedBy", query = "SELECT m FROM MedicalGeneralRegister m WHERE m.lastModifiedBy = :lastModifiedBy")})
public class MedicalGeneralRegister implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected MedicalGeneralRegisterPK medicalGeneralRegisterPK;
    @Size(max = 75)
    @Column(name = "STATE_RESIDENTS", length = 75)
    private String stateResidents;
    @Size(max = 75)
    @Column(name = "CLEANLINESS_COOK_KITCHEN", length = 75)
    private String cleanlinessCookKitchen;
    @Size(max = 75)
    @Column(name = "DIET", length = 75)
    private String diet;
    @Size(max = 75)
    @Column(name = "MENU_PRES", length = 75)
    private String menuPres;
    @Size(max = 75)
    @Column(name = "STATUS_PREMISES", length = 75)
    private String statusPremises;
    @Size(max = 30)
    @Column(name = "USER_ID", length = 30)
    private String userId;
    @Lob
    @Size(max = 65535)
    @Column(name = "REMARKS", length = 65535)
    private String remarks;
    @Column(name = "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Size(max = 50)
    @Column(name = "LAST_MODIFIED_BY", length = 50)
    private String lastModifiedBy;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private HomeMaster homeMaster;

    public MedicalGeneralRegister() {
    }

    public MedicalGeneralRegister(MedicalGeneralRegisterPK medicalGeneralRegisterPK) {
        this.medicalGeneralRegisterPK = medicalGeneralRegisterPK;
    }

    public MedicalGeneralRegister(String homeId, Date medRegDate) {
        this.medicalGeneralRegisterPK = new MedicalGeneralRegisterPK(homeId, medRegDate);
    }

    public MedicalGeneralRegisterPK getMedicalGeneralRegisterPK() {
        return medicalGeneralRegisterPK;
    }

    public void setMedicalGeneralRegisterPK(MedicalGeneralRegisterPK medicalGeneralRegisterPK) {
        this.medicalGeneralRegisterPK = medicalGeneralRegisterPK;
    }

    public String getStateResidents() {
        return stateResidents;
    }

    public void setStateResidents(String stateResidents) {
        this.stateResidents = stateResidents;
    }

    public String getCleanlinessCookKitchen() {
        return cleanlinessCookKitchen;
    }

    public void setCleanlinessCookKitchen(String cleanlinessCookKitchen) {
        this.cleanlinessCookKitchen = cleanlinessCookKitchen;
    }

    public String getDiet() {
        return diet;
    }

    public void setDiet(String diet) {
        this.diet = diet;
    }

    public String getMenuPres() {
        return menuPres;
    }

    public void setMenuPres(String menuPres) {
        this.menuPres = menuPres;
    }

    public String getStatusPremises() {
        return statusPremises;
    }

    public void setStatusPremises(String statusPremises) {
        this.statusPremises = statusPremises;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (medicalGeneralRegisterPK != null ? medicalGeneralRegisterPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MedicalGeneralRegister)) {
            return false;
        }
        MedicalGeneralRegister other = (MedicalGeneralRegister) object;
        if ((this.medicalGeneralRegisterPK == null && other.medicalGeneralRegisterPK != null) || (this.medicalGeneralRegisterPK != null && !this.medicalGeneralRegisterPK.equals(other.medicalGeneralRegisterPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.MedicalGeneralRegister[ medicalGeneralRegisterPK=" + medicalGeneralRegisterPK + " ]";
    }
    
}
