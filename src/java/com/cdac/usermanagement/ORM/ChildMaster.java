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
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
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
@Table(name = "child_master", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ChildMaster.findByTransferStatus", query = "SELECT c FROM ChildMaster c WHERE c.status = 'transfer' AND c.transHomeId = :homeId"),
    @NamedQuery(name = "ChildMaster.findByCallforDPOStatus", query = "SELECT c.childProfileId FROM ChildMaster c WHERE c.status = 'active' AND c.callfordpo = 'yes' AND c.homeId = :homeId"), //returns string list
    @NamedQuery(name = "ChildMaster.findByHomeId", query = "SELECT c FROM ChildMaster c WHERE c.status = 'active' AND c.homeId = :homeId"),//added by anupam
    @NamedQuery(name = "ChildMaster.findByHomeIdForEducationAdm", query = "SELECT c FROM ChildMaster c WHERE c.status = 'active' AND c.homeId = :homeId AND c.childProfileId NOT IN(SELECT c1.childProfileId from EducationAdmission c1)" ),//added by anupam
    @NamedQuery(name = "ChildMaster.findByHomeIdForAttendence", query = "SELECT c FROM ChildMaster c WHERE c.status = 'active' AND c.homeId = :homeId AND c.childProfileId IN(SELECT c1.childProfileId from EducationAdmission c1)" ),//added by anupam
    @NamedQuery(name = "ChildMaster.findByHomeIdAndCourseForAttendence", query = "SELECT c FROM ChildMaster c WHERE c.homeId = :homeId AND c.childProfileId IN(SELECT c1.childProfileId from EducationAdmission c1 WHERE c1.eduStatus = :eduStatus AND c1.schoolMaster IS NULL)" ),//added by anupam (Modified on 25-01-2012)    
    @NamedQuery(name = "ChildMaster.findByHomeId_multiplestatus", query = "SELECT c FROM ChildMaster c WHERE c.homeId = :homeId AND c.status NOT IN('inactive','transfer')"),//added by Ramu for Superintendent
    @NamedQuery(name = "ChildMaster.findByHomeIdAndCourseForAttendenceOutSchool", query = "SELECT c FROM ChildMaster c WHERE c.homeId = :homeId AND c.childProfileId IN(SELECT c1.childProfileId from EducationAdmission c1 WHERE c1.eduStatus = :eduStatus AND c1.schoolMaster = :schoolMaster)" ),//added by anupam 25-01-2012   
    
    @NamedQuery(name = "ChildMaster.findByHomeIdAndName", query = "SELECT c FROM ChildMaster c WHERE c.homeId.homeId = :homeId AND UCASE(c.childName) LIKE UCASE('%'||:childName||'%')"), 
    @NamedQuery(name = "ChildMaster.findByHomeIdAndCWCno", query = "SELECT c FROM ChildMaster c WHERE c.homeId.homeId = :homeId AND UCASE(c.cwcJjbOrderNo) = UCASE(:cwcJjbOrderNo)"),
    @NamedQuery(name = "ChildMaster.findByHomeIdAndNameOrCwcno", query = "SELECT c FROM ChildMaster c WHERE c.homeId.homeId = :homeId AND (UCASE(c.cwcJjbOrderNo) = UCASE(:cwcJjbOrderNo) OR UCASE(c.childName) LIKE UCASE('%'||:childName||'%'))"),
    
    @NamedQuery(name = "ChildMaster.findAvailableCaseWorkOfAHome", query = "SELECT c1 FROM ChildMaster c1, ChildDetails c2 WHERE c1.childProfileId = c2.childDetailsPK.childProfileId AND c1.homeId.homeId = :homeId GROUP BY c1.childProfileId ORDER BY c1.childName"),
    @NamedQuery(name = "ChildMaster.findInterviewedChildOfAHome", query = "SELECT c1 FROM ChildMaster c1, InterviewRegister c2 WHERE c1.childProfileId = c2.interviewRegisterPK.childProfileId AND c1.homeId.homeId = :homeId GROUP BY c1.childProfileId ORDER BY c1.childName"),
    
    
    
    
    
    @NamedQuery(name = "ChildMaster.findAll", query = "SELECT c FROM ChildMaster c"),
    @NamedQuery(name = "ChildMaster.findByChildProfileId", query = "SELECT c FROM ChildMaster c WHERE c.childProfileId = :childProfileId"),
    @NamedQuery(name = "ChildMaster.findByChildName", query = "SELECT c FROM ChildMaster c WHERE c.childName = :childName"),
    @NamedQuery(name = "ChildMaster.findByChildSurname", query = "SELECT c FROM ChildMaster c WHERE c.childSurname = :childSurname"),
    @NamedQuery(name = "ChildMaster.findByDateTimeAdm", query = "SELECT c FROM ChildMaster c WHERE c.dateTimeAdm = :dateTimeAdm"),
    @NamedQuery(name = "ChildMaster.findByAge", query = "SELECT c FROM ChildMaster c WHERE c.age = :age"),
    @NamedQuery(name = "ChildMaster.findByGender", query = "SELECT c FROM ChildMaster c WHERE c.gender = :gender"),
    @NamedQuery(name = "ChildMaster.findByChildNature", query = "SELECT c FROM ChildMaster c WHERE c.childNature = :childNature"),
    @NamedQuery(name = "ChildMaster.findByDisabled", query = "SELECT c FROM ChildMaster c WHERE c.disabled = :disabled"),
    @NamedQuery(name = "ChildMaster.findByNatureDisability", query = "SELECT c FROM ChildMaster c WHERE c.natureDisability = :natureDisability"),
    @NamedQuery(name = "ChildMaster.findByAdmThrough", query = "SELECT c FROM ChildMaster c WHERE c.admThrough = :admThrough"),
    @NamedQuery(name = "ChildMaster.findByNameAuthPer", query = "SELECT c FROM ChildMaster c WHERE c.nameAuthPer = :nameAuthPer"),
    @NamedQuery(name = "ChildMaster.findByCwcJjbOrderNo", query = "SELECT c FROM ChildMaster c WHERE c.cwcJjbOrderNo = :cwcJjbOrderNo"),
    @NamedQuery(name = "ChildMaster.findByOrderDate", query = "SELECT c FROM ChildMaster c WHERE c.orderDate = :orderDate"),
    @NamedQuery(name = "ChildMaster.findByIntCwcJjbDate", query = "SELECT c FROM ChildMaster c WHERE c.intCwcJjbDate = :intCwcJjbDate"),
    @NamedQuery(name = "ChildMaster.findByProducedBy", query = "SELECT c FROM ChildMaster c WHERE c.producedBy = :producedBy"),
    @NamedQuery(name = "ChildMaster.findByReasonAdm", query = "SELECT c FROM ChildMaster c WHERE c.reasonAdm = :reasonAdm"),
    @NamedQuery(name = "ChildMaster.findByProvisionLaw", query = "SELECT c FROM ChildMaster c WHERE c.provisionLaw = :provisionLaw"),
    @NamedQuery(name = "ChildMaster.findByPropertyPossessed", query = "SELECT c FROM ChildMaster c WHERE c.propertyPossessed = :propertyPossessed"),
    @NamedQuery(name = "ChildMaster.findByLastModifiedDate", query = "SELECT c FROM ChildMaster c WHERE c.lastModifiedDate = :lastModifiedDate"),
    @NamedQuery(name = "ChildMaster.findByProbableDischargeDate", query = "SELECT c FROM ChildMaster c WHERE c.probableDischargeDate = :probableDischargeDate"),
    @NamedQuery(name = "ChildMaster.findByTransHomeId", query = "SELECT c FROM ChildMaster c WHERE c.transHomeId = :transHomeId"),
    @NamedQuery(name = "ChildMaster.findByRemarks", query = "SELECT c FROM ChildMaster c WHERE c.remarks = :remarks"),
    @NamedQuery(name = "ChildMaster.findByTransOrderDate", query = "SELECT c FROM ChildMaster c WHERE c.transOrderDate = :transOrderDate"),
    @NamedQuery(name = "ChildMaster.findByTransOrderNo", query = "SELECT c FROM ChildMaster c WHERE c.transOrderNo = :transOrderNo"),
    @NamedQuery(name = "ChildMaster.findByPlaceOfCharge", query = "SELECT c FROM ChildMaster c WHERE c.placeOfCharge = :placeOfCharge"),
    @NamedQuery(name = "ChildMaster.findByOldProfileId", query = "SELECT c FROM ChildMaster c WHERE c.oldProfileId = :oldProfileId"),
    @NamedQuery(name = "ChildMaster.findByStatus", query = "SELECT c FROM ChildMaster c WHERE c.status = :status"),
    @NamedQuery(name = "ChildMaster.findByCallfordpo", query = "SELECT c FROM ChildMaster c WHERE c.callfordpo = :callfordpo"),
    @NamedQuery(name = "ChildMaster.findByLastModifiedBy", query = "SELECT c FROM ChildMaster c WHERE c.lastModifiedBy = :lastModifiedBy")})
