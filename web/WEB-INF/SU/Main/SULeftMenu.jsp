<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!--new code-->
 <div id="accordion">
	<h3><a href="#"><s:text name="global.heading.chStatus"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">
                <tbody>
                     <tr align="left" valign="top">
                        <td><s:a href="SU-ChildStatus" style="text-decoration: none;color: red;"><s:text name="global.heading.updateChCurStat"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="SU-homedetails" style="text-decoration: none;color: red;"><s:text name="global.heading.enViUpHomeDet"/></s:a></td>
                    </tr>
                     
                    
                </tbody>
           </table>
               </div>
          
     <h3><a href="#"><s:text name="leftMenu.ds.CatMgmt"/></a></h3>
                            <div>
                                <table rules="rows"  cellpadding="4" cellspacing="4" align="left">
                                    <tbody>
                                        <tr>
                                       <td>
                                           <a href="DS-addCategory-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.addCat"/></a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <a href="DS-removeCategory-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.remCat"/></a>
                                       </td>
                                     </tr>
                                      <tr>
                                       <td>
                            <a href="DS-viewCategory1-viewCat" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewCat"/></a>
                                       </td>
                                      </tr>
                                       <tr>
                                        <td>
                            <a href="DS-enterTopCategory" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.entTCat"/></a>
                                       </td>
                                     </tr>
                                    </tbody>
                                </table>
                            </div>     
  <h3><a href="#"><s:text name="leftMenu.ds.dietChart"/></a></h3>
	<div>
            <table rules="rows"  cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    
                     <tr align="left" valign="top">
                         <td><a href="DS-dietChart-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.bomReg"/></a></td>
                    </tr>
                </tbody>
            </table>


         </div>
                                         
          <%--
           <h3><a href="#">Guarding & Security</a></h3>
          <div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">
                <tbody>
                    <tr>
                        <td><div id="accordion_sub">
                            <h3><a href="#">Profile Security Staff</a></h3>
                            <div>
                                <table rules="rows" align="left">
                                    <tbody>
                                        <tr>
                                       <td>
                                           <s:a href="SU-addProfile" style="text-decoration: none;color: red;">Add Profile</s:a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <s:a href="SU-modifyProfile-populateGAS" style="text-decoration: none;color: red;">Modify Profile</s:a>
                                       </td>
                                     </tr>
                                      <tr>
                                       <td>
                            <s:a href="SU-viewProfile-populateGAS" style="text-decoration: none;color: red;">View Profile</s:a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <s:a href="SU-removeProfile-populateGAS" style="text-decoration: none;color: red;">Remove Profile</s:a>
                                       </td>
                                     </tr>
                                    </tbody>
                                </table>
                            </div>
                          <h3><s:a href="#">DutySecurity Staff</s:a></h3>
                            <div>
                                <table rules="rows" align="left">
                                    <tbody>
                                        <tr>
                                       <td>
                            <s:a href="SU-addDuty-populateGAS" style="text-decoration: none;color: red;">Add Duty</s:a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <s:a href="SU-selObservation" style="text-decoration: none;color: red;">Add Observation</s:a>
                                       </td>
                                     </tr>
                                     
                                       <tr>
                                       <td>
                            <s:a href="SU-viewDuty-populateGAS" style="text-decoration: none;color: red;">View Duty</s:a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <s:a href="SU-selViewObservation" style="text-decoration: none;color: red;">View Observation</s:a>
                                       </td>
                                     </tr>
                                 </tbody>
                              </table>
                          </div>
                            </div>
                        </td>
                    </tr>
                          
                </tbody>
            </table>
          </div>
          --%>
          
          <%--accounts starts--%>
          <h3><a href="#">Accounts</a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">
                <tbody>
                     <tr align="left" valign="top">
                        <td><s:a href="SU-cashBook" style="text-decoration: none;color: red;">Cash Book Register</s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="SU-selCashBk" style="text-decoration: none;color: red;">View Cash Book</s:a></td>
                    </tr>
                <tr align="left" valign="top">
                        <td><s:a href="SU-selGenLedg" style="text-decoration: none;color: red;">General Ledger</s:a></td>
                    </tr> 
                  
                    
                </tbody>
           </table>
         </div>   
           <%--accounts ends--%>          
           <h3><a href="#"><s:text name="global.heading.docReports"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">
                <tbody>
                     <tr align="left" valign="top">
                        <td><s:a href="SU-AgewiseReport" style="text-decoration: none;color: red;"><s:text name="global.heading.ageWisePaticuRepo"/></s:a></td>
                    </tr>
                    
                <tr align="left" valign="top">
                        <td><s:a href="SU-Reports" style="text-decoration: none;color: red;"><s:text name="global.heading.chStatusReport"/></s:a></td>
                    </tr> 
                  
                    
                </tbody>
           </table>
         </div>
         <%--
                    <h3><a href="#">Analytical Reports</a></h3>
         <div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">
                <tbody>
                    
                    
                    <tr align="left" valign="top">
                        <td><s:a href="CW-Master-Report" target="_blank" style="text-decoration: none;color: red;">Children Report</s:a></td>
                    </tr>
                    
                    
                     <tr align="left" valign="top">
                        <td><s:a href="SU-ChildrenAnalyticalReports-Age" target="_blank" style="text-decoration: none;color: red;">Age Wise Report</s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="DOC-Disease-Report" target="_blank" style="text-decoration: none;color: red;">Disease Wise Report</s:a></td>
                    </tr>
                    
                    
                    
                    <tr align="left" valign="top">
                        <td><s:a href="JsonData.json" style="text-decoration: none;color: red;">Age Wise JSON Data</s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="DOC-Disease-Report-JSON" target="_blank" style="text-decoration: none;color: red;">Disease Wise JSON Data</s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="CW-Get-Master-Report-JSON" target="_blank" style="text-decoration: none;color: red;">Master Report JSON Data</s:a></td>
                    </tr>
                   
                    
                    
                </tbody>
           </table>
         </div>              
          --%>
          
                                        <h3><a href="#"><s:text name="leftMenu.perAccSet"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="SU-ChangePassword" style="text-decoration: none;color: red;"><s:text name="menuItem.changePass"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="SU-ModifyMyDetails" style="text-decoration: none;color: red;"><s:text name="menuItem.viewEditDetails"/></s:a></td>
                    </tr>
                    
                    
                </tbody>
            </table>
       </div>
                    
                    
                    
      </div>



                    
                    
                    
                  