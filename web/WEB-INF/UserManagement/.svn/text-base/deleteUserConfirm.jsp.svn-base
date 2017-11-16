<%@taglib uri="/struts-tags" prefix="s"%>

<%@ page contentType="text/html;charset=windows-1252"%>

<html>
  <head>
    <link href="css/textcss.css" rel="stylesheet" media="screen"/>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>untitled</title>
  </head>
  <body>
      <center>Please Confirm Deletion Of the Following Users</center><br>
      <s:form theme="css_xhtml" method="POST" action="DeleteUserMainAction">

          <table border="1" align="center">
              <tr>
               <th align="center">S/N</th>
              <th align="center">User Id</th>
              </tr>
              <s:iterator value="deleteList" id="cb" status="sn">
                  <tr>
                      <td align="center"><s:property value="%{#sn.count}"/></td>
                      <td align="center"><s:property value="%{cb}"/></td><s:hidden name="deleteId" value="%{cb}"/>
                  </tr>
              </s:iterator>
                  <tr>
                      <td colspan="2"><br>
                          <s:submit cssClass="button" name="buttonVal" value="confirm" theme="simple"/>
                          <s:submit cssClass="button" name="buttonVal"  value="cancel" theme="simple"/>
                          <br>
                      </td>
                      
                  </tr>
          </table>

      </s:form>


  </body>
</html>
