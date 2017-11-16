<%-- 
    Document   : ViewItemRegister
    Created on : 27 May, 2011, 10:22:54 AM
    Author     : suresh
--%>


<%@page import="com.einnovates.customtags.tree.TreeNode"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib prefix="st" uri="/struts-dojo-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://einnovates.com/tree4jsp" prefix="t" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
        
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
        
        <script lang="javascript">
            function convert(obj)
            {
                //anchor = document.getElementById('idanchor');
                var str=obj.text ;
                
              //  alert(str);
                var i = str.length,
                  aRet = [];

              while (i--) {
                var iC = str[i].charCodeAt();
                if ((iC < 65 || iC > 127 || (iC>90 && iC<97))&&(iC!=32)&&(iC!=45)&&(iC!=47)&&(iC!=92)) {
                  aRet[i] = '&#'+iC+';';
                } else {
                  aRet[i] = str[i];
                }
               }
              var str2=aRet.join('');    
            //  alert(str2);
              
              
              var method="post";
              
                var form = document.createElement("form");
                form.setAttribute("method", method);
                form.setAttribute("action", "DS-viewItem-viewItemDetail");
                
                var hiddenField = document.createElement("input");
                hiddenField.setAttribute("type", "hidden");
                hiddenField.setAttribute("name", "leafcat");
                hiddenField.setAttribute("value", str2);
                
          
                
                form.appendChild(hiddenField);
                
                document.body.appendChild(form);
                form.submit();




            //  obj.setAttribute('href', "DS-viewItem-viewItemDetail?leafcat='"+str2+"'");
                
            }
            
            
        </script>    
    </head>
    <body>
        <h2><center><s:text name="heading.viewItem"/></center></h2>
        <br/><h3>Click on '+' for viewing Categories,<br/>
            <s:text name="message.clickForItems"/></h3>

        <h3>
        
          <t:tree treeData="${retList}" imageBase="images/tree/"
    minusImage="20m.png" plusImage="20p.png"
    urlBase="nodeProperties.htm" target="propertiesFrame"
    nodeObject="nodeObject">
             
                         
    <t:renderer nodeType="ALL_LEAFS">
        
        
        <font size="3"><a href='javascript:{}' onclick='convert(this);' id="idanchor" >${nodeObject}</a></font>
       
       
        
     
    </t:renderer>
    
    
    
        <t:renderer nodeType="ALL"><font size="3">${nodeObject}</font></t:renderer>
    <t:renderer nodeType="type1"><span style="color: red">${nodeObject} (Red Node)</span></t:renderer>
  </t:tree>
        
        </h3>
    </body>
</html>

