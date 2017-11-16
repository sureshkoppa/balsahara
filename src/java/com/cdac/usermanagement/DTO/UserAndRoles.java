/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.usermanagement.DTO;

import com.cdac.usermanagement.ORM.RoleMaster;
import java.util.List;

/**
 *The main objective of this class is to encapsulate the
 * userid and the corresponding role
 * @author Anupam
 */
public class UserAndRoles {

    private String userId;
    private List<RoleMaster> userRoles;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public List<RoleMaster> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(List<RoleMaster> userRoles) {
        this.userRoles = userRoles;
    }

    

}
