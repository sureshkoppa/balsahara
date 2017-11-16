<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title> 
        <script type="text/javascript">
        function check()
        {
  
            if(document.getElementById("newItem_Bom").value=="")
                {
                    alert("Please enter BOM value or '0'");
                    return false;
                }
             return true
        }
       </script> 
    </head>
    <body>
        <center>
            <h1><font color="green"><s:text name="message.sucOper"/></font></h1><br><br>
        <h2><font color="blue"> <s:property value="message"/></font></h2>
        
        <br/>
       
        <s:form action="saveSingleBOM" name="SingleBOM" id="SingleBOM" onsubmit="javascript:return check()">
           Enter <u>PerDayPerChild Quantity</u>(BOM) Issued <u>in <br/>grams or ml</u> for Item <s:property value="additem_newitem_itemName"/>:<br/>
           <s:hidden name="newItemNo" value="%{ratCatNo}"/>
           <s:textfield name="newItem_Bom" id="newItem_Bom"/><br/><s:submit value="Save"/>
            </s:form>
       
        </center>
    </body>
</html>
