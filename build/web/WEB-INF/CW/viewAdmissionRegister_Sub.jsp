<%-- 
    Document   : viewAdmissionRegister_Sub.
    Created on : 5 Sep, 2011, 12:34:27 PM
    Author     : vinumol
--%>

<%@taglib  uri="/struts-tags" prefix="s"%>

 <s:if test="admissionRegister_show.size()== 0">
     <!-- <h2>No Records are available for selected Child</h2> (put it when selected but no list value later)-->
            </s:if>
<s:else>
  <table border="1">
      
      <tr> <th colspan="2" align="center"><s:text name="heading.admReg"/></th></tr>
                  
            
            <s:iterator value="admissionRegister_show">
              
            <tr>
                
                 <th colspan="2" align="center">
                     <img src="./photos/<s:property value="%{childProfileId}"/>.jpg" alt="<s:text name="msg.imgNotAvail"/>" width="120" height="140" border="0"/>
                </th>
                
                </tr>
              
        <tr>
            <td>
                <s:text name="label.nameOfChild"/>  :
                </td>
            <td>
                <s:property value="%{childName}"/>
            </td>
           
        </tr>
        <tr>
        <td>
            <s:text name="label.dateOfAdm"/>  :
                </td>
            <td>
                <s:property value="%{dateTimeAdm}"/>
            </td>
            </tr>
            <tr>
        <td>
               <s:text name="label.age"/>  :
                </td>
            <td>
                <s:property value="%{age}"/>
            </td>
            </tr>
             <tr>
        <td>
              <s:text name="global.label.gender"/>  :
                </td>
            <td>
                <s:property value="%{gender}"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.relg"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].religion"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.caste"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].caste"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.subCaste"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].subcaste"/>
            </td>
            </tr>
            <tr>
                <td>
                <s:text name="label.age"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].age"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.dateOfBir"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].dob"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.fatName"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].fatherName"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.fatOccup"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].fatherOccup"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.matName"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].motherName"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.matOccup"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].motherOccup"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.noOfBro"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].noBrothers"/>
            </td>
            </tr>
           
             <tr>
                <td>
                    <s:text name="global.label.noOfSis"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].noSister"/>
            </td>
            </tr>
             <tr>
                <td>
                    <s:text name="global.label.langKnown"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].languagesKnown"/>
            </td>
            </tr>
             <tr>
                <td>
                    <s:text name="global.label.addrParGuar"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].addrParents"/>
            </td>
            </tr>
             <tr>
                <td>
                    <s:text name="global.label.intRelIfAny"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].intrRelatives"/>
            </td>
            </tr>
             <tr>
                <td>
                    <s:text name="global.label.identProbIss"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].identifiedProblemsChild"/>
            </td>
            </tr>
            <tr>
                <td>
                    <s:text name="global.label.eduStatus"/> :
                </td>
            <td>
                <s:property value="childDetailsList[0].eduStatus"/>
            </td>
            </tr>
            
             <tr>
        <td>
            <s:text name="global.label.childNat"/> :
                </td>
            <td>
                <s:property value="%{childNature}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.msg.isDisabled"/>  :
                </td>
            <td>
                <s:property value="%{disabled}"/>
            </td>
            </tr>
             <tr>
        <td>
               <s:text name="global.label.natOfDis"/>  :
                </td>
            <td>
                <s:property value="%{natureDisability}"/>
            </td>
            </tr>
             <tr>
        <td>
              <s:text name="global.label.admBy"/>  :
                </td>
            <td>
                <s:property value="%{admThrough}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.nameAuthPers"/>  :
                </td>
            <td>
                <s:property value="%{nameAuthPer}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.cwcjjbnum"/>  :
                </td>
            <td>
                <s:property value="%{cwcJjbOrderNo}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.cwcjjbdate"/>  :
                </td>
            <td>
                <s:property value="%{orderDate}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="label.prodBy"/> :
                </td>
            <td>
                <s:property value="%{producedBy}"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.detailsOfProp"/> :
                </td>
            <td>
                <s:property value="%{propertyPossessed}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.proLawChildAdmm"/> :
                </td>
            <td>
                <s:property value="%{provisionLaw}"/>
            </td>
            </tr>
             <tr>
        <td>
            <s:text name="global.label.reaAdmConfLaw"/> :
                </td>
            <td>
                <s:property value="%{reasonAdm}"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.periodOfStay"/> :
                </td>
            <td>
                <s:property value="%{periodStay}"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.probDatedis"/> :
                </td>
            <td>
                <s:property value="%{producedBy}"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.recoCWC"/> :
                </td>
            <td>
                <s:property value="%{recommCwc}"/>
            </td>
            </tr>
            <tr>
        <td>
            <s:text name="global.label.recoCW"/> :
                </td>
            <td>
                <s:property value="%{recommCaseworker}"/>
            </td>
            </tr>
            
           
    </s:iterator>
           
        </table>
 </s:else>
