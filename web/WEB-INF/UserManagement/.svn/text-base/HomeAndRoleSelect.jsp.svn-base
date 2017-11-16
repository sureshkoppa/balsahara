<%-- 
    Document   : HomeAndRoleSelect
    Created on : 15 Jun, 2011, 11:50:38 AM
    Author     : ANUPAM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>Home And Role Select</title>
     <script>
         function forward()
         {
           //alert("inside");  
           document.forms["homeRoleSelectForm"].submit();
         }
         
         function enable_roles(val){
             
             var divid=val.value;             
             var divs = document.homeRoleSelectForm.getElementsByTagName("div");
             
        for(var i = 0; i < divs.length; i++){
            
                document.getElementById(divs[i].id).style.visibility ='hidden';
           
                }             
            
             
             document.getElementById(divid).style.visibility ='visible';
         }
          function selLang2(thisf)
        {
           
                  var e = document.getElementById("sel_lan2");
                 // alert("******"+e.value);
                  var strUser = e.options[e.selectedIndex].value;
  
  
              
                
                if(strUser!='sel')
                    {
                     document.lanSelect.action="Select-Language-Action"+e.value+"?request_locale="+e.value;
                     document.lanSelect.submit();
                    }
                    else
                        {
                            alert("Select Language");
                        }
        }
     </script>
     
 </head>
 <body>
      <div align="right"> <s:a href="UM-Logout"><span><s:text name="global.link.logout"/></span></s:a>&nbsp;&nbsp;&nbsp;</div>
     <center>
          <p style="text-align: right">
          <s:form action="Select-Language-Action" name="lanSelect" theme="css_xhtml">
           <select id="sel_lan2" onchange="selLang2(this);" name="">
               <option value="sel">--<s:text name="global.option.selLang"/>--</option>
                    <option value="en">English</option>
                    <option value="hi">&#2361;&#2367;&#2306;&#2342;&#2368;</option> 
                    <option value="te">&#3108;&#3142;&#3122;&#3137;&#3095;&#3137;</option>
                </select>
          </s:form>
      </p>
         <h2><u><s:text name="global.link.switchHomeRole"/></u></h2>
 <br>
 <!--s:property value="userHomeRoleMap"/
 Please select a <font style="font-weight: bold;font-size: small">home</font> and then your <font style="font-weight: bold;font-size: small">role</font> in the home.<br><br>-->
 <h3><s:text name="Form.msg.plsSelect"/></h3><br><br>
 <%--s:form action="UM-UserPage" name="homeRoleSelectForm" theme="css_xhtml"--%>
     <s:form action="UM-Role-Exp-Check" name="homeRoleSelectForm" theme="css_xhtml">
     
     
     
         <s:iterator value="userHomeRoleMap">
     
     <s:iterator id="keysInMap" value="key"> 
         
         <font style="font-weight: bold;font-size: medium">  <s:property value="%{#keysInMap}" /></font> &nbsp;&nbsp;<s:text name="Form.msg.oprHomes"/><br><hr/>
         
     </s:iterator>
        
     <s:iterator id="valuesInAKey" value="value">
         <s:set name="homeId" value="%{#valuesInAKey.key}"/>
         <input type="radio" name="homeId" value="${homeId}" onclick="enable_roles(this);"/><s:property value="%{#valuesInAKey.key}"/>&nbsp;&nbsp;&nbsp;&nbsp;
         <div id="${homeId}" style="visibility: hidden">
             <table border="0" rules="all">
                 <tr>
         <s:iterator id="valuesInAKey" value="value">
             <s:set name="roleId" value="%{#valuesInAKey}" />
             <s:if test="%{#valuesInAKey >= 0}">
                 <td align="center">
             &nbsp;&nbsp; 
             
             
             <s:if test="%{roleMap[#valuesInAKey]=='Head Master'}">
                 <s:text name="label.role.headMaster"/>
             </s:if>
             <s:if test="%{roleMap[#valuesInAKey]=='Caseworker'}">
                 <%--s:text name="label.role.caseWork"/--%>
                 <%--<s:property value="%{#homeId.substring(7,9)}"/>--%>
                 Caseworker/Intake Probation Officer
             </s:if>   
             <s:if test="%{roleMap[#valuesInAKey]=='Deputy Superintendent'}">
                 <s:text name="label.role.deputySuper"/>
             </s:if>    
             <s:if test="%{roleMap[#valuesInAKey]=='Superintendent'}">
                <s:text name="label.role.super"/>
             </s:if>    
             <s:if test="%{roleMap[#valuesInAKey]=='Doctor'}">
                <s:text name="label.role.doc"/>
             </s:if>   
             <s:if test="%{roleMap[#valuesInAKey]=='Counsellor'}">
                <s:text name="label.role.counselor"/>
             </s:if>    
             
                 
             <input type="radio"  name="roleId" value="${roleId}" id="roleId" onclick="forward();"/>&nbsp;&nbsp;  
                 
             </td>
                 </s:if> 
         </s:iterator>
             </tr>
             </table>
         </div>
         <br>
     </s:iterator>
     
 </s:iterator>
         </s:form>
         </center>
 </body>
</html>