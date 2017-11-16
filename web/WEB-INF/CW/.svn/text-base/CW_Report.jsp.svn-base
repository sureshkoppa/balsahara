<%-- 
    Document   : CW_Report
    Created on : 9 Aug, 2011, 3:20:21 PM
    Author     : vinumol
--%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript"> 
        function validate()
            {
               // alert('helloi');
               //var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
               var $dialog = $('<div></div>')             
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
                        /*to add red color to the title*/
			title: '<s:text  name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
                
                
                    /*validating the fields present in the form*/
                     if($("#childProfileId").val()==1)
                        {
                            $dialog.html("<s:text name="js.err.plsSelChiProfID"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                            {
                                
                                $.get(
                                            'CW-View-Report',
                                            {childProfileId:document.getElementById('childProfileId').value},
                                            function() { alert("data"); },
                                            "html"
                                        );
                                    
                            }
                            
                            
            }
         
       
            
            
            
$(document).ready(function(){

        $('#CWView').on('submit',function(e){
             $.ajax({
      url:'CW-View-Report',
      type:'POST',
      data:$('#CWView').serialize(),
      dataType:'json',
      success:
          function(data){
              //alert('-**********--'+ data[0].childName);
              //$.each(data, function(key, value){  
             // var $ctrl = $('[name='+key+']', frm);
          //var obj = jQuery.parseJSON(response.responseText);
         // alert("obj-------->"+$ctrl.get('childName'));
        // var json = response.responseText.evalJSON();
    /*    var obj = {
"childName":"John Johnson",
"street":"Oslo West 16",
"age":33,
"phone":"555 1234567"
};*/
         // document.getElementById('child_details').style.visibility='visible';
          document.getElementById('homeAddress').innerHTML=data[0].homeAddress;
          document.getElementById('homeName').innerHTML=data[0].homeName;
          document.getElementById('child_name').innerHTML=data[0].childName;
          
          document.getElementById('repchild_name').innerHTML=data[0].childName; 
          document.getElementById('repfat_name').innerHTML=data[0].fatherName;
          document.getElementById('repMatAddr').innerHTML=data[0].homeAddrMat;
          
          if(data[0].childSurname!=null)document.getElementById('childSrname').innerHTML=data[0].childSrname;  
          
          document.getElementById('relig_name').innerHTML=data[0].religion;   
          document.getElementById('cast_name').innerHTML=data[0].caste;
          document.getElementById('subc_name').innerHTML=data[0].subcaste;
          document.getElementById('age_div').innerHTML=data[0].age;   
          document.getElementById('eduQ_div').innerHTML=data[0].eduStatus;
          document.getElementById('childpid').innerHTML=data[0].childProfileId;
          document.getElementById('langK_div').innerHTML=data[0].languagesKnown;
          document.getElementById('fatN_div').innerHTML=data[0].fatherName;
          document.getElementById('fatO_div').innerHTML=data[0].fatherOccup;
          document.getElementById('matN_div').innerHTML=data[0].matherName;
          document.getElementById('matO_div').innerHTML=data[0].matherOccup;
          document.getElementById('bro_div').innerHTML=data[0].noBrothers;
          document.getElementById('sis_div').innerHTML=data[0].noSister;
          document.getElementById('adrP_div').innerHTML=data[0].addrParents;
          document.getElementById('intR_div').innerHTML=data[0].intrRelatives;
          document.getElementById('identPro_div').innerHTML=data[0].identifiedProblemsChild;
           //   });
           
           var html=$("#child_details").html();
           var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
           win.document.write(html);
      }
    }); 
    
    e.preventDefault();
        });

});
                            <%--
$('#prbutton').click(function(){
         $('#child_details').printPage();

})
--%>
    

      
                                </script>


    </head>
    <body>
       
        <center>
            <h2><s:text name="heading.CWRepView"/></h2>
             <s:form  theme="css_xhtml" id="CWView" name="CWViewReport">
                 <s:hidden name="formName" value="CWViewReport"/>
               <table>
                    <tr>
                        <td><s:text name="label.selChildProid"/>:</td>
                       <td> 
                              <select name="childProfileId" id="childProfileId">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${childPIDList}" var="obj">
                                       <option value="${obj.childDetailsPK.childProfileId}">${obj.childName}-->${obj.childDetailsPK.childProfileId}</option>
                                   </c:forEach>
                            </select>
                        </td>
                    </tr>    
                    <tr><td aliign="center">
                            <input type="submit" value="<s:text name="button.label.showRep"/>" /></td></tr> 
               </table>
               
               
                     
           </s:form>
            
             <div id="child_details" style="display: none;"><div id="print_div">
                     <style> 
                    span{color:blue};
                </style>
                      
                 <h2 style="text-align: center"><s:text name="heading.repCW.govtAP"/></h2>
                 <h2 style="text-align: center"><s:text name="heading.repCaseWork.dept"/></h2>
                 
                      <table style="float: left;width: 50%;">
                        <tr>
                            <td><s:text name="label.repCW.from"/></td>
                        </tr>
                        <tr>
                            <td><s:text name="label.repCW.caseWorker"/></td>
                        </tr>
                        <tr>
                            <td><span id="homeName"></span></td>
                        </tr>
                        <tr>
                            <td><span id="homeAddress"></span></td>
                        </tr>
                      </table>
                        
                      <table style="float: right;width: 50%;">
                        <tr>
                          <td><s:text name="label.repCW.to"/></td>
                        </tr>
                        <tr>
                          <td><s:text name="label.repCW.theChairmen"/></td>
                        </tr>
                        <tr>
                            <td><s:text name="label.repCW.cwc"/></td>
                        </tr>
                        <tr>
                            <td><s:text name="label.repCW.hyd"/></td>
                        </tr>
                      </table>
                        <br/> <br/> <br/><br/><br/> <br/>
                        <br/><br/>
                        <div align="center">
                        <s:text name="label.repCW.subSocInv"/><br/>
                        <s:text name="label.repCW.refCWCHYD"/><br/>
                        <s:text name="label.profileId"/>&nbsp;:&nbsp;<span id="childpid"></span>
                        </div>
                        <br/>
                        <center>* * *</center>
                        <s:text name="label.repCW.sir"/>,<br/>
                        <p>
                            <s:text name="label.repCW.child"/>___<span id="repchild_name"></span>__<s:text name="label.repCW.sonOf"/>___<span id="repfat_name"></span>__<s:text name="label.repCW.mat1"/>
                            <s:text name="label.repCW.mat2"><s:param><span id="repMatAddr"></span></s:param></s:text><s:text name="label.repCW.mat3"/>
                <table style="float:none">
                    <tr><td>1.<s:text name="label.repCW.nameOfChild"/></td><td><span id="child_name"></span>&nbsp;&nbsp;<span id="childSrname"></td></tr>
                   <tr><td>2.<s:text name="label.repCW.religion"/></td><td><span id="relig_name"></span></td></tr>
                   <tr><td>3.<s:text name="label.repCW.caste"/></td><td><span id="cast_name"></span></td></tr>
                   <tr><td>4.Sub caste:</td><td><span id="subc_name"></span></td></tr>
                   <tr><td>5.<s:text name="label.repCW.age"/></td><td><span id="age_div"></span></td></tr>
                   <tr><td>6.<s:text name="label.repCW.eduQual"/></td><td><span id="eduQ_div"></span></td></tr>
                   <tr><td>7.<s:text name="label.repCW.langKnown"/></td><td><span id="langK_div"></span></td></tr>
                   <tr><td>8.<s:text name="label.repCW.fatName"/></td><td><span id="fatN_div"></span></td></tr>
                   <tr><td>9.<s:text name="label.repCW.fatOccp"/></td><td><span id="fatO_div"></span></td></tr>
                   <tr><td>10.<s:text name="label.repCW.matName"/></td><td><span id="matN_div"></span></td></tr>
                   <tr><td>11.<s:text name="label.repCW.matOccp"/></td><td><span id="matO_div"></span></td></tr>
                   <tr><td>12.<s:text name="label.repCW.bros"/></td><td><span id="bro_div"></span></td></tr>
                   <tr><td>13.<s:text name="label.repCW.sis"/></td><td><span id="sis_div"></span></td></tr>
                   <tr><td>14.<s:text name="label.repCW.addrPar"/></td><td><span id="adrP_div"></span></td></tr>
                   <tr><td>15.<s:text name="label.repCW.intrRelIfAny"/></td><td><span id="intR_div"></span></td></tr>
                   <tr><td>16.<s:text name="label.repCW.identProbChi"/></td><td><span id="identPro_div"></span></td></tr>
                   
                </table>
                       </div>
                   <script type="text/javascript">
                       function prdi(divID)
    {
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
                   <center><input type="button" id="prbutton" value="<s:text name='global.button.print'/>" onclick="prdi('print_div')"/></center>
             </div>    
            
         </center>
</body>
</html>