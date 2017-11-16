/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*added by swetha for dynamic appearence of fields in Admission Medical Register*/
function admr_dynamic(field_val,disp_val)
   {
               var field = 0;
               var fieldval=document.getElementsByName(field_val);
               for( i = 0; i < document.getElementsByName(field_val).length; i++ )
               {
                  if(fieldval[i].checked == true )
                  {
                     field = fieldval[i].value;
                  }
               }
               if(field=="Y")
               {
                  document.getElementById(disp_val).style.visibility='visible';
               }
               if(field=="N")
               {
                   document.getElementById(disp_val).style.visibility='hidden';
               }
   }
   
   /*added by swetha for dyanamic appearence of fields in OP Register form*/
   function opreg_dynamic(value)
            {
              //alert("--- "+value);
              if(value!='1')
              {
                  //alert("--- "+value);
                  $( "#datepicker2,#datepicker3" ).datepicker("destroy");
                  document.getElementById('in').innerHTML=document.getElementById(value).innerHTML;
                  $( "#datepicker2,#datepicker3" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: true
		});
              }
              else
                  document.getElementById('in').innerHTML="";
            }

