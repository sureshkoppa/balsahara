<%-- 
    Document   : PopIssueRadioOptions
                 
    Created on : 12 Jul, 2011, 3:15:29 PM
    Author     : suresh
--%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<%@taglib prefix="s" uri="/struts-tags"%>



<s:if test="issue_to_radio != 'start'">
<s:if test="list_stake_holders!=null">
    
   <!--select name="select_stake_holders" onchange="populate(this)" id="select_stake_holders">
        <option value="">plalitha(Deputy Super)</option>
        <option value="">plalitha(Case Worker)</option>
        <option value="">Rajanna(Doctor)</option>
        <option value="">lakshmi(Head Master)</option>
        <option value="">plalitha(Counselor)</option>
     </select-->
     <s:select list="list_stake_holders" name="select_stake_holders" id="select_stake_holders"/>

    <div id="tb1" > </div>
    <div id="tb2" > </div>
</s:if>
<s:elseif test="list_child_idnames!=null">
    
<s:iterator value="list_child_idnames" var="cname">  
        <%--  <s:checkboxlist list="list_child_idnames" name="select_childs_ids"  theme="simple" /> --%>
              <s:hidden name="itrc" value="%{list_child_idnames.size()}"/>
        <s:checkbox name="select_childs_ids" fieldValue="%{cname}"  id="select_childs_ids"/>&nbsp;
        
        <s:if test="%{#cname.contains('inactive')}">
            <font style="color: plum"><s:property value="cname"/></font><br/>
        </s:if>
        <s:else>
            <s:property value="cname"/><br/>
        </s:else>    
    </s:iterator>
        <s:a onclick="javascript:toggle();return false;"><s:text name="label.selectAll"/></s:a>
        <span style="padding-left:20px">
        <s:a onclick="javascript:untoggle();return false;"><s:text name="label.unSelectAll"/></s:a></span>     
</s:elseif>

</s:if>
<s:else>
    
</s:else>
      