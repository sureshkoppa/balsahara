/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.usermanagement.ORM;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author ANUPAM
 */
@Embeddable
public class UserDetailPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "USER_ID", nullable = false, length = 30)
    private String userId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ROLE_ID", nullable = false)
    private int roleId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "HOME_ID", nullable = false, length = 30)
    private String homeId;

    public UserDetailPK() {
    }

    public UserDetailPK(String userId, int roleId, String homeId) {
        this.userId = userId;
        this.roleId = roleId;
        this.homeId = homeId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userId != null ? userId.hashCode() : 0);
        hash += (int) roleId;
        hash += (homeId != null ? homeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserDetailPK)) {
            return false;
        }
        UserDetailPK other = (UserDetailPK) object;
        if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId))) {
            return false;
        }
        if (this.roleId != other.roleId) {
            return false;
        }
        if ((this.homeId == null && other.homeId != null) || (this.homeId != null && !this.homeId.equals(other.homeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.cdac.usermanagement.ORM.UserDetailPK[ userId=" + userId + ", roleId=" + roleId + ", homeId=" + homeId + " ]";
    }
    
}
