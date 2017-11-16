/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.caseworker.DTO;

import java.util.Date;

/**
 *
 * @author suresh
 */
public class icpChildDTO {
 
    private String profile_no;
    private int profile_year;
    private Date date_admission;

    public Date getDate_admission() {
        return date_admission;
    }

    public void setDate_admission(Date date_admission) {
        this.date_admission = date_admission;
    }

    public String getProfile_no() {
        return profile_no;
    }

    public void setProfile_no(String profile_no) {
        this.profile_no = profile_no;
    }

    public int getProfile_year() {
        return profile_year;
    }

    public void setProfile_year(int profile_year) {
        this.profile_year = profile_year;
    }

   //ICP-Personal Details 
    private String child_name="--";
    private int child_age=0;
    private String child_sex="--";
    private String father_name="--";
    private String mother_name="--";
    private String nationality="--";
    private String child_religion="--";
    private String child_cast="--";
    private String child_subcaste="--";
    private String child_eduAttain="--";
    private String health_needs="--";
    private String emoTrain_needs="--";
    private String leaCreate_play="--";
    private String attach_rel="--";
    private String relig_beliefs="--";
    private String prot_allAbuse="--";
    private String social_stream="--";
    private String follow_postAction="--";
             
    public String getChild_name() {
        return child_name;
    }

    public void setChild_name(String child_name) {
        this.child_name = child_name;
    }

    public int getChild_age() {
        return child_age;
    }

    public void setChild_age(int child_age) {
        this.child_age = child_age;
    }

    public String getChild_sex() {
        return child_sex;
    }

    public void setChild_sex(String child_sex) {
        this.child_sex = child_sex;
    }

    public String getFather_name() {
        return father_name;
    }

    public void setFather_name(String father_name) {
        this.father_name = father_name;
    }

    public String getMother_name() {
        return mother_name;
    }

    public void setMother_name(String mother_name) {
        this.mother_name = mother_name;
    }

   public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
    
 
    public String getChild_religion() {
        return child_religion;
    }

    public void setChild_religion(String child_religion) {
        this.child_religion = child_religion;
    }

    public String getChild_cast() {
        return child_cast;
    }

    public void setChild_cast(String child_cast) {
        this.child_cast = child_cast;
    }

    
    public String getChild_subcaste() {
        return child_subcaste;
    }

    public void setChild_subcaste(String child_subcaste) {
        this.child_subcaste = child_subcaste;
    }
    public String getChild_eduAttain() {
        return child_eduAttain;
    }

    public void setChild_eduAttain(String child_eduAttain) {
        this.child_eduAttain = child_eduAttain;
    }

    public String getHealth_needs() {
        return health_needs;
    }

    public void setHealth_needs(String health_needs) {
        this.health_needs = health_needs;
    }

    public String getEmoTrain_needs() {
        return emoTrain_needs;
    }

    public void setEmoTrain_needs(String emoTrain_needs) {
        this.emoTrain_needs = emoTrain_needs;
    }

    public String getLeaCreate_play() {
        return leaCreate_play;
    }

    public void setLeaCreate_play(String leaCreate_play) {
        this.leaCreate_play = leaCreate_play;
    }

    public String getAttach_rel() {
        return attach_rel;
    }

    public void setAttach_rel(String attach_rel) {
        this.attach_rel = attach_rel;
    }
    
 
    public String getRelig_beliefs() {
        return relig_beliefs;
    }

    public void setRelig_beliefs(String relig_beliefs) {
        this.relig_beliefs = relig_beliefs;
    }

 
    public String getProt_allAbuse() {
        return prot_allAbuse;
    }

    public void setProt_allAbuse(String prot_allAbuse) {
        this.prot_allAbuse = prot_allAbuse;
    }

    public String getSocial_stream() {
        return social_stream;
    }

    public void setSocial_stream(String social_stream) {
        this.social_stream = social_stream;
    }

    public String getFollow_postAction() {
        return follow_postAction;
    }

    public void setFollow_postAction(String follow_postAction) {
        this.follow_postAction = follow_postAction;
    }

    
    //ICP Pre Release Fields
    
    private String release_type="--";
    private String place_transfer="--";
    private String authority_responsible="--";
    private String details_place="--";
    private Date date_release;
    private Date date_repatriot;
    private String requisition_escort="--";
    private String identify_escort="--";
    private String rehabi_placement="--";
    private String sponser_require="--";
    private String ident_officer="--";
    private String mou_sa_is="--";
    private String ident_sponser="--";
    private String mou_childSponser="--";
    private String child_savAcc="--";
    private String child_earnBelong="--";
    private String child_awarReward="--";
    private String child_option="--";
    private String other_info="--";

    public String getAuthority_responsible() {
        return authority_responsible;
    }

    public void setAuthority_responsible(String authority_responsible) {
        this.authority_responsible = authority_responsible;
    }

