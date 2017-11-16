<%@taglib uri="/struts-tags" prefix="s"%>
<!--new code-->
 <div id="accordion">
     
     <h3><a href="#">Home Management</a></h3>
     <div>
         <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="UM-AddHome" style="text-decoration: none;color: red;">Add Home</s:a></td>
                    </tr>

                    <tr align="left" valign="top">
                        <td><s:a href="UM-AssignHome" style="text-decoration: none;color: red;">Assign Home</s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="UM-ShowHomeDetails" style="text-decoration: none;color: red;">View Home Details</s:a></td>
                    </tr>
                    
                    
                </tbody>
            </table>
         
     </div>
     
	<h3><a href="#">User Management</a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-AddUser" style="text-decoration: none;color: red;">Add User</s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-ModifyUser" style="text-decoration: none;color: red;">Modify User</s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-DeleteUser" style="text-decoration: none;color: red;">Delete User</s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-ViewUser" style="text-decoration: none;color: red;">View User</s:a></td>
                    </tr>
                    <%--
                    using the following link you can assign more than one role at a time
                    <tr align="left" valign="top">
                        <td><s:a href="UM-AssignRole" style="text-decoration: none;color: red;">Assign Many Role</s:a></td>
                    </tr>
                    --%>
                </tbody>
            </table>

         </div>
                    
                    <h3><a href="#">Role Management</a></h3>
                    <div>
          <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-AssignOneRole" style="text-decoration: none;color: red;">Assign Role</s:a></td>
                    </tr>

                    <tr align="left" valign="top">
                        <td><s:a href="UM-RemoveAssignedRole" style="text-decoration: none;color: red;">Remove Assigned Role</s:a></td>
                    </tr>                    
                </tbody>
          </table>
                        
                    </div>
                    
                    
                    <h3><a href="#">CWC/JJB/DPO Management</a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-AssignCWCJJB" style="text-decoration: none;color: red;">Create CWC Group</s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-ApproveDPO" style="text-decoration: none;color: red;">Approve DPO</s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-CwcModifyGroup" style="text-decoration: none;color: red;">CWC Modify group</s:a></td>
                    </tr>                 
                   
                </tbody>
            </table>
       </div>
                    
                    
                    
                    <!--ST-->
                    <h3><a href="#">User Log In Reports</a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-GetLoggedInDetails" style="text-decoration: none;color: red;">View Recently Logged In User</s:a></td>
                    </tr>
                    
                </tbody>
            </table>
       </div>
                    <!--EN-->
                    
                    
                    
                    
                    
                     <h3><a href="#">Personal Account Settings</a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-ChangePassword" style="text-decoration: none;color: red;">Change My Password</s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="UM-ModifyMyDetails" style="text-decoration: none;color: red;">View/Edit My Details</s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="UM-AddPhoto" style="text-decoration: none;color: red;">Add/Change my photo</s:a></td>
                    </tr>
                    
                    
                    
                </tbody>
            </table>
       </div>

       </div>




