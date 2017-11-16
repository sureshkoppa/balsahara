<%-- 
    Document   : CaseworkView_Sub
    Created on : Jul 5, 2011, 10:35:22 AM
    Author     : Ramu Parupalli
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="transChildDetails != null">
   <table>
                    <tr>
                        <th align="right"><s:text name="label.fName"/>:</th>
                        <td><s:property value="%{transChildDetails.childName}"/></td>
                    </tr>
                    <tr>
                        <th align="right"><s:text name="label.lName"/>:</th>
                        <td><s:property value="%{transChildDetails.childSurname}"/></td>
                    </tr>       
                     <tr>
                        <th align="right"><s:text name="global.label.ageOfChild"/>:</th>
                        <td><s:property value="%{transChildDetails.age}"/></td>
                    </tr>
           

                    <tr><th align="right"><s:text name="global.label.relg"/>:</th><td><s:property value="%{transChildDetails.religion}" /></td></tr>
                    <tr><th align="right"><s:text name="global.label.plsSpec"/>:</th><td><s:property value="%{transChildDetails.religion_other}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.caste"/>:</th><td><s:property value="%{transChildDetails.caste}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.subCaste"/>:</th><td><s:property value="%{transChildDetails.subcaste}"/></td></tr>
                    <%--  <tr><th align="right"><s:text name="global.label.dateOfBir"/>:</th><td><s:property value="%{transChildDetails.dob}"/></td></tr>  --%>
                    <tr><th align="right"><s:text name="global.label.fatName"/>:</th><td><s:property value="%{transChildDetails.fatherName}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.fatOccup"/>:</th><td><s:property value="%{transChildDetails.fatherOccup}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.matName"/>:</th><td><s:property value="%{transChildDetails.motherName}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.matOccup"/>:</th><td><s:property value="%{transChildDetails.motherOccup}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.noOfBro"/>:</th><td><s:property value="%{transChildDetails.noBrothers}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.noOfSis"/>:</th><td><s:property value="%{transChildDetails.noSister}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.langKnown"/>:</th><td><s:property value="%{transChildDetails.languagesKnown}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.addrParGuar"/>:</th><td><s:property value="%{transChildDetails.addrParents}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.intRelIfAny"/></th><td><s:property value="%{transChildDetails.intrRelatives}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.eduStatus"/>:</th><td><s:property value="%{transChildDetails.eduStatus}"/></td></tr>
                    <tr><th align="right"><s:text name="global.label.identProbIss"/>:</th><td><s:property value="%{transChildDetails.identifiedProblemsChild}"/></td></tr>   
                    
                  
                    
                     
   </table>
</s:if>