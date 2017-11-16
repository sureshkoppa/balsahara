<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!--new code-->

 <div id="accordion">
     
     <%--s:property value="#session.hometype"/--%>
     
     <s:if test="#session.hometype=='CH' || #session.hometype=='SH'">
         <h3><a href="#"><s:text name="global.leftMenu.admAndDis"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    
                    
                    
                    <tr align="left" valign="top">
                        <td><s:a href="CW-AdmCH" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.admReg"/></s:a></td>
                    </tr>
                    <!--Added by vinumol 5/9/2011-->
                    <tr align="left" valign="top">
                        <td><s:a href="CW-ViewAdmCH" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.viewAdm"/></s:a></td>
                    </tr>
                    <!--Ended by vinumol 5/9/2011-->
                    
                    <tr align="left" valign="top">
                        <td><s:a href="CW-Edit-Child" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.editChiPro"/></s:a></td>                
                        
                    </tr>
                    
                    
                    <tr align="left" valign="top">
                        <td><s:a href="CW-Discharge" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.disReg"/></s:a></td>
                    </tr>
                  <!--Added by vinumol 08-03-2012-->
                    <tr align="left" valign="top">
                        <td><s:a href="CW-ViewDischarge" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.viewDis"/></s:a></td>
                    </tr>
                  <!--Ended by vinumol 08-03-2012-->
                    <tr align="left" valign="top">
                        <td><s:a href="Child-AddPhoto" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.changeUplPhoto"/></s:a></td>
                    </tr>
                    
                </tbody>
            </table>

         </div>

        <h3><a href="#"><s:text name="global.leftMenu.caseHis"/></a></h3>
	<div>
            <table  rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-CH-Personal" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.childPerData"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-CH-Household" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.chiHouseDet"/></s:a></td>
                    </tr>
                     <tr align="left" valign="top">
                         <td><s:a href="CW-CH-Family" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.childFamDet"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-CH-Adolescence" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.chiAdlHis"/></s:a></td>
                    </tr>
                     <tr align="left" valign="top">
                         <td><s:a href="CW-CH-Employment" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.childEmpDet"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-CH-PreEducation" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.childPriAdmEdu"/></s:a></td>
                    </tr>
                   <tr align="left" valign="top">
                       <td><s:a href="CW-CH-AfterEducation" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.childAftEdu"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-CH-FamilyCrime" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.hisFamilyCrDet"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-CH-SocialHistory" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.childSocHis"/></s:a></td>
                    </tr>
                </tbody>
            </table>

         </div>
         
        <h3><a href="#"><s:text name="global.leftmenu.intReg"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                     <tr align="left" valign="top">
                         <td><s:a href="DS-Interview" style="text-decoration: none;color: red;"><s:text name="global.leftmenu.intReg"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="DS-ViewInterview" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.viewIntReg"/></s:a></td>
                    </tr>
                </tbody>
            </table>

         </div>
        <h3><a href="#"><s:text name="global.leftMenu.icp"/></a></h3>
	<div>
            <table  rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="ICP-Personal" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.persDetails"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="ICP-Pre-Release" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.preRelease"/></s:a></td>
                    </tr>
                     <tr align="left" valign="top">
                         <td><s:a href="ICP-Post-Release" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.postRelease"/></s:a></td>
                    </tr>
                </tbody>
            </table>
        </div>         
        <h3><a href="#"><s:text name="global.leftMenu.reports"/></a></h3>
	<div>
            <table  rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-CH-ReportSubAction" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.caseHisRep"/></s:a></td>
                    </tr>
                     <tr align="left" valign="top">
                         <td><s:a href="ICP-Report" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.icpRep"/></s:a></td>
                     </tr>
                </tbody>
        </table>
            </div>   
          <h3><a href="#"><s:text name="leftMenu.perAccSet"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-ChangePassword" style="text-decoration: none;color: red;"><s:text name="menuItem.changePass"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="CW-ModifyMyDetails" style="text-decoration: none;color: red;"><s:text name="menuItem.viewEditDetails"/></s:a></td>
                    </tr>
                    
                    
                </tbody>
            </table>
       </div>
          
        
          
                    
 </s:if>                
                   
       
        <s:elseif test="#session.hometype=='RU' || #session.hometype=='OH'">           
                    
 <h3><a href="#"><s:text name="global.leftMenu.admAndDis"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        
                        <%--<td><s:a href="CW-AdmRH" style="text-decoration: none;color: red;">Admission Register</s:a></td>--%>
                        <td><s:a href="CW-RH-Adm-Check" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.admReg"/></s:a></td>
                    </tr>
                      <!--Added by vinumol 08-03-2012-->
                    <tr align="left" valign="top">
                         <td><s:a href="CW-ViewAdmCH" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.viewAdm"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="CW-Edit-Child" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.editChiPro"/></s:a><img src="./images/gif_new.gif"/></td>                
                        
                    </tr>
                    
                    
                     <!--Ended by vinumol 08-03-2012-->
                    <tr align="left" valign="top">
                        <td><s:a href="CW-Discharge" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.disReg"/></s:a></td>
                    </tr>
                     <!--Added by vinumol 08-03-2012-->
                    <tr align="left" valign="top">
                        <td><s:a href="CW-ViewDischarge" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.viewDis"/></s:a></td>
                    </tr>
                     <!--Ended by vinumol 08-03-2012-->
                    <tr align="left" valign="top">
                        <td><s:a href="Child-AddPhoto" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.changeUplPhoto"/></s:a></td>
                    </tr>
                    
                </tbody>
            </table>

         </div>

        <h3><a href="#"><s:text name="global.leftMenu.caseWork"/></a></h3>
	<div>
            <table  rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                   <tr align="left" valign="top">
                         <td><s:a href="CW-Casework" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.caseWork"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-ViewCasework" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.viewCaseWork"/></s:a></td>
                    </tr>
                </tbody>
            </table>

         </div>
        
                        <h3><a href="#"><s:text name="global.leftmenu.intReg"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                     <tr align="left" valign="top">
                         <td><s:a href="DS-Interview" style="text-decoration: none;color: red;"><s:text name="global.leftmenu.intReg"/></s:a></td>
                    </tr>
                    <tr align="left" valign="top">
                         <td><s:a href="DS-ViewInterview" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.viewIntReg"/></s:a></td>
                    </tr>
                </tbody>
            </table>

         </div>
                         <h3><a href="#"><s:text name="global.leftMenu.reports"/></a></h3>
	<div>
            <table  rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                     <tr align="left" valign="top">
                         <td><s:a href="CW-Report" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.caseWrkRep"/></s:a></td>
                    </tr>
                    
                </tbody>
        </table>
            </div>   
                    
                     <h3><a href="#"><s:text name="leftMenu.perAccSet"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="CW-ChangePassword" style="text-decoration: none;color: red;"><s:text name="menuItem.changePass"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="CW-ModifyMyDetails" style="text-decoration: none;color: red;"><s:text name="menuItem.viewEditDetails"/></s:a></td>
                    </tr>
                    
                    
                </tbody>
            </table>
       </div>
                    
                      <!--Attention Code start-->
                      <h3><a href="#"><s:text name="global.leftMenu.overStayChil"/>&nbsp;&nbsp;<!--img src="images/attention4.gif" height="15" width="15"/--></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                     <tr align="left" valign="top">
                         <td><s:a href="CW-OverStayed" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.showPenDisC"/></s:a></td>
                    </tr>
                   
                </tbody>
            </table>

         </div>
                    <!--Attention Code END-->
         
        </s:elseif>            
          
       </div>


                    
                    
                    
                    