<%@taglib  uri="/struts-tags" prefix="s"%>
<%@taglib  uri="/struts-dojo-tags" prefix="sx"%>
<head>    
<sx:head/>
<script>
function show_details() {
dojo.event.topic.publish("show_detail");
}

function setToolTips()
{
    preActionSetter();
        var noOfOptions=document.getElementById('registrationType').options.length;
        var title;
        
        for(i=1;i<noOfOptions;i++)
            {
                switch(i)
                {
                    case 0:                        
                        //alert('---> '+document.getElementById('registrationType').options[i].value);
                        title='Select a catagory which suits you the best.'
                        break;
                    
                    case 1:                        
                        //alert('---> '+document.getElementById('registrationType').options[i].value);
                        title='Select Stakeholder if you are an employee of the Children Home.'
                        break;
                    case 2:
                        //alert('---> '+document.getElementById('registrationType').options[i].value);    
                        title='Select CWC/JJB if you are a CWC/JJB member.'
                        break;
                    case 3:
                        //alert('---> '+document.getElementById('registrationType').options[i].value);
                        title='Select DPO if you are a District Probation Officer.'
                        break;
                    case 4:
                        //alert('---> '+document.getElementById('registrationType').options[i].value);
                        title='Select Management if you are a heigher official survaying the children homes.'
                        break;
                        
                }
                document.getElementById('registrationType').options[i].title=title;
            }
            
}

function preActionSetter()
{
    
     if('${Operation}'=='reg') //admin adding a user
                {                    
                 
                 document.um_adduser.action='UM-RegisterUser-save';  
                 
                 
                }
                else //an non user registering
                {
                    document.um_adduser.action='AddUserAction';
                   
                }
}


        
</script>
</head>
<body onload="return setToolTips();">
<center>
    <h2><u><s:text name="Form.AddUser.Heading"/></u></h2><br/>
