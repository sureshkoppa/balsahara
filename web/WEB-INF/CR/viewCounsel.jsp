<%-- 
    Document   : viewCounsel
    Created on : 9 Mar, 2012, 10:09:47 AM
    Author     : suresh
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>

<hr/>

<center>
    <s:if test="%{counsel_profileId_view!=null}">    
<s:if test="%{counsel_profileId_view.size()!=0}">
    
            <s:hidden name="selectCounselChild" value="%{counsel_profileId_view.get(0).childMaster.childProfileId}"/>
            <s:hidden name="counselChildDate" id="counselChildDate" />
            <table>
            <s:iterator value="counsel_profileId_view">
               <tr>
                <s:if test="counseling!=null"> 
                    <td><s:text name="package.label.viewCounselCouDate" />:</td><td> <input type="button" onclick="dis1(this);" value='<s:date name="counselingDetailsPK.dateOfCouncil" format="dd/MM/yyyy"/>' /></td>
                </s:if>
                <s:else>
                <td><s:text name="package.label.viewCounselFollDate" />: </td><td><input type="button" onclick="dis1(this);" value='<s:date name="counselingDetailsPK.dateOfCouncil" format="dd/MM/yyyy" />' /></td>
                </s:else>  
               </tr>
            </s:iterator>
            </table>
            <font style="font-size: small"><s:text name="package.heading.viewCounselClickDate"/></font>
      </s:if>
       
                    <s:else>
                    <center>  <font style="font-size: medium"><s:text name="package.error.viewCounselNoCou"/></font></center>
                    </s:else>     
                    </s:if>
                        <s:else></s:else>
</center>