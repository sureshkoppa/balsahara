<%-- 
    Document   : ModifyProfile
    Created on : 20 Jun, 2011, 6:55:30 PM
    Author     : suresh
--%>

<%@taglib  prefix="s" uri="/struts-tags"%>

<html>
    <head>
        
        <title>Modify Profile</title>
        <script type="text/javascript">
            function populate_profile()
            {
                if(document.getElementById('modifyProfileId').value=='select'){
                    
                }           
            else
                {
                     document.getElementById('ModifyProfileForm1').action="SU-modifyProfile-populateSelectGAS";
                     document.getElementById('ModifyProfileForm1').submit();
                }
            }
        </script>
      
    </head>
    <body>
         <center>
            <CAPTION><font size="3"><b><s:text name="heading.modProf"/></b></font></CAPTION>

            <s:form name="ModifyProfileForm1" action="SU-modifyProfile-modifyProfile" id="ModifyProfileForm1" theme="css_xhtml">
              <table border="1" align="center" style="font-size:small">
                    <tbody>
                           <tr><td><s:text name="label.selGuardStaff"/> :</td>
                               <td>
                                   <s:select list="addDutyProfile"  listKey="profileidSecstaff" listValue="%{profileidSecstaff+'---->'+name}"  name="modifyProfileId" id="modifyProfileId" headerKey="select" headerValue="--Select Profile--" onchange="populate_profile()"/> 
                               </td>
                           </tr>
                    </tbody>
              </table>
                           <s:if test="%{modifyProfile!=null}">
                               <table border="1"  style="font-size:small; border-width: 1; text-align: left  ">
                                   <tbody>
                                       <tr><td><s:text name="label.name"/>*</td><td><s:textfield name="modifyProfielName" id="modifyProfile_name" value="%{modifyProfile.profile_name}" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>    
                                       <tr><td><s:text name="label.age"/>*</td><td><s:textfield name="modifyProfileAge" value="%{modifyProfile.profile_age}" id="modifyProfile_age" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td></tr>
                                       <tr><td><s:text name="label.desig"/></td><td><s:property value="modifyProfile.profile_desig"  /></td></tr>
                                       <tr><td><s:text name="label.contAddr"/>*</td><td><s:textarea name="modifyProfileAddr" id="modifyProfile_address" value="%{modifyProfile.profile_contactAddr}"  rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                                       <tr><td><s:text name="label.contPhNo"/>*</td><td><s:textfield name="modifyProfilePhno" id="modifyProfile_Phno" value="%{modifyProfile.profile_contactPhno}" /></td></tr>
                                       <tr><td><s:text name="label.emailId"/></td><td><s:property value="modifyProfile.profile_emailId" /></td></tr>    
                                         <s:date id="createdDate" name="modifyProfile.profile_doj" format="dd/MM/yyyy"/>  
                                       <tr><td><s:text name="label.dateOfJoin"/></td><td><s:property value="createdDate" /></td></tr>
                                   </tbody>
                               </table>    
                                   <table>
                                       <tr>
                           <td><input type="submit" value="<s:text name="button.modify"/>" /></td>
                            <td><input type="reset" value="<s:text name="button.clear"/>"  /></td>
                        </tr>
                                   </table>
                           </s:if>
           </s:form>
            
         </center>
    
            <div id="dialog-form_mod_gas" title="<s:text name="js.preview.modProfile"/>">
                <table border="1" id="modgas_preview">
                </table>
        
        </div>
            
    </body>
</html>