<s:form  name="um_adduser" id="um_adduser" theme="css_xhtml" action="" method="POST" >

     
      <table border="0">


        <tr>
        <td align="left">
          <FONT size="1" color="#003366"><s:text name="Form.index.UserID"/></FONT><font color="red">*</font>
        </td>

            <td><s:textfield id="userId" name="userId" required="true" class="fortextfield" onblur="javascript:show_details();return false;" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
          <td width="30" id="error">
         <s:url id="d_url" action="UM-AddUser-Duplication-check" />
         <sx:div id="details" href="%{d_url}" listenTopics="show_detail" formId="um_adduser"> 
         </sx:div>
              
          </td>
        </tr>
        <tr>
          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.Password"/></FONT><font color="red">*</font>
          </td>
          <td width="30" >
            <s:password class="fortextfield" required="true" id="password" name="password" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>




        </td>
        <td >(<s:text name="Form.msg.min5Max20Char"/>)&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>

          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.FirstName"/></FONT><font color="red">*</font>
          </td>
          <td >
     <s:textfield name="firstName" required="true" id="firstName" class="fortextfield" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
        </td>
        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.LastName"/></FONT><font color="red">*</font>
          </td>
          <td >
     <s:textfield name="lastName" required="true" id="lastName" class="fortextfield" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
        </td>
        <td >  </td>
        </tr>
        
        <tr>
          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.Gender"/></FONT><font color="red">*</font>
          </td>
          <td >
              <input type="radio" name="gender" id="gender" value="male"/><s:text name="Form.index.Male"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" id="gender" value="female"/> <s:text name="Form.index.FeMale"/>
        </td>
        <td >  </td>
        </tr>
        
        
        
        <tr>
          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.Address"/> &nbsp;&nbsp;</FONT><font color="red">*</font>
          </td>
          <td>
              <s:textarea name="permanentAddress" id="permanentAddress" required="true" class="fortextfield" cols="15" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
        </td>
        <td >  </td>
        </tr>
        <tr>
          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.City"/></FONT>
          </td>
          <td >
             <select name="city" id="city" Class="fortextfield" styleId="city" style="width:115">
           
            <%@ include file="city.jsp"%>
             </select>
          </td>
        <td >  </td>
        </tr>
        <tr>
          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.State"/></FONT>
          </td>
          <td>
             <select name="state" id="state" onchange="State_onchange()" Class="fortextfield" styleId="state_cmb" style="width:115">
           
            <%@ include file="state.jsp"%>
            </select>
          </td>
        <td >  </td>
        </tr>
        <tr>
          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.Country"/></FONT>
          </td>
          <td >
             <select name="country" id="country" onchange="Country_onchange()" Class="fortextfield" styleId="country_cmb" style="width:115">
            
            <%@ include file="country.jsp"%>
             </select>
          </td>
          <td>
             &nbsp;&nbsp;&nbsp;&nbsp;
          </td>
        </tr>
        <tr>
          <td align="left">
              <FONT size="1"><FONT color="#003366"><s:text name="Form.index.telOffice"/>&nbsp;</FONT>&nbsp;</FONT><font color="red">*</font>&nbsp;&nbsp;
          </td>
          <td>
     <s:textfield name="telOffice" id="telOffice" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
        </td>
        <td > (eg. 040-23XXXXXX ) </td>
        </tr>
        <tr>
          <td align="left">
            <FONT size="1" color="#003366"><s:text name="Form.index.Mobile"/></FONT> <font color="red">*</font>&nbsp;&nbsp;
          </td>
          <td>
     <s:textfield name="telResidence" id="telResidence" required="true" class="fortextfield" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
        </td>
        <td > (eg. 98XXXXXXXX ) </td>
        </tr>
        <tr>
          <td align="left">
              <FONT size="1" color="#003366"><s:text name="Form.index.EmailID"/>&nbsp;&nbsp;</FONT><font color="red">*</font>
          </td>
          <td>
     <s:textfield name="email" id="email" required="true" class="fortextfield" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
        </td>
        <td >  </td>
        </tr>
        <tr>
          <td align="left">
              <FONT size="1" color="#003366"><s:text name="Form.index.Zip"/>&nbsp;&nbsp;</FONT><font color="red">*</font>
          </td>
          <td>
    <s:textfield name="zipcode" id="zipcode" required="true" class="fortextfield" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/>
        </td>
        <td> (eg. 500085) </td>
        </tr>
        
        <!--Changed on 5th july START-->
         <tr>
          <td align="left">
              <FONT size="1" color="#003366"><s:text name="Form.index.RegistrationType"/>&nbsp;&nbsp;</FONT><font color="red">*</font>
          </td>
          <td>
              <select name="registrationType" id="registrationType"   />
                  <OPTION value="-1">-----<s:text name="global.option.headerKey"/>----</OPTION>
                  <option value="homeuser"><s:text name="Form.option.homeEmp"/></option>
                  <option value="cwc_jjb"><s:text name="Form.option.cwcjjb"/></option>
                  <option value="dpo"><s:text name="Form.option.dpo"/></option>
                  <option value="manager"><s:text name="Form.option.management"/></option>
               </select>     
                  
             
        </td>
        <td>  </td>
        </tr>
        <!--Changed on 5th july END-->
        <tr>
            
            <td colspan="3">
            <script type="text/javascript"
       src="http://www.google.com/recaptcha/api/challenge?k=6LfVK-USAAAAAMZ_keoD_WPrM7p6YDSXcdLsxajz">
    </script>
    <noscript>
       <iframe src="http://www.google.com/recaptcha/api/noscript?k=6LfVK-USAAAAAMZ_keoD_WPrM7p6YDSXcdLsxajz"
           height="300" width="500" frameborder="0"></iframe><br>
       <textarea name="recaptcha_challenge_field" rows="3" cols="40">
       </textarea>
       <input type="hidden" name="recaptcha_response_field"
           value="manual_challenge">
    </noscript>
            </td>
        </tr>
    
        <tr>
            <td colspan="3" align="center"><br>
                <input type="submit" value="<s:text name="button.submit"/>" />

          </td>

       </tr>
       
       
       <tr>
           <td colspan="3" align="center">
               <br>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               (<font color="red">*</font>) <s:text name="Form.mag.markFieldsAreManFill"/>.

          </td>

       </tr>
  </table>
       </s:form>
</center>
  </body>
</html>
