<%-- 
    Document   : RegisterHome
    Created on : Feb 21, 2011, 5:10:10 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.cdac.su.Actions.SuperAction"%>
<%@page import="com.cdac.usermanagement.ORM.HomeDetails"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            <jsp:include page="../../javascripts/SU_registerHomeForm_Validation.jsp"></jsp:include> 
        </script>
    </head>
    <body>
        <%--

    @NamedQuery(name = "HomeDetails.findByHeadOfInst", query = "SELECT h FROM HomeDetails h WHERE h.headOfInst = :headOfInst"), *
astModifiedBy")})
        --%>
        <%
           HomeDetails homeDet=null;
           //System.out.println(session.getAttribute("homeDetList")+"in jsp");
           homeDet= session.getAttribute("homeDetList")!=null? (HomeDetails)session.getAttribute("homeDetList"): null;
        %>
          <s:form name="registerHomeForm" id="registerHomeForm" action="SU-homedetails-Save" method="POST" theme="css_xhtml">
              <s:hidden name="formName" value="registerHomeForm"/>
              <s:push value="homeDetails">
        <div id="accordion1">
	       <h3><a href="#">Page1</a></h3>
	      <div>
                  <center>
              <table border="1">
                <tr><td colspan="2" align="center"><s:text name='package.label.suHomeDet'/>:</td></tr>
                <%--tr><td align="right">District Name:</td><td><s:select name="reg_home_districtid" headerKey="1" headerValue="-- Please Select --" list="#" listKey="district_id" listValue="district_name" labelposition="left"/></td></tr--%>
                <tr><td align="right"><s:text name='global.label.mgenHomeId'/>:</td><td><input type="text" name="homeId" id="homeId" value="<%=homeDet.getHomeId()%>" readonly="true"></input><%--s:textfield name="homeId" id="homeId" value="%{homeId}" readonly="true" labelposition="left"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suYOE'/>:</td><td><%--s:select name="yearOfEstb" id="yearOfEstb" headerKey="-1" headerValue="-- Please Select --" list="#{'1990':'1990','1991':'1991','1992':'1992','1993':'1993','1994':'1994'
                                                                                                                                ,'1995':'1995','1996':'1996','1997':'1997','1998':'1998','1999':'1999'
                                                                                                                                ,'2000':'2000','2001':'2001','2002':'2002','2003':'2003','2004':'2004'
                                                                                                                                ,'2005':'2005','2006':'2006','2007':'2007','2008':'2008','2009':'2009'
                                                                                                                                ,'2010':'2010','2011':'2011','2012':'2012','2013':'2013','2014':'2014'}"/--%>
                                                                                    <select name="yearOfEstb" id="yearOfEstb">
                                                                                        <option value="-1">--<s:text name='global.option.headerKey'/>--</option>
                                                                                        <option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option>
                                                                                        <option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option>
                                                                                        <option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1988">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option>
                                                                                        <option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option>
                                                                                        <option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option>
                                                                                        <option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option>
                                                                                        <option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option>
                                                                                        <option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option>
                                                                                    </select></td></tr>
                <tr><td align="right"><s:text name='package.label.suHomeAddr'/>:</td><td><textarea name="homeAddress" id="homeAddress" cols="20" rows="4" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'><%=homeDet.getHomeAddress()%></textarea><%--s:textarea name="homeAddress" id="homeAddress" value="%{homeAddress}" cols="20" rows="4" /--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suMandal'/>:</td><td><input type="text" name="mandal" id="mandal" value="mandal" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="mandal" id="mandal"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suVillage'/>:</td><td><input type="text" name="village" id="village" value="village" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="village" id="village"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suLandlineNo'/>:</td><td><input type="text" name="landlineNo" id="landlineNo" value="land line" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="landlineNo" id="landlineNo"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suInstiHead'/>:</td><td><input type="text" name="headOfInst" id="headOfInst" value="head of inst" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="headOfInst" id="headOfInst"/--%></td></tr>
                
                <tr><td align="right"><s:text name='package.label.suHomeManagedBy'/>:</td><td><%--s:select name="homeManagedBy" id="homeManagedBy" headerKey="-1" headerValue="-- Please Select --" list="#{'Government':'Government','Government-Co-managed':'Government-Co-managed','NGO':'NGO'}"/--%>
                                                                                              <select name="homeManagedBy" id="homeManagedBy">
                                                                                                  <s:if test="%{#session.homeDetList.getHomeManagedBy()=='-1'}"><option value="-1" selected>--<s:text name='global.option.headerKey'/>--</option></s:if>
                                                                                                  <s:else><option value="-1">--<s:text name='global.option.headerKey'/>--</option></s:else>
                                                                                                  <s:if test="%{#session.homeDetList.getHomeManagedBy()==getText('package.selectOption.suHomeManagGov')}"><option value="<s:text name='package.selectOption.suHomeManagGov'/>" selected><s:text name="package.selectOption.suHomeManagGov"/></option></s:if>
                                                                                                  <s:else><option value="<s:text name='package.selectOption.suHomeManagGov'/>"><s:text name="package.selectOption.suHomeManagGov"/></option></s:else>
                                                                                                  <s:if test="%{#session.homeDetList.getHomeManagedBy()==getText('package.selectOption.suHomeManagGovCo')}"><option value="<s:text name='package.selectOption.suHomeManagGovCo'/>" selected><s:text name="package.selectOption.suHomeManagGovCo"/></option></s:if>
                                                                                                  <s:else><option value="<s:text name='package.selectOption.suHomeManagGovCo'/>"><s:text name="package.selectOption.suHomeManagGovCo"/></option></s:else>
                                                                                                  <s:if test="%{#session.homeDetList.getHomeManagedBy()==getText('package.selectOption.suHomeManagNGO')}"><option value="<s:text name='package.selectOption.suHomeManagNGO'/>" selected><s:text name="package.selectOption.suHomeManagNGO"/></option></s:if>
                                                                                                  <s:else><option value="<s:text name='package.selectOption.suHomeManagNGO'/>"><s:text name="package.selectOption.suHomeManagNGO"/></option></s:else>
                                                                                              </select></td></tr>
                <tr><td colspan="2" align="center"><s:text name='package.label.suInstiFacil'/>:</td></tr>
                <tr><td align="right"><s:text name='package.label.suCompWallAvai'/>:</td><td><%--s:radio name="compWall" id="compWall" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getCompWall()=='Y'}"><input type="radio" name="compWall" id="compWall" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="compWall" id="compWall" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="compWall" id="compWall" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="compWall" id="compWall" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suVisitRoomRec'/>:</td><td><%--s:radio name="visitorsRoom" id="visitorsRoom" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getVisitorsRoom()=='Y'}"><input type="radio" name="visitorsRoom" id="visitorsRoom" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="visitorsRoom" id="visitorsRoom" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="visitorsRoom" id="visitorsRoom" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="visitorsRoom" id="visitorsRoom" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suSecuStaffAvai'/>:</td><td><%--s:radio name="securityStaff" id="securityStaff" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getSecurityStaff()=='Y'}"><input type="radio" name="securityStaff" id="securityStaff" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="securityStaff" id="securityStaff" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="securityStaff" id="securityStaff" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="securityStaff" id="securityStaff" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suMedFaci'/>:</td><td><%--s:radio name="medicalFacility" id="medicalFacility" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getMedicalFacility()=='Y'}"><input type="radio" name="medicalFacility" id="medicalFacility" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="medicalFacility" id="medicalFacility" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="medicalFacility" id="medicalFacility" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="medicalFacility" id="medicalFacility" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
              </table>
                  </center>
              </div>
	     <h3><a href="#">Page2</a></h3>
	     <div>
                 <center>
              <table border="1">
                <tr><td colspan="2" align="center"><s:text name='package.label.suInstiFacil'/>:</td></tr>
                <tr><td align="right"><s:text name='package.label.suTotPlinthArea'/>:</td><td><input type="text" name="totalPlinthArea" id="totalPlinthArea" value="<%=homeDet.getTotalPlinthArea()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="totalPlinthArea" id="totalPlinthArea"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suPliAreaPerInmate1'/><br><s:text name='package.label.suPliAreaPerInmate2'/>:</td><td><input type="text" name="plinthPerInmate" id="plinthPerInmate" value="<%=homeDet.getPlinthPerInmate()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="plinthPerInmate" id="plinthPerInmate"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suPlayGround'/>:</td><td><%--s:radio name="playGround" id="playGround" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getPlayGround()=='Y'}"><input type="radio" name="playGround" id="playGround" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="playGround" id="playGround" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="playGround" id="playGround" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="playGround" id="playGround" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suGameIndoorEqui'/>:</td><td><input type="text" name="indoorGamesEqup" id="indoorGamesEqup" value="<%=homeDet.getIndoorGamesEqup()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="indoorGamesEqup" id="indoorGamesEqup"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suGameOutdoorEqui'/>:</td><td><input type="text" name="outdoorGamesEqup" id="outdoorGamesEqup" value="<%=homeDet.getOutdoorGamesEqup()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="outdoorGamesEqup" id="outdoorGamesEqup"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suDietSuffNutri1'/><br><s:text name='package.label.suDietSuffNutri2'/>:</td><td><%--s:radio name="presDiet" id="presDiet" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getPresDiet()=='Y'}"><input type="radio" name="presDiet" id="presDiet" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="presDiet" id="presDiet" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="presDiet" id="presDiet" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="presDiet" id="presDiet" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suSuffiDrinkWater'/>:</td><td><%--s:radio name="drinikingWater" id="drinikingWater" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getDrinikingWater()=='Y'}"><input type="radio" name="drinikingWater" id="drinikingWater" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="drinikingWater" id="drinikingWater" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="drinikingWater" id="drinikingWater" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="drinikingWater" id="drinikingWater" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suBathAvaiNo'/>:</td><td><input type="text" name="noOfBathrooms" id="noOfBathrooms" value="<%=homeDet.getNoOfBathrooms()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="noOfBathrooms" id="noOfBathrooms"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suToiAvaiNo'/>:</td><td><input type="text" name="noOfToilets" id="noOfToilets" value="<%=homeDet.getNoOfToilets()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="noOfToilets" id="noOfToilets"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suCleanStat'/>:</td><td><input type="text" name="cleanlinessStatus" id="cleanlinessStatus" value="<%=homeDet.getCleanlinessStatus()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="cleanlinessStatus" id="cleanlinessStatus"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suKitchAvai'/>:</td><td><%--s:radio name="kitchenAvailable" id="kitchenAvailable" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getKitchenAvailable()=='Y'}"><input type="radio" name="kitchenAvailable" id="kitchenAvailable" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="kitchenAvailable" id="kitchenAvailable" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="kitchenAvailable" id="kitchenAvailable" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="kitchenAvailable" id="kitchenAvailable" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suKitchHygiene'/>:</td><td><input type="text" name="kitechenHygiene" id="kitechenHygiene" value="<%=homeDet.getKitechenHygiene()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="kitechenHygiene" id="kitechenHygiene"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suDiningFacAvai'/>:</td><td><%--s:radio name="dinningFacility" id="dinningFacility" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getDinningFacility()=='Y'}"><input type="radio" name="dinningFacility" id="dinningFacility" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="dinningFacility" id="dinningFacility" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="dinningFacility" id="dinningFacility" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="dinningFacility" id="dinningFacility" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suCounFacil'/>:</td><td><%--s:radio name="counselFacility" id="counselFacility" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getCounselFacility()=='Y'}"><input type="radio" name="counselFacility" id="counselFacility" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="counselFacility" id="counselFacility" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="counselFacility" id="counselFacility" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="counselFacility" id="counselFacility" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suPremisMaint'/>:</td><td><input type="text" name="premisesMaint" id="premisesMaint" value="<%=homeDet.getPremisesMaint()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="premisesMaint" id="premisesMaint"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suRecreatPati'/>:</td><td><input type="text" name="recreaction" id="recreaction" value="<%=homeDet.getRecreaction()%>" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="recreaction" id="recreaction"/--%></td></tr>
                <tr><td align="right"><s:text name='package.label.suVocatTraining'/>:</td><td><%--s:radio name="vocationalTraining" id="vocationalTraining" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getVocationalTraining()=='Y'}"><input type="radio" name="vocationalTraining" id="vocationalTraining" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="vocationalTraining" id="vocationalTraining" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="vocationalTraining" id="vocationalTraining" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="vocationalTraining" id="vocationalTraining" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suInternetFaci'/>:</td><td><%--s:radio name="internetFacility" id="internetFacility" list="#{'Y':'Yes','N':'No'}"/--%>
                <s:if test="%{#session.homeDetList.getInternetFacility()=='Y'}"><input type="radio" name="internetFacility" id="internetFacility" value="Y" checked/><s:text name="package.rad.label.yes"/><input type="radio" name="internetFacility" id="internetFacility" value="N"/><s:text name="package.rad.label.no"/></s:if>
                <s:else><input type="radio" name="internetFacility" id="internetFacility" value="Y"/><s:text name="package.rad.label.yes"/><input type="radio" name="internetFacility" id="internetFacility" value="N" checked/><s:text name="package.rad.label.no"/></s:else></td></tr>
                <tr><td align="right"><s:text name='package.label.suAnyOthInfo'/>:</td><td><input type="text" name="reg_home_other_info" onfocus='VirtualKeyboard.attachInput(this);currentTB=this.id;'></input><%--s:textfield name="reg_home_other_info"/--%></td></tr>    
              </table>
              <br><br><input type="submit" value="<s:text name="global.button.medAdmRegSave"/>" align="center"/>
                 </center>
             </div>
             </div>
              </s:push>
            </s:form>      
    </body>
</html>