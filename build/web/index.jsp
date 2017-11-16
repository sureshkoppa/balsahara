<%-- 
    Document   : index
    Created on : Jan 28, 2011, 12:12:43 PM
    Author     : NEELAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Welcome to Telangana Child Homes</title>        
            <link rel="stylesheet" href="jq/jquery-ui.css"/>
	    <script src="jq/jquery-1.8.2.js"></script>
	    <script src="jq/jquery-ui.js"></script>
            <script type="text/javascript">
            
         function validate()
            {
                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 160,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
                   /*validating the fields present in the form*/
                    if(document.getElementById("userId_txt").value.length<1)
                        {
                         
                             $dialog.html("<s:text name="index.err.entUserId"/>");
                             $dialog.parent().addClass( "ui-state-error" );
                             $dialog.dialog('open');
                             return false;
                        }
                        else if(document.getElementById("passwd_txt").value.length<1)
                        {
                             $dialog.html("<s:text name="index.err.entPass"/>");
                             $dialog.parent().addClass( "ui-state-error" );
                             $dialog.dialog('open');
                             return false;
                        
                        }
                       
            }     
            function selLang2(thisf)
        {
           // alert("***********"+thisf.selectedValue);
            
          /*  if(document.getElementById('sel_lan2').selectedValue=='en')
                {
                    alert("english");
                    document.indexForm.action="/WDCW_hin2/index.action?request_locale=en";
                    
                  document.indexForm.submit();
                }
            else if(document.getElementById('sel_lan2').selectedValue=='hi')
                {
                     alert("hindi"); */
        
                  var e = document.getElementById("sel_lan2");
                  var strUser = e.options[e.selectedIndex].value;
  
  
                //alert("********"+strUser);
                
                if(strUser!='sel')
                    {
                     document.indexForm.action="index.action?request_locale="+strUser;
                     document.indexForm.submit();
                    }
                    else
                        {
                            alert("Select Language");
                        }
                //}
        }
        function callform1()
        {
            document.getElementById("indexForm").action="CW-Found-Child";
            document.getElementById("indexForm").submit();
            
            
        }
        $(document).ready(function(){
         $("#cwcbtn").click(function(){
           if ( $("#left-cwc").css('display') === 'none')
           {
               //if($("#left-dcpu").css('display') === 'block')
             //  {
                       //$("#logintext").text('DCPU').replaceWith("CWC");    
               //}
              // else
              // {
             //  $("#left-dcpu").slideUp();
               
               $("#left-dcpu").css('display') === 'none';
               $("#left-dcpu").slideUp();
               $("#left-cwc").css('display') === 'block';
               $("#left-cwc").slideDown();
               //}
           }
           else
           {
               $("#left-cwc").slideUp();
               $("#left-cwc").css('display') === 'none';
               //$("#left-dcpu").slideDown();
           }
               //$("#left-cwc").css("display", "block");
               //$("").slideDown();
         });
         
         
          $("#dcpubtn").click(function(){
           if ( $("#left-dcpu").css('display') === 'none')
           {
            //   $("#left-cwc").slideUp();
               $("#left-cwc").css('display') === 'none';
               $("#left-cwc").slideUp();
               $("#left-dcpu").css('display') === 'block';
               $("#left-dcpu").slideDown();
             
               //$("#left-cwc").slideUp();
               
              
           }
           else
           {
               $("#left-dcpu").slideUp();
               
               $("#left-dcpu").css('display') === 'none';
           //     $("#left-cwc").slideDown();
           }
               //$("#left-cwc").css("display", "block");
               //$("").slideDown();
         });
         
         
     });
        function callform2()
        {
           if(document.getElementById("left-cwc").style.display==='none')
           {
              // document.getElementById("left-dcpu").style.display="none";
             //  document.getElementById("left-cwc").style.display="block";
               $("left-cwc").slideDown();
           }
           else
           {
               document.getElementById("left-cwc").style.display="none";
                //$(".btn2").click(function(){
                   // $("left-cwc").slideDown();
                // });
           }
        }
        function callform3()
        {
            if(document.getElementById("left-dcpu").style.display==='none')
           {
              // document.getElementById("left-dcpu").style.display="none";
               document.getElementById("left-dcpu").style.display="block";
           }
           else
           {
               document.getElementById("left-dcpu").style.display="none";
           }
            
        }
        function  callccl()
        {
            alert("***Under Construction****");
        }
        
        </script>
        
       
        
    </head>
    <body>
        <div id="header">
            <!--img src="images/header.png"/>
                    
		<h1></h1> 
		<h2></h2>
                    -->
	</div>

    
	<div id="container-top">
            <p style="text-align: right">
                <%--
                <s:a href="%{url_en}">English</s:a> &nbsp;&nbsp;<s:a href="%{url_hi}">&#2361;&#2367;&#2306;&#2342;&#2368;</s:a>
                --%>
                
                
                
                <select id="sel_lan2" onchange="selLang2(this);">
                    <option value="sel">--<s:text name="global.option.selLang"/>--</option>
                    <option value="en">English</option>
                    <option value="hi">&#2361;&#2367;&#2306;&#2342;&#2368;</option>
                    <option value="te">&#3108;&#3142;&#3122;&#3137;&#3095;&#3137;</option>
                </select>
              
	 </div>
	<div id="container">
            <div id="left-cwc"  style="display: none">
			<div id="left-top"></div>
			<div id="left-centre">

                            <h2><span id="logintext">CWC</span>&nbsp;&nbsp;&nbsp;<s:text name="global.label.login"/><s:property value="chfcdtoList.get(0).education"/></h2>
				<p>
                                <form method="post" action="ValidateLoginAction" name="indexForm1" id="indexForm1" >
                                     <s:text name="global.index1.username"/><br /><input type="text" name="userId_txt" id="userId_txt1" key="global.homeID"/><br />
                                     <s:text name="global.index1.password"/><br/><input type="password" name="passwd_txt" id="passwd_txt1"/><br/>
                                     <span><font color="red"><i><s:property value="message" escape="false"/></i></font></span>
                                <br/>                           
                                <input type="submit" value="<s:text name="global.butt.label"/>" onclick="return validate();"/>
                                
                                
                                
                                </form>

                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><s:text name="global.label.forgotPass"/></a>
                               
			</div>
			<div id="left-bottom"></div>
		</div>
       
                <div id="left-dcpu" style="display: none">
			<div id="left-top"></div>
			<div id="left-centre">

                            <h2><span id="logintext">DCPU</span>&nbsp;&nbsp;&nbsp;<s:text name="global.label.login"/><s:property value="chfcdtoList.get(0).education"/></h2>
				<p>
                                <form method="post" action="ValidateLoginAction" name="indexForm1" id="indexForm1" >
                                     <s:text name="global.index1.username"/><br /><input type="text" name="userId_txt" id="userId_txt2" key="global.homeID"/><br />
                                     <s:text name="global.index1.password"/><br/><input type="password" name="passwd_txt" id="passwd_txt2"/><br/>
                                     <span><font color="red"><i><s:property value="message" escape="false"/></i></font></span>
                                <br/>                           
                                <input type="submit" value="<s:text name="global.butt.label"/>" onclick="return validate();"/>
                                
                                
                                
                                </form>

                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><s:text name="global.label.forgotPass"/></a>
                               
			</div>
			<div id="left-bottom"></div>
		</div>
                           
                <div id="slidedivright">                
	<div id="right">
                    <%--
                     <p style="text-align: right"> <s:a href="%{url_hi}">Hindi</s:a>&nbsp;&nbsp;<s:a href="%{url_en}">English</s:a></p>
                    --%>
			<div id="tabs">
			<ul>
                          <li><div class="tab-active"><a href="#"><span><s:text name="label.home"/></span></a></div></li>
			 <%-- <li><div class="tab"><s:a action="UM-RegisterUser"><span><s:text name="global.label.register"/></span></s:a></div></li> --%>
			  <li><div class="tab"><a href="#"><span><s:text name="global.label.aboutUs"/></span></a></div></li>
			  <li><div class="tab"><a href="#"><span><s:text name="global.label.contatUs"/></span></a></div></li>
                      </ul>
                      </div>
                      
                      <form method="post" action="ValidateLoginAction" name="indexForm" id="indexForm" ></form>
                      
			<div id="right-top"></div>
			<div id="right-centre">
                            
                            <table>
                                <tr><td>
                            
                                
                                <h1><s:text name="global.label.mianPage"/></h1>
				<s:text name="global.index.matter1"/>
                                <s:text name="global.index.matter2"/>
                                <s:text name="global.index.matter3"/><br/>
                                </td><td style="vertical-align:top">
                             <table>
                                <tr><td>
                          <h1>
                                <button id="cwcbtn">&nbsp;&nbsp;<img src="images_login/cwc.jpg" height="100" width="100"/><br/>CWC login</button>
                                
                           </td><td>
                                <button id="dcpubtn">&nbsp;&nbsp;<img src="images_login/dcpu.jpg" height="100" width="100"/><br/>DCPU login</button>
                                
                            </h1>
                                  </td></tr>
                                <tr><td>
                                <button onclick="callform1()">&nbsp;&nbsp;&nbsp;<img src="images_login/child.jpg" height="100" width="100"/><br/>CNCP</button>
                            
                                     </td><td>
                            
                                <button onclick="callccl()">&nbsp;<img src="images_login/childccl.jpg" height="100" width="100"/><br/>CCL</button>
                            </td><td></tr>
                            </table>
                                </td></tr>
                            </table>
		  </div>
			<div id="right-bottom">
                            
                            
                        </div>
		</div>
        </div>
		<div class="clear"></div>
                <div style="color: white;font-size:15pt;display: none" ><s:a href="CW-Found-Child" target="_blank" style="color: #cbe08f">Report a Found Child</s:a></div><br/>
                                
                                
                 &nbsp;&nbsp;&nbsp;<s:a href="CW-Master-Report" target="_blank">Analytical Reports</s:a><img src="./images/gif_new.gif"/><br/><br/>
                <!--suresh added 13-01-2011 start-->
                &nbsp;&nbsp;&nbsp;<s:a href="displayMap.action" target="_blank"><s:text name="global.link.map" /></s:a><br/>
                <!--suresh added 13-01-2011 end-->
	</div>
	<div id="container-bottom"></div>
	<div id="footer-top"></div>
	<div id="footer-centre">
		<p>&copy; 2011 Department for Women, Children, Disabled & Senior Citizens  . All rights reserved.
<br />
                  <a href="http://www.cdachyd.in"><s:text name="global.footer.powCDAC"/></a></p>
	</div>
	<div id="footer-bottom"></div>


    </body>
</html>