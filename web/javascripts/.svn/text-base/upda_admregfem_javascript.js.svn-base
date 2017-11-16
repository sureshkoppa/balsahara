/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_update_adm_reg_fem" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.update_adm_reg_fem.submit();
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

                $('form#update_adm_reg_fem').submit(function(){
                    var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
                    var att_menar;
                    var val_agemenar=parseInt($("#upda_adm_reg_agemen").val());
                    if(document.update_adm_reg_fem.attainedMenarche[0].checked == true)
                    {
                       att_menar= document.update_adm_reg_fem.attainedMenarche[0].value;
                    }
                    else
                    {
                       att_menar= document.update_adm_reg_fem.attainedMenarche[1].value;
                    }
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
                        else if((att_menar=="Y") && ($("#upda_adm_reg_agemen").val().length<1))
                        {
                                $dialog.html("Sorry! Entered Menarche Age is not valid");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        else if((att_menar=="Y") && (isNaN(val_agemenar)))
                        {
                                $dialog.html("Sorry! Entered Menarche Age should be Integer");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        else if((att_menar=="Y") && (!(isNaN(val_agemenar))) && !((val_agemenar > 6) && (val_agemenar< 26)))
                        {
                                $dialog.html("Sorry! Entered Menarche Age should be in between 6 to 26");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        else if((att_menar=="Y") && (document.update_adm_reg_fem.lmp_temp.value.toString().length<1))
                        {
                                $dialog.html("Sorry! Entered LMP Date is not valid");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        else if($("#upda_adm_reg_extfindings").val().length<1)
                        {
                            $dialog.html("Sorry! Entered External Findings is not valid");
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
                        else if(document.getElementById('upda_adm_reg_doctors_sugg').value.toString().length<1)
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
                            var marstat;
                            var seabuse;
                            var locexam="";
                            var check_count=0;
                            if(document.update_adm_reg_fem.congenitalAnomalies[0].checked == true )
                              {
                                 conano = document.update_adm_reg_fem.congenitalAnomalies[0].value;
                              }
                            else
                              {
                                  conano = document.update_adm_reg_fem.congenitalAnomalies[1].value;
                              }
                            if(document.update_adm_reg_fem.phyHandicap[0].checked == true )
                              {
                                 phyhan = document.update_adm_reg_fem.phyHandicap[0].value;
                              }
                            else
                              {
                                  phyhan = document.update_adm_reg_fem.phyHandicap[1].value;
                              }
                            if(document.update_adm_reg_fem.mentalHand[0].checked == true )
                              {
                                 menhan = document.update_adm_reg_fem.mentalHand[0].value;
                              }
                            else
                              {
                                  menhan = document.update_adm_reg_fem.mentalHand[1].value;
                              }
                            if(document.update_adm_reg_fem.caseOfFits[0].checked == true )
                              {
                                 fits_case = document.update_adm_reg_fem.caseOfFits[0].value;
                              }
                            else
                              {
                                  fits_case = document.update_adm_reg_fem.caseOfFits[1].value;
                              }
                            if(document.update_adm_reg_fem.histCommunicableDisease[0].checked == true )
                              {
                                 commd_hist = document.update_adm_reg_fem.histCommunicableDisease[0].value;
                              }
                            else
                              {
                                  commd_hist = document.update_adm_reg_fem.histCommunicableDisease[1].value;
                              }
                            if(document.update_adm_reg_fem.bodyPains[0].checked == true )
                              {
                                 body_pains = document.update_adm_reg_fem.bodyPains[0].value;
                              }
                            else
                              {
                                  body_pains = document.update_adm_reg_fem.bodyPains[1].value;
                              }
                            if(document.update_adm_reg_fem.fever[0].checked == true )
                              {
                                 fever = document.update_adm_reg_fem.fever[0].value;
                              }
                            else
                              {
                                  fever = document.update_adm_reg_fem.fever[1].value;
                              }
                            if(document.update_adm_reg_fem.vomiting[0].checked == true )
                              {
                                 vomiting = document.update_adm_reg_fem.vomiting[0].value;
                              }
                            else
                              {
                                  vomiting = document.update_adm_reg_fem.vomiting[1].value;
                              }
                            if(document.update_adm_reg_fem.phyAppear[0].checked == true )
                              {
                                 phyapp = document.update_adm_reg_fem.phyAppear[0].value;
                              }
                            else
                              {
                                  phyapp = document.update_adm_reg_fem.phyAppear[1].value;
                              }
                            if(document.update_adm_reg_fem.drugAddiction[0].checked == true )
                              {
                                 drug_addiction = document.update_adm_reg_fem.drugAddiction[0].value;
                              }
                            else
                              {
                                  drug_addiction = document.update_adm_reg_fem.drugAddiction[1].value;
                              }
                            if(document.update_adm_reg_fem.anemic[0].checked == true )
                              {
                                 anemic = document.update_adm_reg_fem.anemic[0].value;
                              }
                            else
                              {
                                  anemic = document.update_adm_reg_fem.anemic[1].value;
                              }
                            if(document.update_adm_reg_fem.heartChd[0].checked == true )
                              {
                                 heart_chd = document.update_adm_reg_fem.heartChd[0].value;
                              }
                            else
                              {
                                  heart_chd = document.update_adm_reg_fem.heartChd[1].value;
                              }
                            if(document.update_adm_reg_fem.murmur[0].checked == true )
                              {
                                 heart_murmur = document.update_adm_reg_fem.murmur[0].value;
                              }
                            else
                              {
                                  heart_murmur = document.update_adm_reg_fem.murmur[1].value;
                              }
                            if(document.update_adm_reg_fem.heartSounds[0].checked == true )
                              {
                                 heart_sounds = document.update_adm_reg_fem.heartSounds[0].value;
                              }
                            else
                              {
                                  heart_sounds = document.update_adm_reg_fem.heartSounds[1].value;
                              }
                            if(document.update_adm_reg_fem.chestAbnormal[0].checked == true )
                              {
                                 chest_abnor = document.update_adm_reg_fem.chestAbnormal[0].value;
                              }
                            else
                              {
                                  chest_abnor = document.update_adm_reg_fem.chestAbnormal[1].value;
                              }
                            if(document.update_adm_reg_fem.crepts[0].checked == true )
                              {
                                 lungs_crepts = document.update_adm_reg_fem.crepts[0].value;
                              }
                            else
                              {
                                  lungs_crepts = document.update_adm_reg_fem.crepts[1].value;
                              }
                            if(document.update_adm_reg_fem.lungsBea[0].checked == true )
                              {
                                 lungs_bae = document.update_adm_reg_fem.lungsBea[0].value;
                              }
                            else
                              {
                                  lungs_bae = document.update_adm_reg_fem.lungsBea[1].value;
                              }
                            if(document.update_adm_reg_fem.parabdomenOrg[0].checked == true )
                              {
                                 parabdomen = document.update_adm_reg_fem.parabdomenOrg[0].value;
                              }
                            else
                              {
                                  parabdomen = document.update_adm_reg_fem.parabdomenOrg[1].value;
                              }
                              if(document.update_adm_reg_fem.maritalStatus[0].checked == true )
                              {
                                 marstat = document.update_adm_reg_fem.maritalStatus[0].value;
                              }
                            else
                              {
                                  marstat = document.update_adm_reg_fem.maritalStatus[1].value;
                              }
                            if(document.update_adm_reg_fem.sexualAbuse[0].checked == true )
                              {
                                 seabuse = document.update_adm_reg_fem.sexualAbuse[0].value;
                              }
                            else
                              {
                                  seabuse = document.update_adm_reg_fem.sexualAbuse[1].value;
                              }
                            for( i = 0; i < document.update_adm_reg_fem.localexam.length; i++ )
                            {
                              if(document.update_adm_reg_fem.localexam[i].checked == true )
                              {
                                if(check_count==0)
                                {
                                  locexam = locexam+document.update_adm_reg_fem.localexam[i].value;
                                  check_count=1;
                                }
                                else
                                {
                                   locexam = locexam+" , "+document.update_adm_reg_fem.localexam[i].value;
                                }
                              }
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
                            $("#upda_adm_reg_mar_stat_span").html(marstat);
                            $("#upda_adm_reg_att_menar_span").html(att_menar);
                            $("#upda_adm_reg_memar_age_span").html(val_agemenar);
                            $("#upda_adm_reg_lmp_span").html(document.update_adm_reg_fem.lmp_temp.value.toString());
                            $("#upda_adm_reg_exter_fin_span").html(document.getElementById('upda_adm_reg_extfindings').value.toString());
                            $("#upda_adm_reg_seabuse_span").html(seabuse);
                            $("#upda_adm_reg_loc_fin_span").html(locexam);
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
                            $("#upda_adm_reg_doctors_sugg_span").html(document.getElementById('upda_adm_reg_doctors_sugg').value.toString());
                            document.getElementById('dialog-form_update_adm_reg_fem').style.visibility='visible';
                            $('#dialog-form_update_adm_reg_fem').dialog('open');
	            return false;
                        }
	        });
	});


