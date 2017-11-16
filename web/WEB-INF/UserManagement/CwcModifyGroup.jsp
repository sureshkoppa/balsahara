<%-- 
    Document   : CwcModifyGroup
    Created on : 21 Jul, 2011, 3:31:19 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function setCwcModifyAction(val)
            {
            var ac=val.value;
            //alert('----> '+ac);
            
            
            if(ac == 'add')
                document.cwcModifyForm.action='UM-CWCAddMember';
            else if(ac == 'remove')
                document.cwcModifyForm.action='UM-CWCRemoveMember';
            else if(ac == 'dissolve')
                document.cwcModifyForm.action='UM-CWCDissolveGroup';
                
                //alert('-----> '+document.cwcModifyForm.action);
            }
        </script>
    </head>
    <body>
        <center>
        <h2><u>CWC Modify Group</u></h2><br><br>
        
        <s:form name="cwcModifyForm" id="cwcModifyForm" action="">
            
                <s:select name="districtId" id="districtId" theme="simple" list="districtList" listKey="districtId" listValue="districtName" headerKey='-1' headerValue="---Please Select---" label="Select CWC district" labelposition="left" />
            <br><br>
            <%--s:radio name='act' id='act' cssStyle="{align:left;border-style:none;}" list="#{'add':'Add a new member to an existing CWC group','remove':'Remove an CWC member from an existing CWC group','dissolve':'Dissolve the CWC Group'}" onclick="return setCwcModifyAction(this);" /--%>
            <table>                
             <tr><td align="left"> <input type="radio" name='act' id='act' value='add' onclick="return setCwcModifyAction(this);"/>Add a new member to an existing CWC group</td></tr>
             <tr><td align="left"> <input type="radio" name='act' id='act' value='remove' onclick="return setCwcModifyAction(this);"/>Remove an CWC member from an existing CWC group</td></tr>
             <tr><td align="left"><input type="radio" name='act' id='act' value='dissolve' onclick="return setCwcModifyAction(this);"/>Dissolve the CWC Group</td></tr>
             <tr><td align="center"><s:submit theme="simple" value="Proceed"/></td></tr>
            </table>
            
            
            
       
        </s:form>
        </center>
    </body>
</html>
