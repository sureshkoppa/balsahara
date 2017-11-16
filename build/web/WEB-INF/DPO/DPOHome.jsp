<%-- 
    Document   : DPOHome
    Created on : May 26, 2011, 5:31:51 PM
    Author     : Ramu Parupalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function selLangDPO(thisf)
        {
           
                  var e = document.getElementById("sel_lan_dpo");
                //  alert("******"+e.value);
                  var strUser = e.options[e.selectedIndex].value;
  
  
              
                
                if(strUser!='sel')
                    {
                     document.lanSelectDPO.action="Select-Language-DPO?request_locale="+e.value;
                     document.lanSelectDPO.submit();
                    }
                    else
                        {
                            alert("Select Language");
                        }
        }
        </script>
    </head>
    <body>
        <p style="text-align: right">
          <s:form action="Select-Language-ActionDPO" name="lanSelectDPO" theme="css_xhtml">
           <select id="sel_lan_dpo" onchange="selLangDPO(this);" name="">
                    <option value="sel">--<s:text name="global.option.selLang"/>--</option>
                    <option value="en">English</option>
                    <option value="hi">&#2361;&#2367;&#2306;&#2342;&#2368;</option>
                    <option value="te">&#3108;&#3142;&#3122;&#3137;&#3095;&#3137;</option>
                </select>
          </s:form>
      </p>    
        <h1><s:text name="global.heading.DPOHomeWelDPO"/></h1>
        
        <ol>
           <li><s:text name="global.label.DPOHomeHMDuty1"/></li>
           <li><s:text name="global.label.DPOHomeHMDuty2"/></li> 
           <li><s:text name="global.label.DPOHomeHMDuty3"/></li> 
           <li><s:text name="global.label.DPOHomeHMDuty4"/></li> 
           <li><s:text name="global.label.DPOHomeHMDuty5"/></li> 
           <li><s:text name="global.label.DPOHomeHMDuty6"/></li> 
           <li><s:text name="global.label.DPOHomeHMDuty7"/></li> 
                  
        </ol>
 
    </body>
</html>