public class ChildMaster implements Serializable {
    @Column(name =     "DATE_TIME_ADM")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTimeAdm;
    @Column(name =     "ORDER_DATE")
    @Temporal(TemporalType.DATE)
    private Date orderDate;
    @Column(name =     "INT_CWC_JJB_DATE")
    @Temporal(TemporalType.DATE)
    private Date intCwcJjbDate;
    @Column(name =     "LAST_MODIFIED_DATE")
    @Temporal(TemporalType.DATE)
    private Date lastModifiedDate;
    @Column(name =     "PROBABLE_DISCHARGE_DATE")
    @Temporal(TemporalType.DATE)
    private Date probableDischargeDate;
    @Column(name =     "TRANS_ORDER_DATE")
    @Temporal(TemporalType.DATE)
    private Date transOrderDate;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<CounselingDetails> counselingDetailsCollection;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private IcpPostRelease icpPostRelease;
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CHILD_PROFILE_ID", nullable = false, length = 30)
    private String childProfileId;
    @Size(max = 75)
    @Column(name = "CHILD_NAME", length = 75)
    private String childName;
    @Size(max = 50)
    @Column(name = "CHILD_SURNAME", length = 50)
    private String childSurname;
    @Column(name = "AGE")
    private Integer age;
    @Size(max = 10)
    @Column(name = "GENDER", length = 10)
    private String gender;
    @Size(max = 30)
    @Column(name = "CHILD_NATURE", length = 30)
    private String childNature;
    @Column(name = "DISABLED")
    private Character disabled;
    @Size(max = 75)
    @Column(name = "NATURE_DISABILITY", length = 75)
    private String natureDisability;
    @Size(max = 50)
    @Column(name = "ADM_THROUGH", length = 50)
    private String admThrough;
    @Size(max = 75)
    @Column(name = "NAME_AUTH_PER", length = 75)
    private String nameAuthPer;
    @Size(max = 75)
    @Column(name = "CWC_JJB_ORDER_NO", length = 75)
    private String cwcJjbOrderNo;
    @Size(max = 75)
    @Column(name = "PRODUCED_BY", length = 75)
    private String producedBy;
    @Size(max = 150)
    @Column(name = "REASON_ADM", length = 150)
    private String reasonAdm;
    @Size(max = 100)
    @Column(name = "PROVISION_LAW", length = 100)
    private String provisionLaw ="NA";
    @Lob
    @Size(max = 65535)
    @Column(name = "IDENTIFICATION_MARKS", length = 65535)
    private String identificationMarks;
    @Size(max = 255)
    @Column(name = "PROPERTY_POSSESSED", length = 255)
    private String propertyPossessed;
    
