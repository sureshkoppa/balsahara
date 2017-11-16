<%-- 
    Document   : CWC_CHReportSub.jsp
    Created on : 19 Jul, 2011, 3:25:53 PM
    Author     : vinumol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
    <head>
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
			title: '<s:text name="label.err.error"/>'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});
                
                
                    /*validating the fields present in the form*/
                     if($("#icp_childProfileId").val()==1)
                        {
                            $dialog.html("<s:text name="js.err.plsSelChiProfId"/>");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
            }
                                </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            $(document).ready(function(){

        $('#icpsubform').on('submit',function(e){
             $.ajax({
      url:'ICP-ReportAction',
      type:'POST',
      data:$('#icpsubform').serialize(),
      dataType:'json',
      success:
          function(data){
          
          document.getElementById('prof_id').innerHTML=data.profile_no;
          document.getElementById('prof_year').innerHTML=data.prof_year;
          document.getElementById('adm_date').innerHTML=data.date_admit;
          
          document.getElementById('chi_name').innerHTML=data.child_name;
          document.getElementById('chi_age').innerHTML=data.child_age;
          document.getElementById('fat_name').innerHTML=data.father_name;
          document.getElementById('mat_name').innerHTML=data.mother_name;
          document.getElementById('nat_div').innerHTML=data.nationality;
          document.getElementById('rel_div').innerHTML=data.child_religion;
          document.getElementById('cst_div').innerHTML=data.child_cast;
          document.getElementById('scst_div').innerHTML=data.child_subcaste;
          document.getElementById('edu_attain').innerHTML=data.child_eduAttain;
          document.getElementById('hea_nds').innerHTML=data.health_needs;
          document.getElementById('emoTr_nds').innerHTML=data.emoTrain_needs;
          document.getElementById('lcp_nds').innerHTML=data.leaCreate_play;
          document.getElementById('aar_nds').innerHTML=data.attach_rel;
          document.getElementById('rel_blfs').innerHTML=data.relig_beliefs;
          document.getElementById('pro_abu').innerHTML=data.prot_allAbuse;
          document.getElementById('soc_mstr').innerHTML=data.social_stream;
          document.getElementById('fol_posrel').innerHTML=data.follow_postAction;
         
          document.getElementById('rel_types').innerHTML=data.release_type;
          document.getElementById('det_trans').innerHTML=data.place_transfer;
          document.getElementById('con_auth').innerHTML=data.authority_responsible;
          document.getElementById('det_pla').innerHTML=data.details_place;
          document.getElementById('dt_rel').innerHTML=data.date_release;
          document.getElementById('dt_repr').innerHTML=data.date_repatriot;
          document.getElementById('req_escrt').innerHTML=data.requisition_escort;
          document.getElementById('iden_escrt').innerHTML=data.identify_escort;
          document.getElementById('recm_rehb').innerHTML=data.rehabi_placement;
          document.getElementById('spon_req').innerHTML=data.sponser_require;
          document.getElementById('iden_pocw').innerHTML=data.ident_officer;
          document.getElementById('mou_ngo').innerHTML=data.mou_sa_is;
          document.getElementById('iden_sais').innerHTML=data.ident_sponser;
          document.getElementById('mou_sais').innerHTML=data.mou_childSponser;
          document.getElementById('det_sacac').innerHTML=data.child_savAcc;
          document.getElementById('det_chearn').innerHTML=data.child_earnBelong;
          document.getElementById('det_awrw').innerHTML=data.child_awarReward;
          document.getElementById('opt_child').innerHTML=data.child_option;
          document.getElementById('any_otinfo').innerHTML=data.other_info;
          
          
          document.getElementById('stat_bacc').innerHTML=data.status_bankAcc;
          document.getElementById('earn_blg').innerHTML=data.earning_handedOver;
          document.getElementById('plmt_juv').innerHTML=data.child_placement;
          document.getElementById('fam_child').innerHTML=data.child_familyBehav;
          document.getElementById('soc_child').innerHTML=data.social_milieu;
          document.getElementById('ch_skluse').innerHTML=data.how_skillUsed;
          document.getElementById('wth_chadm').innerHTML=data.whether_school;
          document.getElementById('dt_adm').innerHTML=data.date_admit;
          document.getElementById('name_sc').innerHTML=data.name_school;
          
          
        
          
          
           var html=$("#icp_report_div").html();
           var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
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
            <CAPTION><font size="3"><b><s:text name="global.heading.icp"/></b></font></CAPTION>


              <s:form action="" method="POST" name="icpsubform" id="icpsubform" theme="css_xhtml" onsubmit="return validate();"> <!--new action = SICD-Save-->
                                      
                <s:hidden name="formName" value="icpsubform"/>
                        <table cellspacing="0">

                        <tr><h3></h3></tr>
                        <tr><td align="right"><s:text name="label.profileId"/>:</td>
                            <td><select name="icp_childProfileId" id="icp_childProfileId" >
                            <option value="1">---<s:text name="global.option.headerKey"/>---</option>
                            <c:forEach items="${childrenListInAHome}" var="obj">
                                  <option value="${obj.childProfileId}">${obj.childName}-->${obj.childProfileId}</option>
                            </c:forEach> 
                        </select> </td></tr>
                       </table>
                         
                <center> <input type="submit" value="<s:text name="button.submit"/>"/><input type="reset" value="<s:text name="button.clear"/>"/></center>
              </s:form>
        </center>
            <div id="icp_report_div" style="display: none">
                <div id="print_div1">
                <style>
           span {color:blue;}
        </style> 
                <div align="center" style="font-size: x-large"><s:text name="global.heading.icp"/></div>
                <p><s:text name="global.icp.msg1"/></p>
                <ol type="I">
                    <li><s:text name="global.icp.preBioFam"/></li>
                    <li><s:text name="global.icp.kinCare"/></li>
                    <li><s:text name="global.icp.inCouAdopt"/></li>
                    <li><s:text name="global.icp.fosterCare"/></li>
                    <li><s:text name="global.icp.interCAdopt"/></li>
                    <li><s:text name="global.icp.instCare"/></li>
                </ol>    
                    <s:text name="global.icp.caseOrProf"/> <span id="prof_id"></span><span id="prof_year"></span><s:text name="global.icp.yrBoaCom"/><br/>
                    <s:text name="global.label.dateOfAdm"/><span id="adm_date"></span><br/>
                    <h3>A.<s:text name="global.heading.persDetails"/></h3>    
                    <table>
                        <tr><td>1.<s:text name="global.icp.nameOfChild"/>:</td><td><span id="chi_name"></span></td></tr>
                        <tr><td>2.<s:text name="label.age"/>:</td><td><span id="chi_age"></span></td></tr>
                        <tr><td>3.<s:text name="global.label.fatName"/>:</td><td><span id="fat_name"></span></td></tr>
                        <tr><td>4.<s:text name="global.label.matName"/>:</td><td><span id="mat_name"></span></td></tr>
                        <tr><td>5.<s:text name="label.nationality"/>:</td><td><span id="nat_div"></span></td></tr>
                        <tr><td colspan="2">6.<s:text name="global.label.relg"/>:<span id="rel_div"></span>/<s:text name="global.label.caste"/>:<span id="cst_div"></span>/<s:text name="global.label.subCaste"/>:<span id="scst_div"></span></td></tr>
                        <tr><td>7.<s:text name="label.icp.eduAttain"/>:</td><td><span id="edu_attain"></span></td></tr>
                        <tr><td>8.<s:text name="heading.summOfCaseHis"/>:
                            <ul type="disc">
                                <li><s:text name="label.icp.heaNeeds"/>:<span id="hea_nds"></span></li>
                                <li><s:text name="label.icp.emoTrainNeeds"/>:<span id="emoTr_nds"></span></li>
                                <li><s:text name="label.icp.leaCreatPlay"/>:<span id="lcp_nds"></span></li>
                                <li><s:text name="label.icp.attachAndRel"/>:<span id="aar_nds"></span></li>
                                <li><s:text name="label.icp.relBeliefs"/>:<span id="rel_blfs"></span></li>
                                <li><s:text name="label.icp.protFromAllAbuMalTreat"/>:<span id="pro_abu"></span></li>
                                <li><s:text name="label.icp.socMainStream"/>:<span id="soc_mstr"></span></li>
                                <li><s:text name="global.label.followPostRetr"/>:<span id="fol_posrel"></span></li>
                            </ul>
                        </li>
                    </table>
                            <h3>B.<s:text name="global.heading.preRelease"/></h3>   
                            <table>
                                <tr><td><s:text name="label.releaseType"/>:</td><td><span id="rel_types"></span></td></tr>
                                <tr><td><s:text name="global.label.detailsPlaceTrans"/>:</td><td><span id="det_trans"></span></td></tr>
                                <tr><td><s:text name="global.label.concernAuthResp"/>:</td><td><span id="con_auth"></span></td></tr>
                                <tr><td><s:text name="global.label.detailPlaDiff"/>:</td><td><span id="det_pla"></span></td></tr>
                                <tr><td><s:text name="global.label.dateOfRelTrans"/>:</td><td><span id="dt_rel"></span></td></tr>
                                <tr><td><s:text name="global.label.dateOfRepart"/>:</td><td><span id="dt_repr"></span></td></tr>
                                <tr><td><s:text name="global.label.reqEscortIfReq"/>:</td><td><span id="req_escrt"></span></td></tr>
                                <tr><td><s:text name="global.label.identOfEscort"/>:</td><td><span id="iden_escrt"></span></td></tr>
                                <tr><td><s:text name="global.label.recomRehPlanIncPlace"/>:</td><td><span id="recm_rehb"></span></td></tr>
                                <tr><td><s:text name="global.label.sponReq"/>:</td><td><span id="spon_req"></span></td></tr>
                                <tr><td><s:text name="global.label.identPOCWetc"/>:</td><td><span id="iden_pocw"></span></td></tr>
                                <tr><td><s:text name="global.label.mouWtNGOforPRel"/>:</td><td><span id="mou_ngo"></span></td></tr>
                                <tr><td><s:text name="global.label.identSaOrIa"/>:</td><td><span id="iden_sais"></span></td></tr>
                                <tr><td><s:text name="global.label.mouSaOrIa"/>:</td><td><span id="mou_sais"></span></td></tr>
                                <tr><td><s:text name="global.label.detOfSaveAcc"/>:</td><td><span id="det_sacac"></span></td></tr>
                                <tr><td><s:text name="global.label.detChildEarn"/>:</td><td><span id="det_chearn"></span></td></tr>
                                <tr><td><s:text name="global.label.detAwaRewa"/>:</td><td><span id="det_awrw"></span></td></tr>
                                <tr><td><s:text name="global.label.optOfChild"/>:</td><td><span id="opt_child"></span></td></tr>
                                <tr><td><s:text name="global.label.anyOtherInfo"/>:</td><td><span id="any_otinfo"></span></td></tr>
                                
                            </table>
                            <h3>C.<s:text name="global.heading.postRelease"/></h3>   
                            <table>
                                <tr><td><s:text name="global.label.staBankAcc"/>:</td><td><span id="stat_bacc"></span></td></tr>
                                <tr><td><s:text name="global.icp.earnBelChild"/>:</td><td><span id="earn_blg"></span></td></tr>
                                <tr><td><s:text name="global.label.placeOfJuvOrChild"/>:</td><td><span id="plmt_juv"></span></td></tr>
                                <tr><td><s:text name="global.label.famTowChild"/>:</td><td><span id="fam_child"></span></td></tr>
                                <tr><td><s:text name="global.label.socMilOfChild"/>:</td><td><span id="soc_child"></span></td></tr>
                                <tr><td><s:text name="global.label.howChildUsingSkills"/>:</td><td><span id="ch_skluse"></span></td></tr>
                                <tr><td><s:text name="global.label.whetherChildAdm"/>:</td><td><span id="wth_chadm"></span></td></tr>
                                <tr><td><s:text name="global.label.dateOfAdm"/>:</td><td><span id="dt_adm"></span></td></tr>
                                <tr><td><s:text name="global.label.nameOfSchool"/>:</td><td><span id="name_sc"></span></td></tr>
                                
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
                        <center><input type="button" id="prbutton" value="<s:text name="global.button.print"/>" onclick="prdi('print_div1')"/></center>
            </div>
    </body>
</html>