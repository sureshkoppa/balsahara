

<%@taglib  uri="/struts-tags" prefix="s"%>

        <style>
            #main{
                margin: 3em ;
                text-align: center;
            }
            
            .resultDiv{
                width:20em;
                height:10em;
                background-color:  #CBE08F;
                border: 1px solid #0074AA;
                overflow-y: scroll;
                overflow-x: hidden;
                margin: 0 auto;
            }
            
           #searchResultDiv ul{
                list-style: none;
            }
            
           #searchResultDiv ul li{
                text-align: left;
                padding: 1px;
            }
            
            #searchResultDiv ul li:hover
            {
            background-color:#FFFFCC;
            border:1px dotted red;
            cursor:pointer;
            } 
            
            .detailsDiv{
                width:35em;
                height:auto;
                border-radius:5px;
                border: 1px solid #0074AA;
                /*overflow-y: scroll;
                overflow-x: scroll;*/
                margin: 0 auto;
            }
            
            #childProfileDiv table{
                width:25em;
                height:30em;
                margin:0 auto;
            }
            
        </style>    
   
    
        
        <div id="main">
      
        <div id="searchCriteriaDiv">
            Search By <s:select name="admSearchCriteria" id="admSearchCriteria"
                      list="#{'searchByDateDiv':'Dates','searchByNameDiv':'Name','searchByChildNatureDiv':'Child Nature','searchByCasteDiv':'Caste','searchByMonthDiv':'Month','searchByStatus':'Status '}"
                      headerKey="1" headerValue="-- Please Select --"                      
                      />
        </div>
        
        
        <div id="searchByDateDiv">            
            <s:form name="view_admission" theme="css_xhtml" id="view_admission">
                <s:hidden name="searchType" value="2dates" />
                From Date:</td><td><s:textfield name="admFromDate" type="text" readonly="true" id="datepicker"/>
                To Date:</td><td><s:textfield name="admToDate" type="text" readonly="true" id="datepicker1"/>
                <button type="submit" id="search">search</button>
            </s:form>            
        </div>
        
        <div id="searchByNameDiv">
            <s:form name="view_admission"  theme="css_xhtml" id="view_admission">
                <s:hidden name="searchType" value="childName" />
                Name:<s:textfield name="childName" id="childName"/>
                
                <button type="submit" id="search">search</button>
                <%--s:submit value="View" name="View" align="center" id="View"/--%>
            </s:form>            
            
            
        </div>
        
        <div id="searchByChildNatureDiv">
            
            <s:form name="view_admission" theme="css_xhtml" id="view_admission">
                <s:hidden name="searchType" value="childNature" />
                <s:select theme="css_xhtml" 
		headerKey="1" headerValue="-- Please Select --"
		list="{'Orphan','Semi Orphan','BPL'}" 
		name="childNature" id="childNature"/>
                
                <button type="submit" id="search">search</button>
            </s:form>            
            
        </div>
        
        <div id="searchByCasteDiv">
            
            <s:form name="view_admission"  theme="css_xhtml" id="view_admission">
                <s:hidden name="searchType" value="childCaste" />
                <s:select theme="css_xhtml" 
		headerKey="1" headerValue="-- Please Select --"
		list="{'SC','ST','BC','OC','Minority'}" 
		name="caste" id="caste"/>
                
                <button type="submit" id="search">search</button>
            </s:form>            
            
        </div>
        
        <div id="searchByMonthDiv">
            
            <s:form name="view_admission" theme="css_xhtml" id="view_admission">
                <s:hidden name="searchType" value="monthYear" />
                <s:select theme="css_xhtml" 
		headerKey="1" headerValue="-- Please Select --"
		list="#{'1':'JAN','2':'FEB','3':'MAR','4':'APR','5':'MAY','6':'JUN','7':'JUL','8':'AUG','9':'SEP','10':'OCT','11':'NOV','12':'DEC'}" 
		name="admMonth" id="admMonth"/>
                
                <s:select theme="css_xhtml" 
		headerKey="1" headerValue="-- Please Select --"
		list="#{}" 
		name="admYear" id="admYear"/>
                
                <button type="submit" id="search">search</button>
            </s:form>
        </div>
        
        <div id="searchByStatus">
            <s:form name="view_admission" theme="css_xhtml" id="view_admission">
            <s:hidden name="searchType" value="status" />
            <s:select theme="css_xhtml" 
        headerKey="1" headerValue="-- Please Select --"
        list="#{
               'active' :'Active children as on date',
               'inactive':'Inactive profiles(Old Records)', 
               'runaway':'Runaway children',
               'shortleave':'Children on Short Leave',
               'missing':'Missing Children',
               'residential':'Children in Residential School or College',               
               'transfer':'Transfered to other home',
               'otherstate':'Transfered to Other State',
               'ngo':'Transfered to NGO home'
               }" 
        name="status" id="status"/> <img src="./images/gif_new.gif"/>
            <button type="submit" id="search">search</button>
            </s:form>
        </div>
        
      
        
        
        <div class="resultDiv"  id="searchResultDiv">
            <ul id="searchResultList">
                
            </ul>
        </div>
        
        <div class="detailsDiv" id="childProfileDiv">
        <table border="1">
            <caption>Admission Details</caption>
         <tr><td colspan="2" align="center"><div id="childPhoto"></div></td></tr>   
         <tr> <td>Child Profile Id : </td> <td><label id="childProfileId"></label></td></tr>
         <tr> <td>Name of Child : </td> <td><label id="childName"></label></td></tr>
         <tr> <td>Date Of Admission : </td> <td><label id="dateTimeAdm"></label></td></tr>
         <tr> <td>Age : </td> <td><label id="age"></label></td></tr>
         <tr> <td>Gender : </td> <td><label id="gender"></label></td></tr>
         <tr> <td>Child Nature :</td> <td><label id="childNature"></label></td></tr>
         <tr> <td>Disabled :</td> <td><label id="disabled"></label></td></tr>
         <tr> <td>Nature of Disability :</td> <td><label id="natureDisability"></label></td></tr> 
         <tr> <td>CWC Order Number :</td> <td><label id="cwcJjbOrderNo"></label></td></tr>
         <tr> <td>Reason for admission :</td> <td><label id="reasonAdm"></label></td></tr>
         <tr> <td>Identification Mark :</td> <td><label id="identificationMarks"></label></td></tr>
         <tr> <td>Preliminary Enquiry Report :
                 <ol>
                                <li>Where was the child found.</li>
                                <li>Under what circumstances.</li>
                                <li>Words uttered by child repeatedly.</li>
                                <li>The language used by child.</li>
                 </ol>
                 
             </td> <td><label id="preEnqRept"></label></td></tr>         
         <tr> <td>Property Possessed :</td> <td><label id="propertyPossessed"></label></td></tr>
         <tr> <td>Active Status</td> <td><label id="status"></label></td></tr> 
         <tr> <td>Disposition Details :</td> <td><label id="dispositionDetails"></label></td></tr>
         <tr> <td>Profile Last Modified By :</td> <td><label id="lastModifiedBy"></label></td></tr>
         <tr> <td>Profile Last Modified On :</td> <td><label id="lastModifiedDate"></label></td></tr> 
         <!--tr> <td colspan="2"><button>print</button></td></tr-->
         </table> 
        </div>
        
        
        
        </div>  
       
        
        
        
  
