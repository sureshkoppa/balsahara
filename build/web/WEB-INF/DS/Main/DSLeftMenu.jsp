<%@taglib prefix="s" uri="/struts-tags"%>
<div id="accordion">
    <%--hided on 17-1-2014 start
     <h3><a href="#"><s:text name="leftMenu.ds.CatMgmt"/></a></h3>
                            <div>
                                <table rules="rows"  cellpadding="4" cellspacing="4" align="left">
                                    <tbody>
                                        <tr>
                                       <td>
                            <a href="DS-viewCategory-viewCat" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewCat"/></a>
                                       </td>
                                      </tr>
                                       </tbody>
                                </table>
                            </div>
    hided on 17-1-2014 ends--%>
<!--new code-->
<%--
 <div id="accordion">
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
                            <a href="DS-viewCategory-viewCat" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewCat"/></a>
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
--%>
     <h3><a href="#"><s:text name="leftMenu.ds.itemMgmt"/></a></h3>
                            <div>
                                <table rules="rows" cellpadding="4" cellspacing="4" align="left">
                                    <tbody>
                                        <tr>
                                       <td>
                            <a href="DS-addItem-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.addItem"/></a>
                                       </td>
                                     </tr>
                                     <%--tr>
                                       <td>
                            <a href="DS-removeItem-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.remItem"/></a>
                                       </td>
                                     </tr--%>
                                     <tr>
                                         <td>
                            <a href="DS-viewItem-viewCat" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewItem"/>& Stock</a>
                                       </td>
                                     </tr>
                                     <tr>
                                   <td>
                          <a href="DS-modifyItem-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.entQHand"/>(Stock)</a>
                                   </td>
                                    </tr>      
                           </tbody>
                       </table>
         </div>
                                   <h3><a href="#"><s:text name="global.leftMenu.menuReg"/></a></h3>
<div>
            <table rules="rows"  cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><a href="DS-dietMenu" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.addMenuItem"/></a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-detailMenu" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.entMenuDetails"/></a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-viewMenu" style="text-decoration: none;color: red;"><s:text name="global.leftMenu.viewMenu"/></a></td>
                    </tr>
                </tbody>
            </table>


         </div> 
    <h3><a href="#"><!--s:text name="leftMenu.ds.issues"/-->Diet & Item Issues</a></h3>
	<div>
            <table rules="rows"  cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><a href="DS-dietIssue-popRation" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.dietIssReg"/></a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-issue-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.itemIssReg"/></a></td>
                    </tr>
                     <tr align="left" valign="top">
                        <td><a href="DS-viewDiet" style="text-decoration: none;color: red;">View Diet Issue</a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-viewIssue" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewIssue"/></a></td>
                    </tr>
                </tbody>
            </table>


         </div>               
                 

                          <%--
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
  
                          --%>
  <h3><a href="#"><!--s:text name="leftMenu.ds.recAndPur"/-->Material Receipts & Purchases</a></h3>
	<div>
            <table rules="rows"  cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><a href="DS-receipt-populate" style="text-decoration: none;color: red;"><!--s:text name="menuItem.ds.recPurReg"/-->
                            Material Receipt & Purchase Register
                            </a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-viewReceipt" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewRecPur"/></a></td>
                    </tr>
                   
                </tbody>
            </table>


         </div>
                      
  <h3><a href="#"><s:text name="leftMenu.ds.loanAndPb"/></a></h3>
	<div>
            <table rules="rows"  cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><a href="DS-loan-populateLoan" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.loanReg"/></a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-payBack" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.payReg"/></a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-viewLoan" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewLoan"/></a></td>
                    </tr>
                   
                </tbody>
            </table>


         </div>
                     
  <h3><a href="#"><s:text name="leftMenu.ds.donation"/></a></h3>
	<div>
            <table rules="rows"  cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><a href="DS-donation-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.donBook"/></a></td>
                    </tr>
                   <tr align="left" valign="top">
                        <td><a href="DS-viewDonation" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewDon"/></a></td>
                    </tr>
                </tbody>
            </table>


         </div>
  


  
  <h3><a href="#"><s:text name="leftMenu.ds.tailoring"/></a></h3>
	<div>
            <table rules="rows"  cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><a href="DS-tailorIssue-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.tailIssReg"/></a></td>
                    </tr>
                     <tr align="left" valign="top">
                        <td><a href="DS-tailorReceive-populate" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.tailRecReg"/></a></td>
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-viewTailoring" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewTail"/></a></td>
                    </tr>
                </tbody>
            </table>

         </div>
<h3><a href="#"><s:text name="leftMenu.ds.reports"/></a></h3>
	<div>
            <table rules="rows"  cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><a href="DS-reportSelectMonth" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.dietRep"/></a></td>
                        
                    </tr>
                    <tr align="left" valign="top">
                        <td><a href="DS-reportRecIss" style="text-decoration: none;color: red;">Monthly Procurements & Issues<img src="./images/gif_new.gif"/></a></td>
                    </tr>  
                </tbody>
            </table>


         </div>                    
  <%--hided on 17-1-2014 start
                            <h3><a href="#"><s:text name="leftMenu.ds.proSecStaff"/></a></h3>
                            <div>
                                <table rules="rows" cellpadding="4" cellspacing="4" align="left">
                                    <tbody>
                                        <tr>
                                       <td>
                                           <s:a href="SU-addProfile" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.addProfile"/></s:a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <s:a href="SU-modifyProfile-populateGAS" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.modProfile"/></s:a>
                                       </td>
                                     </tr>
                                      <tr>
                                       <td>
                            <s:a href="SU-viewProfile-populateGAS" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewProfile"/></s:a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <s:a href="SU-removeProfile-populateGAS" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.remProfile"/></s:a>
                                       </td>
                                     </tr>
                                      <tr>
                                       <td>
                            <s:a href="SU-addGuardPhoto-populateGAS" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.addPhoto"/></s:a>
                                       </td>
                                     </tr>
                                    </tbody>
                                </table>
                            </div>
                          <h3><s:a href="#"><s:text name="leftMenu.ds.dutySecStaff"/></s:a></h3>
                            <div>
                                <table rules="rows" cellpadding="4" cellspacing="4" align="left">
                                    <tbody>
                                        <tr>
                                       <td>
                            <s:a href="SU-addDuty-populateGAS" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.addDuty"/></s:a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <s:a href="SU-selObservation" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.addObser"/></s:a>
                                       </td>
                                     </tr>
                                    
                                     
                                       <tr>
                                       <td>
                            <s:a href="SU-viewDuty-populateGAS" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewDuty"/></s:a>
                                       </td>
                                     </tr>
                                     <tr>
                                       <td>
                            <s:a href="SU-selViewObservation" style="text-decoration: none;color: red;"><s:text name="menuItem.ds.viewObser"/></s:a>
                                       </td>
                                     </tr>
                                     
                                 </tbody>
                              </table>
                          </div>
                      
                       
  
        <h3><a href="#"><s:text name="leftMenu.perAccSet"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="DS-ChangePassword" style="text-decoration: none;color: red;"><s:text name="menuItem.changePass"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="DS-ModifyMyDetails" style="text-decoration: none;color: red;"><s:text name="menuItem.viewEditDetails"/></s:a></td>
                    </tr>
                    
                    
                </tbody>
            </table>
                          
                        
       </div>

       hided on 17-1-2014 ends--%>                 
 </div>