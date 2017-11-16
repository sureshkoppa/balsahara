<%-- 
    Document   : RemoveAssignedRole
    Created on : Apr 27, 2011, 12:39:16 PM
    Author     : Anupam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<sx:head/>
<script>
function show_details(val) {
//alert('------1>'+val.value );
if(val.value!=-1)
dojo.event.topic.publish("show_detail");

}

 function show_details2(val){

//alert('------2>'+val.value );

if(val.value!=-1)
dojo.event.topic.publish("show_detail2");

}

function show_details3(val)
{
    //alert('-----3'+val.value);
    //alert('----> '+document.f1.butt);
  if(val.value!=-1)
  dojo.event.topic.publish("show_detail3");
}

function submitForm(val)
{
    
       document.f1.submit();
}

</script>





    </head>
    <body>
        <center>
        <s:form theme="css_xhtml" action="UM-ReAssignRole-Delete" id="removeAssignRoleForm" method="POST">
            <table align="center">
<!-- -->
                <tr>
                    <td>
                        Select your district:<s:select name="userDistrictId" id="userDistrictId" list="districtList"  listKey="districtId" listValue="districtName" headerValue="-- Please Select --" headerKey="-1" onchange="javascript:show_details(this);return false;">
                                </s:select>
                    </td>
                </tr>
                
                
                
                <tr>
                    <td>
             
             <s:url id="d_url" action="UM-AddUser-With-Home-Role" />
             <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="removeAssignRoleForm" showLoadingText="true">
             </sx:div>
            
                    </td>
                </tr>


             <tr>
                    <td>
             <s:url id="d_url_2" action="UM-ReAssignRole-UserFetch" />
             <sx:div id="details2" href="%{d_url_2}" listenTopics="show_detail2" formId="removeAssignRoleForm" showLoadingText="true">
             </sx:div>
                    </td>
                </tr>
        
                 <tr>
                    <td>
             <s:url id="d_url_3" action="UM-ReAssignRole-RoleFetch" />
             <sx:div id="details3" href="%{d_url_3}" listenTopics="show_detail3" formId="removeAssignRoleForm" showLoadingText="true">
             </sx:div>
                    </td>
                </tr>

            

            
            
                    
            <tr><td><s:submit value="Remove Roles" theme="simple"/></td></tr>
            </table>
             
        </s:form>
        </center>
    </body>
</html>
