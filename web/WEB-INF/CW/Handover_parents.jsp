<%-- 
    Document   : Handover_parents
    Created on : Jun 7, 2011, 3:02:28 PM
    Author     : Ramu Parupalli
--%>

 <%@ taglib prefix="s" uri="/struts-tags"%>
   <table border="1">
            <tr>
                <td><s:text name="label.nameOfpers"/></td>
            <td><s:textfield id="handoverPersonName" name="handoverPersonName" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
            </tr>
            <tr>
                <td><s:text name="label.relWithChild"/></td>
            <td><s:textfield id="personRelation" name="personRelation" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
            </tr>
            <tr>
                <td><s:text name="label.addrOfPerson"/></td>
            <td><s:textarea id="handoverPersonaddress" name="handoverPersonaddress" rows="4" cols="20" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'/></td>
            </tr>
            
   </table>
