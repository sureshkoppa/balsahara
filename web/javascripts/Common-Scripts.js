
/*-----Add row delete row code added by anupam START------------*/
function addRow(tableID) {
 
            var table = document.getElementById(tableID);
 
            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);
 
            var colCount = table.rows[0].cells.length;
 
            for(var i=0; i<colCount; i++) {
 
                var newcell = row.insertCell(i);
 
                newcell.innerHTML = table.rows[1].cells[i].innerHTML;
                //alert(newcell.childNodes);
                switch(newcell.childNodes[0].type) {
                    case "text":
                            newcell.childNodes[0].value = "";
                            break;
                    case "checkbox":
                            newcell.childNodes[0].checked = false;
                            break;
                    case "select-one":
                            newcell.childNodes[0].selectedIndex = 0;
                            break;
                }
            }
        }
 
        function deleteRow(tableID) {
            try {
            var table = document.getElementById(tableID);
            var rowCount = table.rows.length;
 
            for(var i=0; i<rowCount; i++) {
                var row = table.rows[i];
                var chkbox = row.cells[0].childNodes[0];
                if(null != chkbox && true == chkbox.checked) {
                    if(rowCount <= 1) {
                        alert("Cannot delete all the rows.");
                        break;
                    }
                    table.deleteRow(i);
                    rowCount--;
                    i--;
                }
 
 
            }
            }catch(e) {
                alert(e);
            }
        }
