<%-- 
    Document   : AddObservation
    Created on : 3 Aug, 2011, 4:58:45 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
     <head>
        <script  type="text/javascript">
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
        function check_obj()
            {
             
                   var len=count_check(document.getElementsByName('selProfileId').length);
                    if(len==0)
                        {
                            $dialog.html("Sorry! check atleast one profile");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else{
                       
                            if(check_obj1())
                            {
                                  document.getElementById('AddObjForm').submit();
                            }
                        }

            }     
             function check_obj1()
             {
                 var max=document.getElementsByName('selProfileId').length;
                 
                 if(max==1)
                     {
                         
                         
                           
                           var idvar=document.AddObjForm.selProfileId.value;
                           var name1="gas_observation"+idvar;
                           
                        
                                 if(document.getElementById(name1).value=="")
                                     {
                                         
                                             $dialog.html("Plase write observation for id:"+idvar);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false;
                                     }
                                     else
                                         {
                                             return true;
                                         }
                                 
                       }
                       else
                       {
                                    for (var idx = 0; idx < max; idx++) 
                                    {
                                        
                                       if(eval("document.AddObjForm.selProfileId[" + idx + "].checked") == true)
                                       {
                                        
                                          var idvar=document.AddObjForm.selProfileId[idx].value;
                                          var name1="gas_observation"+idvar;
                                           
                                          if(document.getElementById(name1).value=="")
                                          {
                                              
                                              $dialog.html("Plase write observation for id:"+idvar);
                                              $dialog.parent().addClass( "ui-state-error" );
                                              $dialog.dialog('open');
                                              return false; 
                                              
                                          
                                          }
                                       }
                                       
                                   }   
                                   return true;
                         }
                         
                     
                     
                 
             }
            
            
               function  count_check(max)
               {
                   
                  var total=0;
                  if(max!=1)
                  {
                      for (var idx = 0; idx < max; idx++) 
                      {
                                    if (eval("document.AddObjForm.selProfileId[" + idx + "].checked") == true) 
                                    {
                                       total += 1;
                                    }
                       }
                  }
                  else
                  {
                                    if (document.AddObjForm.selProfileId.checked == true) 
                                           total=1;
                              
                   }  
                          return total;
               }
       
                       </script>
    </head>
    <body>
        <s:form theme="css_xhtml" action="SU-observation-addObservation" name="AddObjForm" id="AddObjForm"  onsubmit="javascript:check_obj(this);return false;">
         <center>
            <CAPTION><font size="3"><b><s:text name="heading.addObser"/></b></font></CAPTION><br/><br/>
            
            <s:if  test="%{addObjList.size()!=0}">
            <div> <font size="2"><s:text name="label.dutyDate"/>: </font><s:property value="selobjDate"/>
                <s:hidden name="addObjDate" value="%{selobjDate}"/>   
            </div>  
            <table border="1">
            <tr>
            <th></th>     
            <th><s:text name="label.profileId"/></th>
            <th><s:text name="label.name"/></th>
            <th><s:text name="label.fromTime"/></th>
            <th><s:text name="label.toTime"/></th>
            <th><s:text name="label.dutyAt"/></th>
            <th><s:text name="label.contPhNo"/></th>
            <th><s:text name="label.observ"/></th>
            </tr>
            <tbody>
                <s:iterator value="addObjList" id="addObjList">
                <tr>
                    <s:if test="addDuty_observations!=null">
                        <td style="font-size: medium">--</td>
                    </s:if>
                    <s:else>
                        <td><s:checkbox name="selProfileId" fieldValue="%{addDuty_profileid}" theme="simple" value="false" id="selProfileId"/></td>    
                    </s:else>
                    
                    <td align="center"><s:property value="addDuty_profileid" />            </td>
                    <td><s:property value="profile_name" escape="false"/>            </td>
                    <td><s:property value="addDuty_fromTime"/>            </td>
                    <td><s:property value="addDuty_toTime"/>            </td>
                    <td><s:text name="label.point"/>:<s:property value="addDuty_dutyAt"/>            </td>
                    <td><s:property value="contactNo"/>            </td>
                    <td>
                        <s:if test="addDuty_observations!=null">
                         <s:property value="addDuty_observations"/>
                       
                    </s:if>
                    <s:else>
                         <s:textarea name="gas_observation[%{addDuty_profileid}]" rows="1" cols="20" id="gas_observation%{addDuty_profileid}" />
                        
                    </s:else>
                        </td>
                </tr>
            </tbody>
            
        
            </s:iterator> 
            </table>
         <br/>
        
         <s:set var="abortLoop" value="%{true}"/>
         
         <s:iterator value="addObjList"> 
             <s:if test="(addDuty_observations==null)&&(#abortLoop)">
         <table>
               <tr>
                    <td><input type="submit" value="<s:text name="button.addObserv"/>"/></td>
                        <td><input type="reset" value="<s:text name="button.clear"/>"/></td>
                </tr>
            </table>  
             <s:set var="abortLoop" value="%{false}"/>
             </s:if>
         </s:iterator>  
            </center>
            </s:if>
            <s:else>
                <br/><br/>
                <font color="red" style="background-color: white;font-size: medium">
                    <s:text name="message.noDutyAddedOn">
                        :<s:param><s:property value="selobjDate" escape="false"/></s:param>
                     
                    </s:text>
                    </font>
                
            </s:else>
         </s:form>
    </body>
</html>
