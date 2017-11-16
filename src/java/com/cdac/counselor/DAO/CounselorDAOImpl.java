/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.counselor.DAO;

import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.CounselingDetails;
import com.cdac.usermanagement.ORM.HomeMaster;
import java.util.ArrayList;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import java.util.List;

/**
 *
 * @author suresh
 */
public class CounselorDAOImpl implements CounselorDAO {
    private HibernateTemplate hibernateTemplate;
    public void setSessionFactory(SessionFactory sessionFactory){
      System.out.println("===sessionFactoyr===="+sessionFactory);

     this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    @Override
    public void saveCounselingDetails(CounselingDetails cd) {
       hibernateTemplate.save(cd);
    }

    @Override
    public List<CounselingDetails> getCounselingDetails(String view_counsel_profileId) {
        try {
              return (List<CounselingDetails>) hibernateTemplate.findByNamedQueryAndNamedParam("CounselingDetails.findByChildProfileId","childProfileId" , view_counsel_profileId);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
     
    }
    
    
    @Override
      public List<ChildMaster> fetchChildrenInAHome(String homeId) {
        System.out.println("in side counselor DAO::fetchChildsInHome");
        //throw new UnsupportedOperationException("Not supported yet.");
        List<ChildMaster> childList=new ArrayList<ChildMaster>();

        try {
            childList=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeId", "homeId", new HomeMaster(homeId));

        } catch (Exception e) {
            e.printStackTrace();
        }

     return childList;

    }

    public List<ChildMaster> fetchCounselChilds(String loggedInhome) {
        System.out.println("in side counselor DAO::fetchCounselChilds");
        //throw new UnsupportedOperationException("Not supported yet.");
        List<ChildMaster> childList=new ArrayList<ChildMaster>();

        try {
            childList=hibernateTemplate.find("SELECT distinct(c.childMaster) FROM CounselingDetails c WHERE c.childMaster.homeId.homeId = ?", loggedInhome);

        } catch (Exception e) {
            e.printStackTrace();
        }

     return childList;
    }
    
    
}
