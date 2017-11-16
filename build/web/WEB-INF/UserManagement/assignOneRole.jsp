<%@taglib uri="/struts-tags" prefix="s"%>

<!--
private String userOfHome;
     private int roleOfHome;
     private String roleStartDate;
     private String roleEndDate;
-->


<%--  >=>=-----------><s:property value="roleHomeId"/> --%>


<s:if test="%{roleHomeId == 'none'}">
<center>
    <h2><u>Assign Role</u></h2><br>
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
</center>
</s:if>

    <s:else>
        <center>
        <h3><u>Assign Role</u></h3><br>
        <s:form name="asssignRoleForm" id="asssignRoleForm" action="UM-AssignOneRoleSub" method="get" theme="css_xhtml">
            <s:hidden name="roleHomeId" value="%{roleHomeId}"/>

            <table border="0">
                <tr>
                    <td>Select User:</td><td><s:select name="userOfHome" id="userOfHome" list="userMapOfAHome" listKey="key" listValue="key" headerKey="-1" headerValue="---please select---"/></td>
                </tr>
                <tr>
                    <td>Select Role:</td><td><s:select name="roleOfHome" id="roleOfHome" list="roleList.{? #this.roleId > 0}" listKey="roleId" listValue="roleName" headerKey="-1" headerValue="---please select---"/></td><!--anupam filtered the list here-->
                </tr>
                <tr>
                    <td>Start Date:</td><td class="demo"><s:textfield name="roleStartDate"  readonly="true" id="datepicker"/></td><%--td><s:textfield name="roleStartDate" /></td--%>
                </tr>
                <tr>
                    <td>End Date:</td><td class="demo"><s:textfield name="roleEndDate" readonly="true" id="datepicker1"/></td><%--td><s:textfield name="roleEndDate" /></td--%>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><s:submit value="save" theme="simple"/></td>
                </tr>
            </table>

            </s:form>
            
            <hr/>
            <p>The Users and corresponding Roles of the Home <b><s:property value="roleHomeId"/></b> are as follows</p>
            
            

           <p>   

            <table border="1" cellpadding="5" cellspacing="1" BORDERCOLOR="white">
                <thead>
                    <tr bgcolor="#ECE5B6">
                        <td>S/N</td>
                        <td>User Id</td>
                        <s:iterator value="roleList.{? #this.roleId > 0}"> <!--anupam filtered the list here-->

                                <s:if test="%{roleId==-1 or roleId==0}"></s:if>
                                <s:else><td><s:property value="roleName"/> </td></s:else>

                        </s:iterator>

                    </tr>
                </thead>
                <s:iterator value="userMapOfAHome" id="user" status="stat">

                    <s:iterator id="keysInMap" value="key"> <!--map Start-->

                    <tr <s:if test="#stat.count%2==0">bgcolor="#FAF8CC"</s:if>>
                        <td><s:property value="#stat.count"/></td>
                        <td><s:property  value="#keysInMap"/></td>


                             <s:iterator value="roleList.{? #this.roleId > 0}"> <!--anupam filtered the list here-->

                                 <s:if test="%{roleId==-1 or roleId==0}"></s:if>


                                 <s:else>


                                 <s:set name="roleAssigened" value="%{'false'}"/>


                                 <s:iterator id="valuesInAKey" value="value">
                                     <s:if test="%{#valuesInAKey == roleId}"><s:set name="roleAssigened" value="%{'true'}"/></s:if>
                                 </s:iterator>

                           <td>
                               <s:if test="%{#roleAssigened == 'true'}">

                                   <font color="green" style="background-color: yellow "><b><s:property  value="%{'YES'}"/></b></font>

                                </s:if>

                                 <s:else>

                                      NO


                                 </s:else>
                              </td>
                              </s:else>
                            </s:iterator>




                    </tr>
                    </s:iterator> <!--map End-->
                </s:iterator>
            </table>

            
        <!--/s:form-->

        </p>
</center>

    </s:else>







