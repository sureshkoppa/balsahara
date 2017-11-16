/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.dpo.DAO;

import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildDetailsPK;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.ResultOfEnquery;
import com.cdac.usermanagement.ORM.SiChildDetails;
import com.cdac.usermanagement.ORM.SiChildhistoryDetails;
import com.cdac.usermanagement.ORM.SiFamily;
import com.cdac.usermanagement.ORM.SiFamilyDetails;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateTemplate;

/**
 *
 * @author Ramu Parupalli
 */
public class DpoDAOImpl implements DpoDAO{
 
    
    
    private HibernateTemplate hibernateTemplate;
    public void setSessionFactory(SessionFactory sessionFactory){
     this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }
    
    
    public List<DistrictMaster> getDistrictList() {
        //throw new UnsupportedOperationException("Not supported yet.");
        List<DistrictMaster> districtList=new ArrayList<DistrictMaster>();
        try{
         districtList=hibernateTemplate.find("from DistrictMaster");
            }
        catch(Exception e){
        e.printStackTrace();
        }
        return districtList;
    }

    public List<ChildMaster> getCallforDPOChildList(String homeid) {
        //throw new UnsupportedOperationException("Not supported yet.");
        List<ChildMaster> callfordpochildList=new ArrayList<ChildMaster>();
        try {
           //callfordpochildList=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByCallforDPOStatus", "homeId", new HomeMaster(homeid));
            
            //callfordpochildList=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByCallforDPOStatus", "homeId", hibernateTemplate.get(HomeMaster.class, homeid));
            callfordpochildList=hibernateTemplate.findByNamedQuery("ChildMaster.findByCallforDPOStatus") ;
            //String sql="FROM ChildMaster c  WHERE c.status = 'active' AND c.callfordpo = 'yes' AND c.homeId = '"+homeid+"'";
            //callfordpochildList=hibernateTemplate.find(sql);
            
           System.out.println("list retrived from subquery-------------------------------------------------> "+callfordpochildList.size());

        } catch (Exception e) {
            e.printStackTrace();
        }
        return callfordpochildList;
        
    }

    public ChildDetails getChildDetails(String childProfileId) {
      //  throw new UnsupportedOperationException("Not supported yet.");
       
         ChildDetails cd = null;
        try{
       cd=(ChildDetails)hibernateTemplate.findByNamedQueryAndNamedParam("ChildDetails.findByChildProfileId", "childProfileId", childProfileId).get(0);
          //cd=(ChildDetails)hibernateTemplate.findByNamedQueryAndNamedParam("ChildDetails.findByChildProfileId", "childProfileId", hibernateTemplate.get(ChildMaster.class, childProfileId)).get(0);  
        }
        catch(Exception e)
        {
         e.printStackTrace();
        }
        return cd;
      
        /*  ChildDetails cd =null;
        Session session=null;
        Transaction tx=null;
        SessionFactory sessioFactory=hibernateTemplate.getSessionFactory();
        session=sessioFactory.openSession(); 
            try {               
             tx=session.beginTransaction(); 
             //String sql= "SELECT {cd.*} FROM Child_Details cd  where cd.LAST_MODIFIED_DATE=(SELECT max(cd1.LAST_MODIFIED_DATE) FROM Child_Details cd1  WHERE cd1.CHILD_PROFILE_ID='" +childProfileId+"')";
String sql="SELECT * FROM Child_Details cd  where cd.LAST_MODIFIED_DATE=(SELECT max(cd1.LAST_MODIFIED_DATE) FROM Child_Details cd1  WHERE cd1.CHILD_PROFILE_ID='"+childProfileId+"')";
             /*
             Query q= session.createQuery(
                     "SELECT c from ChildDetails c Where c.childDetailsPK.lastModifiedDate =(select max(c1.childDetailsPK.lastModifiedDate) from ChildDetails c1 ) "
                                           );
              
              */
             //cd = (ChildDetails) q.uniqueResult();
      /*      Query q=session.createSQLQuery(sql).addEntity(ChildDetails.class);
           Object [] amount = (Object [])q.uniqueResult();
           System.out.println("-------------------------------------------------------------------- > > >"+amount[0]+"----"+amount[1]);
  
        } catch (Exception e) {
            e.printStackTrace();
        }
            finally
            {
            session.close();
            }
        
  
 
        return cd;*/
        
    }

    public String save(SiChildDetails siChildDetails) {
        //throw new UnsupportedOperationException("Not supported yet.");
        
        String result="error";
        try {            
            hibernateTemplate.save(siChildDetails);
            result="success";
        } catch (Exception e) {
            System.out.println("-------ERROR in save(SiChildDetails siChildDetails)-----");
            e.printStackTrace();
        }
        return result;
    }

    public List<String> getCallForDPOChildIdStringList(String homeid) {
        //throw new UnsupportedOperationException("Not supported yet.");
         List<String> callfordpochildIdList=new ArrayList<String>();
        try { 
            callfordpochildIdList=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByCallforDPOStatus", "homeId", hibernateTemplate.get(HomeMaster.class, homeid));
            
           System.out.println("list retrived from subquery-------------------------------------------------> "+callfordpochildIdList.size());

        } catch (Exception e) {
            e.printStackTrace();
        }
        return callfordpochildIdList;
    }

