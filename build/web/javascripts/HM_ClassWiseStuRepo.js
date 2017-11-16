/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
          $(document).ready(function(){
              
              /*Anupam code for event binding START*/
              $('#print_div span').bind('click', function() {
              //alert('User clicked on "foo."'+ $(this).attr('data-class'));
              //alert($('#schoolId_span').html());
              
              $.ajax({
                  url:'HM-SchoolwiseSchoolStudets-Show',
                  type:'POST',
                  data:{eduStatus:$(this).attr('data-class'),schoolIdString:$('#schoolId_span').html()},
                  dataType:'json',
                  success:function(result){
                      
                      //alert(result);
                      $('#classdetail').empty();
                  $("#StuList_sub").html("");
                  var rowCount1 = 0;
           for(i=0;i<result.length;i++)
               {
                 var row = StuList_sub.insertRow(rowCount1); 
                 
                 row.insertCell(0).innerHTML=result[i].profileId;      
                 row.insertCell(1).innerHTML=result[i].name;      
                 row.insertCell(2).innerHTML=result[i].course;      
               
                 rowCount1=rowCount1+1;
                 
               }               
               
               var htmlcontent=$("#AllStuInClass_details").html();
               
               
                   $('#classdetail').append(htmlcontent);
               
                                
              }
                  
              });
              
              
              });
              
    $('#schoolName1_span').bind('click', function() {
              //alert('User clicked on "foo."'+ $(this).attr('data-class'));
              
              
              $.ajax({
                  url:'HM-SchoolwiseVocationalStudets-Show',
                  type:'POST',
                  data:{schoolIdString:$('#schoolId1_span').html()},
                  dataType:'json',
                  success:function(result1){
                      
                      //alert(result);
                      $('#Vocationaldetail').empty();
                  $("#AllVocStuList_sub").html("");
                  var rowCount4 = 0;
           for(i=0;i<result1.length;i++)
               {
                 var row = AllVocStuList_sub.insertRow(rowCount4); 
                 
                 row.insertCell(0).innerHTML=result1[i].profileId;      
                 row.insertCell(1).innerHTML=result1[i].name;      
                 row.insertCell(2).innerHTML=result1[i].course;      
               
                 rowCount4=rowCount4+1;
                 
               }               
               
               var htmlcontent=$("#AllStuInVocational_details").html();
               
               
                   $('#Vocationaldetail').append(htmlcontent);
               
                                
              }
                  
              });
              
              
              });
              
              
              
             var searchForm = { // an object of contact form START

   container : $('#ClassWiseStuRepo_details'),

   config : {
    effect : 'toggle' ,//'slideToggle',
    speed : 'slow'//500
      
   },


  
  init:function(config){ //similer to constructor in oop
      

    $.extend(this.config,config); // over writing the defult object to custom config object at creation
    //console.log('this value inside init '+this);
    

           console.log('search form initialized');
           
  },

  show:function(){
      
        var cf = searchForm , 
            container=cf.container ,
            config = cf.config;
         
         if( container.is(':hidden') ){ //cheaking whether the container is already visible or not
          
         $("#ClassWiseStuRepo_details").draggable(); 
         container[config.effect](config.speed);
         cf.close.call(container);
          
         }
         
  },

  close:function(){
    //console.log('this value inside close '+this);
    //console.log('$(this) value inside close with '+contactForm.container);
           var $this = $(this);

           if( this.find('span.close').length ) return;
           $('<span class=close>Close[X]</span>')
           .prependTo(this)
           .bind('click',function(){
            console.log('this value inside close click event '+this);
            $this[searchForm.config.effect](searchForm.config.speed);
           })

  }

  
}; //search form ends 

var VocationalReportDiv = { // an object of contact form START

   container : $('#ClassWiseVocRepo_details'),

   config : {
    effect : 'toggle' ,//'slideToggle',
        speed : 'slow' //500
   },


  
  init:function(config){ //similer to constructor in oop
      

    $.extend(this.config,config); // over writing the defult object to custom config object at creation
    //console.log('this value inside init '+this);

           console.log('search form initialized');
           
  },

  show:function(){
      
        var cf = VocationalReportDiv , 
            container=cf.container ,
            config = cf.config;
         
         if( container.is(':hidden') ){ //cheaking whether the container is already visible or not

         container[config.effect](config.speed);
         cf.close.call(container);
          
         }
         
  },

  close:function(){
    //console.log('this value inside close '+this);
    //console.log('$(this) value inside close with '+contactForm.container);
           var $this = $(this);

           if( this.find('span.close').length ) return;
           $('<span class=close>Close[X]</span>')
           .prependTo(this)
           .bind('click',function(){
            console.log('this value inside close click event '+this);
            $this[VocationalReportDiv.config.effect](VocationalReportDiv.config.speed);
           })

  }

  
}; //search form ends       
         
            
            $('#classWiseStuReport').submit(function(e){
            //alert('clicked');
            
            $.ajax({
      url:'HM-ClassWiseStudentReport-Show',
      type:'POST',
      data:$('#classWiseStuReport').serialize(),
      dataType:'json',
      success:
          function(data){
          //alert('data = '+data);
          var htmlcontent;
          var typeOfEdu=data[0].schoolType;
          if((typeOfEdu=="inside school") || (typeOfEdu=="outside school"))
          {    
         
         //var link1 = 'HM-SchoolwiseSchoolStudets-Show?eduStatus=1st&schoolId='+data[0].schoolAllStandardPopulationDTOs[0].schoolId;
        
          //$('#dlink').attr('href', link1);
          //alert('--- '+ $('#dlink').attr('href'));
         
         
          //document.getElementById('schoolId_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].schoolId;
          document.getElementById('schoolType_span').innerHTML=data[0].schoolType;   
          document.getElementById('homeId_span').innerHTML=data[0].homeId;    
          document.getElementById('yearString_span').innerHTML=data[0].yearString;   
          document.getElementById('monthString_span').innerHTML=data[0].monthString;
          /*           
          document.getElementById('schoolName_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].schoolName;
          document.getElementById('studentsInStd1_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd1;
          document.getElementById('studentsInStd2_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd2;
          document.getElementById('studentsInStd3_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd3;
          document.getElementById('studentsInStd4_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd4;
          document.getElementById('studentsInStd5_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd5;
          document.getElementById('studentsInStd6_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd6;
          document.getElementById('studentsInStd7_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd7;
          document.getElementById('studentsInStd8_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd8;
          document.getElementById('studentsInStd9_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd9;
          document.getElementById('studentsInStd10_span').innerHTML=data[0].schoolAllStandardPopulationDTOs[0].studentsInStd10;
          */
         
         var classPopulationList = data[0].schoolAllStandardPopulationDTOs;
         
         
         var source   = $("#table-template").html();
         var template = Handlebars.compile(source);
         var html = template(classPopulationList);
         
         $("#classNoOfStu").empty().append(html);
         
        /* $.each(classPopulationList,function(i,val){
             console.log(i+'-------'+val.schoolName);
             $("#reportTable").append("<tr><th colspan=11>"+val.schoolName+"</th></tr>");
             $("#reportTable").append("<tr><td>"+val.studentsInStd1+"</td><td>"+val.studentsInStd2+"</td><td>"+val.studentsInStd3+"</td><td>"+val.studentsInStd4+"</td><td>"+val.studentsInStd5+"</td><td>"+val.studentsInStd6+"</td><td>"+val.studentsInStd7+"</td><td>"+val.studentsInStd8+"</td><td>"+val.studentsInStd9+"</td><td>"+val.studentsInStd10+"</td></tr>");
             
             
         });*/
         
         
          //htmlcontent=$("#ClassWiseStuRepo_details").html();
          $('#classdetail').empty();
          searchForm.show();
          }
          else if((typeOfEdu=="inside vocational") || (typeOfEdu=="outside vocational"))
          {
            //alert(typeOfEdu+data[0].homeId);
          document.getElementById('schoolId1_span').innerHTML=data[0].vocAllStdPopulationDTOs[0].schoolId;
          document.getElementById('schoolType1_span').innerHTML=data[0].schoolType;   
          document.getElementById('homeId1_span').innerHTML=data[0].homeId;    
          document.getElementById('yearString1_span').innerHTML=data[0].yearString;   
          document.getElementById('monthString1_span').innerHTML=data[0].monthString;
          document.getElementById('schoolName1_span').innerHTML=data[0].vocAllStdPopulationDTOs[0].schoolName;
          $("#VocStuList_sub").html("");
                  var rowCount3 = 0;
           for(i=0;i<data[0].vocAllStdPopulationDTOs[0].schoolSingleStdDTOs.length;i++)
               {
                 var row = VocStuList_sub.insertRow(rowCount3); 
                 
                 row.insertCell(0).innerHTML=data[0].vocAllStdPopulationDTOs[0].schoolSingleStdDTOs[i].courseName;      
                 row.insertCell(1).innerHTML=data[0].vocAllStdPopulationDTOs[0].schoolSingleStdDTOs[i].noOfStudents;      
               
                 rowCount3=rowCount3+1;
                 
               }
               
          $('#Vocationaldetail').empty();     
          VocationalReportDiv.show();  
          }
          else
          {
              alert(typeOfEdu);
            htmlcontent=$("#ClassWiseErrorRepo_details").html();
            
          }
          
          
          
        //alert('--- '+ $('#dlink').attr('href'));
        
        
        //alert('--- '+ $('#dlink').attr('href'));
        
           //var win = window.open('', '_blank', "menubar=1,resizable=1,height=750,width=600,scrollbars=1, status=yes");
           //alert($('head script:first-child').html());
           //win.document.write('<html><head><title>popup</title>');
	   //win.document.write('</head><body>');
          // win.document.write(htmlcontent);
	   //win.document.write('</body></html>');
	   //win.document.close();
           //win.document.write(htmlcontent);
	   
           
           //alert('hi '+$("#ClassWiseStuRepo_details").css('display'));
          //$("#ClassWiseStuRepo_details").css({'display':'visible'});
          //alert('hi '+$("#ClassWiseStuRepo_details").css('display'));
      }
    });
    
            
    e.preventDefault();
        });
        


});


