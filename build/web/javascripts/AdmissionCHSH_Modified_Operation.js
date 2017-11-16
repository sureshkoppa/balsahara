/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

var formActivity = {
    
     /*function declearation START*/
    getHomesListInADistrict:function(districtId){
       $.ajax({
          url:'CW-Discharge-FetchHomesMap-JSON',
          type:'POST',
          data:{'userDistrictId':districtId},
          dataType:'json',
          success:function(result){              
              //alert(result);
              formActivity.populateASelectBoxWithJson(result);
              
          },
          error:function(result){
              alert('error '+result);
          }
      });
   },
   
   getChilrenListInAHome:function(homeId){
       $.ajax({
          url:'CW-Active-ChildList-InHome-JSON',
          type:'POST', 
          data:{'homeId':homeId},
          dataType:'json',
          success:function(result){              
              //alert(result);
              console.log(result);
              formActivity.populateASelectBoxWithJson2(result);
              
          },
          error:function(result){
              alert('error '+result);
          }
      });
   },
    /*function declearation END*/
    
    getAdmissionCHSHDTO:function(transChildId){
        
        console.log('*******************> '+transChildId);
        
       $.ajax({
          url:'CW-Existing-AdmissiontoCHSHDTO',
          type:'POST', 
          data:{'transChildId':transChildId},
          dataType:'json',
          success:function(result){              
              //alert(result);
              result.transChildId = transChildId;
              result.dateTimeAdm  = "";
              console.log('result.transChildId ----------- '+result.transChildId);
              //formActivity.populateASelectBoxWithJson2(result);
              formActivity.populateFormData(result);
          },
          error:function(result){
              alert('error '+result);
          }
      });
   },
   
   populateFormData:function(jsonData){
       
       // reset form values from json object
$.each(jsonData, function(name, val){
    var $el = $('[name="'+name+'"]'),
        type = $el.attr('type');
        
        //console.log($el.html()+' --- '+type);
        
    
    switch(type){
        case 'checkbox':
            $el.attr('checked', 'checked');
            break;
        case 'radio':
            $el.filter('[value="'+val+'"]').attr('checked', 'checked');
            break;
        default:
            $el.val(val);
    }
    
});
       
   },
    
    
    populateASelectBoxWithJson:function(jsonData){
        $("#homeId option").slice(1).remove(); 
        //console.log('inside populateASelectBoxWithJson '+jsonData);        
        var result = $.parseJSON(JSON.stringify(jsonData, undefined, 2));        
        //console.log('inside populateASelectBoxWithJson '+result);
        $.each(result, function(k, v) {
        //display the key and value pair
        
        
        $('#homeId')
                   .append($("<option/>",{
                       value:k,
                       text:v
                   }));
});
        
    },
    
       populateASelectBoxWithJson2:function(jsonData){
        $("#transChildId-sel option").slice(1).remove(); 
        console.log('inside populateASelectBoxWithJson '+jsonData);        
        var result = $.parseJSON(JSON.stringify(jsonData, undefined, 2));        
        console.log('inside populateASelectBoxWithJson '+result);
        $.each(result, function(k, v) {
        //display the key and value pair
        console.log(v.childProfileId+' --- '+v.childName);
        
        $('#transChildId-sel')
                   .append($("<option/>",{
                       value:v.childProfileId,
                       text:v.childName
                   }));
});
        
    }
    
    
    
    
};

