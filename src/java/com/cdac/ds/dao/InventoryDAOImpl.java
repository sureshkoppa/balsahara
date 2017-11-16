/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.ds.dao;


import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.DietChart;
import com.cdac.usermanagement.ORM.DietChartPK;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.IssueDetails;
import com.cdac.usermanagement.ORM.ItemMaster;
import com.cdac.usermanagement.ORM.ProductCatSubcat;
import com.cdac.usermanagement.ORM.HomeItemQoh;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.MenuDetail;
import com.cdac.usermanagement.ORM.MenuMaster;
import com.cdac.usermanagement.ORM.TransactionDetails;
import com.cdac.usermanagement.ORM.TransactionMaster;
import com.cdac.usermanagement.ORM.UserDetail;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
//import org.hibernate.HibernateException;
import java.util.Locale;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;


/**
 *
 * @author ksuresh
 */

public class InventoryDAOImpl implements InventoryDAO  {

    private HibernateTemplate hibernateTemplate;
    public void setSessionFactory(SessionFactory sessionFactory){
      System.out.println("===sessionFactoyr===="+sessionFactory);

     this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }
    
    //suresh added 13-01-2011 start
    public List<DistrictMaster> displayMap()
    {
       return hibernateTemplate.findByNamedQuery("DistrictMaster.findAll");
    }
    public List<ChildMaster> countChild_home(String home_id)
    {
       List<ChildMaster> c_list=hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeId","homeId",new HomeMaster(home_id));
       
       System.out.println("IN DAO------size-----"+home_id+"-----"+c_list.size());
       return c_list;
       
    }        
            
    public List<HomeMaster> populateDis_Home(DistrictMaster dis_id)
    {
        List<HomeMaster> homeMasters=null;
      //  System.out.println("inside List<HomeMaster> populateDis_Home---------------------------- "+dis_id);
        try {
           //homeMasters = hibernateTemplate.find("from HomeMaster hm where hm.districtId = :"+dis_id);
           homeMasters = hibernateTemplate.findByNamedQueryAndNamedParam("HomeMaster.findHomesInADistrict1","districtId", dis_id);
        } catch (Exception e) {
            System.out.println("ERROR EXECUTING HIBERNATE");
           e.printStackTrace(); 
        }
        
        //System.out.println("inside List<HomeMaster> populateDis_Home after query ----------------------------List= "+homeMasters);
        return homeMasters;
    }
    

    
    
    
    
    //suresh added 13-01-2011 end
    
    public boolean addCategory(ProductCatSubcat pcs)
      {
         try
         {
         hibernateTemplate.save(pcs);
            return true;
        }
         catch(Exception he)
         {
             he.printStackTrace();
             return false;
         }
     
     }
     public boolean removeCategory(int prodSubcatNo)
    {
        System.out.println("*****in dao class removecat enter*****"+prodSubcatNo);
        // boolean result=false;
        try{
         hibernateTemplate.delete(hibernateTemplate.get(ProductCatSubcat.class, prodSubcatNo));
       
        //System.out.println("deletion successful for prodsubcatno = "+prodSubcatNo);
        return true;
        }
        catch(Exception e){
        e.printStackTrace();
        
        return false;
        }

        

    }
    
    
    
