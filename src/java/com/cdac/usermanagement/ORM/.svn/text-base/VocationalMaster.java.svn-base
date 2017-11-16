/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author ANUPAM
 */
@Entity
@Table(name = "vocational_master", catalog = "child_homes", schema = "", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"VOC_COURSE_NAME"})})
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VocationalMaster.findAll", query = "SELECT v FROM VocationalMaster v"),
    @NamedQuery(name = "VocationalMaster.findByVocCourseId", query = "SELECT v FROM VocationalMaster v WHERE v.vocCourseId = :vocCourseId"),
    @NamedQuery(name = "VocationalMaster.findByVocCourseName", query = "SELECT v FROM VocationalMaster v WHERE v.vocCourseName = :vocCourseName")})
public class VocationalMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GenericGenerator(name="generator", strategy="increment")
    @GeneratedValue(generator="generator")
    @Basic(optional = false)
    @NotNull
    @Column(name = "VOC_COURSE_ID", nullable = false)
    private Integer vocCourseId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "VOC_COURSE_NAME", nullable = false, length = 50)
    private String vocCourseName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "vocationalMaster")
    private List<VocationalDetails> vocationalDetailsList;

    public VocationalMaster() {
    }

    public VocationalMaster(Integer vocCourseId) {
        this.vocCourseId = vocCourseId;
    }

    public VocationalMaster(Integer vocCourseId, String vocCourseName) {
        this.vocCourseId = vocCourseId;
        this.vocCourseName = vocCourseName;
    }

    public Integer getVocCourseId() {
        return vocCourseId;
    }

    public void setVocCourseId(Integer vocCourseId) {
        this.vocCourseId = vocCourseId;
    }

    public String getVocCourseName() {
        return vocCourseName;
    }

    public void setVocCourseName(String vocCourseName) {
        this.vocCourseName = vocCourseName;
    }

    @XmlTransient
    public List<VocationalDetails> getVocationalDetailsList() {
        return vocationalDetailsList;
    }

    public void setVocationalDetailsList(List<VocationalDetails> vocationalDetailsList) {
        this.vocationalDetailsList = vocationalDetailsList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vocCourseId != null ? vocCourseId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VocationalMaster)) {
            return false;
        }
        VocationalMaster other = (VocationalMaster) object;
        if ((this.vocCourseId == null && other.vocCourseId != null) || (this.vocCourseId != null && !this.vocCourseId.equals(other.vocCourseId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.VocationalMaster[ vocCourseId=" + vocCourseId + " ]";
    }
    
}
