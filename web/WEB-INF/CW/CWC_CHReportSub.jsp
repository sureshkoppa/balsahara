<%-- 
    Document   : CWC_CHReportSub.jsp
    Created on : 19 Jul, 2011, 3:25:53 PM
    Author     : vinumol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html> 
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
                        height: 130,
			width: 350,
                        modal: true,
                        /*to add red color to the title*/
			title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: {
                         'OK' : function() {
					$dialog.dialog('close');
                                    }
			}
		});
                
                
                    /*validating the fields present in the form*/
                     if($("#childProfileId").val()==1)
                        {
                            $dialog.html("<s:text name="js.err.selProfile"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
            }
            
            
            $(document).ready(function(){

        $('#chreportsub').on('submit',function(e){
           // alert("Data submitted------------>");
             $.ajax({
      url:'CH-ReportAction',
      type:'POST',
      data:$('#chreportsub').serialize(),
      dataType:'json',
      success:
          function(data){
          
        //   alert("data came");
        //   alert("name----->"+data[0].childName);
           
           document.getElementById('ch_name').innerHTML=data[0].childName;
           document.getElementById('ch_gen').innerHTML=data[0].gender;
           document.getElementById('ch_ageAdm').innerHTML=data[0].ageAdmission;
           document.getElementById('ch_agepre').innerHTML=data[0].agePresent;
           document.getElementById('ch_rel').innerHTML=data[0].religion;
           document.getElementById('ch_cst').innerHTML=data[0].caste;
           document.getElementById('ch_lcrs').innerHTML=data[0].localResidence;
           document.getElementById('ch_scst').innerHTML=data[0].subcaste;
           document.getElementById('ch_ntvdis').innerHTML=data[0].nativeDistrict;
           document.getElementById('ch_ntvst').innerHTML=data[0].nativeState;
           document.getElementById('ch_htype').innerHTML=data[0].housingType;
           document.getElementById('ch_hspc').innerHTML=data[0].housingSpace;
           document.getElementById('ch_hown').innerHTML=data[0].houseOwnership;
           document.getElementById('ch_bfcwc').innerHTML=data[0].broughtbeforeCwc;
           document.getElementById('ch_rlfam').innerHTML=data[0].reasonLeavingFamily;
           document.getElementById('ch_vrabu').innerHTML=data[0].verbalAbuse;
           document.getElementById('ch_phabu').innerHTML=data[0].physicalAbuse;
           document.getElementById('ch_sxabu').innerHTML=data[0].sexualAbuse;
           document.getElementById('ch_otabu').innerHTML=data[0].otherAbuse;
           document.getElementById('ch_denfd').innerHTML=data[0].illtreatDenialFood;
           document.getElementById('ch_betmly').innerHTML=data[0].illtreatBeatenMercilessly;
           document.getElementById('ch_cauinj').innerHTML=data[0].illtreatCauseInjury;
           document.getElementById('ch_othill').innerHTML=data[0].illtreatOthers;
           document.getElementById('ch_expf').innerHTML=data[0].exploitationChild;
           document.getElementById('ch_resdis').innerHTML=data[0].hsbaRespiratory;
           document.getElementById('ch_herimp').innerHTML=data[0].hsbaHearing;
           document.getElementById('ch_eyedis').innerHTML=data[0].hsbaEye;
           document.getElementById('ch_sexdis').innerHTML=data[0].hsbaSexualDiseases;
           document.getElementById('ch_dendis').innerHTML=data[0].hsbaDental;
           document.getElementById('ch_cardis').innerHTML=data[0].hsbaCordiac;
           document.getElementById('ch_skndis').innerHTML=data[0].hsbaSkin;
           document.getElementById('ch_nurdis').innerHTML=data[0].hsbaNeurological;
           document.getElementById('ch_mhcdis').innerHTML=data[0].hsbaMentalHandicap;
           document.getElementById('ch_phcdis').innerHTML=data[0].hsbaPhysicalHandicap;
           document.getElementById('ch_oth').innerHTML=data[0].hsbaOthers;
           document.getElementById('ch_stwwho').innerHTML=data[0].childStayPriorAdmission;
           document.getElementById('ch_prins').innerHTML=data[0].vpmcPriorInsti;
           document.getElementById('ch_aftns').innerHTML=data[0].vpmcAfterInsti;
           document.getElementById('ch_prins1').innerHTML=data[0].vchfPriorInsti;
           document.getElementById('ch_aftns1').innerHTML=data[0].vchfAfterInsti;
           document.getElementById('ch_prins2').innerHTML=data[0].cwpPriorInsti;
           document.getElementById('ch_aftns2').innerHTML=data[0].cwpAfterInsti;
           document.getElementById('ch_tyfam').innerHTML=data[0].familyType;
           document.getElementById('ch_relFM').innerHTML=data[0].fmRelation;
           document.getElementById('ch_relFC').innerHTML=data[0].fcRelation;
           document.getElementById('ch_relMC').innerHTML=data[0].mcRelation;
           document.getElementById('ch_relFS').innerHTML=data[0].fsRelation;
           document.getElementById('ch_relMS').innerHTML=data[0].msRelation;
           document.getElementById('ch_reljs').innerHTML=data[0].jsRelation;
           document.getElementById('ch_lndP').innerHTML=data[0].propertyFamilyLanded;
           document.getElementById('ch_hhArt').innerHTML=data[0].propertyFamilyHousehold;
           document.getElementById('ch_vehPr').innerHTML=data[0].propertyFamilyVehicals;
           document.getElementById('ch_othSp').innerHTML=data[0].propertyFamilyOthers;
           $("#tab1_sub").html("");
           $("#tab2_sub").html("");
           $("#tab3_sub").html("");
           $("#tab4_sub").html("");
           var rowCount1 = 0;
           for(i=0;i<data[0].cl.length;i++)
               {
                 var row = tab1_sub.insertRow(rowCount1); 
                 var cell1=row.insertCell(0);
                 cell1.innerHTML=i;
                 row.insertCell(1).innerHTML=data[0].cl[i].nameRelative;      
                 row.insertCell(2).innerHTML=data[0].cl[i].relationship;      
                 row.insertCell(3).innerHTML=data[0].cl[i].age;     
                  
                 if(data[0].cl[i].gender!=null)
                      row.insertCell(4).innerHTML=data[0].cl[i].gender;      
                 else
                      row.insertCell(4).innerHTML='&nbsp;';
                  
                 if(data[0].cl[i].education!=null) 
                      row.insertCell(5).innerHTML=data[0].cl[i].education;   
                 else
                      row.insertCell(5).innerHTML='&nbsp;';
                  
                 if(data[0].cl[i].occupation!=null) 
                      row.insertCell(6).innerHTML=data[0].cl[i].occupation;
                 else
                      row.insertCell(6).innerHTML='&nbsp;';
                  
                 if(data[0].cl[i].income!=null) 
                      row.insertCell(7).innerHTML=data[0].cl[i].income;
                 else
                      row.insertCell(7).innerHTML='&nbsp;';
                  
                 if(data[0].cl[i].health!=null) 
                      row.insertCell(8).innerHTML=data[0].cl[i].health;    
                 else
                      row.insertCell(8).innerHTML='&nbsp;';
                  
                 if(data[0].cl[i].historyMentalIllness!=null) 
                      row.insertCell(9).innerHTML=data[0].cl[i].historyMentalIllness; 
                 else
                      row.insertCell(9).innerHTML='&nbsp;';
                  
                 if(data[0].cl[i].handicap!=null) 
                      row.insertCell(10).innerHTML=data[0].cl[i].handicap;      
                 else
                      row.insertCell(10).innerHTML='&nbsp;';
                  
                 if(data[0].cl[i].habit!=null) 
                      row.insertCell(11).innerHTML=data[0].cl[i].habit;
                 else
                      row.insertCell(11).innerHTML='&nbsp;';
                  
                 if(data[0].cl[i].socialization!=null) 
                      row.insertCell(12).innerHTML=data[0].cl[i].socialization; 
                 else
                      row.insertCell(12).innerHTML='&nbsp;';
               
                 rowCount1=rowCount1+1;
                 
               }
              
           var   rowCount2 = 0;    
           for(i=0;i<data[0].crimelist.length;i++)
               {
            var row = tab2_sub.insertRow(rowCount2);        
           row.insertCell(0).innerHTML=i; 
           row.insertCell(1).innerHTML=data[0].crimelist[i].relationship;
           row.insertCell(2).innerHTML=data[0].crimelist[i].natureCrime;
           row.insertCell(3).innerHTML=data[0].crimelist[i].arrestMade;
           row.insertCell(4).innerHTML=data[0].crimelist[i].periodConfinement;
           row.insertCell(5).innerHTML=data[0].crimelist[i].punishment;
                rowCount2=rowCount2+1; 
               }
             
           document.getElementById('ch_puber').innerHTML=data[0].puberty;
           document.getElementById('ch_dtDbh').innerHTML=data[0].deliquentBehaviour;
           document.getElementById('ch_rsDbh').innerHTML=data[0].reasonDeliquentBehaviour;
           document.getElementById('ch_habits').innerHTML=data[0].habits;
           document.getElementById('ch_hobbies').innerHTML=data[0].hobbies;
           document.getElementById('ch_dtInutl').innerHTML=data[0].incomeUtilization;
           document.getElementById('ch_dtsave').innerHTML=data[0].savingDetails;
           document.getElementById('ch_durwrk').innerHTML=data[0].workingHours;
           
           var  rowCount3 = 0;    
           for(i=0;i<data[0].emplist.length;i++)
               {
           var row = tab3_sub.insertRow(rowCount3);
           row.insertCell(0).innerHTML=i;
           if(data[0].emplist[i].detailsEmployment!=null)
                row.insertCell(1).innerHTML=data[0].emplist[i].detailsEmployment;
           else
                row.insertCell(1).innerHTML='&nbsp;';
           if(data[0].emplist[i].duration!=null)
                row.insertCell(2).innerHTML=data[0].emplist[i].duration;
           else
                row.insertCell(2).innerHTML='&nbsp;';
           if(data[0].emplist[i].wagesEarned!=null) 
                row.insertCell(3).innerHTML=data[0].emplist[i].wagesEarned;
           else
                row.insertCell(3).innerHTML='&nbsp;';
           if(data[0].emplist[i].experienceatwork!='null')
                row.insertCell(4).innerHTML=data[0].emplist[i].experienceatwork;
           else 
                row.insertCell(4).innerHTML='&nbsp;';  
                rowCount3=rowCount3+1;
               }
               
           document.getElementById('ch_priEdu').innerHTML=data[0].educationPriorAdmission;
           document.getElementById('ch_reaLFm').innerHTML=data[0].reasonLeavingSchool;
           document.getElementById('ch_dtSStd').innerHTML=data[0].detailsSchoolStudied;
           document.getElementById('ch_medIns').innerHTML=data[0].mediumInstruction;
           
           var  rowCount4 = 0;   
           for(i=0;i<data[0].aedulist.length;i++)
               {
           var row = tab4_sub.insertRow(rowCount4);
           row.insertCell(0).innerHTML=i;  
           if(data[0].aedulist[i].yearAdmission!=null)
                row.insertCell(1).innerHTML=data[0].aedulist[i].yearAdmission;
           else
                row.insertCell(1).innerHTML='&nbsp;';
           if(data[0].aedulist[i].nameAdmission!=null) 
                row.insertCell(2).innerHTML=data[0].aedulist[i].nameAdmission;
           else
                row.insertCell(2).innerHTML='&nbsp;';
           if(data[0].aedulist[i].detailsAdmission!=null) 
                row.insertCell(3).innerHTML=data[0].aedulist[i].detailsAdmission;
           else
                row.insertCell(3).innerHTML='&nbsp;';
           if(data[0].aedulist[i].proficiency!=null) 
                row.insertCell(4).innerHTML=data[0].aedulist[i].proficiency;
           else
               row.insertCell(4).innerHTML='&nbsp;'
           if(data[0].aedulist[i].yearCompletion!=null)
               row.insertCell(5).innerHTML=data[0].aedulist[i].yearCompletion;    
           else
               row.insertCell(5).innerHTML='&nbsp;';
                rowCount4=rowCount4+1;
               }
               
               
           var len=data[0].shlist.length;
           len=len-1;
           if(len>=0)
               {
           document.getElementById('ch_detFrd').innerHTML=data[0].shlist[len].friendshipDetails;
           document.getElementById('ch_mjrFrd').innerHTML=data[0].shlist[len].friendsMajority;
           document.getElementById('ch_memGrp').innerHTML=data[0].shlist[len].membershipGroups;
           document.getElementById('ch_posGrp').innerHTML=data[0].shlist[len].positionGroups;
           document.getElementById('ch_purMbr').innerHTML=data[0].shlist[len].purposeMembership;
           document.getElementById('ch_attGrp').innerHTML=data[0].shlist[len].attitudeGroup;
           document.getElementById('ch_locGrp').innerHTML=data[0].shlist[len].meetingPointGroup;
           document.getElementById('ch_reaSoc').innerHTML=data[0].shlist[len].reactionSocity;
           document.getElementById('ch_reaPol').innerHTML=data[0].shlist[len].reactionPolice;
           document.getElementById('ch_respub').innerHTML=data[0].shlist[len].responsePublic;
               }
           var html=$("#CH_rep_div").html();
           var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
           //var win = window.open('', '_blank');
           win.document.write(html);
           
         }
    }); 
    
    e.preventDefault();
        });

});
                                </script>
                            
        
        </head>
    <body onload="document.getElementById('dialog-form_CHAdolescence').style.visibility='hidden'">

        <center>
            <CAPTION><font size="3"><b><s:text name="heading.caseHisRep"/></b></font></CAPTION>


              <s:form action="" name="chreportsub" id="chreportsub" theme="css_xhtml"> <!--new action = SICD-Save-->
                                      
       <s:hidden name="formName" value="chreportsub"/>
                <table cellspacing="0">

               
                <tr><td align="right"><s:text name="label.profileId"/>:</td>
                    <td><select name="childProfileId" id="childProfileId">
                                <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                                   <c:forEach items="${caseHistoryChildlist}" var="obj">
                                       <option value="${obj.casehistoryPersonalPK.childProfileId}">${obj.childName}-->${obj.casehistoryPersonalPK.childProfileId}</option>
                                   </c:forEach>
                            </select>
                    </td></tr>
                       </table>
                         
                <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/>  </center>
              </s:form>
        </center>
            <div id="CH_rep_div" style="display: none;">
                <div id="print_div2">
                <style> 
                    span{color:blue};
                </style>
                
                <h2 style="text-align: center"><s:text name="label.repCH.formNo"/></h2>  
                <h5 style="text-align: center"><s:text name="label.repCH.seeSched35b"/></h5>
                <h2 style="text-align: center"><s:text name="label.repCH.caseHisRep"/> </h2>
                <hr width="3"/><br/>
                <b>I.<s:text name="label.repCH.persData"/></b>
                <table>
                    <tr><td>1.<s:text name="label.repCH.name"/></td><td><span id="ch_name"></span></td><td><s:text name="label.repCH.gender"/></td><td><span id="ch_gen"/></td></tr>
                    <tr><td>2.<s:text name="label.repCH.ageAtAdm"/></td><td><span id="ch_ageAdm"></span></td><td><s:text name="label.repCH.presentAge"/></td><td><span id="ch_agepre"/></td></tr>
                    <tr><td>3.<s:text name="label.repCH.religion"/></td><td><span id="ch_rel"></span></td><td><s:text name="label.repCH.caste"/></td><td><span id="ch_cst"></span></td></tr>
                    <tr><td>4.<s:text name="label.repCH.locOfResi"/></td><td><span id="ch_lcrs"></span></td><td><s:text name="label.repCH.subCaste"/></td><td><span id="ch_scst"></span></td></tr>
                    <tr><td>5.<s:text name="label.repCH.natDist"/></td><td><span id="ch_ntvdis"></span></td><td><s:text name="label.repCH.natState"/></td><td><span id="ch_ntvst"></span></td></tr>
                    <tr><td colspan="2">6.<s:text name="label.repCH.descHousing"/></td></tr>
                </table>
                <table style="padding-left: 1em;">
                    <tr><td><span style="padding-left: 1em;"></span>i)<s:text name="label.repCH.houseType"/></td><td><span id="ch_htype"></span></td></tr>
                    <tr><td><span style="padding-left: 1em;"></span>ii)<s:text name="label.repCH.houSpace"/></td><td><span id="ch_hspc"></span></td></tr>
                    <tr><td><span style="padding-left: 1em;"></span>iii)<s:text name="label.repCH.houOwn"/></td><td><span id="ch_hown"></span></td></tr>
                </table>
                <table>
                    <tr><td>7.<s:text name="label.repCH.byWhom"/></td><td><span id="ch_bfcwc"></span></td></tr>
                    <tr><td>8.<s:text name="label.repCH.reaLeaFam"/></td><td><span id="ch_rlfam"></span></td></tr>
                    <tr><td colspan="2">9.<s:text name="label.repCH.typesOfAbu"/></td></tr>
                </table>
                   &nbsp;&nbsp;<table>  
                    <tr><td>a.<s:text name="label.repCH.verbAbuBy"/></td><td><span id="ch_vrabu"></span></td></tr>
                    <tr><td>b.<s:text name="label.repCH.phyAbuse"/></td><td><span id="ch_phabu"></span></td></tr>
                    <tr><td>c.<s:text name="label.repCH.sexAbuse"/></td><td><span id="ch_sxabu"></span></td></tr>
                    <tr><td>d.<s:text name="label.repCH.othAbuse"/></td><td><span id="ch_otabu"></span></td></tr>
                   </table> 
                   <table><tr><td colspan="2">10.<s:text name="label.repCH.typesOfIll"/></td></tr></table>   
                   &nbsp;&nbsp;<table><tr><td>i)<s:text name="label.repCH.denOfFood"/></td><td><span id="ch_denfd"></span></td></tr>
                          <tr><td>ii)<s:text name="label.repCH.beaMerclessly"/></td><td><span id="ch_betmly"></span></td></tr>
                          <tr><td>iii)<s:text name="label.repCH.causeingInj"/></td><td><span id="ch_cauinj"></span></td></tr>
                          <tr><td>iv)<s:text name="label.repCH.othIllTreat"/></td><td><span id="ch_othill"></span></td></tr>
                   </table>
                   <table>
                       <tr><td>11.<s:text name="label.repCH.explFaced"/></td><td><span id="ch_expf"></span></td></tr>
                       <tr><td colspan="2">12.<s:text name="label.repCH.heaStBfrAdm"/></td></tr>
                   </table>   
                   &nbsp;&nbsp;<table>
                       <tr><td>i)<s:text name="label.repCH.respDis"/></td><td><span id="ch_resdis"></span></td></tr>
                       <tr><td>ii)<s:text name="label.repCH.hearImpair"/></td><td><span id="ch_herimp"></span></td></tr>
                       <tr><td>iii)<s:text name="label.repCH.eyeDisea"/></td><td><span id="ch_eyedis"></span></td></tr>
                       <tr><td>iv)<s:text name="label.repCH.sexTxDisea"/></td><td><span id="ch_sexdis"></span></td></tr>
                       <tr><td>v)<s:text name="label.repCH.dentDisea"/></td><td><span id="ch_dendis"></span></td></tr>
                       
                       <tr><td>vi)<s:text name="label.repCH.cardDisea"/></td><td><span id="ch_cardis"></span></td></tr>
                       <tr><td>vii)<s:text name="label.repCH.skinDisea"/></td><td><span id="ch_skndis"></span></td></tr>
                       <tr><td>viii)<s:text name="label.repCH.neuroLogDis"/></td><td><span id="ch_nurdis"></span></td></tr>
                       <tr><td>ix)<s:text name="label.repCH.MHC"/></td><td><span id="ch_mhcdis"></span></td></tr>
                       <tr><td>x)<s:text name="label.repCH.PHC"/></td><td><span id="ch_phcdis"></span></td></tr>
                       <tr><td>xi)<s:text name="label.repCH.others"/></td><td><span id="ch_oth"></span></td></tr>
                   </table>
                   <table>
                       <tr><td>13.<s:text name="label.repCH.stayWithWhom"/></td><td><span id="ch_stwwho"></span></td></tr>
                       <tr><td colspan="2">14.<s:text name="label.repCH.visitOfPar"/></td></tr>
                   </table>    
                   &nbsp;&nbsp;<table>
                       <tr><td>i)<s:text name="label.repCH.priInst"/></td><td><span id="ch_prins"></span></td><td>ii)<s:text name="label.repCH.aftInst"/></td><td><span id="ch_aftns"></span></td></tr>
                       <tr><td colspan="2">15.<s:text name="label.repCH.visOfChild"/></td></tr>
                   </table>
                   <table>
                       <tr><td>i)<s:text name="label.repCH.priInst"/></td><td><span id="ch_prins1"></span></td><td>ii)<s:text name="label.repCH.aftInst"/></td><td><span id="ch_aftns1"></span></td></tr>
                       <tr><td>16.<s:text name="label.repCH.corrPar"/></td></tr>
                   </table> 
                   <table>
                       <tr><td>i)<s:text name="label.repCH.priInst"/></td><td><span id="ch_prins2"></span></td><td>ii)<s:text name="label.repCH.aftInst"/></td><td><span id="ch_aftns2"></span></td></tr>
                   </table> 
                   <h3> II.<s:text name="label.repCH.famDet"/></h3>
                   <table>
                       <tr><td>17.<s:text name="label.repCH.typeFam"/></td><td><span id="ch_tyfam"></span></td></tr>
                       <tr><td colspan="2"><b>18.<s:text name="label.repCH.relFamMem"/></b></td></tr>                      
                   </table>   
                   &nbsp;&nbsp;<table>
                       <tr><td>i)<s:text name="label.repCH.relFM"/></td><td><span id="ch_relFM"></span></td></tr>
                       <tr><td>ii)<s:text name="label.repCH.relFC"/></td><td><span id="ch_relFC"></span></td></tr>
                       <tr><td>iii)<s:text name="label.repCH.relMC"/></td><td><span id="ch_relMC"></span></td></tr>
                       <tr><td>iv)<s:text name="label.repCH.relFS"/></td><td><span id="ch_relFS"></span></td></tr>
                       <tr><td>v)<s:text name="label.repCH.relMS"/></td><td><span id="ch_relMS"></span></td></tr>
                       <tr><td>vi)<s:text name="label.repCH.JS"/></td><td><span id="ch_reljs"></span></td></tr>
                   </table>
                   <table>
                       <tr><td colspan="2"><b>19.<s:text name="label.repCH.propFam"/></b></td></tr>
                       <tr><td><span style="padding-left: 1em;"></span>i)<s:text name="label.repCH.landPr"/></td><td><span id="ch_lndP"></span></td></tr>
                       <tr><td><span style="padding-left: 1em;"></span>ii)<s:text name="label.repCH.hhArt"/></td><td><span id="ch_hhArt"></span></td></tr>
                       <tr><td><span style="padding-left: 1em;"></span>iii)<s:text name="label.repCH.vehicle"/></td><td><span id="ch_vehPr"></span></td></tr>
                       <tr><td><span style="padding-left: 1em;"></span>iv)<s:text name="label.repCH.othSpec"/></td><td><span id="ch_othSp"></span></td></tr>
                   </table>    
                   <table>
                       <tr><td colspan="2">20.<s:text name="label.repCH.marDetFM"/></td></tr>
                       <tr><td><span style="padding-left: 1em;"></span>i)<s:text name="label.repCH.par"/></td><td><span id="ch_MDpar"></span></td></tr>
                       <tr><td><span style="padding-left: 1em;"></span>ii)<s:text name="label.repCH.bro"/></td><td><span id="ch_MDbro"></span></td></tr>
                       <tr><td><span style="padding-left: 1em;"></span>iii)<s:text name="label.repCH.sis"/></td><td><span id="ch_MDsis"></span></td></tr>
                   </table>     
                   <table>
                       <tr><td>21.<s:text name="label.repCH.socActFM"/></td><td><span id="ch_socAct"></span></td></tr>
                       <tr><td>22.<s:text name="label.repCH.careBfrAdm"/></td><td><span id="ch_crBAdm"></span></td></tr>
                   </table>
                   <h5>23.</h5>
                   <table id="tab1" style="border: 1;outline-color: #006666;color: blue" border="1">
                       <thead>
                           <tr><th><s:text name="label.s1CH.Sino"/></th><th><s:text name="label.s1CH.name"/></th><th><s:text name="label.s1CH.rel"/></th><th><s:text name="label.s1CH.age"/></th>
                               <th><s:text name="label.s1CH.sex"/></th><th><s:text name="label.s1CH.edu"/></th><th><s:text name="label.s1CH.occ"/></th><th><s:text name="label.s1CH.inc"/></th><th><s:text name="label.s1CH.hea"/></th>
                               <th><s:text name="label.s1CH.hisMI"/></th><th><s:text name="label.s1CH.hc"/></th><th><s:text name="label.s1CH.hbt"/></th><th><s:text name="label.s1CH.soczn"/></th>
                           </tr>
                       </thead>
                       <tbody id="tab1_sub">
                           
                       </tbody>
                   </table>     
                   <b>24.<s:text name="label.s2CH.HisCrFm"/></b>        
                   <table id="tab2" style="border: 1;outline-color: #006666;color: blue" border="1"> 
                       <thead>
                           <tr><th><s:text name="label.s2CH.sino"/></th><th><s:text name="label.s2CH.rel"/></th><th><s:text name="label.s2CH.NtCr"/></th><th><s:text name="label.s2CH.arrMade"/></th><th><s:text name="label.periodOfConfine"/></th><th><s:text name="label.s2CH.punAwar"/></th>
                       </thead>
                       <tbody id="tab2_sub">
                           <tr><td><span id="ch_sr2sno"></span></td><td><span id="ch_sr2rel"></span></td><td><span id="ch_sr2ntc"></span></td><td><span id="ch_sr2armd"></span></td><td><span id="ch_sr2prcf"></span></td><td><span id="ch_sr2pnaw"></span></td></tr>
                       </tbody>    
                   </table>
                           <h3>III.<s:text name="label.repCH.adlHis"/></h3>        
                   <table>
                       <tbody>
                           <tr><td>25.<s:text name="label.repCH.puber"/></td><td><span id="ch_puber"></span></td></tr>
                           <tr><td>26.<s:text name="label.repCH.detDlB"/></td><td><span id="ch_dtDbh"></span></td></tr>
                           <tr><td>27.<s:text name="label.repCH.reaDlB"/></td><td><span id="ch_rsDbh"></span></td></tr>
                           <tr><td>28.<s:text name="label.repCH.hbts"/></td><td><s:text name="label.repCH.hobs"/></td></tr>
                           <tr><td>i.<span id="ch_habits"></span></td><td><span id="ch_hobbies"></span></td></tr>
                           <tr><td colspan="2"><s:text name="label.repCH.empDet"/></td></tr>
                           <tr><td>29.<s:text name="label.repCH.detInUtil"/></td><td><span id="ch_dtInutl"></span></td></tr>
                           <tr><td>30.<s:text name="label.repCH.detSave"/></td><td><span id="ch_dtsave"></span></td></tr>
                           <tr><td>31.<s:text name="label.repCH.durWork"/></td><td><span id="ch_durwrk"></span></td></tr>
                       </tbody>
                   </table>
                   <b>32.<s:text name="label.s3CH.empPri"/></b> 
                   <table id="tab3" style="border: 1;outline-color: #006666;color: blue" border="1">    
                       <thead>
                           <tr><td><b><s:text name="label.s3CH.sino"/></b></td>
                               <td><b><s:text name="label.s3CH.detEmp"/></b></td>
                               <td><b><s:text name="label.s3CH.dura"/></b></td>
                               <td><b><s:text name="label.s3CH.wages"/></b></td>
                               <td><b><s:text name="global.repCH.expAtWork"/></b></td>
                            </tr>  
                       </thead>
                       <tbody id="tab3_sub">
                            <tr>   <td><span id="ch_sn3"></span></td>
                                   <td><span id="ch_detEmp"></span></td>
                                   <td><span id="ch_dura"></span></td>
                                   <td><span id="ch_wagEar"></span></td>
                                   <td><span id="ch_expWrk"></span></td>
                            </tr>
                       </tbody>      
                   
                   </table>    
                               <h3>IV.<s:text name="label.repCH.eduDet"/></h3>      
                   <table>
                       <tbody>
                           <tr><td>33.<s:text name="label.repCH.priEdu"/></td><td><span id="ch_priEdu"></td></tr>
                       </tbody>
                   </table>    
                   <table>
                       <tr><td>34.<s:text name="label.repCH.reaLevSc"/></td><td><span id="ch_reaLFm"></span></td></tr>
                       <tr><td>35.<s:text name="label.repCH.detLastSc"/></td><td><span id="ch_dtSStd"></span></td></tr>
                       <tr><td>36.<s:text name="label.repCH.medIns"/></td><td><span id="ch_medIns"></span></td></tr>
                   </table>    
                       <h5>37.<s:text name="label.s4CH.aftAdm"/></h5>
                   <table id="tab4" style="border: 1;outline-color: #006666;color: blue" border="1">
                       <thead>
                       <tr><th><s:text name="label.s4CH.sino"/></th>
                           <th><s:text name="label.s4CH.yrAdm"/></th>
                           <th><s:text name="label.s4CH.clName"/></th>
                           <th><s:text name="label.s4CH.detCou"/></th>
                           <th><s:text name="label.s4CH.profRes"/></th>
                           <th><s:text name="label.s4CH.yrCom"/></th>
                       </tr>
                       </thead>
                       <tbody id="tab4_sub">
                       <tr>
                           <td><span id="ch_sn4"></span></td>
                           <td><span id="ch_yrAdm"></span></td>
                           <td><span id="ch_clName"></span></td>
                           <td><span id="ch_detAdm"></span></td>
                           <td><span id="ch_profc"></span></td>
                           <td><span id="ch_yrComp"></span></td>
                       </tr>
                       </tbody>
                   </table>
                       <h3>V.<s:text name="label.s5CH.socHis"/></h3>
                      
                       <table id="myDiv_0" style="border: 1;outline-color: #006666;" >
                       <thead>
                       <tr>
                             <th></th>
                       </tr>
                       </thead>
                       <tbody>
                           <tr><td>
                                   <ol start="38">
                                       <li><s:text name="label.s5CH.detFr"/>:<span id="ch_detFrd"></span></li>
                                       <li><s:text name="label.s5CH.mjrFr"/>:<span id="ch_mjrFrd"></span></li>
                                       <li><s:text name="label.s5CH.detMem"/>:<span id="ch_memGrp"></span></li>
                                       <li><s:text name="label.s5CH.posChild"/>:<span id="ch_posGrp"></span></li>
                                       <li><s:text name="label.s5CH.purMship"/>:<span id="ch_purMbr"></span></li>
                                       <li><s:text name="label.s5CH.attGrp"/>:<span id="ch_attGrp"></span></li>
                                       <li><s:text name="global.chrep.locMtPtGrp"/>:<span id="ch_locGrp"></span></li>
                                       <li><s:text name="label.s5CH.reaSoc"/>:<span id="ch_reaSoc"></span></li>
                                       <li><s:text name="label.s5CH.reaPol"/>:<span id="ch_reaPol"></span></li>
                                       <li><s:text name="label.s5CH.resGP"/>:<span id="ch_respub"></span></li>
                                   </ol> 
                          </td></tr>
                       </tbody>    
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
                                       <center><input type="button" id="prbutton" value="<s:text name="global.button.print"/>" onclick="prdi('print_div2')"/></center>
    </div>
    </body>
</html>