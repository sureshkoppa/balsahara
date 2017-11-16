/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    
    console.log("Validation ready");
    
    $( "#dialog:ui-dialog" ).dialog( "destroy" );

    $( "#dialog-form_CHSHAdmission_preview" ).dialog({
        autoOpen: false,
        height: 400,
        width: 350,
        modal: true,
        buttons: {
            "Submit": function() {
                var bValid = true;
                if ( bValid ) {
                    progressCircleShow2();
                    document.CHSHAdmission.submit();
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
//form#CHSHAdmission form.CHSHForm
    $('[id^=CHSHAdmission]').submit(function(){
        // var float_re = /^-{0,1}\d*\.{0,1}\d+$/;
        var char_only=/^[a-zA-Z]+$/;
        var Digits_only=/^[0-9]{1,2}$/;
        var datepattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/i;
         var specialchar= /^[^<>%$]*$/;
        
        /*
        if($("#transChildId").val()==1)
        {
            $dialog.html("Please select Transferred Child Profile ID");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        */
       try {
             if($("#childName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Child Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
          else if(!specialchar.test($("#childName").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Child Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#childSurname").val().length<1)
        {
            $dialog.html("Sorry! Please Enter child surname");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#childSurname").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Child Surname");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        
        else if($('input[name="gender"]:checked').length===0)
        {
            $dialog.html("Please Select Gender");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
           
        else if($("#identificationMarks").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Identification Marks ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#identificationMarks").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Identification marks");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        
        else if($("#age").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Age");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#age").val())))
        {

            $dialog.html("Sorry! only enter Age between 0-99");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
        
        else if($("#childNature").val().length<1)
        {
            $dialog.html("Please select the Child Nature");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }                    
                        
        else if(!specialchar.test($("#childNature").val()))
        {
            $dialog.html("Sorry! Special Characters are not allowed in Child Nature");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        /* else if(!specialchar.test($("#childNatureOthers").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Child Nature others");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }*/
            
        else if($('input[name="disabled"]:checked').length===0)
        {
            $dialog.html("Please Select whether the child is disabled or not");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }    
        
        else if($('input[name="disabled"]:checked').val()==='Y' && $("#natureDisability").val().length<1 )
        {
           
            $dialog.html("Please Enter Nature of Disability");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
     
      else if(!specialchar.test($("#natureDisability").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in nature of disability");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
     
      else if($("#religion").val()==1)
        {
            $dialog.html("Please select Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        /*                 
        else if($("#religion").val()=='Other' && $("religion_other").length<1)
        {
            $dialog.html("Please Specify the Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
            */
         else if(!specialchar.test($("#religion_other").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Specify the Religion");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
         else if($("#caste").val()==1)
        {
            $dialog.html("Sorry! Please Enter caste");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#caste").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in caste");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#subcaste").val().length<1)
        {
            $dialog.html("Sorry! Please Enter subcaste");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#subcaste").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in subcaste");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }      
        
         /*                      
        else if($("#datepicker").val().length<1)
        {
            //  alert($('input[name="disabled"]:checked').val());
            $dialog.html("Sorry! Please Enter Date of Birth  ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker").val())))
        {
            $dialog.html("Sorry! Entered Date of Birth is not Valid, format must be dd/mm/yyyy");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
           */             
                        
        else if($("#fatherName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter FatherName");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherName").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in FatherName");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
       /* else if((!char_only.test($("#fatherName").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Father's Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
        else if($("#fatherOccup").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Father's Occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#fatherOccup").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Father's occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
      /*  else if((!char_only.test($("#fatherOccup").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Father's Occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
                        
        else if($("#motherName").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Mother Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#motherName").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in MotherName");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
       /* else if((!char_only.test($("#motherName").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Mother Name");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
        else if($("#motherOccup").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Mother's occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#motherOccup").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in MotherOccupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
        /*else if((!char_only.test($("#motherOccup").val())))
        {

            $dialog.html("Sorry! special characters are not allowed in Mother's occupation");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }*/
        else if($("#noBrothers").val().length<1)
        {
            $dialog.html("Sorry! Please Enter No of Brothers");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#noBrothers").val())))
        {

            $dialog.html("Sorry! special characters are not allowed or entered data is worng in No of Brothers field");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#noSister").val().length<1)
        {
            $dialog.html("Sorry! Please Enter No of Sisters");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!Digits_only.test($("#noSister").val())))
        {

            $dialog.html("Sorry! special characters are not allowed or entered data is worng in No of Sisters field");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
                        
        else if($("#languagesKnown").val()==1)
        {
            $dialog.html("please select at least one language");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#addrParents").val().length<1)
        {
            $dialog.html("please Enter the Address");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#addrParents").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Address");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
         else if(!specialchar.test($("#intrRelatives").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Interested Relatives");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        else if($("#eduStatus").val().length<1)
        {
            $dialog.html("please Enter the Education Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#eduStatus").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Education Details");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#identifiedProblemsChild").val().length<1)
        {
            $dialog.html("please Enter the Child's Identified Problems");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#identifiedProblemsChild").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Identified Problems");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }      
        
        else if($("#admThrough").val()==1)
        {
            $dialog.html("please select Admitted by ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if($("#admThrough").val()=='AuthorizedPerson' && $("#nameAuthPer").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Name of the Authorized Person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
         else if(!specialchar.test($("#nameAuthPer").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Name of authorized person");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }      
        else if($("#cwcJjbOrderNo").val().length<1)
        {
            $dialog.html("Sorry! Please Enter CWC/JJB Order Number");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#cwcJjbOrderNo").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in CWC/JJB order number");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#datepicker1").val().length<1)
        {
            $dialog.html("Sorry! Please Enter CWC/JJB Order Date ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker1").val())))
        {
            $dialog.html("Sorry! Entered CWC/JJB Order Date is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
        else if($("#datepicker2").val().length<1)
        {
            //  alert($('input[name="disabled"]:checked').val());
            $dialog.html("Sorry! Please Enter Date of Admission");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        
        else if((!datepattern.test($("#datepicker2").val())))
        {
            $dialog.html("Sorry! Entered Date of Admission is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
        else if($("#propertyPossessed").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Details of property ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#propertyPossessed").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Details of property");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#provisionLaw").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Provision Law ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#provisionLaw").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Provision Law");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        
        else if($("#reasonAdm").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Reason for admission (incase of conflict with law)");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#reasonAdm").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Reason for admission (incase of conflict with law)");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        else if($("#periodStay").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Period of Stay");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#periodStay").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Period of Stay");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        } 
        /*
        else if($("#datepicker3").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Probable Date of discharge");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if((!datepattern.test($("#datepicker3").val())))
        {
            $dialog.html("Sorry! Entered Probable Date of discharge is not Valid");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        // alert($("#gender:checked").val());
        }
        */
        else if($("#recommCwc").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Recommendations of CWC ");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
           
           else if(!specialchar.test($("#recommCwc").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Recommendations of CWC");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }
        else if($("#recommCaseworker").val().length<1)
        {
            $dialog.html("Sorry! Please Enter Recommendations of CaseWorker");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
        }
        else if(!specialchar.test($("#recommCaseworker").val()))
        {

            $dialog.html("Sorry! Special Characters are not allowed in Recommendations of CaseWorker");
            $dialog.parent().addClass( "ui-state-error" );
            $dialog.dialog('open');
            return false;
          
        }  
        /*  
        else
        {    
            var languagesknown="";
            var lkcheck=0;//for removing comma occurance in languageesknown
                          
            for(var i=0;i<document.CHSHAdmission.languagesKnown.length;i++ )
            {
                if(document.CHSHAdmission.languagesKnown[i].selected){
                    if(lkcheck==0){
                        languagesknown =document.CHSHAdmission.languagesKnown[i].value;
                        lkcheck=1;
                    }
                    else{
                        languagesknown =languagesknown+','+document.CHSHAdmission.languagesKnown[i].value;
                    }
                                 
                }
                              
            }   
            
             var gender="";
                            
                            if(document.CHSHAdmission.gender[0].checked == true )
                              {
                                 gender = document.CHSHAdmission.gender[0].value;
                              }
                            else
                              {
                                  gender = document.CHSHAdmission.gender[1].value;
                              }
                              
                 var disability="";             
                               if(document.CHSHAdmission.disabled[0].checked == true )
                              {
                                 disability = document.CHSHAdmission.disabled[0].value;
                              }
                            else
                              {
                                  disability = document.CHSHAdmission.disabled[1].value;
                              }
            
        }*/
      $('input:submit').attr("disabled", true);
    //alert($('input:submit').attr("disabled"));      
    }
         catch (exception) { 
         
         alert("ERROR in JS "+ exception);
        }

         
        
    });
    
    
    /* $('input:submit').click(function(){
	      alert('submitted');
	       $('input:submit').attr("disabled", true);	
             });
    */
});