    public String saveSIFamilyDetails(SiFamilyDetails siFamilyDetails) {
        String result="error";
        try {
            hibernateTemplate.save(siFamilyDetails);
            result="success";
            
        } catch (Exception e) {
            e.printStackTrace();
             System.out.println("-------ERROR in saveSIFamilyDetails-----");
        }
        
        //throw new UnsupportedOperationException("Not supported yet.");
        return result;
        
        //throw new UnsupportedOperationException("Not supported yet.");
    }

    public String saveChildBackgroundDetails(SiFamily siFamily) {
       // throw new UnsupportedOperationException("Not supported yet.");
        
       String result="error";
        try {
            hibernateTemplate.save(siFamily);
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("-------ERROR in saveChildBackgroundDetails-----");
        }
        
        
        return result;
        
        //throw new UnsupportedOperationException("Not supported yet.");
    }

    public String saveChildHistory(SiChildhistoryDetails siChildhistoryDetails) {
      //  throw new UnsupportedOperationException("Not supported yet.");
        String result="error";
        try {
            hibernateTemplate.save(siChildhistoryDetails);
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("-------ERROR in saveChildHistory-----");
        }
        
        
        return result;
        
        
    }

    public String saveResultofEnquiry(ResultOfEnquery resultOfEnquery) {
       // throw new UnsupportedOperationException("Not supported yet.");
        
         String result="error";
        try {
            hibernateTemplate.save(resultOfEnquery);
            result="success";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("-------ERROR in saveResultofEnquiry-----");
        }
        
        
        return result;
    }
        
      //Added by vinumol
    public List<SiChildDetails> getSichildDetails(String childProfileId) 
    {
       // throw new UnsupportedOperationException("Not supported yet.");
        List<SiChildDetails> sicd=new ArrayList<SiChildDetails>();
        System.out.println("-------ChildprofileId-----"+childProfileId);
        try
        {
            String query = "SELECT s FROM SiChildDetails s WHERE s.siChildDetailsPK.lastModifiedDate ="+ 
"(SELECT max(s1.siChildDetailsPK.lastModifiedDate) from SiChildDetails s1 where s1.siChildDetailsPK.childProfileId='"+childProfileId+"')";
            
           sicd=hibernateTemplate.find(query);
           sicd.get(0).setChildMaster(null);
           sicd.get(0).setSiChildDetailsPK(null);
         //sicd=hibernateTemplate.findByNamedQueryAndNamedParam("SiChildDetails.findByChildProfileId", "childProfileId", childProfileId);  
        System.out.println("-------LISTin getSiChildDetails-----"+sicd.get(0).getChildName());
        }
        catch (Exception e) {
            e.printStackTrace();
            System.out.println("-------ERROR in getSiChildDetails-----");
            
        }
        return sicd;
    }

    public List<SiFamilyDetails> getSiChildFamilyDetails(String childProfileId) 
    {
      List<SiFamilyDetails> sifd=new ArrayList<SiFamilyDetails>();
      try
      {
          sifd=hibernateTemplate.findByNamedQueryAndNamedParam("SiFamilyDetails.findByChildProfileId","childProfileId", childProfileId);
      }
      catch (Exception e) 
      {
            e.printStackTrace();
            System.out.println("-------ERROR in getSiFamilyDetails-----");
            
      }
      return sifd;
    }

    public List<SiFamily> getSiChildFamily(String childProfileId) {
        List<SiFamily> sifamily=new ArrayList<SiFamily>();
        try
      {
          sifamily=hibernateTemplate.findByNamedQueryAndNamedParam("SiFamily.findByChildProfileId","childProfileId", childProfileId);
          sifamily.get(0).setSiFamilyPK(null);
          sifamily.get(0).setChildMaster(null);
      }
      catch (Exception e) 
      {
            e.printStackTrace();
            System.out.println("-------ERROR in getSiFamilyDetails-----");
            
      }
      return sifamily;
    }

    public List<SiChildhistoryDetails> getSiChildhistoryDetails(String childProfileId) {
         List<SiChildhistoryDetails> sihistory=new ArrayList<SiChildhistoryDetails>();
        try
      {
          sihistory=hibernateTemplate.findByNamedQueryAndNamedParam("SiChildhistoryDetails.findByChildProfileId","childProfileId", childProfileId);
          sihistory.get(0).setSiChildhistoryDetailsPK(null);
          sihistory.get(0).setChildMaster(null);
      }
      catch (Exception e) 
      {
            e.printStackTrace();
            System.out.println("-------ERROR in getSiFamilyHistoryDetails-----");
            
      }
      return sihistory;
    }

    public List<ResultOfEnquery> getSiResultOfEnquery(String childProfileId) {
        List<ResultOfEnquery> enquiry=new ArrayList<ResultOfEnquery>();
        try
      {
          enquiry=hibernateTemplate.findByNamedQueryAndNamedParam("ResultOfEnquery.findByChildProfileId","childProfileId", childProfileId);
          enquiry.get(0).setResultOfEnqueryPK(null);
          enquiry.get(0).setChildMaster(null);
      }
      catch (Exception e) 
      {
            e.printStackTrace();
            System.out.println("-------ERROR in getResultEnquiry-----");
            
      }
      return enquiry;
    }
        
    //ended by vinumol 
}
