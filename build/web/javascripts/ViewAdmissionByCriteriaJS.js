
          $.fn.extend(
{
  yearpicker: function()
  {
    //  console.log('called');
    var select = $(this);
    //console.log('---'+select);
    var year = new Date().getFullYear();
    for (var i = -10; i < 11; i++)
    {
      var option = $('<option/>');
      var year_to_add = year + i;

      option.val(year_to_add).text(year_to_add);

      if (year == year_to_add)
      {
        option
          .css('font-weight', 'bold')
          .attr('selected', 'selected');
      }
     
      select.append(option);
    }
    //console.log(select);
  }
});

     
            
            (function(){ 
                
                var viewAdmissionForm = {
                    
                    reset:function(){
                $('#searchCriteriaDiv')
                                    .siblings('div')
                                    .css('display','none');
                                },
                    showSelectedDiv:function(divName){
                        
                     var div = $('#'+divName);
                     //console.log(div);
                     this.reset();
                     div.slideDown(200);
                     
                    },
                    
                    showSearchResult:function(result){
                        
                         var ul = $('#searchResultList');
                           
                           $('#searchResultList').empty();
                           
                           if(result.length === 0)
                               {
                                  $('#searchResultList')                                                       
                                                     .append('<li>Sorry !!! No Results Found.</li>'); 
                               }
                                   else{
                                       $.each(result, function(key, value){
                                      //console.log("---"+key, value);                         

                                         $('#searchResultList')                                                     
                                                     .append('<li data-childProfileId='+value.childProfileId+'>'+(key+1)+'. '+value.childName +'  (' +value.childProfileId +')</li>');

                                                                        }); 

                                   }
                                   
                                    $('#searchResultDiv').css("display","display")
                                                         .slideDown(200);
                                                         
                                  console.log($('#searchResultDiv#searchResultList li'));
                                  console.log($('#searchResultDiv li'));                       
                         
                        
                    },
                    
                    showChildDetails:function(result){
                    
                    var cpdivlabels = $('#childProfileDiv label');
                    
                    $.each(result, function(key, value){
                        //console.log("---"+key + "  "+cpdiv.children('#'+key).append(value));
                         $("#childProfileDiv #" + key)
                                     .empty()
                                     .append(document.createTextNode(value)); 
                                });
                   
                       $('#childProfileDiv').slideDown(2000);
                    
                    },
                    
                    search:function(form){
                        
                        console.log($('#searchResultList'));
                        
                        $.ajax({
                            url:'CW-JSON-ChildDTOs-Search',
                            type:'POST',
                            data:form.serialize(),
                            dataType:'json',
                           success:function(result){
                           console.log("Ajax request done ... result returned = "+result);                          
                           
                           viewAdmissionForm.showSearchResult(result);
                            
                           
                                                   }
                    });
                    },
                    
                    setImage:function(profileId){                        
                       
                        
                        var img = $("<img />").attr({
                            'src' : 'ImageAction?imageId='+profileId+'.jpg',
                            'alt' : 'Image Not Uploaded',
                            'width' : '160',
                            'height': '107'    
                        })
                        .load(function() {
                            if (!this.complete || typeof this.naturalWidth == "undefined" || this.naturalWidth == 0) {
                                alert('broken image!');                               
                                } else {
                                    $("#childPhoto").empty()
                                                    .append(img);
                                    }
                         });
                        
                        
                    },
                    
                    getChildDetails:function(profileId){
                     
                     console.log(profileId);
                     
                     $.ajax({
                            url:'CW-JSON-Child-Details',
                            type:'POST',                            
                            data:{profileId:profileId},
                            dataType:'json',
                           success:function(result){                        
                         viewAdmissionForm.setImage(profileId); //anupam added this 
                         viewAdmissionForm.showChildDetails(result);                            
                           
                                                   }
                    });
                    
                    }
                };
                
                
                
                
               
                
                
                
                //console.log($('#admYear'));
                $('#admYear').yearpicker();
                
                 viewAdmissionForm.reset();
                
               //console.log( $('#search'));
        
           
            
            
            
            $('#admSearchCriteria')
                                    .change(function(){
                                        
                                        console.log(this.value);
                                        
                                     viewAdmissionForm.showSelectedDiv(this.value);
                                        
                                    });
                                    
                //$('#search')
                $('button')
                         .click(function(e){
                             
                             var $this = $(this);
                             
                             var form = $this.parent('form');                             
                             
                             console.log(form);
                             
                             viewAdmissionForm.search(form);
                         e.preventDefault();
                                         });  
                                         
                                         
    $('#searchResultList')
                          .on('click','li' ,function() {
                           viewAdmissionForm.getChildDetails($(this).data('childprofileid'));
                      
                           });
      
     
     
                        
                       
                
            })();
          
          
