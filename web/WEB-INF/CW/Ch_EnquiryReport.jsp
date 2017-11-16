<%-- 
    Document   : Ch_EnquiryReport
    Created on : 1 Aug, 2011, 2:50:34 PM
    Author     : vinumol
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <sx:head/>
       <script type="text/javascript">
    function show_details(val) {
         // alert("djgsdhgksdfh");
        if(val.value!=1){
        //document.getElementById('div_form').style.visibility='hidden';
        dojo.event.topic.publish("show_homes");
        }
        
          }
          
     function show_details2(val){

        if(val.value!=1){
            
            dojo.event.topic.publish("show_childpid");
        }
           
        
             }
             
        
        function validate()
            {
               // alert('helloi');
               //var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
               var $dialog = $('<div></div>')
               
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
                
                
                    /*validating the fields present in the form*/
                     if($("#userDistrictId").val()==1)
                        {
                            $dialog.html("Sorry! Please Select ProfileId");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
            }
                                </script>       
      
 
    </head>
    <body >
        <center>
            <CAPTION><font size="3"><b><s:text name="heading.childFamBkgndDet"/></b></font></CAPTION> 
            
            <!--s:if test="userDistrictId == null"-->
            <s:form name="f1" action="SIFBG-REPORT" method="POST"  theme="css_xhtml" id="f1" onsubmit="return validate();"> 
                    
                    <s:hidden name="formname" value="f1"/>
       
                <table border="1">
                 <tr>
                    
                     <td><s:text name="label.selDistrict"/> :
                     </td>
                    <td>
                        <s:select name="userDistrictId" id="userDistrictId" list="districtList"  listKey="districtId" listValue="districtName" headerValue="-- Please Select --" headerKey="1" onchange="javascript:show_details(this);return false;" >
                        </s:select>
                    </td>
                </tr>
                <tr>
                    <td><s:text name="label.selHome"/>: </td>
            
                  <td><s:url id="d_url" action="DPO-FB-FetchHomeDetail"/>
                      <sx:div id="details" href="%{d_url}" listenTopics="show_homes" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>
                
                <tr>
                    <td><s:text name="option.selChildProfileId"/>:  </td>
            
                  <td><s:url id="d_url1" action="DPO-FB-FetchChildReport"/>
                  
                      <sx:div id="details1" href="%{d_url1}" listenTopics="show_childpid" formId="f1" showLoadingText="true">
                     </sx:div>
                   </td>
                </tr>  
                </table>               
             <table>
                              
               
                <tr><td align="right">
                        <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/>  </center>  </td>
                     
                 </tr>   
                </table><br/>
                     
                
                </s:form>
        </center>
        </body>
</html>