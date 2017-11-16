<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/x.tld" prefix="l"%>
<%@ page contentType="text/html;charset=windows-1252"%>
    <form action="DeleteUserSubAction.do" id="form1" method="POST" >
        <caption colspan="3" align="right">
            <center>
          <STRONG><font size="2" face="Verdana, Arial, Helvetica, sans-serif"/><FONT color="#003366" size="2">Delete User</FONT></STRONG>
          </center>
        </caption>
           <table cellspacing="1" cellpadding="1" width="100%" align="center" id="workspace" cssclass="tableborder1">
        <tr>
            <td colspan="7" height="35">
               
              <FONT face="Verdana" size="1"><s:a class="flyoutSearchText" href="procurementMainPage.jsp">user management</s:a>&gt;<s:a class="flyoutSearchText" href="#">user</s:a>&gt;delete</FONT>
          
    
            </td>
          </tr>
      
      
    
         
          <tr>
                      <th  width="40"></th>
           
           
           
           
           
            <th  fonttype="Verdana" align="center">
            User Id</th>
            <th    width="125" align="center">
            First Name</th>
            <th    width="125" align="center">
            Last Name</th>
          
          </tr>
        
         <!--commented by suresh-->
         
        <!--c:forEach  items="" var="VENDOR"-->

          <!--commented by suresh ends-->
          <tr>
           <td bgcolor="#a4b6c4"  width="100">
           <s:checkbox name="checkbox" value=""/>
          <s:a href="DeleteUserSubAction.do?checkbox=<c:out value=/>">
            <img width="11" height="13" src="images/button_delete.png" alt="Delete" title="Delete" border="0"/>
          </s:a>
           </td>
            
            <td bgcolor="#a4b6c4" align="center" width="75">
              <DIV align="center">
                    <FONT face="Verdana" size="2">
                     
                    
                  </FONT>&nbsp; 
               
              </DIV>
            </td>
            <td width="75" bgcolor="#a4b6c4" align="center">
              <DIV align="center">
                <FONT face="Verdana" size="2">
                  
                </FONT>
              </DIV>
            </td>
             <td width="75" bgcolor="#a4b6c4" align="center">
              <DIV align="center">
                <FONT face="Verdana" size="2">
                  
                </FONT>
              </DIV>
            </td>
            
           
          </tr>
           <!--commented by suresh-->
        <!--/c:forEach>
         <!--commented by suresh ends-->
        <tr><td></td><td></td><td></td>
        <td><s:submit value="Delete" class="forbuttonfield" onclick="return onDeleteCheck('form1','checkbox','User');"/></td>
        
        </tr>
      </table>
    </form>
  </body>
</html>
