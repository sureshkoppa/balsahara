<%-- 
    Document   : ExamMarksEntry
    Created on : 3 Jul, 2011, 5:07:45 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Marks Entry Page</title>
    </head>
    <body>
        <s:if test="examMarksList.size!=0">
        <table border="1" align="center">
            <tr>
                <td><s:text name="package.label.ExamMarksChProfId" /></td>
                <td><s:text name="package.label.ExamMarksEnMarObt" /></td>
            </tr>
            <s:iterator value="examMarksList">
                <s:if test="marksObtained==-1">
                <tr>
                   <td><s:property value="examMarksPK.childProfileId"/><s:hidden name="childProfileId" value="%{examMarksPK.childProfileId}"/></td>
                   <td><s:textfield name="marksObtained_entry" id="marksObtained_entry" theme="simple" size="3" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
                </tr>
                </s:if>
            </s:iterator>
                <tr><td align="center" colspan="2"><input type="submit" value="<s:text name="global.button.hmSaveMarks"/>" onclick="return setNotFilledValues();"/></td></tr>
        </table>
        </s:if>
        
    </body>
</html>
