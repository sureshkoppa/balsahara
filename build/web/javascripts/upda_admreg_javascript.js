/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_update_adm_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.update_adm_reg.submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val("").removeClass( "ui-state-error" );
			}
		});

                var $dialog = $('<div></div>')
		.html('This dialog will show every time!')
		.dialog({
			autoOpen: false,
                        height: 110,
			width: 250,
                        modal: true,
			title: 'ERROR'.fontcolor('#FF0000'),
                        buttons: {
				Ok: function() {
					$dialog.dialog('close');
                                    }
			}
		});

                $('form#update_adm_reg').submit(function(){
                    var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
                    if($("#upda_adm_reg_profile_id").val()==1)
                        {
                            $dialog.html("Sorry! Entered Profileid is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if((!float_re.test($("#upda_adm_reg_adm_weight").val())))
                        {

                                $dialog.html("Sorry! Entered weight is not valid");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        else if((!float_re.test($("#upda_adm_reg_adm_height").val())))
                        {

                                $dialog.html("Sorry! Entered height is not valid");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        /*else if($("#upda_adm_reg_skin_diseases").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Skin Diseases is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#upda_adm_reg_cns").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional CNS diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#upda_adm_reg_cvs").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional CVS diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#upda_adm_reg_lungs").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional Lungs diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#upda_adm_reg_git").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional GIT diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#upda_adm_reg_kidney").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional Kidney diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#upda_adm_reg_ske_sys").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional Skeletal System diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }*/
                        else if($("#upda_adm_reg_doctors_sugg").val().length<1)
                        {
                            $dialog.html("Please enter suggestions!");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else
                        {
                            var conano;
                            var phyhan;
                            var menhan;
                            var fits_case;
                            var commd_hist;
                            var body_pains;
                            var fever;
                            var vomiting;
                            var phyapp;
                            var drug_addiction;
                            var anemic;
                            var heart_chd;
                            var heart_murmur;
                            var heart_sounds;
                            var chest_abnor;
                            var lungs_crepts;
                            var lungs_bae;
                            var parabdomen;
                            if(document.update_adm_reg.congenitalAnomalies[0].checked == true )
                              {
                                 conano = document.update_adm_reg.congenitalAnomalies[0].value;
                              }
                            else
                              {
                                  conano = document.update_adm_reg.congenitalAnomalies[1].value;
                              }
                            if(document.update_adm_reg.phyHandicap[0].checked == true )
                              {
                                 phyhan = document.update_adm_reg.phyHandicap[0].value;
                              }
                            else
                              {
                                  phyhan = document.update_adm_reg.phyHandicap[1].value;
                              }
                            if(document.update_adm_reg.mentalHand[0].checked == true )
                              {
                                 menhan = document.update_adm_reg.mentalHand[0].value;
                              }
                            else
                              {
                                  menhan = document.update_adm_reg.mentalHand[1].value;
                              }
                            if(document.update_adm_reg.caseOfFits[0].checked == true )
                              {
                                 fits_case = document.update_adm_reg.caseOfFits[0].value;
                              }
                            else
                              {
                                  fits_case = document.update_adm_reg.caseOfFits[1].value;
                              }
                            if(document.update_adm_reg.histCommunicableDisease[0].checked == true )
                              {
                                 commd_hist = document.update_adm_reg.histCommunicableDisease[0].value;
                              }
                            else
                              {
                                  commd_hist = document.update_adm_reg.histCommunicableDisease[1].value;
                              }
                            if(document.update_adm_reg.bodyPains[0].checked == true )
                              {
                                 body_pains = document.update_adm_reg.bodyPains[0].value;
                              }
                            else
                              {
                                  body_pains = document.update_adm_reg.bodyPains[1].value;
                              }
                            if(document.update_adm_reg.fever[0].checked == true )
                              {
                                 fever = document.update_adm_reg.fever[0].value;
                              }
                            else
                              {
                                  fever = document.update_adm_reg.fever[1].value;
                              }
                            if(document.update_adm_reg.vomiting[0].checked == true )
                              {
                                 vomiting = document.update_adm_reg.vomiting[0].value;
                              }
                            else
                              {
                                  vomiting = document.update_adm_reg.vomiting[1].value;
                              }
                            if(document.update_adm_reg.phyAppear[0].checked == true )
                              {
                                 phyapp = document.update_adm_reg.phyAppear[0].value;
                              }
                            else
                              {
                                  phyapp = document.update_adm_reg.phyAppear[1].value;
                              }
                            if(document.update_adm_reg.drugAddiction[0].checked == true )
                              {
                                 drug_addiction = document.update_adm_reg.drugAddiction[0].value;
                              }
                            else
                              {
                                  drug_addiction = document.update_adm_reg.drugAddiction[1].value;
                              }
                            if(document.update_adm_reg.anemic[0].checked == true )
                              {
                                 anemic = document.update_adm_reg.anemic[0].value;
                              }
                            else
                              {
                                  anemic = document.update_adm_reg.anemic[1].value;
                              }
                            if(document.update_adm_reg.heartChd[0].checked == true )
                              {
                                 heart_chd = document.update_adm_reg.heartChd[0].value;
                              }
                            else
                              {
                                  heart_chd = document.update_adm_reg.heartChd[1].value;
                              }
                            if(document.update_adm_reg.murmur[0].checked == true )
                              {
                                 heart_murmur = document.update_adm_reg.murmur[0].value;
                              }
                            else
                              {
                                  heart_murmur = document.update_adm_reg.murmur[1].value;
                              }
                            if(document.update_adm_reg.heartSounds[0].checked == true )
                              {
                                 heart_sounds = document.update_adm_reg.heartSounds[0].value;
                              }
                            else
                              {
                                  heart_sounds = document.update_adm_reg.heartSounds[1].value;
                              }
                            if(document.update_adm_reg.chestAbnormal[0].checked == true )
                              {
                                 chest_abnor = document.update_adm_reg.chestAbnormal[0].value;
                              }
                            else
                              {
                                  chest_abnor = document.update_adm_reg.chestAbnormal[1].value;
                              }
                            if(document.update_adm_reg.crepts[0].checked == true )
                              {
                                 lungs_crepts = document.update_adm_reg.crepts[0].value;
                              }
                            else
                              {
                                  lungs_crepts = document.update_adm_reg.crepts[1].value;
                              }
                            if(document.update_adm_reg.lungsBea[0].checked == true )
                              {
                                 lungs_bae = document.update_adm_reg.lungsBea[0].value;
                              }
                            else
                              {
                                  lungs_bae = document.update_adm_reg.lungsBea[1].value;
                              }
                            if(document.update_adm_reg.parabdomenOrg[0].checked == true )
                              {
                                 parabdomen = document.update_adm_reg.parabdomenOrg[0].value;
                              }
                            else
                              {
                                  parabdomen = document.update_adm_reg.parabdomenOrg[1].value;
                              }
                            $("#upda_adm_reg_profile_id_span").html($("#upda_adm_reg_profile_id").val());
                            $("#upda_adm_reg_adm_weight_span").html($("#upda_adm_reg_adm_weight").val());
                            $("#upda_adm_reg_adm_height_span").html($("#upda_adm_reg_adm_height").val());
                            $("#upda_adm_reg_conano_span").html(conano);
                            $("#upda_adm_reg_conano_specify_span").html($("#upda_adm_reg_conano_specify").val());
                            $("#upda_adm_reg_phyhan_span").html(phyhan);
                            $("#upda_adm_reg_phyhan_specify_span").html($("#upda_adm_reg_phyhan_specify").val());
                            $("#upda_adm_reg_menhan_span").html(menhan);
                            $("#upda_adm_reg_menhan_specify_span").html($("#upda_adm_reg_menhan_specify").val());
                            $("#upda_adm_reg_fits_case_span").html(fits_case);
                            $("#upda_adm_reg_fitstreat_specify_span").html($("#upda_adm_reg_fitstreat_specify").val());
                            $("#upda_adm_reg_commd_hist_span").html(commd_hist);
                            $("#upda_adm_reg_commd_specify_span").html($("#upda_adm_reg_commd_specify").val());
                            $("#upda_adm_reg_commd_others_span").html($("#upda_adm_reg_commd_others").val());
                            $("#upda_adm_reg_body_pains_span").html(body_pains);
                            $("#upda_adm_reg_fever_span").html(fever);
                            $("#upda_adm_reg_vomiting_span").html(vomiting);
                            $("#upda_adm_reg_gencomp_others_span").html($("#upda_adm_reg_gencomp_others").val());
                            $("#upda_adm_reg_prev_hist_span").html($("#upda_adm_reg_prev_hist").val());
                            $("#upda_adm_reg_phyapp_span").html(phyapp);
                            $("#upda_adm_reg_drug_addiction_span").html(drug_addiction);
                            $("#upda_adm_reg_anemic_span").html(anemic);
                            $("#upda_adm_reg_heart_chd_span").html(heart_chd);
                            $("#upda_adm_reg_heart_murmur_span").html(heart_murmur);
                            $("#upda_adm_reg_heart_sounds_span").html(heart_sounds);
                            $("#upda_adm_reg_chest_abnor_span").html(chest_abnor);
                            $("#upda_adm_reg_lungs_crepts_span").html(lungs_crepts);
                            $("#upda_adm_reg_lungs_bae_span").html(lungs_bae);
                            $("#upda_adm_reg_parabdomen_span").html(parabdomen);
                            $("#upda_adm_reg_drug_specify_span").html($("#upda_adm_reg_drug_specify").val());
                            $("#upda_adm_reg_anemic_level_span").html($("#upda_adm_reg_anemic_level").val());
                            $("#upda_adm_reg_parabdomen_specify_span").html($("#upda_adm_reg_parabdomen_specify").val());
                            $("#upda_adm_reg_skin_diseases_span").html($("#upda_adm_reg_skin_diseases").val());
                            $("#upda_adm_reg_cns_span").html($("#upda_adm_reg_cns").val());
                            $("#upda_adm_reg_cvs_span").html($("#upda_adm_reg_cvs").val());
                            $("#upda_adm_reg_lungs_span").html($("#upda_adm_reg_lungs").val());
                            $("#upda_adm_reg_git_span").html($("#upda_adm_reg_git").val());
                            $("#upda_adm_reg_kidney_span").html($("#upda_adm_reg_kidney").val());
                            $("#upda_adm_reg_ske_sys_span").html($("#upda_adm_reg_ske_sys").val());
                            $("#upda_adm_reg_prodia_others_span").html($("#upda_adm_reg_prodia_others").val());
                            $("#upda_adm_reg_doctors_sugg_span").html($("#upda_adm_reg_doctors_sugg").val());
                            document.getElementById('dialog-form_update_adm_reg').style.visibility='visible';
                            $('#dialog-form_update_adm_reg').dialog('open');
	            return false;
                        }
	        });
	});



