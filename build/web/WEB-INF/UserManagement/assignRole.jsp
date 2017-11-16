<%@taglib uri="/struts-tags" prefix="s"%>


------------><s:property value="roleHomeId"/>
<s:if test="%{roleHomeId == 'none'}">

 <s:form action="#" method="POST">

    select a home:
    <%--<s:select name="roleHomeId" list="homes" listKey="homeId" title="%{'#homeAddress'}" listValue="%{homeId+' ---> '+homeAddress}"></s:select>--%>
    <select name="roleHomeId">

        <s:iterator value="homes">
             <option title="${homeAddress}" value="${homeId}">${homeId}</option>
        </s:iterator>

    </select>
    <s:submit value="go"/>
</s:form>
</s:if>

    <s:else>
        <s:form action="UM-AssignRoleSub" method="get" >
            <s:hidden name="roleHomeId" value="%{roleHomeId}"/>
            

            <table border="1" cellpadding="5" cellspacing="1" BORDERCOLOR="white">
                <thead>
                    <tr bgcolor="#ECE5B6">
                        <td>S/N</td>
                        <td>User Id</td>
                        <s:iterator value="roleList">
                            
                                <s:if test="%{roleId==-1 or roleId==0}"></s:if>
                                <s:else><td><s:property value="roleName"/> </td></s:else>
                           
                        </s:iterator>

                    </tr>
                </thead>
                <s:iterator value="userMapOfAHome" id="user" status="stat">

                    <s:iterator id="keysInMap" value="key"> <!--map Start-->

                    <tr <s:if test="#stat.count%2==0">bgcolor="#FAF8CC"</s:if>>
                        <td><s:property value="#stat.count"/></td>
                        <td><s:property  value="#keysInMap"/><s:hidden name="usersOfHome" value="%{#keysInMap}"/></td>
                         

                             <s:iterator value="roleList">

                                 <s:if test="%{roleId==-1 or roleId==0}"></s:if>


                                 <s:else>


                                 <s:set name="roleAssigened" value="%{'false'}"/>


                                 <s:iterator id="valuesInAKey" value="value">
                                     <s:if test="%{#valuesInAKey == roleId}"><s:set name="roleAssigened" value="%{'true'}"/></s:if>
                                 </s:iterator>
                           
                           <td>
                               <s:if test="%{#roleAssigened == 'true'}">
                                 
                                   <font color="green" style="background-color: yellow "><b><s:property  value="%{'YES'}"/></b></font><s:hidden name="rolesOfHome" value="-1"/>
                                
                                </s:if>

                                 <s:else>
                                     
                                          <select name="rolesOfHome">
                                            <option value="-1">N</option>
                                            <option value="${roleId}">Y</option>
                                          </select>
                                      

                                 </s:else>
                              </td>
                              </s:else>
                            </s:iterator>
                         
                            
                           
                       
                    </tr>
                    </s:iterator> <!--map End-->
                </s:iterator>
            </table>

            <s:submit value="save"/>
        </s:form>




    </s:else>







