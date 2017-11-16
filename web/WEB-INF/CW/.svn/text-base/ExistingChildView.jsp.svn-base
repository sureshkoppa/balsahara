<%-- 
    Document   : ExistingChildView
    Created on : 29 Feb, 2012, 2:54:26 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function forward(val)
            {
                
                if(val.value == 'yes')
                    {
                        document.existingChildViewform.action = "CW-RH-Adm-Check";
                    }
                    else if(val.value == 'no')
                      {
                         document.existingChildViewform.action = "CW-AdmRH"; 
                      }  
                      
                      document.forms["existingChildViewform"].submit();
                
            }
            
        </script>
    </head>
    <body>
        <%--
    
    private String childProfileId;
    @Size(max = 75)
    @Column(name = "CHILD_NAME", length = 75)
    private String childName;
    @Size(max = 50)
    @Column(name = "CHILD_SURNAME", length = 50)
    private String childSurname;
    @Column(name = "DATE_TIME_ADM")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTimeAdm;
    @Column(name = "AGE")
    private Integer age;
    @Size(max = 10)
    @Column(name = "GENDER", length = 10)
    private String gender;
    @Size(max = 30)
    @Column(name = "CHILD_NATURE", length = 30)
    private String childNature;
    @Column(name = "DISABLED")
    private Character disabled;
    @Size(max = 75)
    @Column(name = "NATURE_DISABILITY", length = 75)
    private String natureDisability;
    @Size(max = 50)
    @Column(name = "ADM_THROUGH", length = 50)
    private String admThrough;
    @Size(max = 75)
    @Column(name = "NAME_AUTH_PER", length = 75)
    private String nameAuthPer;
    @Size(max = 75)
    @Column(name = "CWC_JJB_ORDER_NO", length = 75)
    private String cwcJjbOrderNo;
    @Column(name = "ORDER_DATE")
    @Temporal(TemporalType.DATE)
    private Date orderDate;
    @Column(name = "INT_CWC_JJB_DATE")
    @Temporal(TemporalType.DATE)
    private Date intCwcJjbDate;
    @Size(max = 75)
    @Column(name = "PRODUCED_BY", length = 75)
    private String producedBy;
    @Size(max = 150)
    @Column(name = "REASON_ADM", length = 150)
    private String reasonAdm;
    @Size(max = 100)
    @Column(name = "PROVISION_LAW", length = 100)
    private String provisionLaw;
    @Lob
    @Size(max = 65535)
    @Column(name = "IDENTIFICATION_MARKS", length = 65535)
    private String identificationMarks;
    @Size(max = 255)
    @Column(name = "PROPERTY_POSSESSED", length = 255)
    private String propertyPossessed;
   
        --%>
        <s:form name="existingChildViewform" id="existingChildViewform">
            <center>
                <h3><s:text name="label.fewMatchRecAreFound"/>.</h3></br>
            
            <table border="1">
                <tr>
                    <th><s:text name="global.name"/></th>
                    <th><s:text name="label.surName"/></th>
                    <th><s:text name="label.cwcJjbOrdNum"/></th>
                    <th><s:text name="label.cwcJjbOrdDate"/></th>
                    <th><s:text name="label.idMarks"/></th>
                    <th><s:text name="label.statusOfChild"/></th>
                </tr>
                <s:iterator value="ChildrenListInAHome">
                 <tr>
                     <td align="center"><s:property value="childName"/></td>
                     <td align="center"><s:property value="childSurname"/></td>
                     <td align="center"><s:property value="cwcJjbOrderNo"/></td>
                     <td align="center"><s:property value="orderDate"/></td>
                     <td align="center"><s:property value="identificationMarks"/></td> 
                     <td align="center">
                         <s:if test="%{status=='inactive'}">
                                 ****<s:property value="status"/>****
                         </s:if>
                         <s:else>
                                 ++++<s:property value="status"/>+++
                         </s:else>
                     
                     </td>
                </tr>
                </s:iterator>
            </table>
            </br>
            <p>
                <s:text name="label.isRecAlrPresent"/> ? </br></br>
                <input type="radio" name="yn" value="yes" onchange="forward(this)" /><s:text name="global.label.yes"/></br>
                <input type="radio" name="yn" value="no" onchange="forward(this)" /><s:text name="global.label.no"/></br>
            </p>
            </center>
        </s:form>
    </body>
</html>
