<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div id="accordion">
	<h3><a href="#"><s:text name="global.heading.AdmisAtten"/></a></h3>
	<div>
            
            
            <table  frame="void" rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    
                    
                    <tr align="left" valign="top">
                        <td><s:a href="HM-Add-School" style="text-decoration: none;color: red;"><s:text name="global.heading.AddOutSch"/>/College</s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="HM-Admission" style="text-decoration: none;color: red;"><s:text name="global.heading.SchAdmisReg"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="HM-Attendence" style="text-decoration: none;color: red;"><s:text name="global.heading.SchAttendReg"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="HM-Promotion" style="text-decoration: none;color: red;"><s:text name="global.heading.ViewPromotion"/></s:a></td>
                    </tr>
                    <%--
                    <tr align="left" valign="top">
                        <td><s:a href="HM-ViewSchoolChildReport" style="text-decoration: none;color: red;"><s:text name="global.heading.SchChildRepo"/></s:a></td>
                    </tr>
                    --%>
                    <tr align="left" valign="top">
                        <td><s:a href="HM-ClassWiseStudentReport" style="text-decoration: none;color: red;"><s:text name="global.heading.ClaChildRepo"/></s:a></td>
                    </tr>
                    
                    

                </tbody>
            </table>

         </div>


        <h3><a href="#"><s:text name="global.heading.SchExamReg"/></a></h3>
	<div>
            <table  frame="void" rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    

                    <tr>
                        <td><s:a href="HM-Exam-Conduct" style="text-decoration: none;color: red;"><s:text name="global.heading.ExamCondReg"/></s:a></td>
                    </tr>
                    
                     <tr>
                        <td><s:a href="HM-Scheduled-Exams" style="text-decoration: none;color: red;"><s:text name="global.heading.ScheduledExams"/></s:a></td>
                    </tr>
                    

                    <tr>
                        <td><s:a href="HM-Exam-Marks" style="text-decoration: none;color: red;"><s:text name="global.heading.ExamMarksReg"/></s:a></td>
                    </tr>
                    <tr>
                        <td><s:a href="HM-Exam-View-1" style="text-decoration: none;color: red;"><s:text name="global.heading.ExamView"/></s:a></td>
                    </tr>
                    
                </tbody>
            </table>


         </div>
  <%--
        <h3><a href="#"><s:text name="global.heading.VocaTrainReg"/></a></h3>
	<div>
            <table  rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    
                     <tr align="left" valign="top">
                        <td><a href="HM-AddNewVocational" style="text-decoration: none;color: red;"><s:text name="global.heading.AddVocaCour"/></a></td>
                    </tr>
                   
                    
                    <tr>
                        <td><a href="HM-DeleteVocationalCourse" style="text-decoration: none;color: red;"><s:text name="global.heading.ViewDelVocCour"/></a></td>
                    </tr>
                </tbody>
            </table>


         </div>
       --%>             
                    <!--Assesment registers START-->
                       <h3><a href="#"><s:text name="global.heading.EducationAssReg"/></a></h3>
	<div>
            <table  rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                     <%--tr align="left" valign="top">
                        <td><s:a href="HM-test-assesment" style="text-decoration: none;color: red;">School Education Assessment Register</s:a></td>
                    </tr--%>
              
                    <tr>
                        <td><s:a href="HM-VocationAssesment" style="text-decoration: none;color: red;"><s:text name="global.heading.VocaTrainAssReg"/></s:a></td>
                    </tr>
                    
                    <tr>
                        <td><s:a href="HM-View-Assesment" style="text-decoration: none;color: red;"><s:text name="global.heading.viewSchAsses"/></s:a></td>
                    </tr>
                    
                    <tr>
                        <td><s:a href="HM-View-Vocational-Assesment" style="text-decoration: none;color: red;"><s:text name="global.heading.vocaAssView"/></s:a></td>
                    </tr>
                    
                   
                    
                    
                    
                </tbody>
            </table>


         </div>
                    <!--Assesment registers END-->
                    
                    <h3><a href="#"><s:text name="leftMenu.perAccSet"/></a></h3>
	<div>
            <table rules="rows" cellpadding="4" cellspacing="4" align="left">

                <tbody>
                    <tr align="left" valign="top">
                        <td><s:a href="HM-ChangePassword" style="text-decoration: none;color: red;"><s:text name="menuItem.changePass"/></s:a></td>
                    </tr>
                    
                    <tr align="left" valign="top">
                        <td><s:a href="HM-ModifyMyDetails" style="text-decoration: none;color: red;"><s:text name="menuItem.viewEditDetails"/></s:a></td>
                    </tr>
                    
                    
                    
                </tbody>
            </table>
       </div>



       </div>