    //ANUPAM ADDED THIS ON 13-10-2012 START
    @Lob
    @Size(max = 65535)
    @Column(name = "PRE_ENQ_REPT", length = 65535)
    private String preEnqRept;
    //ANUPAM ADDED THIS ON 13-10-2012 END
    @Lob
    @Size(max = 65535)
    @Column(name = "RECOMM_CASEWORKER", length = 65535)
    private String recommCaseworker;
    @Lob
    @Size(max = 65535)
    @Column(name = "RECOMM_CWC", length = 65535)
    private String recommCwc;
    @Lob
    @Size(max = 65535)
    @Column(name = "PERIOD_STAY", length = 65535)
    private String periodStay;
    @Size(max = 30)
    @Column(name = "TRANS_HOME_ID", length = 30)
    private String transHomeId;
    @Size(max = 255)
    @Column(name = "REMARKS", length = 255)
    private String remarks;
    @Size(max = 50)
    @Column(name = "TRANS_ORDER_NO", length = 50)
    private String transOrderNo;
    @Size(max = 50)
    @Column(name = "PLACE_OF_CHARGE", length = 50)
    private String placeOfCharge;
    @Size(max = 50)
    @Column(name = "OLD_PROFILE_ID", length = 50)
    private String oldProfileId;
    @Lob
    @Size(max = 65535)
    @Column(name = "DISPOSITION_DETAILS", length = 65535)
    private String dispositionDetails;
    @Size(max = 50)
    @Column(name = "STATUS", length = 50)
    private String status;
    @Size(max = 20)
    @Column(name = "CALLFORDPO", length = 20)
    private String callfordpo;
    @Size(max = 50)
    @Column(name = "LAST_MODIFIED_BY", length = 50)
    private String lastModifiedBy;
    
    
    @Column(name = "WARRANT_NUMBER")
    private String warranrNumber;
    
