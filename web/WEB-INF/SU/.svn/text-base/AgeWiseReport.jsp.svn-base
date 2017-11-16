<%-- 
    Document   : AgeWiseReport
    Created on : 9 Jul, 2013, 2:32:20 PM
    Author     : Swetha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1><s:text name="global.label.ageWisePatRepo"/></h1>
    <div style="float: left; width: 50%;">
        <s:iterator value="home_addr">
            <s:iterator id="homeaddrvalue" value="value">
                <h3><s:property value="%{#homeaddrvalue}"/></h3>
            </s:iterator>
        </s:iterator>
    </div>
    <div style="float: right;width: 50%;">
        <h3><s:property value="%{ageWiseDate}"/></h3>
    </div>
    <div style="float: left; width: 100%;">
        <br/><br/><br/>
        <table border="2" style="border:solid; font-size:x-large; width: 50%;">
         <tr>
            <td><s:text name="global.label.ageWiseBelow"/>&nbsp;6&nbsp;<s:text name="global.label.ageWiseYears"/></td>
            <td>7</td>
            <td>8</td>
            <td>9</td>
            <td>10</td>
            <td>11</td>
            <td>12</td>
            <td>13</td>
            <td>14</td>
            <td>15</td>
            <td>16</td>
            <td>17</td>
            <td>18</td>
            <td>19&nbsp;<s:text name="global.label.ageWiseAbove"/></td>    
        </tr>       
        <tr>
            <td><a href="SU-detailChild?childAge_report=6"><s:property value="%{ageMap[6]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=7"><s:property value="%{ageMap[7]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=8"><s:property value="%{ageMap[8]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=9"><s:property value="%{ageMap[9]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=10"><s:property value="%{ageMap[10]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=11"><s:property value="%{ageMap[11]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=12"><s:property value="%{ageMap[12]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=13"><s:property value="%{ageMap[13]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=14"><s:property value="%{ageMap[14]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=15"><s:property value="%{ageMap[15]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=16"><s:property value="%{ageMap[16]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=17"><s:property value="%{ageMap[17]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=18"><s:property value="%{ageMap[18]}"/></a></td>
            <td><a href="SU-detailChild?childAge_report=19"><s:property value="%{ageMap[19]}"/></a></td> 
        </tr>
    </table>
    </div>
    <div style="float: left; width: 100%;">
        <br/><br/><br/>
        <input type="button" id="prbutton" value="<s:text name="global.button.print"/>" onclick="AgeWisePrint()"/>
    </div>
        <script type="text/javascript">
        function AgeWisePrint()
        {
            window.print();
        }
       </script>
</center>
    </body>
</html>
