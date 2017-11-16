/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-form_adm_reg_fem" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					if ( bValid ) {
                                            progressCircleShow2();
                                            document.adm_reg_fem.submit();
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

                $('form#adm_reg_fem').submit(function(){
                    var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
                    var att_menar;
                    var val_agemenar=parseInt($("#adm_reg_agemen").val());
                    if(document.adm_reg_fem.attainedMenarche[0].checked == true)
                    {
                       att_menar= document.adm_reg_fem.attainedMenarche[0].value;
                    }
                    else
                    {
                       att_menar= document.adm_reg_fem.attainedMenarche[1].value;
                    }
                    
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
                        else if((att_menar=="Y") && ($("#adm_reg_agemen").val().length<1))
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
                        else if((att_menar=="Y") && (document.adm_reg_fem.lmp_temp.value.toString().length<1))
                        {
                                $dialog.html("Sorry! Entered LMP Date is not valid");
                                $dialog.parent().addClass( "ui-state-error" );
                                $dialog.dialog('open');
                                return false;
                        }
                        else if($("#adm_reg_extfindings").val().length<1)
                        {
                            $dialog.html("Sorry! Entered External Findings is not valid");
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
                    else if(document.getElementById('adm_reg_doctors_sugg').value.toString().length<1)
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
                            if(document.adm_reg_fem.congenitalAnomalies[0].checked == true )
                              {
                                 conano = document.adm_reg_fem.congenitalAnomalies[0].value;
                              }
                            else
                              {
                                  conano = document.adm_reg_fem.congenitalAnomalies[1].value;
                              }
                            if(document.adm_reg_fem.phyHandicap[0].checked == true )
                              {
                                 phyhan = document.adm_reg_fem.phyHandicap[0].value;
                              }
                            else
                              {
                                  phyhan = document.adm_reg_fem.phyHandicap[1].value;
                              }
                            if(document.adm_reg_fem.mentalHand[0].checked == true )
                              {
                                 menhan = document.adm_reg_fem.mentalHand[0].value;
                              }
                            else
                              {
                                  menhan = document.adm_reg_fem.mentalHand[1].value;
                              }
                            if(document.adm_reg_fem.caseOfFits[0].checked == true )
                              {
                                 fits_case = document.adm_reg_fem.caseOfFits[0].value;
                              }
                            else
                              {
                                  fits_case = document.adm_reg_fem.caseOfFits[1].value;
                              }
                            if(document.adm_reg_fem.histCommunicableDisease[0].checked == true )
                              {
                                 commd_hist = document.adm_reg_fem.histCommunicableDisease[0].value;
                              }
                            else
                              {
                                  commd_hist = document.adm_reg_fem.histCommunicableDisease[1].value;
                              }
                            if(document.adm_reg_fem.bodyPains[0].checked == true )
                              {
                                 body_pains = document.adm_reg_fem.bodyPains[0].value;
                              }
                            else
                              {
                                  body_pains = document.adm_reg_fem.bodyPains[1].value;
                              }
                            if(document.adm_reg_fem.fever[0].checked == true )
                              {
                                 fever = document.adm_reg_fem.fever[0].value;
                              }
                            else
                              {
                                  fever = document.adm_reg_fem.fever[1].value;
                              }
                            if(document.adm_reg_fem.vomiting[0].checked == true )
                              {
                                 vomiting = document.adm_reg_fem.vomiting[0].value;
                              }
                            else
                              {
                                  vomiting = document.adm_reg_fem.vomiting[1].value;
                              }
                            if(document.adm_reg_fem.phyAppear[0].checked == true )
                              {
                                 phyapp = document.adm_reg_fem.phyAppear[0].value;
                              }
                            else
                              {
                                  phyapp = document.adm_reg_fem.phyAppear[1].value;
                              }
                            if(document.adm_reg_fem.drugAddiction[0].checked == true )
                              {
                                 drug_addiction = document.adm_reg_fem.drugAddiction[0].value;
                              }
                            else
                              {
                                  drug_addiction = document.adm_reg_fem.drugAddiction[1].value;
                              }
                            if(document.adm_reg_fem.anemic[0].checked == true )
                              {
                                 anemic = document.adm_reg_fem.anemic[0].value;
                              }
                            else
                              {
                                  anemic = document.adm_reg_fem.anemic[1].value;
                              }
                            if(document.adm_reg_fem.heartChd[0].checked == true )
                              {
                                 heart_chd = document.adm_reg_fem.heartChd[0].value;
                              }
                            else
                              {
                                  heart_chd = document.adm_reg_fem.heartChd[1].value;
                              }
                            if(document.adm_reg_fem.murmur[0].checked == true )
                              {
                                 heart_murmur = document.adm_reg_fem.murmur[0].value;
                              }
                            else
                              {
                                  heart_murmur = document.adm_reg_fem.murmur[1].value;
                              }
                            if(document.adm_reg_fem.heartSounds[0].checked == true )
                              {
                                 heart_sounds = document.adm_reg_fem.heartSounds[0].value;
                              }
                            else
                              {
                                  heart_sounds = document.adm_reg_fem.heartSounds[1].value;
                              }
                            if(document.adm_reg_fem.chestAbnormal[0].checked == true )
                              {
                                 chest_abnor = document.adm_reg_fem.chestAbnormal[0].value;
                              }
                            else
                              {
                                  chest_abnor = document.adm_reg_fem.chestAbnormal[1].value;
                              }
                            if(document.adm_reg_fem.crepts[0].checked == true )
                              {
                                 lungs_crepts = document.adm_reg_fem.crepts[0].value;
                              }
                            else
                              {
                                  lungs_crepts = document.adm_reg_fem.crepts[1].value;
                              }
                            if(document.adm_reg_fem.lungsBea[0].checked == true )
                              {
                                 lungs_bae = document.adm_reg_fem.lungsBea[0].value;
                              }
                            else
                              {
                                  lungs_bae = document.adm_reg_fem.lungsBea[1].value;
                              }
                            if(document.adm_reg_fem.parabdomenOrg[0].checked == true )
                              {
                                 parabdomen = document.adm_reg_fem.parabdomenOrg[0].value;
                              }
                            else
                              {
                                  parabdomen = document.adm_reg_fem.parabdomenOrg[1].value;
                              }
                            if(document.adm_reg_fem.maritalStatus[0].checked == true )
                              {
                                 marstat = document.adm_reg_fem.maritalStatus[0].value;
                              }
                            else
                              {
                                  marstat = document.adm_reg_fem.maritalStatus[1].value;
                              }
                            if(document.adm_reg_fem.sexualAbuse[0].checked == true )
                              {
                                 seabuse = document.adm_reg_fem.sexualAbuse[0].value;
                              }
                            else
                              {
                                  seabuse = document.adm_reg_fem.sexualAbuse[1].value;
                              }
                            for( i = 0; i < document.adm_reg_fem.localexam.length; i++ )
                            {
                              if(document.adm_reg_fem.localexam[i].checked == true )
                              {
                                if(check_count==0)
                                {
                                  locexam = locexam+document.adm_reg_fem.localexam[i].value;
                                  check_count=1;
                                }
                                else
                                {
                                   locexam = locexam+" , "+document.adm_reg_fem.localexam[i].value;
                                }
                              }
                            }
                            $("#adm_reg_profile_id_span").html($("#adm_reg_profile_id").val());
                            $("#adm_reg_adm_weight_span").html($("#adm_reg_adm_weight").val());
                            $("#adm_reg_adm_height_span").html($("#adm_reg_adm_height").val());
                            $("#adm_reg_conano_span").html(conano);
                            $("#adm_reg_conano_specify_span").html($("#adm_reg_conano_specify").val());
                            $("#adm_reg_phyhan_span").html(phyhan);
                            $("#adm_reg_phyhan_specify_span").html($("#adm_reg_phyhan_specify").val());
                            $("#adm_reg_menhan_span").html(menhan);
                            $("#adm_reg_menhan_specify_span").html($("#adm_reg_menhan_specify").val());$("#adm_reg_conano_span").html($("#adm_reg_conano").val());
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
                            $("#adm_reg_mar_stat_span").html(marstat);
                            $("#adm_reg_att_menar_span").html(att_menar);
                            $("#adm_reg_memar_age_span").html(val_agemenar);
                            $("#adm_reg_lmp_span").html(document.adm_reg_fem.lmp_temp.value.toString());
                            $("#adm_reg_exter_fin_span").html(document.getElementById('adm_reg_extfindings').value.toString());
                            $("#adm_reg_seabuse_span").html(seabuse);
                            $("#adm_reg_loc_fin_span").html(locexam);
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
                            $("#adm_reg_doctors_sugg_span").html(document.getElementById('adm_reg_doctors_sugg').value.toString());
                            document.getElementById('dialog-form_adm_reg_fem').style.visibility='visible';
                            $('#dialog-form_adm_reg_fem').dialog('open');
	            return false;
                        }
	        });
	});

