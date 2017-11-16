<%-- 
    Document   : Promotion
    Created on : 14 Jan, 2012, 5:19:15 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<html>
    
    <head>
        <script>
            function selectEduType_Adm(val)
            {
                             
                if(val.value == 'school')
                {                  
                  document.getElementById('dynamic_course').innerHTML=document.getElementById('school_div').innerHTML;
                }
                
                else if(val.value == 'vocational')
                {                    
                    document.getElementById('dynamic_course').innerHTML=document.getElementById('vocational_div').innerHTML;
                }
                
                                 
                
            }
            
            
        </script>
    </head>
    <body>
       
<s:set name="list1" value="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th','Inter I yr':'Inter I yr','Inter II yr':'Inter II yr'}" />
        
<div id="school_div" style="visibility: hidden">
    
    <s:text name="global.label.SchoolAdmClassCour" />:<select name='eduStatus' id='course'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select><%--s:select name='eduStatus' id='course'list="list1"/--%>
  
</div>

<s:set name="list2" value="vocationlMap"/>

<div id="vocational_div" style="visibility: hidden">
    <s:text name="global.label.SchoolAdmClassCour" />:<select name='eduStatus' id='course'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select><%--s:select name='eduStatus' id='course' list="list2"/--%>    
</div>


<s:form name="studentPromotionForm1" id="studentPromotionForm1" theme="css_xhtml" action="HM-PromotionDetail">
<center>
    <center><h2><u><s:text name="global.heading.PromoReg"/></u></h2></center>
    <br><br>

    
    <table border="1"  align="center">        
        
        
        <tr><td><s:text name="global.label.SchoolAdmEduType" /></td><td>
                <input type="radio" name="eduType" value="school" onchange="return selectEduType_Adm(this);"/><s:text name="package.rad.label.attenRegInsSch"/><input type="radio" name="eduType" value="vocational" onchange="return selectEduType_Adm(this);"/><s:text name="package.rad.label.attenRegVoc"/>
                <%--s:radio name="eduType" id="eduType"  list="#{'school':'school','vocational':'vocational'}" onchange="return selectEduType_Adm(this);"/--%></td></tr>
        
        <tr><td colspan="2" Align="center"> <div id="dynamic_course"></div> </td></tr>
        
        
        
        <tr><td colspan="2" Align="center"><input type="submit" value="<s:text name="global.button.hmShowStu"/>"/></td></tr>
                
    </table>
        

    
</center>
</s:form>

        
    </body>

</html>