    public String getChild_awarReward() {
        return child_awarReward;
    }

    public void setChild_awarReward(String child_awarReward) {
        this.child_awarReward = child_awarReward;
    }

    public String getChild_earnBelong() {
        return child_earnBelong;
    }

    public void setChild_earnBelong(String child_earnBelong) {
        this.child_earnBelong = child_earnBelong;
    }

    public String getChild_option() {
        return child_option;
    }

    public void setChild_option(String child_option) {
        this.child_option = child_option;
    }

    public String getChild_savAcc() {
        return child_savAcc;
    }

    public void setChild_savAcc(String child_savAcc) {
        this.child_savAcc = child_savAcc;
    }

    public Date getDate_release() {
        return date_release;
    }

    public void setDate_release(Date date_release) {
        this.date_release = date_release;
    }

    public Date getDate_repatriot() {
        return date_repatriot;
    }

    public void setDate_repatriot(Date date_repatriot) {
        this.date_repatriot = date_repatriot;
    }

    public String getIdent_officer() {
        return ident_officer;
    }

    public void setIdent_officer(String ident_officer) {
        this.ident_officer = ident_officer;
    }

    public String getIdent_sponser() {
        return ident_sponser;
    }

    public void setIdent_sponser(String ident_sponser) {
        this.ident_sponser = ident_sponser;
    }

    public String getIdentify_escort() {
        return identify_escort;
    }

    public void setIdentify_escort(String identify_escort) {
        this.identify_escort = identify_escort;
    }

    public String getMou_childSponser() {
        return mou_childSponser;
    }

    public void setMou_childSponser(String mou_childSponser) {
        this.mou_childSponser = mou_childSponser;
    }

    public String getMou_sa_is() {
        return mou_sa_is;
    }

    public void setMou_sa_is(String mou_sa_is) {
        this.mou_sa_is = mou_sa_is;
    }

    public String getOther_info() {
        return other_info;
    }

    public void setOther_info(String other_info) {
        this.other_info = other_info;
    }

    public String getPlace_transfer() {
        return place_transfer;
    }

    public void setPlace_transfer(String place_transfer) {
        this.place_transfer = place_transfer;
    }

    public String getRehabi_placement() {
        return rehabi_placement;
    }

    public void setRehabi_placement(String rehabi_placement) {
        this.rehabi_placement = rehabi_placement;
    }

    public String getRelease_type() {
        return release_type;
    }

    public void setRelease_type(String release_type) {
        this.release_type = release_type;
    }

    public String getRequisition_escort() {
        return requisition_escort;
    }

    public void setRequisition_escort(String requisition_escort) {
        this.requisition_escort = requisition_escort;
    }

    public String getDetails_place() {
        return details_place;
    }

    public void setDetails_place(String details_place) {
        this.details_place = details_place;
    }

  
    public String getSponser_require() {
        return sponser_require;
    }

    public void setSponser_require(String sponser_require) {
        this.sponser_require = sponser_require;
    }
    
    
    //ICP Post Release Fields
    private String status_bankAcc="--";
    private String earning_handedOver="--";
    private String child_placement="--";
    private String child_familyBehav="--";
    private String social_milieu="--";
    private String how_skillUsed="--";
    private String whether_school="--";
    private Date date_admit;
    private String name_school="--";

    public String getChild_familyBehav() {
        return child_familyBehav;
    }

    public void setChild_familyBehav(String child_familyBehav) {
        this.child_familyBehav = child_familyBehav;
    }

    public String getChild_placement() {
        return child_placement;
    }

    public void setChild_placement(String child_placement) {
        this.child_placement = child_placement;
    }

    public Date getDate_admit() {
        return date_admit;
    }

    public void setDate_admit(Date date_admit) {
        this.date_admit = date_admit;
    }

    public String getEarning_handedOver() {
        return earning_handedOver;
    }

    public void setEarning_handedOver(String earning_handedOver) {
        this.earning_handedOver = earning_handedOver;
    }

    public String getHow_skillUsed() {
        return how_skillUsed;
    }

    public void setHow_skillUsed(String how_skillUsed) {
        this.how_skillUsed = how_skillUsed;
    }

    public String getName_school() {
        return name_school;
    }

    public void setName_school(String name_school) {
        this.name_school = name_school;
    }

    public String getSocial_milieu() {
        return social_milieu;
    }

    public void setSocial_milieu(String social_milieu) {
        this.social_milieu = social_milieu;
    }

    public String getStatus_bankAcc() {
        return status_bankAcc;
    }

    public void setStatus_bankAcc(String status_bankAcc) {
        this.status_bankAcc = status_bankAcc;
    }

    public String getWhether_school() {
        return whether_school;
    }

    public void setWhether_school(String whether_school) {
        this.whether_school = whether_school;
    }
    
    
}
