<%--
    Document   : ViewCategoryPage
    Created on : Apr 28, 2011, 11:47:04 AM
    Author     : ksuresh
--%>
<%@page import="com.einnovates.customtags.tree.TreeNode"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://einnovates.com/tree4jsp" prefix="t" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Category</title>
        <!--script type="text/javascript">
         function  populate_subcat()
         {
             alert("in populate subcat");

             document.getElementById('ViewCategoryForm').action="DS-viewCategory-subCategory";
             //alert(document.getElementById('ViewCategoryForm').action);
             document.getElementById('ViewCategoryForm').submit();
         }
         function  populate_subsubcat()
         {
             alert("in populate sub subcat");
             document.getElementById('ViewCategoryForm').action="DS-viewCategory-subSubCategory";
             document.getElementById('ViewCategoryForm').submit();
         }
         function view()
         {
             //if(document.getElementById('ViewCategoryForm').selection.)
         }

        </script-->
    </head>
    <body>
        <h2><s:text name="message.catTreeFor">
                <%--s:param>[${applicationScope.treeNode.getUserObject()}]</s:param--%>
            </s:text></h2><br/>
      
             <font style="font-size: large">
          <t:tree treeData="${retList}" imageBase="images/tree/"
    minusImage="18m.png" plusImage="18p.png"
    urlBase="nodeProperties.htm" target="propertiesFrame"
    nodeObject="nodeObject">
             
    <t:renderer nodeType="ALL_LEAFS">${nodeObject} </t:renderer>
    <t:renderer nodeType="ALL">${nodeObject}</t:renderer>
    <t:renderer nodeType="type1"><span style="color: red">${nodeObject} (Red Node)</span></t:renderer>
  
  </t:tree>
      </font>
      
    
    </body>
</html>
