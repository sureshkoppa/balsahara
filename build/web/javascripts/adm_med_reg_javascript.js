/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_adm_reg" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.adm_reg.submit();
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

                $('form#adm_reg').submit(function(){
                    var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
                    if($("#adm_reg_profile_id").val()==1)
                        {
                            $dialog.html("Sorry! Entered Profileid is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if((!float_re.test($("#adm_reg_adm_weight").val())))
                        {
                            
                                $dialog.html("Sorry! Entered weight is not valid");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        else if((!float_re.test($("#adm_reg_adm_height").val())))
                        {

                                $dialog.html("Sorry! Entered height is not valid");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        /*else if($("#adm_reg_skin_diseases").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Skin Diseases is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#adm_reg_cns").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional CNS diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#adm_reg_cvs").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional CVS diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#adm_reg_lungs").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional Lungs diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#adm_reg_git").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional GIT diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#adm_reg_kidney").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional Kidney diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }
                        else if($("#adm_reg_ske_sys").val().length<1)
                        {
                            $dialog.html("Sorry! Entered Provisional Skeletal System diagnosis is not valid");
                            $dialog.parent().addClass( "ui-state-error" );
                            $dialog.dialog('open');
                            return false;
                        }*/
                    else if($("#adm_reg_doctors_sugg").val().length<1)
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
                            if(document.adm_reg.congenitalAnomalies[0].checked == true )
                              {
                                 conano = document.adm_reg.congenitalAnomalies[0].value;
                              }
                            else
                              {
                                  conano = document.adm_reg.congenitalAnomalies[1].value;
                              }
                            if(document.adm_reg.phyHandicap[0].checked == true )
                              {
                                 phyhan = document.adm_reg.phyHandicap[0].value;
                              }
                            else
                              {
                                  phyhan = document.adm_reg.phyHandicap[1].value;
                              }
                            if(document.adm_reg.mentalHand[0].checked == true )
                              {
                                 menhan = document.adm_reg.mentalHand[0].value;
                              }
                            else
                              {
                                  menhan = document.adm_reg.mentalHand[1].value;
                              }
                            if(document.adm_reg.caseOfFits[0].checked == true )
                              {
                                 fits_case = document.adm_reg.caseOfFits[0].value;
                              }
                            else
                              {
                                  fits_case = document.adm_reg.caseOfFits[1].value;
                              }
                            if(document.adm_reg.histCommunicableDisease[0].checked == true )
                              {
                                 commd_hist = document.adm_reg.histCommunicableDisease[0].value;
                              }
                            else
                              {
                                  commd_hist = document.adm_reg.histCommunicableDisease[1].value;
                              }
                            if(document.adm_reg.bodyPains[0].checked == true )
                              {
                                 body_pains = document.adm_reg.bodyPains[0].value;
                              }
                            else
                              {
                                  body_pains = document.adm_reg.bodyPains[1].value;
                              }
                            if(document.adm_reg.fever[0].checked == true )
                              {
                                 fever = document.adm_reg.fever[0].value;
                              }
                            else
                              {
                                  fever = document.adm_reg.fever[1].value;
                              }
                            if(document.adm_reg.vomiting[0].checked == true )
                              {
                                 vomiting = document.adm_reg.vomiting[0].value;
                              }
                            else
                              {
                                  vomiting = document.adm_reg.vomiting[1].value;
                              }
                            if(document.adm_reg.phyAppear[0].checked == true )
                              {
                                 phyapp = document.adm_reg.phyAppear[0].value;
                              }
                            else
                              {
                                  phyapp = document.adm_reg.phyAppear[1].value;
                              }
                            if(document.adm_reg.drugAddiction[0].checked == true )
                              {
                                 drug_addiction = document.adm_reg.drugAddiction[0].value;
                              }
                            else
                              {
                                  drug_addiction = document.adm_reg.drugAddiction[1].value;
                              }
                            if(document.adm_reg.anemic[0].checked == true )
                              {
                                 anemic = document.adm_reg.anemic[0].value;
                              }
                            else
                              {
                                  anemic = document.adm_reg.anemic[1].value;
                              }
                            if(document.adm_reg.heartChd[0].checked == true )
                              {
                                 heart_chd = document.adm_reg.heartChd[0].value;
                              }
                            else
                              {
                                  heart_chd = document.adm_reg.heartChd[1].value;
                              }
                            if(document.adm_reg.murmur[0].checked == true )
                              {
                                 heart_murmur = document.adm_reg.murmur[0].value;
                              }
                            else
                              {
                                  heart_murmur = document.adm_reg.murmur[1].value;
                              }
                            if(document.adm_reg.heartSounds[0].checked == true )
                              {
                                 heart_sounds = document.adm_reg.heartSounds[0].value;
                              }
                            else
                              {
                                  heart_sounds = document.adm_reg.heartSounds[1].value;
                              }
                            if(document.adm_reg.chestAbnormal[0].checked == true )
                              {
                                 chest_abnor = document.adm_reg.chestAbnormal[0].value;
                              }
                            else
                              {
                                  chest_abnor = document.adm_reg.chestAbnormal[1].value;
                              }
                            if(document.adm_reg.crepts[0].checked == true )
                              {
                                 lungs_crepts = document.adm_reg.crepts[0].value;
                              }
                            else
                              {
                                  lungs_crepts = document.adm_reg.crepts[1].value;
                              }
                            if(document.adm_reg.lungsBea[0].checked == true )
                              {
                                 lungs_bae = document.adm_reg.lungsBea[0].value;
                              }
                            else
                              {
                                  lungs_bae = document.adm_reg.lungsBea[1].value;
                              }
                            if(document.adm_reg.parabdomenOrg[0].checked == true )
                              {
                                 parabdomen = document.adm_reg.parabdomenOrg[0].value;
                              }
                            else
                              {
                                  parabdomen = document.adm_reg.parabdomenOrg[1].value;
                              }
                            $("#adm_reg_profile_id_span").html($("#adm_reg_profile_id").val());
                            $("#adm_reg_adm_weight_span").html($("#adm_reg_adm_weight").val());
                            $("#adm_reg_adm_height_span").html($("#adm_reg_adm_height").val());
                            $("#adm_reg_conano_span").html(conano);
                            $("#adm_reg_conano_specify_span").html($("#adm_reg_conano_specify").val());
                            $("#adm_reg_phyhan_span").html(phyhan);
                            $("#adm_reg_phyhan_specify_span").html($("#adm_reg_phyhan_specify").val());
                            $("#adm_reg_menhan_span").html(menhan);
                            $("#adm_reg_menhan_specify_span").html($("#adm_reg_menhan_specify").val());
                            $("#adm_reg_fits_case_span").html(fits_case);
                            $("#adm_reg_fitstreat_specify_span").html($("#adm_reg_fitstreat_specify").val());
                            $("#adm_reg_commd_hist_span").html(commd_hist);
                            $("#adm_reg_commd_specify_span").html($("#adm_reg_commd_specify").val());
                            $("#adm_reg_commd_others_span").html($("#adm_reg_commd_others").val());
                            $("#adm_reg_body_pains_span").html(body_pains);
                            $("#adm_reg_fever_span").html(fever);
                            $("#adm_reg_vomiting_span").html(vomiting);
                            $("#adm_reg_gencomp_others_span").html($("#adm_reg_gencomp_others").val());
                            $("#adm_reg_prev_hist_span").html($("#adm_reg_prev_hist").val());
                            $("#adm_reg_phyapp_span").html(phyapp);
                            $("#adm_reg_drug_addiction_span").html(drug_addiction);
                            $("#adm_reg_anemic_span").html(anemic);
                            $("#adm_reg_heart_chd_span").html(heart_chd);
                            $("#adm_reg_heart_murmur_span").html(heart_murmur);
                            $("#adm_reg_heart_sounds_span").html(heart_sounds);
                            $("#adm_reg_chest_abnor_span").html(chest_abnor);
                            $("#adm_reg_lungs_crepts_span").html(lungs_crepts);
                            $("#adm_reg_lungs_bae_span").html(lungs_bae);
                            $("#adm_reg_parabdomen_span").html(parabdomen);
                            $("#adm_reg_drug_specify_span").html($("#adm_reg_drug_specify").val());
                            $("#adm_reg_anemic_level_span").html($("#adm_reg_anemic_level").val());
                            $("#adm_reg_parabdomen_specify_span").html($("#adm_reg_parabdomen_specify").val());
                            $("#adm_reg_skin_diseases_span").html($("#adm_reg_skin_diseases").val());
                            $("#adm_reg_cns_span").html($("#adm_reg_cns").val());
                            $("#adm_reg_cvs_span").html($("#adm_reg_cvs").val());
                            $("#adm_reg_lungs_span").html($("#adm_reg_lungs").val());
                            $("#adm_reg_git_span").html($("#adm_reg_git").val());
                            $("#adm_reg_kidney_span").html($("#adm_reg_kidney").val());
                            $("#adm_reg_ske_sys_span").html($("#adm_reg_ske_sys").val());
                            $("#adm_reg_prodia_others_span").html($("#adm_reg_prodia_others").val());
                            $("#adm_reg_doctors_sugg_span").html($("#adm_reg_doctors_sugg").val());
                            document.getElementById('dialog-form_adm_reg').style.visibility='visible';
                            $('#dialog-form_adm_reg').dialog('open');
	            return false;
                        }
	        });
	});



