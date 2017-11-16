<%-- 
    Document   : VocationalAssessmentViewAjax
    Created on : 16 Aug, 2011, 6:59:22 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <!--
     private String childProfileId;
    private String nameOfTheChild;
    private int noOfDaysTrained;
    private String sectionOfTraining;
    private String trainedBy;
    private String postTrainingAssesment;
    -->
    <body>
        <s:if test="vocationalAssesmentDTOs.size()>0">
        <table border="1">
            <th align="center"><s:text name="package.label.vocaAssChProfId"/>:</th>
            <th align="center"><s:text name="package.label.vocaAssChName"/>:</th>
            <th align="center"><s:text name="package.label.vocaAssNoDaysTrain"/>:</th>
            <th align="center"><s:text name="package.label.vocaAssTrainedIn"/>:</th>
            <th align="center"><s:text name="package.label.vocaAssTrainedBy"/>:</th>
            <th align="center"><s:text name="package.label.vocaAssPostTrainAss"/>:</th>
            
            <s:iterator value="vocationalAssesmentDTOs">
                <tr>
                    <td align="center"><s:property value="childProfileId"/></td>
                    <td align="center"><s:property value="nameOfTheChild"/></td>
                    <td align="center"><s:property value="noOfDaysTrained"/></td>
                    <td align="center"><s:property value="sectionOfTraining"/></td>
                    <td align="center"><s:property value="trainedBy"/></td>
                    <td align="center"><s:property value="postTrainingAssesment"/></td>
                    
                </tr>
            </s:iterator>
        </table>
        </s:if>
    </body>
</html>
