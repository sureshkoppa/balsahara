<%-- 
    Document   : AddDuty
    Created on : 20 Jun, 2011, 7:11:02 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
 <html>
    <head>
        <title>Assign Duty</title>
       
    </head>
    <body onload="f1()">             
        
        <div id="demo"></div>        
        <script language="JavaScript" type="text/javascript">
           
          
        function addDuty(addDuty_date,addDuty_fromTime_hours, 
        addDuty_fromTime_mins,addDuty_fromTime_ampm,addDuty_toTime_hours,addDuty_toTime_mins,addDuty_toTime_ampm,
        selectedItems) {
            
         var arr=selectedItems;
         var jsparr=document.getElementsByName('selectedItems');
         //alert('jsp element =  '+document.getElementById('addDuty_date'));
         //document.getElementByName('selectedItems')
         //document.getElementByName('addDuty_date').value=addDuty_date;
         document.getElementById('addDuty_date').value=addDuty_date;
        
         
         //set the timings
         document.getElementById('addDuty_fromTime_hours').value=addDuty_fromTime_hours;
         document.getElementById('addDuty_fromTime_mins').value=addDuty_fromTime_mins;
         document.getElementById('addDuty_fromTime_ampm').value=addDuty_fromTime_ampm;
         
         document.getElementById('addDuty_toTime_hours').value=addDuty_toTime_hours;
         document.getElementById('addDuty_toTime_mins').value=addDuty_toTime_mins;
         document.getElementById('addDuty_toTime_ampm').value=addDuty_toTime_ampm;
         
        for(i=0;i<arr.length;i++){
            // alert(i+'th value ----> '+arr[i]);
             
             jsparr[i].value=arr[i];
             
         }

      // for(j=0;j<jsparr.length;j++)
            // alert(j+'th jsp value ----> '+document.getElementsByName('selectedItems')[j].value);
  
                      /*    						  
     
	 var langDetails = new Array(); 
langDetails[0] = "v1";
langDetails[1] = "v2";
langDetails[2] = "v3";
langDetails[3] = "v4";
langDetails[4] = "v5";
langDetails[5] = "v6";
langDetails[6] = "v7";
langDetails[7] = "v8";
         */
        // alert("jsp, from JavaScript"+document.getElementById('addDuty_date').value);
         document.forms["gaurdingDutyForm"].submit();
        }
        </script>             
               
         <center>
             <s:form action="SU-addDuty-addDuty" name="gaurdingDutyForm" id="gaurdingDutyForm">
                 <!--
                 addDuty_date,addDuty_fromTime_hours,addDuty_fromTime_mins,addDuty_fromTime_ampm,
                 addDuty_toTime_hours,addDuty_toTime_mins,addDuty_toTime_ampm,
                 selectedItems
                 -->
                 <s:hidden name="addDuty_date" id="addDuty_date"/>                 
                 <s:hidden name="addDuty_fromTime_hours" id="addDuty_fromTime_hours"  />
                 <s:hidden name="addDuty_fromTime_mins" id="addDuty_fromTime_mins" />
                 <s:hidden name="addDuty_fromTime_ampm" id="addDuty_fromTime_ampm" />                 
                 <s:hidden name="addDuty_toTime_hours" id="addDuty_toTime_hours"  />
                 <s:hidden name="addDuty_toTime_mins" id="addDuty_toTime_mins" />
                 <s:hidden name="addDuty_toTime_ampm" id="addDuty_toTime_ampm" />
				 
                 <s:hidden name="selectedItems" id="selectedItems"/>
                 <s:hidden name="selectedItems" id="selectedItems"/>
                 <s:hidden name="selectedItems" id="selectedItems"/>
                 <s:hidden name="selectedItems" id="selectedItems"/>
                 <s:hidden name="selectedItems" id="selectedItems"/>
                 <s:hidden name="selectedItems" id="selectedItems"/>
                 <s:hidden name="selectedItems" id="selectedItems"/>
                        
             </s:form>
                 <CAPTION><font size="3"><b><s:text name="heading.addDutyReg"/></b></font>
                 </CAPTION>
            
             <div style="position: relative; width: 470px; height: 536px; color: #EEEEEE">
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                    codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" width="470" height="535">
                <param name="movie" value="./flex/ChildHome.swf" />
                <param name="quality" value="high">
                <param name="flashVars" value="guardsList=${gaurdNames}&langInfo=langDetails">
                <embed src="./flex/ChildHome.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                       type="application/x-shockwave-flash" width="470" height="535" ALIGN="LEFT"
                       flashVars="guardsList=${gaurdNames}&langInfo=${lang_label}"/>
            </object>
            </div>               
            <div id="dialog-form_add_duty" title="Add Duty Preview" >
                <table border="1" id="addduty_preview">
                </table>
        </div>
            </center>
                
    </body>
</html>
