<%-- 
    Document   : HomeList1
    Created on : 28 Nov, 2011, 11:50:22 AM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Homes Map</title>
          <sx:head/>
        <script language="javascript" type="text/javascript">

        function popitup(url) 
        {
	    newwindow=window.open(url,'name','height=300,width=250');
	    if (window.focus) {newwindow.focus()}
        
	       return false;
        }
        function show_details(val) {
            dojo.event.topic.publish("show_childRHDetails");
            }
        
</script>
       
      
    </head>
    <body>
         <div id="accordion">
            
             <s:iterator  value="districtDetails"  var="disID">
                    
                        <h3><a href="#"><s:property value="districtName" escape="false"/></a></h3>
                        <div>
                          
                                <table   cellpadding="4" cellspacing="4" align="left">
                                    <%--  <tbody>
                                        <s:iterator value="homeMasterList">
                                        <tr>
                                       <td>
                                           <s:property value="homeIdCat"/>
                                       </td>
                                        </tr>
                                        </s:iterator>
                                    </tbody>  --%>
                                    <tr><td><%--<s:property value="#homeList.disID.#homeIdCat"/>--%> 
                                        
                                   <s:if test="%{home_district.get(#disID.districtId).size()==0}">
                                       <p style="color: red"> <s:text name="global.map.mess.noHomes"/></p>
                                                
                                  </s:if>
                                  <s:else>   
                                      <s:iterator value="%{home_district.get(#disID.districtId)}" var="home_id" >
                                             
                                      <%--        
                                      
                                      
                                      <s:a href="example/popupex.jsp"  target="_blank" >
                                             <s:property value="#home_id.homeIdCat"/>(<s:property value="num_of_child.get(#home_id.homeId).size()"/> people)
                                      
                                             <s:bean name="java.util.List<org.cdac.usermanagement.ORM.ChildMaster>" var="child_home">
                                                  <s:param name="home"   value="num_of_child.get(#home_id.homeId)"/>    
                                             </s:bean>
                                             
                                      </s:a>
                                      --%>                                    

                                      <s:url action="popupex-popChild_home" var="URLtag" >
                                          <s:param name="home">
                                                <s:property value="#home_id.homeId"/>
                                          </s:param>
                                       </s:url> 
                                   
                                      <s:if test="#home_id.homeId!='adminHome'">
                                      <s:if test="num_of_child.get(#home_id.homeId)==0">
                                          <s:property value="#home_id.homeId"/>(<s:property value="num_of_child.get(#home_id.homeId)"/> <s:text name="global.map.label.inmates"/>)
                                      </s:if>
                                      <s:else>
                                         
                                          <s:a href="%{URLtag}" cssStyle="color:blue;"><s:property value="#home_id.homeId"/>(<s:property value="num_of_child.get(#home_id.homeId)"/> <s:text name="global.map.label.inmates"/>)</s:a>
                                        
                                      
                                      </s:else>
                                      </s:if>
                                          <s:else>
                                              
                                          </s:else>   
                                      
                                       <br/>
                                     </s:iterator> 
                                      
                                      
                                  <%--
                                      <s:a href='  <s:url action="editGadget">  
                                                <s:param name="homeid" value="#home_id.homeId"/>
                                              
                                      </s:url>  
                                      
                                       '   target="_blank"><s:property value="#home_id.homeIdCat"/>(<s:property value="num_of_child.get(#home_id.homeId).size()"/> people)</s:a><br/>
                                  --%>  
                                 </s:else>
                                            
                                    </td></tr>
                                        
</table> 
                                    
                                           
                        </div>
                        
                    </s:iterator>
                    </div>
    </body>
</html>
