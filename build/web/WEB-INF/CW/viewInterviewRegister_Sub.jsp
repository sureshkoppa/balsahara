<%-- 
    Document   : viewInterviewRegister_Sub
    Created on : Jul 8, 2011, 12:10:57 PM
    Author     : Ramu Parupalli
--%>
<%@taglib  uri="/struts-tags" prefix="s"%>
 <s:if test="interviewRegister_show.size()== 0">
     <!-- <h2>No Records are available for selected Child</h2> (put it when selected but no list value later)-->
            </s:if>
<s:else>
  <table border="1">
      <tr><th><s:text name="label.dateAndTime"/></th><th><s:text name="label.nameOfVisitor"/></th><th><s:text name="label.relWithChild"/></td><th><s:text name="label.addrAndContNumOfVis"/></th><th><s:text name="label.behaveAndAttDurVisit"/>:</th>
          <th><s:text name="label.behaveAndAttAftVisit"/>:</th><th><s:text name="label.suggFollowUpAction"/>:</th><th><s:text name="label.remOfSuper"/></th></tr>
       
            
            
            <s:iterator value="interviewRegister_show">
            
        <tr>
            <td>
                <s:date name="%{interviewDate}" format="dd/MM/yyyy hh:mm:ss aaa"/>
                <!--s:property value="%{interviewDate}"/-->
            </td>
             <td>
                <s:property value="%{interviewer}"/>
            </td>
             <td>
                <s:property value="%{relationshipChild}"/>
            </td>
             <td>
                <s:property value="%{addrInterviewer}"/>
            </td>
             <td>
                <s:property value="%{childBehaviourInt}"/>
            </td>
             <td>
                <s:property value="%{childBehaviourAfterInt}"/>
            </td>
            
             <td>
                <s:property value="%{suggestedAction}"/>
            </td>
             <td>
                <s:property value="%{remarksSuper}"/>
            </td>
        </tr>
    </s:iterator>
           
        </table>
 </s:else>