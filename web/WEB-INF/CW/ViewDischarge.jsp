<%-- 
    Document   : ViewDischarge
    Created on : 27 Feb, 2012, 10:28:58 AM
    Author     : vinumol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Discharge</title>
        <script>
            <%--for Error Buttons start--%>      
            
               var textok=$("<div/>").html("<s:text name="button.err.ok"/>").text();
               var okvar = {close: textok}; // English                
               var errButL10n = {};
               errButL10n[okvar.close] = function() { // Localised text with common functionality
                        $(this).dialog('close');
               };
    
             
             <%--for Error Buttons ends--%> 
            <%--for Error Code start--%>    			
            var $dialog = $('<div></div>')
		    .html('This dialog will show every time!')
		    .dialog({
			autoOpen: false,
                        height: 130,
			width: 250,
                        modal: true,
                        title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: errButL10n
	     	});
            <%--for Error Code ends--%>        
            function validate()
            {
                if(document.getElementById("datepicker").value=="")
                    {
                        $dialog.html("<s:text name="js.err.selFromDate"/> ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }
                else if(document.getElementById("datepicker1").value=="")
                    {
                        $dialog.html("<s:text name="js.err.selToDate"/> ");
                        $dialog.parent().addClass( "ui-state-error" );
                        $dialog.dialog('open');
                        return false;
                    }    
            }
        </script>    

    </head>
    <body>
        <center>
        <s:if test="%{testing == 'viewdischargefirst'}">
            <CAPTION><font size="3"><b><s:text name="heading.viewDisReg"/></b></font></CAPTION>
        <table border="1">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="view_discharge" action="viewdischarge_dateentered" method="POST" theme="css_xhtml" id="view_discharge" onsubmit="javascript:return validate();">
                <tr><td align="right"><s:text name="label.fromDate"/>:</td><td><s:textfield name="discharge_fromdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="label.toDate"/>:</td><td><s:textfield name="discharge_todate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="button.view"/>" name="View" align="center" id="View"/></td></tr>
            </s:form>
        </table>
        </s:if>
            
<s:elseif test="%{testing == 'viewdischarge_dateselect'}">
          <s:if test="%{child_profid_list.size() == 0}">
              <h2><s:text name="msg.noChildDetPresentDurPrd"/></h2>
          </s:if>
          <s:else>
              <CAPTION><font size="3"><b><s:text name="global.heading.viewopregSelProfId"/></b></font></CAPTION>
            <table border="1">
                <tr><td><s:text name="global.label.childProID"/></td><td><s:text name="label.childName"/></td><td><s:text name="label.disDate"/></td><td><s:text name="label.actTaken"/></td> </tr>
            <s:iterator value="child_profid_list">
              <tr><td><s:url id="viewDischargeReg" action="viewDischargeReg_selectprofid">
                  <s:param name="disreg_profid">%{childProfileId}</s:param>
                </s:url>
                <s:a href="%{viewDischargeReg}">
             
               <s:property value="childProfileId"/>  </s:a>
            </td>
            <td>
                <s:property value="childMaster.childName"/>
            </td>
            <td>
                <s:date name="transDischargeDate" format="dd/MM/yyyy"/>
            </td>
           
            <td>
                <s:if test="%{actionTaken=='transfer'}">
                    <s:text name="label.transOthHome"/>
                </s:if>
                <s:elseif test="%{actionTaken=='handover'}">
                    <s:text name="label.handOverParents"/>
                </s:elseif>
                <s:elseif test="%{actionTaken=='otherstate'}">
                    <s:text name="label.transToOthState"/>
                </s:elseif>
                <s:elseif test="%{actionTaken=='ngo'}">
                    <s:text name="label.transToNgoHome"/>
                </s:elseif>
                <s:elseif test="%{actionTaken=='After Care Home'}">
                    <s:text name="label.stateAftCareHome"/>
                </s:elseif>                
                <s:elseif test="%{actionTaken=='releaseOnBail'}">
                    Release on bail
                </s:elseif> 
                <s:elseif test="%{actionTaken=='othercountry'}">
                    Transfered to other country 
                </s:elseif>                    
                <s:elseif test="%{actionTaken=='Islamic Centre'}">
                    Islamic Centre
                </s:elseif>                
            </td>
        </tr>
    </s:iterator>
        </table>
          </s:else>
              </s:elseif>
              <s:elseif test="%{testing == 'viewdischarge_profidselect'}">
                   <CAPTION><font size="3"><b><s:text name="label.disRegView"/></b></font></CAPTION>
          <table border="1">
                <tr><td align="right"><s:text name="global.label.childProID"/> :</td><td><s:property value="%{dreg.childProfileId}"/></td></tr>
                <tr><td align="right"><s:text name="label.cwcJjbOrdNum"/> :</td><td><s:property value="%{dreg.cwcJjbOrderNo}"/></td></tr>
                <tr><td align="right"><s:text name="label.cwcJjbOrdDate"/> :</td><td><s:date name="%{dreg.orderDate}" format="dd/MM/yyyy"/></td></tr>
                <tr><td align="right"><s:text name="label.transDisDate"/> :</td><td><s:date name="%{dreg.transDischargeDate}" format="dd/MM/yyyy"/></td></tr>
                <tr><td align="right"><s:text name="label.transHomeId"/>:</td><td><s:property value="%{dreg.transHomeId}"/></td></tr>
                <tr><td align="right"><s:text name="label.petsToHandover"/> :</td><td><s:property value="%{dreg.personHandedOver}" escape="false"/></td></tr>
                <tr><td align="right"><s:text name="label.relShipWthChild"/> :</td><td><s:property value="%{dreg.relationshipChild}"/></td></tr>
                <tr><td align="right"><s:text name="global.label.address"/> :</td><td><s:property value="%{dreg.personAddress}" escape="false"/></td></tr>
                <tr><td align="right"><s:text name="label.actionTaken"/> :</td><td>
                        
                     <s:if test="%{dreg.actionTaken=='transfer'}">
                    <s:text name="label.transOthHome"/>
                </s:if>
                <s:elseif test="%{dreg.actionTaken=='handover'}">
                    <s:text name="label.handOverParents"/>
                </s:elseif>
                <s:elseif test="%{dreg.actionTaken=='otherstate'}">
                    <s:text name="label.transToOthState"/>
                </s:elseif>
                <s:elseif test="%{dreg.actionTaken=='ngo'}">
                    <s:text name="label.transToNgoHome"/>
                </s:elseif>
                <s:elseif test="%{dreg.actionTaken=='After Care Home'}">
                    <s:text name="label.stateAftCareHome"/>
                </s:elseif>
                <s:elseif test="%{dreg.actionTaken=='releaseOnBail'}">
                    Release on bail
                </s:elseif> 
                <s:elseif test="%{dreg.actionTaken=='othercountry'}">
                    Transfered to other country 
                </s:elseif>                    
                <s:elseif test="%{dreg.actionTaken=='Islamic Centre'}">
                    Islamic Centre
                </s:elseif>                 </td></tr>
                <tr><td align="right"><s:text name="label.transState"/> :</td><td><s:property value="%{dreg.state}"/></td></tr>
                <tr><td align="right"><s:text name="label.othStateHomeName"/> :</td><td><s:property value="%{dreg.homenameOtherstate}"/></td></tr>
                <tr><td align="right"><s:text name="label.desigOfOffOthStateHome"/> :</td><td><s:property value="%{dreg.officerHome}"/></td></tr>
                <tr><td align="right"><s:text name="label.othStateHomeAddr"/> :</td><td><s:property value="%{dreg.addressOtherstate}"/></td></tr>
                <tr><td align="right"><s:text name="label.remarks"/> :</td><td><s:property value="%{dreg.remarks}" escape="false"/></td></tr>
                               
          </table>
              </s:elseif>           
        </center>

             
    </body>
    </html>