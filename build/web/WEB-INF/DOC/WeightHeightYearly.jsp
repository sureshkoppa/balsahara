<%-- 
    Document   : WeightHeightYearly
    Created on : 9 Jan, 2012, 3:25:56 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Height Weight Yearly Entry</title>
        
        <script>
            
            function setNotFilledValues()
{
    /************Code to implement trim() in IE START*************/
    if(typeof String.prototype.trim !== 'function') {
        String.prototype.trim = function() {
        return this.replace(/^\s+|\s+$/g, ''); 
            }
        }
    /************Code to implement trim() in IE END*************/  
    
    //alert('val -- -> ');
    var days=document.getElementsByName("days_year");
    //alert('val.size -- -> '+marks.length);
    for(var i=0;i< days.length;i++)
        {
            //alert('val -- -> '+marks[i].value);
            if(days[i].value.trim()==''|| days[i].value.trim() == -1)
                days[i].value=-1;
                
        }
    
    var ht=document.getElementsByName("htChild_year");
    //alert('val.size -- -> '+marks.length);
    for(var i=0;i< ht.length;i++)
        {
            //alert('val -- -> '+marks[i].value);
            if(ht[i].value.trim()==''|| ht[i].value.trim() == -1)
                ht[i].value=-1;
                
        }
        
        var wt=document.getElementsByName("wtChild_year");
    //alert('val.size -- -> '+marks.length);
    for(var i=0;i< wt.length;i++)
        {
            //alert('val -- -> '+marks[i].value);
            if(wt[i].value.trim()==''|| wt[i].value.trim() == -1)
                wt[i].value=-1;
                
        }
        
      
   }
   
   
   /*------------------Clean up----------------------------*/
   function setBlank()
{    
    var days=document.getElementsByName("days_year");
    //alert('val.size -- -> '+marks.length);
    for(var i=0;i< days.length;i++)
        {
            
                days[i].value='';
                
        }
    
    var ht=document.getElementsByName("htChild_year");
    //alert('val.size -- -> '+marks.length);
    for(var i=0;i< ht.length;i++)
        {
           
                ht[i].value='';
                
        }
        
        var wt=document.getElementsByName("wtChild_year");
    //alert('val.size -- -> '+marks.length);
    for(var i=0;i< wt.length;i++)
        {
           
                wt[i].value='';
                
        }
        
        
        var rem=document.getElementsByName("remarks_year");
    //alert('val.size -- -> '+marks.length);
    for(var i=0;i< rem.length;i++)
        {
           
                rem[i].value='';
                
        }
   }
            
        </script>
    </head>
    <body onload="return setBlank();">
        <%--session.setAttribute("form_name","wh_reg");--%>
        <center>
            <CAPTION><font size="3"><b>Yearly Height & Weight Register</b></font></CAPTION>
            
            
        <s:form name="wh_reg_yearly" action="HWSaveYearly" method="GET" theme="css_xhtml" id="wh_reg">
            
            <table border="2">
                <tr>
                    <td>Select Child</td>
                    <td>Select Year</td>
                </tr>
                
                <tr>
                    <td><s:select name="wh_reg_profile_id_year" id="wh_reg_profile_id" labelposition="left" headerKey="1" headerValue="--Please Select--" list="child_profid_list" listKey="childProfileId" listValue="%{childName+'---->'+childProfileId}"/></td>
                    <td><s:select name="wh_reg_year" id="wh_reg_year" list="#{'2005':'2005','2006':'2006','2007':'2007','2008':'2008','2009':'2009','2010':'2010','2011':'2011','2012':'2012'}" theme="simple"/></td>
                </tr>
                
                
            </table>
                <font color="green"><b><s:property value="message"/></b></font>
                
                 <table border="1">
                <tr>
                    <th>Month</th>
                    <th>Date(1 to 31)</th>
                    <th>Height(cms)</th>
                    <th>Weight(kgs)</th>
                    <th>Recommendations</th>
                    
                </tr>
                
                <tr>
                    <td>JAN</td>
                    <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>FEB</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>MAR</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>APR</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>MAY</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>JUN</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>JUL</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>AUG</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>SEP</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>OCT</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>NOV</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                <tr>
                    <td>DEC</td>
                     <td><s:textfield name="days_year" size="7"/></td>
                    <td><s:textfield name="htChild_year" size="7" id="wh_reg_height"/></td>
                    <td><s:textfield name="wtChild_year" size="7" id="wh_reg_weight"/></td>
                    <td><s:textfield name="remarks_year" size="10" id="wh_reg_remarks_year"/></td>
                </tr>
                
                
                
            </table>
            
            
          
            
            <br><br><s:submit value="Save" align="center" id="Save" onclick="return setNotFilledValues();"/>
        </s:form>
        
	
    </body>
</html>