      public ProductCatSubcat getProductCatSubcat(int prno) 
     {
          //return (ProductCatSubcat)hibernateTemplate.find("from ProductCatSubcat pcs where pcs.productSubcatNo="+prno).get(0);
         
        
         
         return (ProductCatSubcat)(hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByProductSubcatNo","productSubcatNo",prno).get(0));
         
     }
      public List<ProductCatSubcat> popTopCatByHomeId(int prno,HomeMaster hm) {
        System.out.println("*****in dao class populate cat enter*****");
        
        ProductCatSubcat pcs=new ProductCatSubcat(prno);
        
        String params[]={"productCatNo","homeId"};
        Object values[]={pcs,hm};
        
        return (List<ProductCatSubcat>) hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByProductSubcatNoAndHomeId", params, values);
        
    }
     public List<ProductCatSubcat> popCategoryByNo(int prno) {
        System.out.println("*****in dao class populate cat enter*****");
        
        ProductCatSubcat pcs=new ProductCatSubcat(prno);
        
        List<ProductCatSubcat> plist=(List<ProductCatSubcat>) hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByCatNo", "productCatNo", pcs);
         System.out.println("size cat---->"+plist.size());
        return  plist;
    }  

//    public List populate_top_cat() 
//    {
//       System.out.println("*****in dao class populate topcat enter*****");
//        
//        
//       // return hibernateTemplate.find("select productSubcatName from ProductCatSubcat pcs where productCatNo=1");
//       return hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByCatNo", "productCatNo", 1);
//    }
    public List findSubcatByNo(int catno)
    {
        //List l= hibernateTemplate.find("select pcs.productSubcatNo from ProductCatSubcat pcs where pcs.productCatNo="+catno);
        
        ProductCatSubcat pcs1=new ProductCatSubcat(catno);
        
        try {
            List<ProductCatSubcat> object =hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByCatNo", "productCatNo", pcs1);
        List<Integer> prSubcatNo=new ArrayList<Integer>();
        
        for(ProductCatSubcat pcs:object)
        {
            
            prSubcatNo.add(pcs.getProductSubcatNo());
        }
        
        return prSubcatNo;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
    }
    public List<Integer> findCatNoByName(String catname)
     {
           System.out.println("::in dao class find cat no by name::"+catname);
           
        try
        {
        List<ProductCatSubcat> object =hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByProductSubcatName", "productSubcatName", catname);
        List<Integer> prSubcatNo=new ArrayList<Integer>();
        
        for(ProductCatSubcat pcs:object)
        {
            prSubcatNo.add(pcs.getProductSubcatNo());
        }
             return prSubcatNo;
        }
        catch (Exception e) {
            e.printStackTrace();
            return null;
        }
       
          
          // return hibernateTemplate.find("select productSubcatNo from ProductCatSubcat pcs where pcs.productSubcatName=?",catname);
     }

     public String findCatNameByNO(int catno)
     {
         try
        {
        ProductCatSubcat object =(ProductCatSubcat)hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByProductSubcatNo", "productSubcatNo", catno).get(0);

        return object.getProductSubcatName();
        
        }
        catch (Exception e) {
            e.printStackTrace();
            return null;
        }
     }
   
      public int findCatNoByItemType(String itemType)
      {
        //return (Integer)hibernateTemplate.find("select pcs.productSubcatNo from ProductCatSubcat pcs where pcs.itemType='"+itemType+"'").get(0);
          return  ((ProductCatSubcat)hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByItemType", "itemType", itemType).get(0)).getProductSubcatNo();
        
     }
     
       /*Item related DAO methods*/
   public ItemMaster addItem(ItemMaster im)
    {
       System.out.println("*****in dao class additem enter*****");
      //  boolean result = false;

         try
         {
            hibernateTemplate.save(im);
            
             //System.out.println("im--->"+im.getItemNo());
            return im;
        }
         catch(Exception he)
         {
             he.printStackTrace();
            return null;
         }
        //return result;
    }
  
//   public List populate_item(String catselect)
//    {
//        int prno=Integer.parseInt(hibernateTemplate.find("select productSubcatNo from ProductCatSubcat pcs where pcs.productSubcatName='"+catselect+"'").get(0).toString());
//        System.out.println("prno====in  populate item=========for sel category"+prno);
//        return hibernateTemplate.find("select im.itemName from ItemMaster im where im.itemMasterPK.productSubcatNo="+prno);
//
//    }
    
    //(used only for rice)
      public ItemMaster findItemNoByName(String itemName)
     {
        //Object i=hibernateTemplate.find("select itemNo from ItemMaster im where im.itemName='"+itemName+"'").get(0);   
         try
         {
        return (ItemMaster) hibernateTemplate.findByNamedQueryAndNamedParam("ItemMaster.findByItemName", "itemName", itemName).get(0) ;
         }
         catch(IndexOutOfBoundsException ae)
         {
             return null;
         }
       
     }

    
  
   
    
//    public List populate_item()
//    {
//        return hibernateTemplate.find("select im.itemName from ItemMaster im");
//    }
    
    public List<ItemMaster> populate_itemDetails(int catselect)
    {
     //   int prno=Integer.parseInt(hibernateTemplate.find("select productSubcatNo from ProductCatSubcat pcs where pcs.productSubcatName='"+catselect+"'").get(0).toString());
      //  System.out.println("prno====in  populate item details=========for sel category"+prno);
       // return hibernateTemplate.findByNamedQueryAndNamedParam("ItemMaster.findByProductSubcatNo", "productSubcatNo", Integer.toString(prno));
        
       // return hibernateTemplate.find("SELECT i FROM ItemMaster i WHERE i.productSubcatNo = "+catselect);
        
        
        ProductCatSubcat pcs=new ProductCatSubcat(catselect);
        
        return hibernateTemplate.findByNamedQueryAndNamedParam("ItemMaster.findByProductSubcatNo", "productSubcatNo", pcs);

    }
    public boolean removeItemList(List itemNoList)
    {
        System.out.println("***in dao ***remove item list***"+itemNoList);
        for(Object im : itemNoList)
        {
            String itemno=(String)im;
            System.out.println("***in dao ***remove item list***itemNo=**"+itemno);
            
            hibernateTemplate.delete(getItem(itemno));
        }
            
        return true;
    } 
     public ItemMaster getItem(String itemNo) {
        //throw new UnsupportedOperationException("Not supported yet.");
        ItemMaster itemMaster=null;
        try {
          // itemMaster =(ItemMaster)hibernateTemplate.find("from ItemMaster im where im.itemNo="+Integer.parseInt(itemNo)).get(0);
            itemMaster =(ItemMaster)hibernateTemplate.findByNamedQueryAndNamedParam("ItemMaster.findByItemNo", "itemNo", Integer.parseInt(itemNo)).get(0);
           return itemMaster;
        } catch (Exception e) {
            System.out.println("-----------------ERROR IN getItem(itemNo) ------------itemNo="+itemNo);
            e.printStackTrace();
        }
        return itemMaster;
    } 
     
     public boolean saveRationIssue(ItemMaster im)
    {
         boolean result = false;

         try
         {
         hibernateTemplate.save(im);
            result=true;
        }
         catch(Exception he)
         {
             he.printStackTrace();
             result=false;
         }
        return result;
    } 
    public boolean saveBulkItemDetails(List<ItemMaster> itemBulk) {
        try{
        
         hibernateTemplate.saveOrUpdateAll(itemBulk);
        }catch(Exception e)
        {
            e.printStackTrace();
            return false;
        }
        
        return true;
    }  
     public List<ItemMaster> popItemsbyItemType(String str) {
            int catno=((ProductCatSubcat)hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByItemType", "itemType", str).get(0)).getProductSubcatNo();
        
              return hibernateTemplate.findByNamedQueryAndNamedParam("ItemMaster.findByProductSubcatNo", "productSubcatNo", catno);   
        
        
    }
    
//    public List<ProductCatSubcat> popCategoryByName(String cat) {
//        int prno=Integer.parseInt(hibernateTemplate.find("select productSubcatNo from ProductCatSubcat pcs where pcs.productSubcatName='"+cat+"'").get(0).toString());
//        System.out.println("prno====in  dao class populate cat by name=========for sel category"+prno);
//        
//        return hibernateTemplate.find("SELECT p FROM ProductCatSubcat p WHERE p.productCatNo = '"+Integer.toString(prno)+"'");
//         
//    }
   
//    public boolean removeItemByName(String itemName)
//    {
//        ItemMaster im=new ItemMaster();
//        int itemNo=((Integer)hibernateTemplate.find("select itemNo from ItemMaster im where im.itemName=?",itemName).get(0)).intValue();
//       // int prsubcatno
//        System.out.println("in dao:removeItemByName:item number"+itemNo);
//       // im.getItemMasterPK().setItemNo(Integer.toString(itemNo));
//                hibernateTemplate.delete(im);
//                return true;      
//
//    }
   public boolean saveHomeitemQoh(HomeItemQoh hiQoh) 
     {
       boolean result = false;

         try
         {
         hibernateTemplate.saveOrUpdate(hiQoh);
            result=true;
        }
         catch(Exception he)
         {
             he.printStackTrace();
             result=false;
         }
        return result;
    }
 
    public HomeItemQoh getHomeItemQoh(String home_id,int itemNo)
    {
        HomeItemQoh homeItemQOH=null;
        try {
          String[] paramNames={"homeId","itemNo"};
          Object[] values={home_id,itemNo};
             
          
          List hiqlist= hibernateTemplate.findByNamedQueryAndNamedParam("HomeItemQoh.findByHomeIdAndItemNo", paramNames, values); 
          //List hiqlist= hibernateTemplate.find("from HomeItemQoh im where im.homeItemQohPK.itemNo="+itemNo+" and im.homeItemQohPK.homeId='"+home_id+"'");
          
           if(hiqlist.size()!=0)
           {
           homeItemQOH =(HomeItemQoh)hiqlist.get(0);
           }
           
           //return homeItemQOH;
        } catch (Exception e) {
            System.out.println("-----------------ERROR IN getHomeItemQoh(String itemNo) ------------ ");
            e.printStackTrace();
        }
        return homeItemQOH;
        
    }
    
    public TransactionMaster saveTransMaster(TransactionMaster tm)
    {
        hibernateTemplate.saveOrUpdate(tm);
        
        return tm;
    }
     public boolean saveBulkTransdetails(List<TransactionDetails> tdbulk)
    {
        hibernateTemplate.saveOrUpdateAll(tdbulk);
        
        return true;
    }
     
      public boolean saveItemUserTrans(List<IssueDetails> isList)
      {
      try{
        
         hibernateTemplate.saveOrUpdateAll(isList);
        }catch(Exception e)
        {
            e.printStackTrace();
            return false;
        }
        
        return true;
    } 
    public boolean saveBulkDietChartDetails(List<DietChart> dietclartList) 
    {
       hibernateTemplate.saveOrUpdateAll(dietclartList);
       return true;
    } 
     public List<DietChart> findDietChart(String homeId) 
     {
         String  query = "SELECT d FROM DietChart d WHERE d.dietChartPK.bom = ? AND d.homeId.homeId=?";
         //return   hibernateTemplate.find("from DietChart dc where dc.dietChartPK.bom="+getMaxBOM());
         //return hibernateTemplate.findByNamedQueryAndNamedParam("DietChart.findByBom","bom" , getMaxBOMOfHome(homeId));
         return hibernateTemplate.find(query, new Object[]{getMaxBOMOfHome(homeId),homeId});
    } 
    
     public int getMaxBOMOfHome(String homeId)
     {
         
          List bomlist= hibernateTemplate.find("select max(dc.dietChartPK.bom) from DietChart dc where dc.homeId.homeId='"+homeId+"'");  
          
          //System.out.println("getMaxBOMOfHome()---->bomlist reurned"+bomlist.size());
          
          if(bomlist.get(0)==null)
          {
              return 0;
          }
          else
          {
              return (Integer)bomlist.get(0);
          }
    }  
     
      public double findBOMScale(HomeMaster hm,int itemno) {
        int max=getMaxBOMOfHome(hm.getHomeId());
        List list=new ArrayList();
        if(max!=0)
        {
            String[] paramNames={"itemNo","bom"};
            Object[] values = {itemno,max};
          //list=hibernateTemplate.find("select dc.scale from DietChart dc where dc.dietChartPK.itemNo="+itemno+" and dc.dietChartPK.bom="+max);
          list=hibernateTemplate.findByNamedQueryAndNamedParam("DietChart.findByBomAndItemNo", paramNames, values);
          
        }
         else
            return 0;
        
         if(list.size()>0)
         {
             return ((DietChart)list.get(0)).getScale();
         }
         else
             return 0;
    }
//    public boolean saveTransDetails(TransactionDetails td)
//    {
//        hibernateTemplate.save(td);
//        
//        return true;
//    }
   
 
//    public boolean incrementItem(List itemList, List<Double> quanList) {
//        for(int i=0;i<itemList.size();i++)
//        {
//            int itemNo=findItemNoByName((String)itemList.get(i));
//            ItemMaster im=getItem(Integer.toString(itemNo));
//            
//            
//            HomeItemQoh hiq=getHomeItemQoh("AP_ADI_RHB_01",itemNo);
//            
//            
//          //  System.out.println("-------------------item updaTE update--------------im = "+im);
//          //  System.out.println("-------------------quanList       -------------- quanList = "+quanList);
//            
//            
//            try{
//                float presentQoh=hiq.getQoh();
//                float inc=quanList.get(i).floatValue();
//              //  System.out.println("-------------------item updaTE update--------------present qoh = "+presentQoh);
//               // System.out.println("-------------------item updaTE update--------------inc by = "+inc);
//                float incQoh=presentQoh+inc;
//              //  System.out.println("-------------------item updaTE update--------------incQOH by = "+incQoh);
//                
//            hiq.setQoh(incQoh);
//            
//            hibernateTemplate.saveOrUpdate(im);
//            }
//            catch(Exception e)
//            {
//            System.out.println("-------------------Error in update--------------");
//            e.printStackTrace();
//            }
//            
//            
//            
//            //hibernateTemplate.find("update ItemMaster im set im.qoh=im.qoh+"+quanList.get(i) +" where im.itemNo='"+itemNo+"'");
//            
//            
//        }
//        return true;
//    }
//    public boolean decremrntItem(List itemList,List<Double> quanList){
//        for(int i=0;i<itemList.size();i++)
//        {
//            int itemNo=findItemNoByName((String)itemList.get(i));
//            ItemMaster im=getItem(Integer.toString(itemNo));
//            HomeItemQoh homeItemQoh= getHomeItemQoh("AP_ADI_RHB_01", itemNo) ;
//            
//          //  System.out.println("-------------------item updaTE update--------------im = "+im);
//          //  System.out.println("-------------------quanList       -------------- quanList = "+quanList);
//            
//            
//            try{
//                float presentQoh=homeItemQoh.getQoh();
//                float inc=quanList.get(i).floatValue();
//              //  System.out.println("-------------------item updaTE update--------------present qoh = "+presentQoh);
//               // System.out.println("-------------------item updaTE update--------------inc by = "+inc);
//                float incQoh=presentQoh-inc;
//              //  System.out.println("-------------------item updaTE update--------------incQOH by = "+incQoh);
//                
//            homeItemQoh.setQoh(incQoh);
//            
//            hibernateTemplate.saveOrUpdate(im);
//            }
//            catch(Exception e)
//            {
//            System.out.println("-------------------Error in update--------------");
//            e.printStackTrace();
//            }
//        }
//            return true;
//    }

//    public boolean incrementItem(List<HomeItemQoh> homeQuanList) {
//        
//        
//       try{ 
//       hibernateTemplate.saveOrUpdateAll(homeQuanList);
//       }
//       catch(Exception e)
//       {
//           return false;
//       }
//       return true; 
//    }
//
//    public boolean decrementItem(List<HomeItemQoh> homeQuanList) {
//           try{ 
//       hibernateTemplate.saveOrUpdateAll(homeQuanList);
//       }
//       catch(Exception e)
//       {
//           return false;
//       }
//       return true; 
//        
//    }

   

   
    public List populateUsersInHome(String homeid) {
       return (List<UserDetail>)hibernateTemplate.findByNamedQueryAndNamedParam("UserDetail.findByHomeIdAndActiveStatus","homeId",homeid);
       //(below is temporary purpose) 
      // return hibernateTemplate.find("select distinct ud.userMaster.userId from UserDetail ud where ud.userDetailPK.homeId='"+homeid+"'");
    }

    public List<ChildMaster> popChildsInHome(String homeid) {
       //  return hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByHomeId", "homeId", new HomeMaster(homeid)); 
        //(below is temporary purpose)
       return hibernateTemplate.find("from ChildMaster cm where cm.homeId.homeId='"+homeid+"'");
    }

  
      public int getMaxBOM()
     {
         
          List bomlist= hibernateTemplate.find("select max(dc.dietChartPK.bom) from DietChart dc");  
          
        //  System.out.println("bomlist reurned"+bomlist.size());
          
          if(bomlist.get(0)==null)
          {
              return 0;
          }
          else
          {
              return (Integer)bomlist.get(0);
          }
    }
   

       /*  public int populate_sub_catNo(String top_cat)
    {
    //    int prno=Integer.parseInt(hibernateTemplate.find("select productSubcatNo from ProductCatSubcat pcs where pcs.productSubcatName='"+top_cat+"'").get(0).toString());
      
        int prno=
        return prno;
    }*/

    public List<TransactionMaster> getTMBetweenDates(String homeId, Date fromDate, Date toDate,String type) {
        try{
            String paramNames[]={"homeId","fromDate","toDate","type"}; 
            HomeDetails hd=new HomeDetails(homeId);
            
            Object values[] = {hd,fromDate,toDate,type};
        
        
            List<TransactionMaster> tmList=hibernateTemplate.findByNamedQueryAndNamedParam("TransactionMaster.findTMbyDate", paramNames, values);
            
            System.out.println("trans DTO====getTMBetweenDates---->"+tmList);
            
            return tmList;
        }
            catch(Exception e)
            {
                e.printStackTrace();
                return null;
            }
        
    }

    public List<TransactionDetails> getTransDetailsByTM(Integer transId) {
        List<TransactionDetails> tdList=hibernateTemplate.findByNamedQueryAndNamedParam("TransactionDetails.findByTransId", "transId", transId);
        return tdList;
    }
      
      
        public ChildDetails getChildDetails(String childProfileId) {
        
        try
        {
        return (ChildDetails)hibernateTemplate.find("from ChildDetails cd where cd.childDetailsPK.childProfileId='"+childProfileId+"'").get(0);
        }
        catch(IndexOutOfBoundsException ie)
        {
            //ie.printStackTrace();
            return null;
        }
    }


    public List<TransactionMaster> getIssuesInMonth(String month, String year) {
        String paramNames[]={"month","year"}; 
        Object values[]={new Integer(month),new Integer(year)};
        
        System.out.println("in dao----------------month---->"+new Integer(month)+"------------year->"+new Integer(year));
        
        List<TransactionMaster> tmlist= hibernateTemplate.findByNamedQueryAndNamedParam("TransactionMaster.findByTransDate1", paramNames, values);
        
        System.out.println("IN DAO-------------->TM list SIZE"+tmlist.size());
        
        return tmlist;
    }

      
        public List<TransactionMaster> getIssuesInDate(Date date,String homeId,String type) {
            
            
        //String paramNames[]={"transDate","homeId","transType"}; 
         Object values[]={date,homeId,type};
         
        String query="SELECT t FROM TransactionMaster t WHERE t.transDate= ? AND t.homeId.homeId= ? AND t.transType= ?";
         
       // return hibernateTemplate.findByNamedQueryAndNamedParam("TransactionMaster.findByTransDate",paramNames, values);
        
       return hibernateTemplate.find(query, values);
    }

      public List<IssueDetails> getIssueDetails(String transId,String itemNo)
    {
         try
        {
        return hibernateTemplate.find("from IssueDetails id where id.issueDetailsPK.transId="+Integer.parseInt(transId)+" and id.issueDetailsPK.itemNo="+Integer.parseInt(itemNo));
        }
        catch(Exception ie)
        {
           ie.printStackTrace();
            return null;
        }
        
    }

    public TransactionMaster getTransMaster(String transId) {
        
         //throw new UnsupportedOperationException("Not supported yet.");
        TransactionMaster transactionMaster=null;
        try {
          // itemMaster =(ItemMaster)hibernateTemplate.find("from ItemMaster im where im.itemNo="+Integer.parseInt(itemNo)).get(0);
            transactionMaster =(TransactionMaster)hibernateTemplate.findByNamedQueryAndNamedParam("TransactionMaster.findByTransId", "transId", Integer.parseInt(transId)).get(0);
           return transactionMaster;
        } catch (Exception e) {
            
            e.printStackTrace();
        }
        return transactionMaster;
        
        
    }

    public ChildMaster getChildMaster(String childId) {
        return (ChildMaster)hibernateTemplate.findByNamedQueryAndNamedParam("ChildMaster.findByChildProfileId", "childProfileId", childId).get(0);
    }

     public List<HomeDetails> popAllHomeDetails() {
        return (List<HomeDetails>)hibernateTemplate.findByNamedQuery("HomeDetails.findAll");
    }

    @Override
    public List<TransactionMaster> getTMByTypes(String loggedInhome, String type) {
        String paramNames[] ={"homeId","type"};
        Object values[] = {new HomeDetails(loggedInhome),type};
        return (List<TransactionMaster>)hibernateTemplate.findByNamedQueryAndNamedParam("TransactionMaster.findTMbyType", paramNames, values);
        
    }

    public HomeDetails getHomeDetails(String homeId) {
        try {
               System.out.println("homeId = " + homeId);
        return (HomeDetails)hibernateTemplate.findByNamedQueryAndNamedParam("HomeDetails.findByHomeId", "homeId", homeId).get(0); 
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
     
    }

    public UserDetail getUserDetails(String useridProfileid) {
         try {
               System.out.println("useridProfileid = " + useridProfileid);
        return (UserDetail)hibernateTemplate.findByNamedQueryAndNamedParam("UserDetail.findByUserId", "userId", useridProfileid).get(0); 
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
    }

    @Override
    public HomeMaster getHomeMaster(String homeId) {
        try {
               System.out.println("homeId = " + homeId);
        return (HomeMaster)hibernateTemplate.findByNamedQueryAndNamedParam("HomeMaster.findByHomeId", "homeId", homeId).get(0); 
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public int findCatNoByNameHomeId(String catname, HomeMaster hm) {
        
         System.out.println("::in dao class find cat no by name::"+catname);
         
         String params[]={"productSubcatName","homeId"};
         Object values[]={catname.toUpperCase(),hm};
           
        try
        {
        ProductCatSubcat object =(ProductCatSubcat)hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByProductSubcatNameHomeId", params, values).get(0);
        
             return object.getProductSubcatNo();
        }
        catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        
    }

    @Override
    public List<Integer> findSubcatByNoAndHomeId(int catno, String homeId) {
         ProductCatSubcat pcs1=new ProductCatSubcat(catno);
        
        try {
            
            String params[]={"productCatNo","homeId"};
            Object values[]={new ProductCatSubcat(catno),new HomeMaster(homeId)};
            
            List<ProductCatSubcat> object =hibernateTemplate.findByNamedQueryAndNamedParam("ProductCatSubcat.findByCatNoAndHome", params, values);
        List<Integer> prSubcatNo=new ArrayList<Integer>();
        
        for(ProductCatSubcat pcs:object)
        {
            
            prSubcatNo.add(pcs.getProductSubcatNo());
        }
        
        return prSubcatNo;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
        public boolean addMenuList(List<MenuMaster> mmList) {
        try {
            hibernateTemplate.saveOrUpdateAll(mmList);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<MenuMaster> getMenuMap(HomeMaster hm) {
        try
        {
            List<MenuMaster> list =hibernateTemplate.findByNamedQueryAndNamedParam("MenuMaster.findByHomeId", "homeId", hm.getHomeId());
        
             return list;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return null;
        }
    }

    public boolean saveMenuDetails(List<MenuDetail> mdlist) {
        try
        {
            hibernateTemplate.saveOrUpdateAll(mdlist);
            return true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return false;
        }
       
    }

     public List<MenuDetail> getMenuDetail(Date menuDate,String homeId) {
        try
        {
            
        String query="SELECT m FROM MenuDetail m WHERE m.menuDetailPK.menuDate= ? AND m.menuDetailPK.menuId in (select s.menuId from MenuMaster s where s.homeId = ?)";     
                
               /* SELECT d FROM DietChart d WHERE d.dietChartPK.bom = ? AND d.homeId.homeId=?
        List<MenuDetail> mdlist=hibernateTemplate.findByNamedQueryAndNamedParam("MenuDetail.findByMenuDate","menuDate", menuDate);
        return mdlist;
        */
        
        return hibernateTemplate.find(query, new Object[]{menuDate,homeId});
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return null;
        }
    }
     public List<TransactionMaster> getTMsOnDate(Date view_date, String home_id, String type) {
        try{
            String paramNames[]={"homeId","fromDate","toDate","type"}; 
            HomeDetails hd=new HomeDetails(home_id);
            
            Object values[] = {hd,view_date,view_date,type};
        
        
            List<TransactionMaster> tmList=hibernateTemplate.findByNamedQueryAndNamedParam("TransactionMaster.findTMbyDate", paramNames, values);
            
            
            return tmList;
        }
            catch(Exception e)
            {
                e.printStackTrace();
                return null;
            }
        
    }
public long getNumChildHome(String homeId) {
        
        String query="SELECT COUNT(*) FROM ChildMaster c WHERE c.status = ? AND c.homeId.homeId = ?";
                
                
         return (Long)hibernateTemplate.find(query, new Object[]{"active",homeId}).get(0);           
    }

 public boolean saveDietChart(int itemNo, double scale, String homeId,String modBy,Date modDate) {
       try
       {
           DietChart dc=new DietChart(new DietChartPK(getMaxBOMOfHome(homeId), itemNo));
           
           dc.setHomeId(homeId);
           dc.setItemMaster(getItem(String.valueOf(itemNo)));
           dc.setScale(scale);
           dc.setLastModifiedBy(modBy);
           dc.setLastModifiedDate(modDate);
                   
           hibernateTemplate.saveOrUpdate(dc);
           return true;
       }
       catch(Exception e)
       {
           System.out.println(e);
           return false;
       }
    }

    public List<ItemMaster> checkItem(ProductCatSubcat pcs, String itemName, String uom) {
        System.out.println("params---------pcs-->"+pcs+"------------in---"+itemName+"------uom--"+uom);
       return       (List<ItemMaster>)hibernateTemplate.find("SELECT i FROM ItemMaster i WHERE i.productSubcatNo=? AND upper(i.itemName)=? AND upper(i.uom)=?", new Object[]{pcs,itemName.toUpperCase(),uom.toUpperCase()});
          
    }

    public List<TransactionMaster> getTMInMonth(String homeDetails, int rmonth, int ryear, String type) {
        
        System.out.println("in dao--->getTMin month=="+homeDetails+"----mon=="+rmonth+"---yr=="+ryear+"---ttpe=="+type);
        List<TransactionMaster> arr=hibernateTemplate.find("SELECT t FROM TransactionMaster t WHERE t.homeId.homeId=? AND month(t.transDate)=? AND year(t.transDate)=? AND t.transType IN (?) order by t.transDate,t.transType",new Object[]{homeDetails,rmonth,ryear,type});
        
        System.out.println("arr------->"+arr+"-----size===>"+arr.size());
        
        return arr;
    }
  
    
 
}