/*-----Add row delete row code added by anupam END------------*/


             function recv_purc(field)
             {
                
         
               if(field.value=="r")
               {
                  // alert(field);
                   document.getElementById("recv_purc_text").textContent = 'Received From*';
                   document.getElementById("in_let_text").textContent = 'Letter no*';
                   document.getElementById("in_let_datetext").textContent = 'Letter Date*';
                   
                //  document.getElementById(recv_div).style.visibility='visible';
               }
               if(field.value=="p")
               {
                  // alert(field);
                   document.getElementById("recv_purc_text").textContent = 'Purchased From*';
                   document.getElementById("in_let_text").textContent = 'Invoice No\\Purchase No*:';
                   document.getElementById("in_let_datetext").textContent = 'Invoice Date\\Purchase Date*:';
                   //document.getElementById(recv_div).style.visibility='hidden';
                  // document.getElementById(purc_div).style.visibility='visible';
               }
             }
        
            $(function() {
                    $( "#accordion" ).accordion({
                            //event: "mouseover",
                          //autoHeight: false
                          
                          autoHeight: false,
                          navigation: true,
                          collapsible: true
                          
                          

                    });
            });
	          
	$(function() {
		$( "#accordion1" ).accordion({
			event: "click",
                      autoHeight: false

		});
	});
	
            $(function() {
                    $( "#datepicker,#datepicker1,#datepicker2,#datepicker3,#datepicker4" ).datepicker({
                            showOn: "button",
                            buttonImage: "images/calendar.gif",
                            buttonImageOnly: true,
                            dateFormat: 'dd/mm/yy',
                            changeYear: true,
                            maxDate: new Date()
                    });
            });
	
        function enableme(val)
            {
                alert("hello");
                if(document.getElementById(val).selected.value=="Other"){
                    document.getElementById("religion_other").disabled=false;    
                }
                              
            }
           
           
            function casework_dynamic(field_val)
             {
               //var field = 0;
               var fieldval=field_val.options[field_val.selectedIndex].value;
               
               if(fieldval=="Other")
                   {
                     document.getElementById("religion_other").disabled=false;   
                       
                   }
                   else{
                       document.getElementById("religion_other").value="";
                       document.getElementById("religion_other").disabled=true;  
                       
             
                   }
             }
        
           
            function CH_other_dynamic(field_val,val1)
             {
               //var field = 0;
                var fieldval=field_val.options[field_val.selectedIndex].value;
             //  alert(fieldval);
               if(fieldval=="Others")
                    {
                     document.getElementById(val1+"_other").disabled=false;   
                       
                   }
                   else{
                        document.getElementById(val1+"_other").value="";
                       document.getElementById(val1+"_other").disabled=true;  
                       
             
                   }
             }
         
           function CH_Emp_dynamic(field_val)
             {
               // alert(val1);
               var fieldval=field_val.options[field_val.selectedIndex].value;
              // alert(fieldval);
               if(fieldval=="Others")
                    {
                     document.getElementById("detailsEmployment_other").disabled=false;   
                       
                   }
                   else{
                       document.getElementById("detailsEmployment_other").value="";
                       document.getElementById("detailsEmployment_other").disabled=true;  
                       
             
                   }
              
              
                    }
                    
         
            
            function CH_stay_dynamic(field_val,val1)
             {
               //var field = 0;
               var fieldval=field_val.options[field_val.selectedIndex].value;
               
               if(fieldval=="Others" || fieldval=="Guardians")
                    {
                     document.getElementById(val1+"_other").disabled=false;   
                       
                   }
                   else{
                       document.getElementById(val1+"_other").value="";
                       document.getElementById(val1+"_other").disabled=true;  
                       
             
                   }
             }
        
           
            function CH_Adol_drug_dynamic(field_val)
             {
               //var field = 0;
               var fieldval=field_val.options[field_val.selectedIndex].value;
                //var fieldval1=field_val.split(",");
              //  for(var i=0;i<fieldval1.length;i++)
                 //   {
                       // alert(fieldval1[i]);
                        
               //     }
              // alert(fieldval);
               if(fieldval=="Drug_abuse")
                    {
                     document.getElementById("habits_drug").disabled=false;   
                       
                   }
                   else{
                       document.getElementById("habits_drug").disabled=true;  
                       
             
                   }
             }
         
            
            function  CH_FamilyVehicle_dynamic(field_val)
             {
               //var field = 0;
               var fieldval=field_val.options[field_val.selectedIndex].value;
               
               if(fieldval=="four_wheeler")
                    {
                     document.getElementById("propertyFamilyVehicals_other").disabled=false;   
                       
                   }
                   else{
                       document.getElementById("propertyFamilyVehicals_other").selectedIndex='0';
                       document.getElementById("propertyFamilyVehicals_other").disabled=true;  
                       
             
                   }
             }
        
            
            function CH_brought_dynamic(field_val)
             {
               //var field = 0;
               var fieldval=field_val.options[field_val.selectedIndex].value;
               
               if(fieldval=="Guardians")
                    {
                     document.getElementById("parentRelation").disabled=false;   
                       
                   }
                   else{
                       document.getElementById("parentRelation").value=""; 
                       document.getElementById("parentRelation").disabled=true;  
                       
             
                   }
             }
        
            
            function casework_diabled(field_val)
             {
               //var field = 0;
               var fieldval=field_val.value;
               //alert(document.RHAdmission.natureDisability);
               if(fieldval=='Y')
                   {
                     //document.getElementById("natureDisability").disabled=false; 
                     document.RHAdmission.natureDisability.disabled=false;
                       
                   }
                   else{
                       //document.getElementById("natureDisability").disabled=true;
                       document.RHAdmission.natureDisability.value='';
                       document.RHAdmission.natureDisability.disabled=true;
                       
             
                   }
             }
         
            
            function casework1_diabled(field_val)
             {
               //var field = 0;
               var fieldval=field_val.value;
               //alert(document.RHAdmission.natureDisability);
               if(fieldval=='Y')
                   {
                     //document.getElementById("natureDisability").disabled=false; 
                     document.CHSHAdmission.natureDisability.disabled=false;
                       
                   }
                   else{
                       //document.getElementById("natureDisability").disabled=true;
                       document.CHSHAdmission.natureDisability.disabled=true;
                       
             
                   }
             }
        
           
            function casework_admthrough(field_val)
             {
               //var field = 0;
               var fieldval=field_val.value;
               //alert(document.RHAdmission.natureDisability);
               if(fieldval=='AuthorizedPerson')
                   {
                     //document.getElementById("natureDisability").disabled=false; 
                     document.RHAdmission.nameAuthPer.disabled=false;
                       
                   }
                   else{
                       //document.getElementById("natureDisability").disabled=true;
                         document.getElementById('nameAuthPer').value="";
                       document.RHAdmission.nameAuthPer.disabled=true;
                       
             
                   }
             }
       
           
            function casework_chadmthrough(field_val)
             {
               //var field = 0;
               var fieldval=field_val.value;
               //alert(document.RHAdmission.natureDisability);
               if(fieldval=='AuthorizedPerson')
                   {
                     //document.getElementById("natureDisability").disabled=false; 
                     document.CHSHAdmission.nameAuthPer.disabled=false;
                       
                   }
                   else{
                       //document.getElementById("natureDisability").disabled=true;
                        document.getElementById('nameAuthPer').value="";
                       document.CHSHAdmission.nameAuthPer.disabled=true;
                       
             
                   }
             }
       
            
            function casework_childnature(field_val)
             {
               //var field = 0;
               var fieldval=field_val.value;
               //alert(document.RHAdmission.natureDisability);
               if(fieldval=='Others')
                   {
                     //document.getElementById("natureDisability").disabled=false; 
                     document.RHAdmission.childNatureOthers.disabled=false;
                       
                   }
                   else{
                       //document.getElementById("natureDisability").disabled=true;
                       document.getElementById('childNatureOthers').value="";
                       document.RHAdmission.childNatureOthers.disabled=true;
                       //document.getElementById('childNatureOthers').value=="";
                       
             
                   }
             }
        
    function discharge_showDiv(val)
    {

    //alert('------>'+val.value);

    if(val.value=='transfer')
    {
    //document.getElementById('insertDiv').innerHTML=document.getElementById('transDiv').innerHTML;
    document.getElementById('transDiv').style.visibility='visible';
    document.getElementById('handDiv').style.visibility='hidden';
    }
    
    else if(val.value=='handover')
    {
        //document.getElementById('insertDiv').innerHTML=document.getElementById('handDiv').innerHTML;
        document.getElementById('handDiv').style.visibility='visible';
        document.getElementById('transDiv').style.visibility='hidden';

    }
        

    }


