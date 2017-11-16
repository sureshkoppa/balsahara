/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.su.Actions;

import com.cdac.su.DTO.CashDTO;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.dispatcher.StreamResult;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionContext;
import com.cdac.su.DTO.GenLedger;
import com.cdac.su.DTO.ChildStatusDTO;
import com.cdac.su.Service.SuperService;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author suresh
 */
public class AccountsAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,SessionAware {
        //ACCOUNTS start 
    public String csh_date;
    public String csh_amt;
    public String csh_part;
    public String csh_trans;
    public String csh_rptNo;
    public String csh_rptFrom;
    public String csh_pmtNo;
    public String csh_paidTo;
   
    private Map session;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private SuperService superService;
    
    
    public HttpServletResponse getResponse() {
        return response;
    }

    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }
    
     public HttpServletRequest getServletRequest() {
        return request;
    }

    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }
    
    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }
    
    public SuperService getSuperService() {
        return superService;
    }

    public void setSuperService(SuperService superService) {
        this.superService = superService;
    }

 
    public String getCsh_amt() {
        return csh_amt;
    }

    public void setCsh_amt(String csh_amt) {
        this.csh_amt = csh_amt;
    }

    public String getCsh_date() {
        return csh_date;
    }

    public void setCsh_date(String csh_date) {
        this.csh_date = csh_date;
    }

    public String getCsh_paidTo() {
        return csh_paidTo;
    }

    public void setCsh_paidTo(String csh_paidTo) {
        this.csh_paidTo = csh_paidTo;
    }

    public String getCsh_part() {
        return csh_part;
    }

    public void setCsh_part(String csh_part) {
        this.csh_part = csh_part;
    }

    public String getCsh_pmtNo() {
        return csh_pmtNo;
    }

    public void setCsh_pmtNo(String csh_pmtNo) {
        this.csh_pmtNo = csh_pmtNo;
    }

    public String getCsh_rptFrom() {
        return csh_rptFrom;
    }

    public void setCsh_rptFrom(String csh_rptFrom) {
        this.csh_rptFrom = csh_rptFrom;
    }

    public String getCsh_rptNo() {
        return csh_rptNo;
    }

    public void setCsh_rptNo(String csh_rptNo) {
        this.csh_rptNo = csh_rptNo;
    }

    public String getCsh_trans() {
        return csh_trans;
    }

    public void setCsh_trans(String csh_trans) {
        this.csh_trans = csh_trans;
    }
    
    
    
    public String saveCashTrans()
    {
        String homeid=ActionContext.getContext().getSession().get("homeid").toString();
                 if(superService.saveCashTrans(csh_date,csh_amt,csh_part,csh_trans,csh_rptNo,csh_rptFrom,csh_pmtNo,csh_paidTo,homeid))
                     return SUCCESS;
                 else
                     return ERROR;
                           
      
    }
    
    public  long ava_cash;

    

    public long getAva_cash() {
        return ava_cash;
    }

    public void setAva_cash(long ava_cash) {
        this.ava_cash = ava_cash;
    }
    
    
    
    public String showAvailCash()
    {
        String homeId=ActionContext.getContext().getSession().get("homeid").toString();
        setAva_cash(superService.showAvailCash(homeId));
        
        
        
        return SUCCESS;
    }
    
    private List<GenLedger> genLedger;

    public List<GenLedger> getGenLedger() {
        return genLedger;
    }

    public void setGenLedger(List<GenLedger> genLedger) {
        this.genLedger = genLedger;
    }
    
    private String gl_month;

    public String getGl_month() {
        return gl_month;
    }

    public void setGl_month(String gl_month) {
        this.gl_month = gl_month;
    }

     private String gl_year;

    public String getGl_year() {
        return gl_year;
    }

    public void setGl_year(String gl_year) {
        this.gl_year = gl_year;
    }

    
    public String showGenLedger()
    {
        String homeId=ActionContext.getContext().getSession().get("homeid").toString();
        
        List mon_list=new ArrayList();
        
        mon_list.add("January");mon_list.add("Feabuary");mon_list.add("March");
        mon_list.add("April");mon_list.add("May");mon_list.add("June");
        mon_list.add("July");mon_list.add("August");mon_list.add("September");
        mon_list.add("October");mon_list.add("November");mon_list.add("December");
        
        List<GenLedger> gl_list=superService.getGenLedgeList(gl_month,gl_year);
        
        System.out.println("in action------------>"+gl_list);
        
        for (int i = 0; i < gl_list.size(); i++) {
            GenLedger genLedger1 = gl_list.get(i);
            
            genLedger1.setMonth((String)mon_list.get(Integer.parseInt(genLedger1.getMonth())-1));
            
        }
        
        setGenLedger(gl_list);
        
        return SUCCESS;
        
    }
    
    private String ch_month;

    public String getCh_month() {
        return ch_month;
    }

    public void setCh_month(String ch_month) {
        this.ch_month = ch_month;
    }

    private String ch_year;

    public String getCh_year() {
        return ch_year;
    }

    public void setCh_year(String ch_year) {
        this.ch_year = ch_year;
    }

    
    private CashDTO chdto;

    public CashDTO getChdto() {
        return chdto;
    }

    public void setChdto(CashDTO chdto) {
        this.chdto = chdto;
    }
    
    public String showCashBook()
    {
    
       CashDTO chdto_l= superService.selCashBookFor(ch_month,ch_year);
       
        System.out.println("+++mon end bal---->"+chdto_l.getMonEnd_Bal());
        setChdto(chdto_l);

       return SUCCESS;
    }
}