    @Column(name = "NAME_OF_POLICE_STATION")
    private String nameOfPoliceStation;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<HtWtRegister> htWtRegisterList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster" )
    private List<CasehistoryAdolescenceDetails> casehistoryAdolescenceDetailsList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<ExamAttendence> examAttendenceList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<CasehistoryPrioradmEducation> casehistoryPrioradmEducationList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<CasehistoryPersonal> casehistoryPersonalList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<VocationalDetails> vocationalDetailsList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<SiChildDetails> siChildDetailsList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<ChildEnquery> childEnqueryList;
    @JoinColumn(name = "HOME_ID", referencedColumnName = "HOME_ID", nullable = false)
    @ManyToOne(optional = false)
    private HomeMaster homeId;
    @JoinColumn(name = "DISTRICT_ID", referencedColumnName = "DISTRICT_ID", nullable = false)
    @ManyToOne(optional = false)
    private DistrictMaster districtId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<ExamMarks> examMarksList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private EducationAdmission educationAdmission;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<ReferralRegister> referralRegisterList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private DischargeRegister dischargeRegister;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<OpRegister> opRegisterList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<ResultOfEnquery> resultOfEnqueryList; 
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<ChildHomeStatus> childHomeStatusList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<ChildrenAssesmentRegister> childrenAssesmentRegisterList;
    
