<%-- 
    Document   : viewCounselDetail
    Created on : 12 Mar, 2012, 1:29:23 PM
    Author     : suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<hr/>
 <s:iterator value="counsel_Child_Detail">
           
       <center>
            <table>   
                <tr><td><s:text name="package.label.couFormChProfId" />:</td><td><b><s:property value="childMaster.childProfileId" escape="false"/></b></td></tr>
                    
                <s:if test="%{counseling!=null}">
                     <tr><td><s:text name="package.label.couFormCounDate" />:</td><td> <s:date name="counselingDetailsPK.dateOfCouncil" format="dd/MM/yyyy"/></td></tr>
                      <s:if test="%{counseling!='O'}">
                      <tr><td><s:text name="package.label.couFormCounsel" />:</td><td><s:property value="counseling" escape="false"/></td></tr>
                      </s:if>
                      <s:else>
                       <tr><td><s:text name="package.label.couFormCounsel" />:</td><td> <s:property value="counselOthers" escape="false"/></td></tr>   
                     </s:else>
                       
                      <s:if test="%{psychotherapy!='others'}">
                      <tr><td><s:text name="package.label.couFormPsycho" />:</td><td> <s:property value="psychotherapy" escape="false"/></td></tr>
                      </s:if>
                      <s:else>
                       <tr><td><s:text name="package.label.couFormPsycho" />:</td><td> <s:property value="psychoOthers" escape="false"/></td></tr>   
                     </s:else>  
                       
                       
                 </s:if>
                 <s:elseif test="%{followupSession!=null}">
                     <tr><td><s:text name="package.label.couFormRepoDate" />:</td><td> <s:date name="counselingDetailsPK.dateOfCouncil" format="dd/MM/yyyy"/></td></tr>
                      
                      <tr><td><s:text name="package.label.couFormCaseImpress" />:</td><td> <s:property value="caseImpression" escape="false"/></td></tr>     
                      <tr><td><s:text name="package.label.couFormCurCaseSitu" />:</td><td> <s:property value="currentSitChild" escape="false"/></td></tr>
                      
                     
                 </s:elseif>
                <tr><td><s:text name="package.label.couFormCounForCh" />:</td><td> <s:property value="inmateCounsel" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormCounForPar" />:</td><td> <s:property value="parentCounsel" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormCounForSib" />:</td><td> <s:property value="siblingCounsel" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormCounForOth" />:</td><td> <s:property value="counselOthers" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormRefeOut" />:</td><td> <s:property value="refferedTo" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormRehabSer" />:</td><td> <s:property value="rehabilation" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormInstNamPla" />:</td><td> <s:property value="nameReferInst" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormSharByChild1" /><br/><s:text name="package.label.couFormSharByChild2" />:</td><td> <s:property value="sharingByChild" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormCounNotes" />:</td><td> <s:property value="counselorNotes" escape="false"/></td></tr>
                <tr><td><s:text name="package.label.couFormFollowUpDate" />:</td><td> <s:date name="followupDate" format="dd/MM/yyyy"/></td></tr>
               
            </table>
       </center>
                <hr/>
        </s:iterator>
       