<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/lookandfeel" prefix="l"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<link href="css/textcss.css" rel="stylesheet" media="screen">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Privilage</title>
<script language="JavaScript">
  function set(target)
   {                           
        document.forms[0].methodToCall.value=target;        
        document.forms[0].submit();        
   }
</script>   
<script language="javascript">

function linechanged()
{


document.forms[0].submit();

}
function wschanged()
{


document.forms[0].submit();

}
function submitcall()
{
document.forms[0].hidesubmit.value="submitted";
//alert(document.forms[0].hidden.value);
}
</script>
<script type="text/javascript">
<!--

// function switchDiv()
//  this function takes the id of a div
//  and calls the other functions required
//  to show that div
//
function switchDiv(div_id)
{

  var style_sheet = getStyleObject(div_id);
  if (style_sheet)
  {
    hideAll();
    changeObjectVisibility(div_id,"");
  }
  else 
  {
    alert("sorry, this only works in browsers that do Dynamic HTML");
  }
}

// function hideAll()
//  hides a bunch of divs
//
function hideAll()
{
   changeObjectVisibility("procurement","none");
   changeObjectVisibility("manufacturing","none");
    changeObjectVisibility("inventory","none");
     changeObjectVisibility("sales","none");
   changeObjectVisibility("shippingreceiving","none");
   changeObjectVisibility("fixedasset","none");
 changeObjectVisibility("payroll","none");
   
   
}

// function getStyleObject(string) -> returns style object
//  given a string containing the id of an object
//  the function returns the stylesheet of that object
//  or false if it can't find a stylesheet.  Handles
//  cross-browser compatibility issues.
//
function getStyleObject(objectId) {
  // checkW3C DOM, then MSIE 4, then NN 4.
  //
  if(document.getElementById && document.getElementById(objectId)) {
	return document.getElementById(objectId).style;
   }
   else if (document.all && document.all(objectId)) {  
	return document.all(objectId).style;
   } 
   else if (document.layers && document.layers[objectId]) { 
	return document.layers[objectId];
   } else {
	return false;
   }
}

function changeObjectVisibility(objectId, newVisibility) {
    // first get a reference to the cross-browser style object 
    // and make sure the object exists
    var styleObject = getStyleObject(objectId);
    if(styleObject) {
	styleObject.display = newVisibility;
	return true;
    } else {
	// we couldn't find the object, so we can't change its visibility
	return false;
    }
}
function showsub(div_id,div_id2)
{

 var style_sheet = getStyleObject(div_id);
  if (style_sheet)
  {
  
    if(document.getElementById(div_id2).checked==true)
    {
     
    changeObjectVisibility(div_id,"");
     //checkAll(div_id2);
    }
    else
    {
    
    changeObjectVisibility(div_id,"none");
    }
    
    
}
}
function checkAll(obj)
{
  var selectObject = obj;
  
    if(selectObject)
    {
      var selectCount  = selectObject.length;
      selectObject.checked=value;//if there is only one checkbox to selct or unselect
      
      for (var i = 0; i < selectCount; i++) 
      {
        selectObject[i].checked = value;
      }// end for
    }
}
// -->
</script>
</head>
<html:form action="DelPrivilegeAction.do">    
   <s:hidden name="methodToCall"/>
     <table  cellspacing="2" cellpadding="2" width="476"  align="center" id="workspace" class="border_table">
    <tr><td align="left" colspan="2"><font size="1">user management&gt;user&gt;add privileges</FONT></span></td>
      </tr>
        <tr>
 <th align="right" colspan="2">
   <FONT color="#003366">Delete Privilage</FONT>
 </th></tr>
     <tr>    
      <td colspan="2">
       <FONT size="1" color="#003366">Role</FONT> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <s:select class="fortextfield" name="roleId_txt" onchange="set('AssignedPrevilige')">
        <c:if test="${not empty EQUALTO}">
        <option value="">===========</option>
        </c:if>
        <c:forEach items="${ROLES}" var="role">
         <option value="<c:out value="${role.roleId}"/>&<c:out value="${role.roleName}"/>"><c:out value="${role.roleName}"/></option>
         </c:forEach>         
       </s:select>
       </td> 
     </tr>         
    </table>
<Table cellspacing="2" cellpadding="2" width="476"  align="center" id="workspace" class="border_table"> 
  <c:if test="${not empty ROLE.privRoles }">    
    <l:TableRow>    
      <l:TableHead align="center">
          <s:checkbox name="CHECKBOX" class="fortextfield"/>
      </l:TableHead>
      <l:TableHead align="center">
          Module Name
      </l:TableHead>
      <l:TableHead align="center">
          Sub Module Name
      </l:TableHead>
      <l:TableHead align="center" colspan="2">
          Privileges
      </l:TableHead>
    </l:TableRow>        
    <c:forEach items="${ROLE.privRoles}" var="PROLE">
      <l:TableRow>        
        <l:TableData align="center">
          <s:checkbox name="checkbox" value="<c:out value="${PROLE.comp_id.module}"/>&<c:out value="${PROLE.comp_id.subModule}"/>!<c:out value='${PROLE.comp_id.priv}'/>" class="fortextfield"/>
        </l:TableData>  
        <l:TableData align="center">
          <c:out value="${PROLE.comp_id.module}"/>
        </l:TableData>
        <l:TableData align="center">
          <c:out value="${PROLE.comp_id.subModule}"/>
        </l:TableData>
        <l:TableData align="center" colspan="2">
          <c:out value='${PROLE.comp_id.priv}'/>
        </l:TableData>
      </l:TableRow>
    </c:forEach>   
    <l:TableRow>
       <l:TableData align="center" colspan="5">
           <html:submit value="submit" onclick="return set('DeleteAssignedPrevilige')"/>
       </l:TableData>    
    </l:TableRow>
   </c:if>  
 </Table>
</html:form>
</body> 
</html>
