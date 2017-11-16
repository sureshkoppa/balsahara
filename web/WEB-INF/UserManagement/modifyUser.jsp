<%@ taglib uri="/struts-tags" prefix="s"%>
<head>
          <script type="text/javascript">            
              <jsp:include page="../../javascripts/UM_ModifyUser_Validation.jsp"></jsp:include> 
           </script>
    <script>
    function preSelect()
    {
        //--------------------setTheAction heare-----START
        if(${session['roleid']}=='0')
                {                    
                 document.modifyUserForm.action='UM-ModifyUserSubAction';   
                }
                else if(${session['roleid']}=='1')
                {
                    document.modifyUserForm.action='HM-ModifyUserSubAction';  
                    //alert('**********>'+formElement.action);
                }
                else if(${session['roleid']}=='2')
                {
                    document.modifyUserForm.action='CW-ModifyUserSubAction';  
                    //alert('**********>'+formElement.action);
                }
                 else if(${session['roleid']}=='3')
                {
                    document.modifyUserForm.action='DS-ModifyUserSubAction';  
                    //alert('**********>'+formElement.action);
                }
                else if(${session['roleid']}=='4')
                {
                    document.modifyUserForm.action='SU-ModifyUserSubAction';  
                    //alert('**********>'+formElement.action);
                }
                 else if(${session['roleid']}=='6')
                {
                    document.modifyUserForm.action='DOC-ModifyUserSubAction';  
                    //alert('**********>'+formElement.action);
                }
                else if(${session['roleid']}=='-4')
                {
                    document.modifyUserForm.action='DPO-ModifyUserSubAction';  
                    //alert('**********>'+formElement.action);
                }
                
                 else if(${session['roleid']}=='-3')
                {
                    document.modifyUserForm.action='CWC-ModifyUserSubAction';  
                    //alert('**********>'+formElement.action);
                }
                 else if(${session['roleid']}=='-2')
                {
                    document.modifyUserForm.action='CWC-ModifyUserSubAction';  
                    //alert('**********>'+formElement.action);
                }
                
        //-----------------Setting action done------END
        
        
         //------for setting THE DATABASE VALUE OF THE CITY
            var mySelect = document.getElementById('city');  
            var options = mySelect.options; // this returns the option element array  
            for(i = 0; i < options.length; i++)  
            {  
            var val = options[i].value;  
            if(val == '${user.city}')  
            {  
                    // Modify this option element, like  
                   options[i].selected ="selected";  
                   break;  
             }  
            }  
            
            
             //------for setting THE DATABASE VALUE OF THE state
            var mySelect = document.getElementById('state');  
            var options = mySelect.options; // this returns the option element array  
            for(i = 0; i < options.length; i++)  
            {  
            var val = options[i].value;  
            if(val == '${user.state}')  
            {  
                    // Modify this option element, like  
                   options[i].selected ="selected";  
                   break;  
             }  
            }  
            
            
             //------for setting THE DATABASE VALUE OF THE country
            var mySelect = document.getElementById('country');  
            var options = mySelect.options; // this returns the option element array  
            for(i = 0; i < options.length; i++)  
            {  
            var val = options[i].value;  
            if(val == '${user.country}')  
            {  
                    // Modify this option element, like  
                   options[i].selected ="selected";  
                   break;  
             }  
            }  
    
    }
    </script>
</head>
<body onload="return preSelect();">
<center>
       <h2><u><s:text name="global.head.modYourDet"/></u></h2><br>
  <s:form name="modifyUserForm" id="modifyUserForm" theme="css_xhtml" action="" >
                       
    <img src="./photos/<s:property value="user.userId"/>.jpg" height="140" width="120"/>
    <table border="1" align="center">
        
        
        <!--s:action name="UM-CurrentUserImage"/-->
        
     
      <tr> 
            <td width="35%"><s:text name="global.label.userName"/>
        </td>
        <td>
            <s:property value="%{user.userId}" escape="false"/>
        </td>
      </tr>
      <tr>
        <td><s:text name="global.label.firstName"/>
        </td>
        <td>
            <input type="text" name="firstName" id="firstName"  value="${user.firstName}"/>
        </td>
      </tr>
      <tr>
          <td><s:text name="global.label.lastName"/>
        </td>
        <td>
          <input type="text" name="lastName" id="lastName" value="${user.lastName}"/>          
         
        </td>
      </tr>
      <tr>
          <td><s:text name="global.label.address"/>
        </td>
        <td>
            <textarea name="permanentAddress" id="permanentAddress"  class="fortextfield" cols="15" rows="4">${user.permanentAddress}</textarea>
        </td>
      </tr>
      
      <tr>
          <td><s:text name="global.label.zipCode"/>
        </td>
        <td>
           <s:textfield name="zipcode" id="zipcode" value="%{user.zipcode}" />
        </td>
      
     
     <tr>
         <td><s:text name="global.label.city"/>
        </td>
        <td>
           <select name="city" id="city">          
            <%@ include file="city.jsp"%>
             </select>
        </td>
      </tr>
     
     <tr>
         <td><s:text name="global.label.state"/>
        </td>
        <td>
           <select name="state" id="state" value="%{user.state}">         
            <%@ include file="state.jsp"%>
            </select>
        </td>
      </tr>
     
     <tr>
         <td><s:text name="global.label.country"/>
        </td>
        <td>
           <select name="country" id="country" value="%{user.country}">           
            <%@ include file="country.jsp"%>
             </select>
        </td>
      </tr>
     
      <tr>
          <td><s:text name="global.label.email"/>
        </td>
        <td>
           <s:textfield name="email" id="email" value="%{user.email}" />
        </td>
      </tr>
     
     
    
   
      <tr>
        <td>
            <s:text name="global.label.telPhOffice"/>
        </td>
        <td>
          <s:textfield name="telOffice" id="telOffice" value="%{user.telOffice}" class="required phone" />
        </td>
      </tr>
      <tr>
        <td>
            <s:text name="global.label.mobNo"/>
        </td>
        <td>
          <s:textfield name="telResidence" id="telResidence" value="%{user.telResidence}"  required="true" class="fortextfield"/>
        </td>
      </tr>
     
     
            <tr>
            
                <td  colspan="2" align="center"><input type="submit" value="<s:text name="button.modify"/>" theme="simple" />
                  
              </td>
              
                 
            </tr>
          
          </table>  
       <s:hidden name="registrationType" value="%{user.registrationType}"/>           
       <s:hidden name="userId" id="userId" value="%{user.userId}"/>
       <s:hidden name="password" id="password" value="%{user.password}"/>
       <s:hidden name="regDate" value="%{user.regDate}"/>
       <s:hidden name="reg" value="%{user.regDate}"/>
       <s:hidden name="gender" value="%{user.gender}"/> 
       <s:hidden value="false" name="update"/>
  </s:form>
</center>
</body>