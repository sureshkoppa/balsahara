<%-- 
    Document   : viewAdmissionCHRegister.jsp
    Created on : 5 Sep, 2011, 12:09:52 PM
    Author     : vinumol
--%>

<%@taglib  uri="/struts-tags" prefix="s"%>
<html>
    <head>
            
           <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <h2><s:text name="dis.admRegView"/></h2>
            
            
            <s:if test="%{testing == 'viewadmissionfirst'}">
                <CAPTION><font size="2"><b><s:text name="label.selDate"/></b></font></CAPTION>
        <table border="1">
            <!--using form id only the javascript function for validation and preview is called-->
            <s:form name="view_admission" action="viewadmission_dateentered" method="POST" theme="css_xhtml" id="view_admission" onsubmit="javascript:return validate();">
                <tr><td align="right"><s:text name="label.fromDate"/>:</td><td><s:textfield name="admission_fromdate" type="text" readonly="true" id="datepicker"/></td></tr>
                <tr><td align="right"><s:text name="label.toDate"/>:</td><td><s:textfield name="admission_todate" type="text" readonly="true" id="datepicker1"/></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="<s:text name="button.view"/>" name="View" align="center" id="View"/></td></tr>
            </s:form>
        </table>
        </s:if>
            
<s:elseif test="%{testing == 'viewadmission_dateselect'}">
          <s:if test="%{childrenListInAHome.size() == 0}">
              <h2><s:text name="msg.noChildDetPresentDurPrd"/></h2>
          </s:if>
         <s:else>
             <CAPTION><font size="3"><b><s:text name="msg.selProfileIdToViewDet"/></b></font></CAPTION>
            <table border="1">
                <tr><td><s:text name="global.label.childProID"/></td><td><s:text name="label.childName"/></td> </tr>
            <s:iterator value="childrenListInAHome">
        <tr><td><s:url id="d_url" action="CHAdm_View">
                  <s:param name="childProfileId">%{childProfileId}</s:param>
                </s:url>
                  <s:a href="%{d_url}" onclick="javascript:show_details(this);return false;">
             
               <s:property value="childProfileId"/>  </s:a>
            </td>
            <td>
                <s:property value="childName"/>
            </td>
             </tr>
             
    </s:iterator>
        </table>
              
          </s:else>
              </s:elseif>
              <s:elseif test="%{testing == 'viewadmission_profidselect'}">
                  <CAPTION><font size="3"><b><s:text name="label.admDetails"/></b></font></CAPTION>      
          <table border="1">
      
                   <s:iterator value="admissionRegister_show">       
            
                      
           
              
        <tr>
                
                 <th colspan="2" align="center">
                     <img src="./photos/<s:property value="%{childProfileId}"/>.jpg" alt="<s:text name="msg.imgNotAvail"/>" width="120" height="140" border="0"/>
                </th>
                
                </tr>
              
        <tr>
            <td>
                <s:text name="label.nameOfChild"/>  :
                </td>
            <td>
                <s:property value="%{childName}" escape="false"/>
            </td>
           
        </tr>
        <tr>
        <td>
            <s:text name="label.dateOfAdm"/>  :
                </td>
            <td>
                <s:property value="%{dateTimeAdm}"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="label.age"/>  :
                </td>
            <td>
                <s:property value="%{age}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="label.gender"/>  :
                </td>
            <td>
                <s:property value="%{gender}"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.relg"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].religion" escape="false"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.caste"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].caste" escape="false"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.subCaste"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].subcaste" escape="false"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="label.age"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].age"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.dateOfBir"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].dob"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.fatName"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].fatherName" escape="false"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.fatOccup"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].fatherOccup" escape="false"/>
            </td>
            </tr>
            <tr>
                <td>
                <s:text name="global.label.matName"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].motherName" escape="false"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.matOccup"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].motherOccup" escape="false"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.noOfBro"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].noBrothers"/>
            </td>
            </tr>
           
             <tr>
                <td>
                    <s:text name="global.label.noOfSis"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].noSister"/>
            </td>
            </tr>
             <tr>
                <td>
                    <s:text name="global.label.langKnown"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].languagesKnown" escape="false"/>
            </td>
            </tr>
             <tr>
                <td>
                    <s:text name="global.label.addrParGuar"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].addrParents" escape="false"/>
            </td>
            </tr>
             <tr>
                <td>
                    <s:text name="global.label.intRelIfAny"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].intrRelatives"/>
            </td>
            </tr>
             <tr>
                <td>
                    <s:text name="global.label.identProbIss"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].identifiedProblemsChild" escape="false"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.eduStatus"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].eduStatus" escape="false"/>
            </td>
            </tr>
            
             <tr>
        <td>
            <s:text name="global.label.childNat"/> :
                </td>
            <td>
                <s:property value="%{childNature}" escape="false"/>
            </td>
            </tr>
             <tr>
        <td>
                <s:text name="global.label.disabled"/>  :
                </td>
            <td>
                <s:property value="%{disabled}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.natOfDis"/>  : 
                </td>
            <td>
                <s:property value="%{natureDisability}" escape="false"/>
            </td>
            </tr>
            <s:if test="%{admThrough=='AuthorizedPerson'}">
                <tr>
        <td>
            <s:text name="global.label.admBy"/>  :
                </td>
            <td>
                <s:text name="option.authPers"/>
            </td>
            </tr>                
            </s:if>
            <s:else>
             <tr>
        <td>
            <s:text name="global.label.admBy"/>  :
                </td>
            <td>
                <s:property value="%{admThrough}" escape="false"/>
            </td>
            </tr>
            </s:else>
             <tr>
        <td>
            <s:text name="global.label.nameAuthPers"/>  :
                </td>
            <td>
                <s:property value="%{nameAuthPer}" escape="false"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.cwcjjbnum"/>  :
                </td>
            <td>
                <s:property value="%{cwcJjbOrderNo}" escape="false"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.cwcjjbdate"/>  :
                </td>
            <td>
                <s:property value="%{orderDate}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.admBy"/> :
                </td>
            <td>
                <s:property value="%{producedBy}" escape="false"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.detailsOfProp"/> :
                </td>
            <td>
                <s:property value="%{propertyPossessed}" escape="false"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.proLawChildAdmm"/> :
                </td>
            <td>
                <s:property value="%{provisionLaw}" escape="false"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.reaAdmConfLaw"/> :
                </td>
            <td>
                <s:property value="%{reasonAdm}" escape="false"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.periodOfStay"/> :
                </td>
            <td>
                <s:property value="%{periodStay}"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.probDatedis"/> :
                </td>
            <td>
                <s:date name="%{probableDischargeDate}" format="dd/MM/yyyy"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.recoCWC"/> :
                </td>
            <td>
                <s:property value="%{recommCwc}" escape="false"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.recoCW"/> :
                </td>
            <td>
                <s:property value="%{recommCaseworker}" escape="false"/>
            </td>
            </tr>
       </s:iterator>
           
        </table>
              </s:elseif>           
        </center>

             
    </body>
    </html>