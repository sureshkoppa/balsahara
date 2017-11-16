<%-- 
    Document   : ClassWiseStudentReport
    Created on : 9 Feb, 2012, 1:26:40 PM
    Author     : ANUPAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>

<%--
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
--%>

        <center>
        <h1><s:text name="global.heading.classPopuRepo"/></h1><br>
        <s:form action="HM-ClassWiseStudentReport-Show" method="POST" theme="simple" id="classWiseStuReport">
        <s:text name="global.label.SchoolAdmEduType"/>:<select name="eduType" id="eduType">
                              <option value="-1">--<s:text name='global.option.headerKey'/>--</option> 
                              <option value="<s:text name='global.selectOption.eduAdmInsSchVal'/>"><s:text name='global.selectOption.eduAdmInsSch'/></option>
                              <option value="<s:text name='global.selectOption.eduAdmInsVocVal'/>"><s:text name='global.selectOption.eduAdmInsVoc'/></option>
                              <option value="<s:text name='global.selectOption.eduAdmOutVocVal'/>"><s:text name='global.selectOption.eduAdmOutVoc'/></option>
                              <option value="<s:text name='global.selectOption.eduAdmOutSchVal'/>"><s:text name='global.selectOption.eduAdmOutSch'/></option>
                          </select><%--s:select name="eduType" id="eduType"  headerKey="-1" headerValue="---Please Select---"  list="#{'inside school':'Inside School','inside vocational':'Vocational','outside vocational':'Polytecnique/ITI','outside school':'Outside School/College'}"/--%></br></br>
        <input type="submit" value="<s:text name="global.button.submit"/>"/>
        </s:form>
        </center>
        <div id="ClassWiseStuRepo_details" style="display: none">
            
            <div id="print_div">
                
          <center>            
                 <h2><s:text name="global.label.classWiseRepoEduReport"/>&nbsp;&nbsp;<span id="schoolType_span"></span></h2>
                 <h3><s:text name="global.label.mgenHomeId"/>:&nbsp;&nbsp;&nbsp;&nbsp;<span id="homeId_span"></span></h3>
                 <h3><s:text name="global.label.classWiseRepoYear"/>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="yearString_span"></span></h3>
                 <h3><s:text name="global.label.classWiseRepoMonth"/>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="monthString_span"></span></h3>
                 <h4><s:text name="global.label.classWiseRepoChNum"/>:</h4>
                 <h3><s:text name="global.label.classWiseRepoSchName"/>:&nbsp;<span id="schoolName_span"></span></h3>
                 
                 <div id="classNoOfStu"></div>
                 <script id="table-template" type="x-handlebars-template">
                               
                     
                 {{#each this}}  
                 
                   <table id="reportTable" border="1">
                     <tr> <th colspan="13">{{schoolName}}</th> </tr>
                     <tr>
                         <td><s:text name="global.label.ExamAttenClass"/></td>
                         <td>I</td>
                         <td>II</td>
                         <td>III</td>
                         <td>IV</td>
                         <td>V</td>
                         <td>VI</td>
                         <td>VII</td>
                         <td>VIII</td>
                         <td>IX</td>
                         <td>X</td>
                         <td>Inter I</td>
                         <td>Inter II</td>
                         
                     </tr>
                     <tr>
                         <td><s:text name="global.label.classWiseRepoStuNum"/></td>                         
                         <td><span  data-class="1st" id="studentsInStd1_span">{{studentsInStd1}}</span></td>
                         <td><span  data-class="2nd" id="studentsInStd2_span">{{studentsInStd2}}</span></td>
                         <td><span  data-class="3rd" id="studentsInStd3_span">{{studentsInStd3}}</span></td>
                         <td><span  data-class="4th" id="studentsInStd4_span">{{studentsInStd4}}</span></td>
                         <td><span  data-class="5th" id="studentsInStd5_span">{{studentsInStd5}}</span></td>
                         <td><span  data-class="6th" id="studentsInStd6_span">{{studentsInStd6}}</span></td>
                         <td><span  data-class="7th" id="studentsInStd7_span">{{studentsInStd7}}</span></td>
                         <td><span  data-class="8th" id="studentsInStd8_span">{{studentsInStd8}}</span></td>
                         <td><span  data-class="9th" id="studentsInStd9_span">{{studentsInStd9}}</span></td>
                         <td><span  data-class="10th" id="studentsInStd10_span">{{studentsInStd10}}</span></td>
                         <td><span  data-class="Inter I yr" id="studentsInStd11_span">{{studentsInStd11}}</span></td>
                         <td><span  data-class="Inter II yr" id="studentsInStd12_span">{{studentsInStd12}}</span></td>
                     </tr>
                     </table>
                 {{/each}}
                 </script>
                 
                 
                 <%--   
                 <table id="reportTable" border="1">
                     <tr>
                         <td><s:text name="global.label.ExamAttenClass"/></td>
                         <td>I</td>
                         <td>II</td>
                         <td>III</td>
                         <td>IV</td>
                         <td>V</td>
                         <td>VI</td>
                         <td>VII</td>
                         <td>VIII</td>
                         <td>IX</td>
                         <td>X</td> 
                     </tr>
                     <tr>
                         <td><s:text name="global.label.classWiseRepoStuNum"/></td>
                         <!--td><a href='' id="dlink"><span id="studentsInStd1_span"></span></a></td-->
                         <td><span  data-class="1st" id="studentsInStd1_span"></span></td>
                         <td><span  data-class="2nd" id="studentsInStd2_span"></span></td>
                         <td><span  data-class="3rd" id="studentsInStd3_span"></span></td>
                         <td><span  data-class="4th" id="studentsInStd4_span"></span></td>
                         <td><span  data-class="5th" id="studentsInStd5_span"></span></td>
                         <td><span  data-class="6th" id="studentsInStd6_span"></span></td>
                         <td><span  data-class="7th" id="studentsInStd7_span"></span></td>
                         <td><span  data-class="8th" id="studentsInStd8_span"></span></td>
                         <td><span  data-class="9th" id="studentsInStd9_span"></span></td>
                         <td><span  data-class="10th" id="studentsInStd10_span"></span></td>
                     </tr>
                     --%>
                    
                    
                    <span id="classdetail"></span>
                    
                 <input type="button" id="prbutton" value="Print this page" onclick="PrintContent('print_div')"/>
                 
                    </div>   
            
                   <script type="text/javascript">
                       
                       function PrintContent(divID)
                        {
                        var DocumentContainer = document.getElementById(divID);
                        var WindowObject = window.open();
                        WindowObject.document.writeln(DocumentContainer.innerHTML);
                        WindowObject.document.close();
                        WindowObject.focus();
                        WindowObject.print();
                        WindowObject.close();
                        }
                       
                       
                       
                       function prdi(divID)
    {
        
        alert(' --- '+divID);
       
        var divElements = document.getElementById(divID).innerHTML;
            //Get the HTML of whole page
            var larPage = document.getElementById(divID).innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML = 
              "<html><head><title></title></head><body>" + 
              divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML =larPage;

    }
                       </script>
               </center>
                
        </div>
        <div id="ClassWiseVocRepo_details" style="display: none"> <div id="print_div2">
          <center>            
                 <h2><s:text name="global.label.classWiseRepoEduReport"/>&nbsp;&nbsp;<span id="schoolType1_span"></span></h2>
                 <h3><s:text name="global.label.mgenHomeId"/>:&nbsp;&nbsp;&nbsp;&nbsp;<span id="homeId1_span"></span></h3>
                 <h3><s:text name="global.label.classWiseRepoYear"/>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="yearString1_span"></span></h3>
                 <h3><s:text name="global.label.classWiseRepoMonth"/>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="monthString1_span"></span></h3>
                 <h4><s:text name="global.label.classWiseRepoInstChNum"/>:</h4>
                 <h3><s:text name="global.label.classWiseRepoInstName"/>:&nbsp;<span id="schoolName1_span"></span></h3>
                 <span id="schoolId1_span"></span>
                    
                 <table id="VocStuList" border="1">
                       <thead>
                           <tr><th><s:text name="global.label.classWiseRepoCourse"/></th><th><s:text name="global.label.classWiseRepoStuNum"/></th></tr>
                       </thead>
                       <tbody id="VocStuList_sub">
                           
                       </tbody>
                   </table>
                 <span id="Vocationaldetail"></span>
                 <input type="button" id="prbutton" value="Print this page" onclick="PrintContent('print_div2')"/>
                    </div>   
                   <script type="text/javascript">
                       function PrintContent(divID)
                        {
                        var DocumentContainer = document.getElementById(divID);
                        var WindowObject = window.open();
                        WindowObject.document.writeln(DocumentContainer.innerHTML);
                        WindowObject.document.close();
                        WindowObject.focus();
                        WindowObject.print();
                        WindowObject.close();
                        }
                       </script>
                 
               </center>
       </div>
      <div id="ClassWiseErrorRepo_details" style="display: none"> <div id="print_div">
          <center>            
                 <h2><s:text name="global.errmsg.DocMajErrConAdmin"/></h2>
                    </div>   
                 
               </center>
       </div>
       <div id="AllStuInClass_details" style="display: none"><div id="print_div">
            <center>            
                 <h2><s:text name="global.label.classWiseRepoStuList"/></h2>
                 <table id="StuList" border="1">
                       <thead>
                           <tr><th><s:text name="global.label.classWiseRepoProfId"/></th><th><s:text name="global.label.DPORepoName"/></th><th><s:text name="global.label.classWiseRepoCourse"/></th>
                           </tr>
                       </thead>
                       <tbody id="StuList_sub">
                           
                       </tbody>
                   </table>
                 
                    </div>   
               </center>     
          </div>
         <div id="AllStuInVocational_details" style="display: none"><div id="print_div">
            <center>            
                 <h2><s:text name="global.label.classWiseRepoStuList"/></h2>
                 <table id="AllVocStuList" border="1">
                       <thead>
                           <tr><th><s:text name="global.label.classWiseRepoProfId"/></th><th><s:text name="global.label.DPORepoName"/></th><th><s:text name="global.label.classWiseRepoCourse"/></th>
                           </tr>
                       </thead>
                       <tbody id="AllVocStuList_sub">
                           
                       </tbody>
                   </table>
                 
                    </div>   
               </center>     
          </div>

<%--
</html>
--%>