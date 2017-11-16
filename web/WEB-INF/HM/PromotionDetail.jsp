<%-- 
    Document   : PromotionDetail
    Created on : 14 Jan, 2012, 5:48:16 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<html>
    
    <head>
        <script>
            <jsp:include page="../../javascripts/HM_PromotionDetail_Validation.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <center>
<s:set name="list1" value="#{'1st':'1st','2nd':'2nd','3rd':'3rd','4th':'4th','5th':'5th','6th':'6th','7th':'7th','8th':'8th','9th':'9th','10th':'10th'}" />
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
    </select><%--s:select name='eduStatus' id='course'list="list2"/--%>    
</div>



<s:if test="schoolStudentDTOs.size()!=0">
    
    <s:text name="package.label.PromoDetSelChHead" /><br/><br/>
    
    <s:form name="promotionForm" id="promotionForm" theme="simple" action="HM-PromotionDetail-Save">
<table border="1">
    <tr>
    <th><s:text name="package.label.PromoDetPromoted"/></th>
    <th><s:text name="package.label.attSheetProfId"/></th>
    <th><s:text name="package.label.attSheetChName"/></th>
    <th><s:text name="package.label.PromoDetCourse"/></th>
    <th><s:text name="global.label.SchoolAdmEduType"/></th>
    </tr>
    <%--
    private String profileId;
    private String name;
    private String course;
    private String status;
    --%>
    <s:iterator value="schoolStudentDTOs">        
        <tr>
            <td><s:checkbox fieldValue="%{profileId}" value="false"  name="promotedIds" id="promotedIds" theme="simple"/></td>
            <td align="center"><s:property value="profileId"/></td>
            <td align="center"><s:property value="name"/> </td>
            <td align="center"><s:property value="course"/> </td>
            <td align="center"><s:property value="status"/> </td>
            
            
        
        </tr>
        
        
    
    </s:iterator>
        <tr colspan="3"></tr>
        <tr colspan="3">
            <td></td>
            <td align="center">
                <s:text name="package.label.PromoDetPromoSelCh"/>:
        <s:if test="message == 'school'">
            <select name='eduStatus' id='eduStatus'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list1">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select>
            <%--s:select name='eduStatus' id='eduStatus'list="list1"  headerValue="---Please Select---" headerKey="-1"/--%>
            
        </s:if>
        
        <s:elseif test="message == 'vocational'">
    <select name='eduStatus' id='eduStatus'>
        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
    <s:iterator value="list2">
        <option value='<s:property value='key'/>'><s:property value='value'/></option>
    </s:iterator>
    </select>
        <%--s:select name='eduStatus' id='eduStatus'list="list2"  headerValue="---Please Select---" headerKey="-1"/--%> 
        </s:elseif>
                </td>
                <td></td>
            </tr>
        <tr><td colspan="3" align="center"><input type="submit" value="<s:text name="global.button.hmPromote"/>"/></td></tr>
    
    
</table>
        </s:form>
</s:if>
<s:else>
  <s:text name="global.errmsg.HMNostuInCourse"/>
</s:else>


        </center>
    </body>

</html>