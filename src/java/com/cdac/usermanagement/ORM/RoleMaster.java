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
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
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
@Table(name = "role_master", catalog = "child_homes_new", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RoleMaster.findAll", query = "SELECT r FROM RoleMaster r"),
    @NamedQuery(name = "RoleMaster.findByRoleId", query = "SELECT r FROM RoleMaster r WHERE r.roleId = :roleId"),
    @NamedQuery(name = "RoleMaster.findByRoleName", query = "SELECT r FROM RoleMaster r WHERE r.roleName = :roleName")})
public class RoleMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GenericGenerator(name="generator", strategy="increment")
    @GeneratedValue(generator="generator")
    @NotNull
    @Column(name = "ROLE_ID", nullable = false)
    private Integer roleId;
    @Size(max = 30)
    @Column(name = "ROLE_NAME", length = 30)
    private String roleName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "roleMaster")
    private List<UserDetail> userDetailList;

    public RoleMaster() {
    }

    public RoleMaster(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @XmlTransient
    public List<UserDetail> getUserDetailList() {
        return userDetailList;
    }

    public void setUserDetailList(List<UserDetail> userDetailList) {
        this.userDetailList = userDetailList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (roleId != null ? roleId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RoleMaster)) {
            return false;
        }
        RoleMaster other = (RoleMaster) object;
        if ((this.roleId == null && other.roleId != null) || (this.roleId != null && !this.roleId.equals(other.roleId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.RoleMaster[ roleId=" + roleId + " ]";
    }
    
}
