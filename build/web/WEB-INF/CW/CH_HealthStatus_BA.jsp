<%-- 
    Document   : CH_HealthStatus_BA
    Created on : Jun 27, 2011, 7:23:24 PM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <body>
    
        <center>
            <CAPTION><font size="3"><b><s:text name="label.childHeaStatAdm"/></b></font></CAPTION> 
            
           
              <s:form action="CH-HealthBA-Save" method="POST" name="chhealth" id="chhealth" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chhealth"/>
                <table cellspacing="0">
       
                <tr><h3></h3></tr>
                <tr><td align="right"><s:text name="label.profileId"/>:</td><td><s:select name="childProfileId" id="childProfileId" labelposition="left" headerKey="1" headerValue="--Please Select--" list="childrenListInAHome" listKey="childProfileId" listValue="%{childName+'---->'+childProfileId}"/></td></tr>
                            </table>  
                               <%--table>
                                   <tr><td>Respiratory Disorders:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Hearing Impairment:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Eye Diseases:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Dental Diseases:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Cardiac Diseases:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Skin Diseases:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Sexually Transmitted Diseases:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Neurological Disorders:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Mental Handicap:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Physical Handicap:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                                    <tr><td>Others:</td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="2" cols="15"></td></tr>
                               
                                   </table--%>
                                           
                            <table border="1" id="CHE">
                         <thead>
                             <tr><th><s:text name="label.select"/></th><th><s:text name="label.disType"/></th><th><s:text name="label.status"/></th><th><s:text name="label.remarks"/></th></tr>
                         </thead>
                         <tr><td><INPUT type="checkbox" name="chk"/></td>
                             <td><select name="" id="" headerKey="1" headerValue="--Please Select--"></select> list="#{'Respiratory disorders':'Respiratory disorders','Hearing impairment':'Hearing impairment','Eye diseases':'Eye diseases','Dental diseases':'Dental diseases','Cardiac diseases':'Cardiac diseases','Skin diseases':'Skin diseases','Sexually transmitted diseases':'Sexually transmitted diseases','Neurological disorders':'Neurological disorders','Mental handicap':'Mental handicap','Physical handicap':'Physical handicap'}"/></td>
                             
                      <td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td>
                       <td><s:textarea id="" name="" rows="2" cols="10" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                      </tr>
                 </table>
                                        
                       <INPUT type="button" value="Add Row" onclick="addRow('CHE')" />        &nbsp;&nbsp;<INPUT type="button" value="Delete Row" onclick="deleteRow('CHE')"/>
                     <table>
                         <tr><td><s:text name="label.ifAnyPlsspec"/>: </td><td><s:textfield name="" id=""  onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td><td><s:select name="" id="" headerKey="1" headerValue="--Please Select--" list="#{'present':'present','not known':'not known','absent':'absent'}"/></td><td><s:textarea name="" id="" rows="" cols="" /></td></tr>
                   </table>
                        <table>
                        <tr><td colspan="2" align="center">
                                <input type="submit" value="<s:text name="label.save"/>"/>
                            
                            </td></tr>
                    </table> 
                            
                            
                    </s:form>
        </center>
    </body>
</html>