$(function(){
   
   console.log('operation code ready');
   
   //hide the divs
   $('#profileSelection').css('display','none');
   $('#CHSHAdmission').css('display', 'none');
   
   //hide conditional columns
    $('#nameAuthPer,#nameAuthPer_td')
                               .attr('disabled', true)
                               .hide();
               $('#previousObservationHome,#previousObservationHome_td')
                                           .attr('disabled',true)
                                           .hide();
   
   
   
   $('#districtId').change(function(){
       
       console.log('------->'+$(this).val());
       
       formActivity.getHomesListInADistrict($(this).val());
   });
   
   $('#homeId').change(function(){
       
       console.log('------->'+$(this).val());
       
       formActivity.getChilrenListInAHome($(this).val());
   });
   
   $('#transChildId-sel').change(function(){
       
       $('#transChildId_tosave').val($(this).val());
       console.log('------->'+$('#transChildId_tosave').val());
       
       formActivity.getAdmissionCHSHDTO($(this).val());
   });
   
   $('input:radio[name=disabled]').click(function(){
        var val = $('input:radio[name=disabled]:checked').val();
       //console.log('------> '+val);
       if(val === 'Y')
           $('#natureDisability').attr('disabled', false);
       else
           $('#natureDisability').attr('disabled', true);
       
   });

   $('#admThrough').change(function(){
        var val = $(this).val();
       console.log('------> '+val);
       if(val === 'AuthorizedPerson')
           {
               $('#nameAuthPer,#nameAuthPer_td')
                            .attr('disabled', false)
                            .show();
                            
               $('#previousObservationHome,#previousObservationHome_td')
                                      .attr('disabled',true)
                                      .hide();              
           }                
       else if(val === 'previousObservationHome')
           {
          $('#previousObservationHome,#previousObservationHome_td')
                                      .attr('disabled',false)
                                      .show();
                                      
          $('#nameAuthPer,#nameAuthPer_td')
                            .attr('disabled', true)
                            .hide();                            
           }
       else
           {
               $('#nameAuthPer,#nameAuthPer_td')
                               .attr('disabled', true)
                               .hide();
               $('#previousObservationHome,#previousObservationHome_td')
                                           .attr('disabled',true)
                                           .hide();
                                           
           }
           
       
   });
   
   $('#previousObservationHome').change(function(){
      var val= $(this).val();
      if(val !== 'NA')
          {
              $('#nameAuthPer').val(val);
              $('#nameAuthPer').attr('disabled',false);
          }
      
   });
   
   $('input:radio[name=admissionType]').click(function(){
        var val = $('input:radio[name=admissionType]:checked').val();
       
       try {
            if(val === 'direct')
           {
             console.log('in direct '+$('#dataEntry').html());
             $('#profileSelection').slideUp("fast");
             $('#CHSHAdmission').slideDown("fast");
             //$('#dataEntry').css('display','block');
             //$('#profileSelection').slideUp('fast');
             
           }
           else if(val === 'transfer')
           {
               console.log('in transfer');
               $('#profileSelection').slideDown("fast");
               $('#CHSHAdmission').slideDown("fast");
             //$('#profileSelection').css('display','block');
             //$('#dataEntry').slideUp("fast");  
           }        
        } catch (exception) { 
         alert(exception);
        }

          
       
       
   });
   
   //auto complete fields
   $( "#provisionLaw" ).autocomplete({
                                     source:'CW-Get-Distinct-Values-Start-Pattern-JSON?distinctParm=provisionLaw',
                                     minLength: 1
                                     })
                                     .focus(function(){                                     
                                     $(this).autocomplete("search", "");
                                     });
   
   $( "#subcaste" ).autocomplete({
                                     source:'CW-Get-Distinct-Values-Start-Pattern-JSON?distinctParm=subcaste',
                                     minLength: 1
                                     })
                                     .focus(function(){                                     
                                     $(this).autocomplete("search", "");
                                     });
                             
  $( "#fatherOccup" ).autocomplete({
                                     source:'CW-Get-Distinct-Values-Start-Pattern-JSON?distinctParm=fatherOccup',
                                     minLength: 1
                                     })
                                     .focus(function(){                                     
                                     $(this).autocomplete("search", "");
                                     });
                                     
 $( "#childNature" ).autocomplete({
                                   source:'CW-Get-Distinct-Values-JSON?distinctParm=childNature',
                                   minLength: 0
                                  })
                                  .focus(function(){
                                  $(this).autocomplete("search", "");
                                   });                                     
   
   
   
   
   
});