function showProgress(formName){

//alert('clicked');
var ele = document.getElementById(formName);

ele.innerHTML = "<img src='images/1.gif' height='100' weidth='100'/>"

}

                        function showProgressOnButton()
                        {
                        var but = document.getElementsByTagName('input');
                        var ele;



                        for(var i=but.length-1;i>=0;i--)
                        {

                                if(but[i].type == 'submit')
                                {
                                        ele = but[i];
                                        break;
                                }
                        }
                        alert(ele.type);
                        ele.type='image';
                        ele.src = '1.gif';
                        ele.height=50;
                        ele.weidth=50;
                        ele.disabled='true';
                        document.getElementById('progress').appendChild(ele);
 
                        

                        }
                        
                          function showProgressCircle(){
                              
                            //Create an input type dynamically.
                            var element = document.createElement("span");

                            //Assign different attributes to the element.
                            //element.setAttribute("type", "image");
                            element.setAttribute("src", "images/1.gif");
                            element.setAttribute("height", "5");
                            element.setAttribute("weight", "5");

                            var ele = document.getElementById("progress");
                         alert(ele);
                            //Append the element in page (in span).
                            ele.appendChild(element);
                          }
                          
                          function showProgWheel(){
                              
                              var ele = document.getElementById("progress");
                              //ele.style.class='progressCircle';
                              
                          }
                          
                          function progressCircleShow(){
                              
                              //create a new Div
                              var newdiv = document.createElement('div');
                              
                              newdiv.className='progressCircle';
                              
                              document.body.appendChild(newdiv); 
                              
                              
                          }
                          
                          function progressCircleShow2(){
                              
                              //create a new Div
                              var newdiv = document.createElement('div');
                              
                              newdiv.className='progressCircle2';
                              
                              document.body.appendChild(newdiv); 
                              
                              
                          }