    @OneToMany(mappedBy = "childMaster" ,fetch=  FetchType.EAGER) //The magical code ;-)
    private List<ChildDetails> childDetailsList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<CasehistorySocialhistoryPrioradm> casehistorySocialhistoryPrioradmList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<EducationAttendence> educationAttendenceList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<SiChildhistoryDetails> siChildhistoryDetailsList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<InterviewRegister> interviewRegisterList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private AdmMedicalRegister admMedicalRegister;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<SiFamily> siFamilyList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<CasehistoryFamilyDetails> casehistoryFamilyDetailsList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "childMaster")
    private List<ChildStatus> childStatusList;

    public ChildMaster() {
    }

    public String getNameOfPoliceStation() {
        return nameOfPoliceStation;
    }

    public void setNameOfPoliceStation(String nameOfPoliceStation) {
        this.nameOfPoliceStation = nameOfPoliceStation;
    }

    public String getWarranrNumber() {
        return warranrNumber;
    }

    public void setWarranrNumber(String warranrNumber) {
        this.warranrNumber = warranrNumber;
    }

    
    
    public ChildMaster(String childProfileId) {
        this.childProfileId = childProfileId;
    }

    public String getChildProfileId() {
        return childProfileId;
    }

    public void setChildProfileId(String childProfileId) {
        this.childProfileId = childProfileId;
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

    public Date getDateTimeAdm() {
        return dateTimeAdm;
    }

    public void setDateTimeAdm(Date dateTimeAdm) {
        this.dateTimeAdm = dateTimeAdm;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getChildNature() {
        return childNature;
    }

    public void setChildNature(String childNature) {
        this.childNature = childNature;
    }

    public Character getDisabled() {
        return disabled;
    }

    public void setDisabled(Character disabled) {
        this.disabled = disabled;
    }

    public String getNatureDisability() {
        return natureDisability;
    }

    public void setNatureDisability(String natureDisability) {
        this.natureDisability = natureDisability;
    }

    public String getAdmThrough() {
        return admThrough;
    }

    public void setAdmThrough(String admThrough) {
        this.admThrough = admThrough;
    }

    public String getNameAuthPer() {
        return nameAuthPer;
    }

    public void setNameAuthPer(String nameAuthPer) {
        this.nameAuthPer = nameAuthPer;
    }

    public String getCwcJjbOrderNo() {
        return cwcJjbOrderNo;
    }

    public void setCwcJjbOrderNo(String cwcJjbOrderNo) {
        this.cwcJjbOrderNo = cwcJjbOrderNo;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getIntCwcJjbDate() {
        return intCwcJjbDate;
    }

    public void setIntCwcJjbDate(Date intCwcJjbDate) {
        this.intCwcJjbDate = intCwcJjbDate;
    }

    public String getProducedBy() {
        return producedBy;
    }

    public void setProducedBy(String producedBy) {
        this.producedBy = producedBy;
    }

    public String getReasonAdm() {
        return reasonAdm;
    }

    public void setReasonAdm(String reasonAdm) {
        this.reasonAdm = reasonAdm;
    }

    public String getProvisionLaw() {
        return provisionLaw;
    }

    public void setProvisionLaw(String provisionLaw) {
        this.provisionLaw = provisionLaw;
    }

    public String getIdentificationMarks() {
        return identificationMarks;
    }

    public void setIdentificationMarks(String identificationMarks) {
        this.identificationMarks = identificationMarks;
    }

    public String getPropertyPossessed() {
        return propertyPossessed;
    }

    public void setPropertyPossessed(String propertyPossessed) {
        this.propertyPossessed = propertyPossessed;
    }

    
    public String getPreEnqRept() {
        return preEnqRept;
    }

    public void setPreEnqRept(String preEnqRept) {
        this.preEnqRept = preEnqRept;
    }
    
    
    

    public String getRecommCaseworker() {
        return recommCaseworker;
    }

    public void setRecommCaseworker(String recommCaseworker) {
        this.recommCaseworker = recommCaseworker;
    }

    public String getRecommCwc() {
        return recommCwc;
    }

    public void setRecommCwc(String recommCwc) {
        this.recommCwc = recommCwc;
    }

    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    public Date getProbableDischargeDate() {
        return probableDischargeDate;
    }

    public void setProbableDischargeDate(Date probableDischargeDate) {
        this.probableDischargeDate = probableDischargeDate;
    }

    public String getPeriodStay() {
        return periodStay;
    }

    public void setPeriodStay(String periodStay) {
        this.periodStay = periodStay;
    }

    public String getTransHomeId() {
        return transHomeId;
    }

    public void setTransHomeId(String transHomeId) {
        this.transHomeId = transHomeId;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Date getTransOrderDate() {
        return transOrderDate;
    }

    public void setTransOrderDate(Date transOrderDate) {
        this.transOrderDate = transOrderDate;
    }

    public String getTransOrderNo() {
        return transOrderNo;
    }

    public void setTransOrderNo(String transOrderNo) {
        this.transOrderNo = transOrderNo;
    }

    public String getPlaceOfCharge() {
        return placeOfCharge;
    }

    public void setPlaceOfCharge(String placeOfCharge) {
        this.placeOfCharge = placeOfCharge;
    }

    public String getOldProfileId() {
        return oldProfileId;
    }

    public void setOldProfileId(String oldProfileId) {
        this.oldProfileId = oldProfileId;
    }

    public String getDispositionDetails() {
        return dispositionDetails;
    }

    public void setDispositionDetails(String dispositionDetails) {
        this.dispositionDetails = dispositionDetails;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCallfordpo() {
        return callfordpo;
    }

    public void setCallfordpo(String callfordpo) {
        this.callfordpo = callfordpo;
    }

    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    @XmlTransient
    public List<HtWtRegister> getHtWtRegisterList() {
        return htWtRegisterList;
    }

    public void setHtWtRegisterList(List<HtWtRegister> htWtRegisterList) {
        this.htWtRegisterList = htWtRegisterList;
    }

    @XmlTransient
    public List<CasehistoryAdolescenceDetails> getCasehistoryAdolescenceDetailsList() {
        return casehistoryAdolescenceDetailsList;
    }

    public void setCasehistoryAdolescenceDetailsList(List<CasehistoryAdolescenceDetails> casehistoryAdolescenceDetailsList) {
        this.casehistoryAdolescenceDetailsList = casehistoryAdolescenceDetailsList;
    }

    @XmlTransient
    public List<ExamAttendence> getExamAttendenceList() {
        return examAttendenceList;
    }

    public void setExamAttendenceList(List<ExamAttendence> examAttendenceList) {
        this.examAttendenceList = examAttendenceList;
    }

    @XmlTransient
    public List<CasehistoryPrioradmEducation> getCasehistoryPrioradmEducationList() {
        return casehistoryPrioradmEducationList;
    }

    public void setCasehistoryPrioradmEducationList(List<CasehistoryPrioradmEducation> casehistoryPrioradmEducationList) {
        this.casehistoryPrioradmEducationList = casehistoryPrioradmEducationList;
    }

    @XmlTransient
    public List<CasehistoryPersonal> getCasehistoryPersonalList() {
        return casehistoryPersonalList;
    }

    public void setCasehistoryPersonalList(List<CasehistoryPersonal> casehistoryPersonalList) {
        this.casehistoryPersonalList = casehistoryPersonalList;
    }

    @XmlTransient
    public List<VocationalDetails> getVocationalDetailsList() {
        return vocationalDetailsList;
    }

    public void setVocationalDetailsList(List<VocationalDetails> vocationalDetailsList) {
        this.vocationalDetailsList = vocationalDetailsList;
    }

    @XmlTransient
    public List<SiChildDetails> getSiChildDetailsList() {
        return siChildDetailsList;
    }

    public void setSiChildDetailsList(List<SiChildDetails> siChildDetailsList) {
        this.siChildDetailsList = siChildDetailsList;
    }

    @XmlTransient
    public List<ChildEnquery> getChildEnqueryList() {
        return childEnqueryList;
    }

    public void setChildEnqueryList(List<ChildEnquery> childEnqueryList) {
        this.childEnqueryList = childEnqueryList;
    }

    public HomeMaster getHomeId() {
        return homeId;
    }

    public void setHomeId(HomeMaster homeId) {
        this.homeId = homeId;
    }

    public DistrictMaster getDistrictId() {
        return districtId;
    }

    public void setDistrictId(DistrictMaster districtId) {
        this.districtId = districtId;
    }

    @XmlTransient
    public List<ExamMarks> getExamMarksList() {
        return examMarksList;
    }

    public void setExamMarksList(List<ExamMarks> examMarksList) {
        this.examMarksList = examMarksList;
    }

    public EducationAdmission getEducationAdmission() {
        return educationAdmission;
    }

    public void setEducationAdmission(EducationAdmission educationAdmission) {
        this.educationAdmission = educationAdmission;
    }

    @XmlTransient
    public List<ReferralRegister> getReferralRegisterList() {
        return referralRegisterList;
    }

    public void setReferralRegisterList(List<ReferralRegister> referralRegisterList) {
        this.referralRegisterList = referralRegisterList;
    }

    public DischargeRegister getDischargeRegister() {
        return dischargeRegister;
    }

    public void setDischargeRegister(DischargeRegister dischargeRegister) {
        this.dischargeRegister = dischargeRegister;
    }

    @XmlTransient
    public List<OpRegister> getOpRegisterList() {
        return opRegisterList;
    }

    public void setOpRegisterList(List<OpRegister> opRegisterList) {
        this.opRegisterList = opRegisterList;
    }

    @XmlTransient
    public List<ResultOfEnquery> getResultOfEnqueryList() {
        return resultOfEnqueryList;
    }

    public void setResultOfEnqueryList(List<ResultOfEnquery> resultOfEnqueryList) {
        this.resultOfEnqueryList = resultOfEnqueryList;
    }

    @XmlTransient
    public List<ChildHomeStatus> getChildHomeStatusList() {
        return childHomeStatusList;
    }

    public void setChildHomeStatusList(List<ChildHomeStatus> childHomeStatusList) {
        this.childHomeStatusList = childHomeStatusList;
    }

    @XmlTransient
    public List<ChildrenAssesmentRegister> getChildrenAssesmentRegisterList() {
        return childrenAssesmentRegisterList;
    }

    public void setChildrenAssesmentRegisterList(List<ChildrenAssesmentRegister> childrenAssesmentRegisterList) {
        this.childrenAssesmentRegisterList = childrenAssesmentRegisterList;
    }

    @XmlTransient
    public List<ChildDetails> getChildDetailsList() {
        return childDetailsList;
    }

    public void setChildDetailsList(List<ChildDetails> childDetailsList) {
        this.childDetailsList = childDetailsList;
    }

    @XmlTransient
    public List<CasehistorySocialhistoryPrioradm> getCasehistorySocialhistoryPrioradmList() {
        return casehistorySocialhistoryPrioradmList;
    }

    public void setCasehistorySocialhistoryPrioradmList(List<CasehistorySocialhistoryPrioradm> casehistorySocialhistoryPrioradmList) {
        this.casehistorySocialhistoryPrioradmList = casehistorySocialhistoryPrioradmList;
    }

    @XmlTransient
    public List<EducationAttendence> getEducationAttendenceList() {
        return educationAttendenceList;
    }

    public void setEducationAttendenceList(List<EducationAttendence> educationAttendenceList) {
        this.educationAttendenceList = educationAttendenceList;
    }

    @XmlTransient
    public List<SiChildhistoryDetails> getSiChildhistoryDetailsList() {
        return siChildhistoryDetailsList;
    }

    public void setSiChildhistoryDetailsList(List<SiChildhistoryDetails> siChildhistoryDetailsList) {
        this.siChildhistoryDetailsList = siChildhistoryDetailsList;
    }

    @XmlTransient
    public List<InterviewRegister> getInterviewRegisterList() {
        return interviewRegisterList;
    }

    public void setInterviewRegisterList(List<InterviewRegister> interviewRegisterList) {
        this.interviewRegisterList = interviewRegisterList;
    }

    public AdmMedicalRegister getAdmMedicalRegister() {
        return admMedicalRegister;
    }

    public void setAdmMedicalRegister(AdmMedicalRegister admMedicalRegister) {
        this.admMedicalRegister = admMedicalRegister;
    }

    @XmlTransient
    public List<SiFamily> getSiFamilyList() {
        return siFamilyList;
    }

    public void setSiFamilyList(List<SiFamily> siFamilyList) {
        this.siFamilyList = siFamilyList;
    }

    @XmlTransient
    public List<CasehistoryFamilyDetails> getCasehistoryFamilyDetailsList() {
        return casehistoryFamilyDetailsList;
    }

    public void setCasehistoryFamilyDetailsList(List<CasehistoryFamilyDetails> casehistoryFamilyDetailsList) {
        this.casehistoryFamilyDetailsList = casehistoryFamilyDetailsList;
    }

    @XmlTransient
    public List<ChildStatus> getChildStatusList() {
        return childStatusList;
    }

    public void setChildStatusList(List<ChildStatus> childStatusList) {
        this.childStatusList = childStatusList;
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
        if (!(object instanceof ChildMaster)) {
            return false;
        }
        ChildMaster other = (ChildMaster) object;
        if ((this.childProfileId == null && other.childProfileId != null) || (this.childProfileId != null && !this.childProfileId.equals(other.childProfileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.ChildMaster[ childProfileId=" + childProfileId + " ]";
    }

    
    public IcpPostRelease getIcpPostRelease() {
        return icpPostRelease;
    }

    public void setIcpPostRelease(IcpPostRelease icpPostRelease) {
        this.icpPostRelease = icpPostRelease;
    }



    @XmlTransient
    public List<CounselingDetails> getCounselingDetailsCollection() {
        return counselingDetailsCollection;
    }

    public void setCounselingDetailsCollection(List<CounselingDetails> counselingDetailsCollection) {
        this.counselingDetailsCollection = counselingDetailsCollection;
    }
}
