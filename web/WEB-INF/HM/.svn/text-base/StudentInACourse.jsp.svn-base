<%-- 
    Document   : StudentInACourse
    Created on : 18 Jul, 2011, 12:44:54 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:if test="educationAdmissions.size() != 0">
            
            <table border="0" align="center">
                <tr>
                    <td>
                        <s:text name="package.label.StuListSelStu"/>:</td><td align="left"><select name="childProfileId" id="childProfileId">
                                   <option value="-1">---<s:text name='global.option.headerKey'/>---</option>
                                   <c:forEach items="${educationAdmissions}" var="obj">
                                       <option value=${obj.childProfileId}>${obj.childProfileId}</option>
                                   </c:forEach>
                               </select><%--s:select name="childProfileId" id="childProfileId"  list="educationAdmissions" listKey="childProfileId" listValue="childProfileId" headerKey="-1" headerValue="----please select----"/--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <s:text name="package.label.vocaAssNoDaysTrain"/>:</td><td align="left"><s:textfield name="noOfDaysTrains" id="noOfDaysTrains" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <s:text name="package.label.vocaAssTrainedBy"/>:</td><td align="left"><s:textfield name="trainedBy" id="trainedBy" theme="simple" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <s:text name="package.label.vocaAssPostTrainAss"/>:</td><td align="left"><select name="postTrainingAssesment"  id="postTrainingAssesment">
                              <option value="<s:text name='global.selectOption.stuInCouGood'/>"><s:text name='global.selectOption.stuInCouGood'/></option>
                              <option value="<s:text name='global.selectOption.stuInCouAver'/>"><s:text name='global.selectOption.stuInCouAver'/></option>
                              <option value="<s:text name='global.selectOption.stuInCouPoor'/>"><s:text name='global.selectOption.stuInCouPoor'/></option>
                          </select><%--s:select name="postTrainingAssesment"  id="postTrainingAssesment" list="#{'Good':'Good','Average':'Average','Poor':'Poor'}"/--%>
                    </td>
                </tr>
                
                <tr>
                    <td align="center" colspan="2">
                        <input type="submit" value="<s:text name="global.button.medAdmRegSave"/>"/>
                    </td>
                </tr>
            </table>   
        
        </s:if>
        
    </body>
</html>
