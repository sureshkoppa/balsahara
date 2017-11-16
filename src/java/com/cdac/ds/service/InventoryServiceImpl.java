/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.ds.service;

//import com.cdac.common.StringToDate;
import com.cdac.common.util.CurrentDateProvider;
import com.cdac.common.util.StringToDate;

import com.cdac.ds.dto.BOMItemDto;
import com.cdac.ds.dto.RepTransDTO;
import com.cdac.ds.dto.TransDto;
import com.cdac.usermanagement.ORM.HomeDetails;

import com.cdac.ds.dao.InventoryDAO;

import com.cdac.ds.dto.IssueDetail;
import com.cdac.ds.dto.ItemDto;
import com.cdac.ds.dto.LoanDto;
import com.cdac.ds.dto.TransObjectDto;
import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ItemMaster;
import com.cdac.usermanagement.ORM.ProductCatSubcat;
import com.cdac.usermanagement.ORM.TransactionDetails;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.DietChart;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.HomeItemQoh;

import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.IssueDetails;
import com.cdac.usermanagement.ORM.MenuDetail;
import com.cdac.usermanagement.ORM.MenuMaster;
import com.cdac.usermanagement.ORM.TransactionMaster;
import com.cdac.usermanagement.ORM.UserDetail;
import com.einnovates.customtags.tree.TreeNode;
import java.math.BigDecimal;
import java.sql.Connection;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;

import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

/**
 *
 * @author ksuresh
 */
public class InventoryServiceImpl implements InventoryService{

    private InventoryDAO inventoryDAO;

    /**
     * Get the value of inventoryDAO
     *
     * @return the value of inventoryDAO
     */
    public InventoryDAO getInventoryDAO() {
        return inventoryDAO;
    }

    /**
     * Set the value of inventoryDAO
     *
     * @param inventoryDAO new value of inventoryDAO
     */
    public void setInventoryDAO(InventoryDAO inventoryDAO) {
        this.inventoryDAO = inventoryDAO;
    }
    //suresh added 13-01-2011 start
    
     public  List<DistrictMaster> displayMap(){
       List<DistrictMaster>  dis_list=inventoryDAO.displayMap();
       
       
      // dis_list.get(0).getHomeMasterList().get(0).getH
       
       return dis_list;
       
    }
    public List<ChildMaster> countChild_home(String home_id)
    {
      return inventoryDAO.countChild_home(home_id);
        
    }
    
    public Map<String,List<HomeMaster>> popDistrict_home(List<DistrictMaster> dl)
    {
        Map<String,List<HomeMaster>> dis_home_map=new HashMap<String,List<HomeMaster>>();
        
        Iterator itr=dl.iterator();
        while(itr.hasNext())
        {
                DistrictMaster dis=(DistrictMaster)itr.next();
                List<HomeMaster> homeMasters=inventoryDAO.populateDis_Home(dis);
                
                dis_home_map.put(dis.getDistrictId(), homeMasters);            
            
        }
        
        
        System.out.println("-------------------IN SERVICE--------------------------------------");
        ///////
         Iterator dis_itr=dl.iterator();
        
        while(dis_itr.hasNext())
        {
            String dis_id=((DistrictMaster)dis_itr.next()).getDistrictId();
                        
            List home_list=dis_home_map.get(dis_id);
            
            Iterator home_itr=home_list.iterator();
            
            while(home_itr.hasNext())
            {
                System.out.println("IN SERVICE"+dis_id+"<<------------>>"+((HomeMaster)home_itr.next()).getHomeId());
            }
            
        }
     
        
        
        
        
        return dis_home_map;
    }

    //suresh added 13-01-2011 end
    
     public Map<Integer,String> populate_top_cat(String homeId)
     {
        System.out.println("*****in service populate topcat enter*****");
        Map<Integer,String> topcatMap=new LinkedHashMap<Integer,String>();
        
        HomeMaster hm=inventoryDAO.getHomeMaster(homeId);
        
        List<ProductCatSubcat>  catList=inventoryDAO.popTopCatByHomeId(1,hm); 
        
        for(ProductCatSubcat pcs:catList)
        {
            topcatMap.put(pcs.getProductSubcatNo(), pcs.getProductSubcatName());
        }
        
        
        return topcatMap;
     }
     public Map<Integer,Object> populate_top_cat_object()
     {
         System.out.println("*****in service populate topcat enter*****");
        Map<Integer,Object> topcatMap=new LinkedHashMap<Integer,Object>();
        
        List<ProductCatSubcat>  catList=inventoryDAO.popCategoryByNo(1); 
        
        for(ProductCatSubcat pcs:catList)
        {
            topcatMap.put(pcs.getProductSubcatNo(),pcs);
        }
         return topcatMap;
         
     }
    /* public List populate_sub_cat(String top_cat)
     {
         System.out.println("*****in service sub cat enter*****"+top_cat);
         List l=inventoryDAO.populate_sub_cat(top_cat);
         System.out.println("*****in service sub cat exit*****list size***"+l.size());
         return l;
     }
     */
    

     public boolean addCategory(String subselcatname,String catname,String itemtype,String userId,String homeId)
     {
         System.out.println("*****in service add cat enter*****sub selecet cat="+subselcatname);
         
         try
         {
         int catno_insert=Integer.parseInt(subselcatname);
         System.out.println("*****in service add cat catno_insert***"+catno_insert);
         ProductCatSubcat pcs=new ProductCatSubcat();
         pcs.setProductCatNo(new ProductCatSubcat(catno_insert));
         pcs.setProductSubcatName(catname);
         pcs.setItemType(itemtype);
         pcs.setHomeId(inventoryDAO.getHomeMaster(homeId));
         pcs.setLastModifiedBy(userId);
         pcs.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
         
         if(inventoryDAO.addCategory(pcs))
             return true;
         else
             return false;
        }catch(Exception ae)
         {
            ae.printStackTrace();
            return false;
        }
     }
     public String removeCategory(List<String> subselcatname)
     {
         System.out.println("*****in service remove cat enter*****"+subselcatname);
        
         String msg="\n"; 
         try{
                 for(String str:subselcatname) 
                 {
                     List<ProductCatSubcat> catList=inventoryDAO.popCategoryByNo(Integer.parseInt(str));
                     String catname=inventoryDAO.findCatNameByNO(Integer.parseInt(str));
                     if(catList.isEmpty())
                     {
                         
                         List<ItemMaster> itemList=inventoryDAO.populate_itemDetails(Integer.parseInt(str));
                         if(itemList.isEmpty())
                         {
                              
                              inventoryDAO.removeCategory(Integer.parseInt(str));
                              msg=msg+"Category(s) "+catname+" sccessfully Removed";
                         }
                         else
                         {
                             msg=msg+"\nFirst remove Item: ";
                             for (Iterator<ItemMaster> it = itemList.iterator(); it.hasNext();) {
                                 ItemMaster itemMaster = it.next();
                                 msg=msg+" "+itemMaster.getItemName()+",";
                             }
                              msg=msg+" '"+catname+"' not removed.";
                         }
                     }
                     else
                     {
                          msg="\nFirst remove sub Category: ";
                          for (Iterator<ProductCatSubcat> it = catList.iterator(); it.hasNext();) {
                                 ProductCatSubcat catMaster = it.next();
                                 msg=msg+" "+catMaster.getProductSubcatName()+",";
                             }
                          msg=msg+" '"+catname+"' not removed.";
                     }
                    
                     
                 }
         }catch(Exception e)
         {
                 e.printStackTrace(); 
                 return "Exception occured";
         }
             return msg;
         
         
        
     }
  
     public boolean addItem(ItemMaster im)
     {
        try {
            if (inventoryDAO.addItem(im)!=null) {
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
                     System.out.println(ex);
              return false;
        }
    }
     /*
    public boolean addItem(String homeId,String prSubcatName,String itemName,String specs,float qoh,String uom,float unitPrice,String remarks,Date mfgDate,Date expDate,String userId)
    {
        int prno=Integer.parseInt(prSubcatName);
        ItemMaster im=new ItemMaster();
        
        im.setItemName(itemName);
        im.setSpecifications(specs);
        im.setUom(uom);
        im.setUnitPrice(new BigDecimal(String.valueOf(unitPrice)));
        im.setRemarks(remarks);
        im.setMfgDate(mfgDate);
        im.setExpDate(expDate);
        im.setLastModifiedBy(userId);
        im.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        
        im.setProductSubcatNo(inventoryDAO.getProductCatSubcat(prno));
        
        inventoryDAO.addItem(im);
        
        HomeItemQoh hiQoh=new HomeItemQoh(homeId,im.getItemNo());
       // ItemMaster im=new ItemMaster("001",Integer.toString(prno),Integer.toString(new Random().nextInt(1000)));
        //im.setHomeDetails(new HomeDetails(homeId.trim())); // anupam commented this
        //im.setHomeId(new HomeDetails(homeId.trim()));

       // int catno_insert=inventoryDAO.findCatNoByName(prSubcatName);
        //im.setProductCatSubcat(new ProductCatSubcat(Integer.toString(catno_insert)));
       // im.setProductSubcatNo(new ProductCatSubcat(catno_insert));
        //int itemno=inventoryDAO.getNextItemSeq();
        //im.setItemNo(Integer.toString(itemno));


        //im.setItemNo(catno_insert);
      
        
        hiQoh.setQoh(qoh);
        

        try {
            if (inventoryDAO.saveHomeitemQoh(hiQoh)) {
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
                     System.out.println(ex);
              return false;
        }
    }
      
      */
    public int addItem1(String prSubcatNo,String itemName,String specs,String uom,float unitPrice,String remarks,Date mfgDate,Date expDate,String userId)
    {
        int prno=Integer.parseInt(prSubcatNo);
        ItemMaster im=new ItemMaster();
        
        im.setItemName(itemName);
        im.setSpecifications(specs);
        im.setUom(uom);
        im.setUnitPrice(new BigDecimal(String.valueOf(unitPrice)));
        im.setRemarks(remarks);
        im.setMfgDate(mfgDate);
        im.setExpDate(expDate);
        im.setLastModifiedBy(userId);
        im.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        ProductCatSubcat pcs=inventoryDAO.getProductCatSubcat(prno);
        im.setProductSubcatNo(pcs);
        
        List<ItemMaster> cim=inventoryDAO.checkItem(pcs,itemName,uom);
        
        boolean exists=false;
        
        if(cim.isEmpty())
        {
            exists=false;
        }
        else
        {
             for (Iterator<ItemMaster> it = cim.iterator(); it.hasNext();) {
                ItemMaster itemMaster = it.next();
                if(itemMaster.getSpecifications().equalsIgnoreCase(specs))
                {
                    exists=true;
                    break;
                }
            }
        }
        
        if(exists)
        {
            return -2;
        }
        //HomeItemQoh hiQoh=new HomeItemQoh(homeId,im.getItemNo());
       // ItemMaster im=new ItemMaster("001",Integer.toString(prno),Integer.toString(new Random().nextInt(1000)));
        //im.setHomeDetails(new HomeDetails(homeId.trim())); // anupam commented this
        //im.setHomeId(new HomeDetails(homeId.trim()));

       // int catno_insert=inventoryDAO.findCatNoByName(prSubcatName);
        //im.setProductCatSubcat(new ProductCatSubcat(Integer.toString(catno_insert)));
       // im.setProductSubcatNo(new ProductCatSubcat(catno_insert));
        //int itemno=inventoryDAO.getNextItemSeq();
        //im.setItemNo(Integer.toString(itemno));


        //im.setItemNo(catno_insert);
      
        
        //hiQoh.setQoh(qoh);
        
        else
        {
        try {
                    ItemMaster i=inventoryDAO.addItem(im);
                    if (i!=null) {
                        if(pcs.getProductSubcatName().equalsIgnoreCase("ration"))
                               return i.getItemNo();
                        else
                            return 0;
                    } else {
                        return -1;
                    }
        } catch (Exception ex) {
                     System.out.println(ex);
              return -1;
        }
        }
    }
 /*   public List populate_item(String catselect)
    {
        System.out.println("*****in service pop item enter*****"+catselect);
        try{
         List l=inventoryDAO.populate_item(catselect);
        System.out.println("*****in service item exit*****list size***"+l.size()+"***list is***"+l);
         return l;
        }
        catch(Exception ae)
        {
            ae.printStackTrace();
            return null;
        }

    }*/
//    public List populate_item()
//    {
//        List l=inventoryDAO.populate_item();
//        System.out.println("==IN SERVICE CLASS==Item all list retrieved"+l);
//        
//        return l;
//        
//    }
//    public boolean removeItem(String itemName)
//    {
//        System.out.println("*****in service remove item enter*****"+itemName);
//        try
//        {
//           //ItemMaster im=new ItemMaster();
//           //im.setItemName(itemName);
//
//           return inventoryDAO.removeItemByName(itemName);
//
//
//        }
//        catch(Exception ae)
//        {
//            ae.printStackTrace();
//            return false;
//        }
//    }



   
   public TreeNode viewCategoryTree(String catType,String homeId)
    {
       
           int topcatno = Integer.parseInt("1");

            //TreeNode treeData = new TreeNode("ROOT Node", TreeNode.UN_KNOWNN);
           //  System.out.println("--top cat no retrieved--"+topcatno);

       

        TreeNode treeData = new TreeNode("%cat name% tree",TreeNode.UN_KNOWNN);
       
        try {
            // if(topcatno!=0)
            // {
                 treeData=constructTree(topcatno,catType,homeId);
           //  }
        } catch (Exception ex) {
                     System.out.println(ex);
        }

        return treeData;
    }
    private TreeNode constructTree(int catno,String topcatno,String homeId)
    {
        //ArrayList<String> main;

         String catname = inventoryDAO.findCatNameByNO(catno);
         ProductCatSubcat pcs_top=inventoryDAO.getProductCatSubcat(catno);

        if(topcatno.equals("item"))
        {
            
             List<ItemMaster> itemList = inventoryDAO.populate_itemDetails(catno);
            
                 
                 if(pcs_top.getProductSubcatNo()!=1)
                 {
                     if(pcs_top.getProductCatNo().getProductSubcatNo()!=1)
                     {    
                         catname+="("+itemList.size()+")"; 
                     } 
                    
                 }
             
        }
        else
        {
            List<ProductCatSubcat> catList=inventoryDAO.popCategoryByNo(catno);
            if(pcs_top.getProductSubcatNo()!=1)
               {
                 // if(pcs_top.getProductCatNo().getProductSubcatNo()==1)
               
                 // { 
                    catname+="("+catList.size()+")";
                 // }
               }
        }
        TreeNode treenode=new TreeNode(catname);
       //  cattree.catno=catno;
        List<Integer> retList = inventoryDAO.findSubcatByNoAndHomeId(catno,homeId);


         //   TreeNode
          //  System.out.println("======= retrieved list size::retList==="+retList.size()+"--& list is--"+retList);
     
            if(!retList.isEmpty())
            {
              
               for(int i=0;i<retList.size();i++){
               //    System.out.println("======= before construct tree=====item is==="+retList.get(i));
                   treenode.add(constructTree(retList.get(i),topcatno,homeId));
               }
          
            }
            
            // System.out.println("For the element==="+catname+"construted child tree size::"+treenode.getChildCount());
           
        
                return treenode;
        }
    
    
    
     public Map popAllSubCat(String topcat)
     {
        try {
               int catnum=Integer.parseInt(topcat); 
               optionMap=new LinkedHashMap<Integer,String>();
               String catname=inventoryDAO.findCatNameByNO(catnum);
               optionMap.put(catnum, catname);
               
              // System.out.println("==in service intial option map=="+optionMap);
               queue=new LinkedList();
               queue.add(catnum);
           
               constructOptions();
               
            //   System.out.println("==in service after constructMap()____ option map=="+optionMap);
               
               optionMap.remove(catnum);
               
               return optionMap;
            
         //   List<String> subCatList=inventoryDAO.findSubcatByNo(tcatno);
            
            
        } catch (Exception ex) {
                     System.out.println(ex);
            return null;
        }
         
       
         
     }
    
     Map<Integer,String> optionMap;
  
    //String value="";
     
     Queue queue;
    private void constructOptions() 
    {
       
        while(!queue.isEmpty())
        {
          // System.out.println("peek element in queue"+queue.peek());
            
            List<Integer> keyList= inventoryDAO.findSubcatByNo((Integer)queue.peek());
            
        //    System.out.println("list returned for peek==="+keyList);
            Integer temp=(Integer)queue.poll();
       //     System.out.println("temp is"+temp);
          //  List<String> valList=new LinkedList<String>();
            
            if(!keyList.isEmpty()){
            
            queue.addAll(keyList);
            
            Queue q1=new LinkedList(keyList);
            
            while(!q1.isEmpty())
            {
                Integer key=(Integer)q1.poll();
                String catname=inventoryDAO.findCatNameByNO(key);
                
                String val;
//                if(optionMap.get(temp).length()>53)
//                {
//                      val=optionMap.get(temp)+"\n-->"+catname;
//                }
//                else
//                {
                      val=optionMap.get(temp)+"-->"+catname;   
//                }  
                
                System.out.println("key ::: value--"+key+":::"+val);
                
                optionMap.put(key, val);
                
               // queue.add(key);
                
            }
            
            }
           
        }
    }
    
    
    public List<ItemDto> getItemDetails(String homeid,List<String> subcatname)
    {
      
           // int subcatno=inventoryDAO.findCatNoByName(subcatname);
            
             List<ItemMaster> l=new ArrayList(); 
               for(String str:subcatname)
               {
               l.add(inventoryDAO.getItem(str));
               }
             
             List<ItemDto> itemDtoList=new ArrayList<ItemDto>();
             
             //SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
             
             
             for(ItemMaster im:l)
             {
                 ItemDto id=new ItemDto();
                 id.setItemNO(im.getItemNo());
                 id.setItemName(im.getItemName());
               //  id.setProductSubcatNo(im.getProductSubcatNo().getProductCatNo());
                 id.setSpecifications(im.getSpecifications());
                 id.setUOM(im.getUom());
                 id.setRemarks(im.getRemarks());
                 id.setUnitPrice(im.getUnitPrice().floatValue());
                 
                 System.out.println("--home id--"+homeid);
                 
                 id.setMfg_date(im.getMfgDate());
                 id.setExp_date(im.getExpDate());
                 
                 HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, im.getItemNo());
                 
                 double qty;
                 if(hiq!=null)
                       qty=hiq.getQoh();
                 else
                     qty=0.00f;
                 id.setQoh(qty);
                
                 itemDtoList.add(id);
                 
             }
             
             
             
             System.out.println("Size of list returned"+l.size());
             
             return itemDtoList;
        
    }
    public ItemMaster getItemByItemNo(String itemNo)
    {
           return inventoryDAO.getItem(itemNo);
        
    }
    public boolean removeItemList(List itemList)
    {
        System.out.println("***in service remove item list***"+itemList);
        return inventoryDAO.removeItemList(itemList);
    }
      public List<ProductCatSubcat> populate_subCategory(String cat) {
          System.out.println("***in service populate_subCategory list***"+cat);
          return inventoryDAO.popCategoryByNo(Integer.parseInt(cat));
         
    }

    
    
   @Transactional(readOnly=false,propagation= Propagation.REQUIRES_NEW)    //annotation added
   public boolean saveDonationItem(Date donateDate,String homeid,String donateFrom,String donateRemarks,List<String> item_donate_list,Map<String,String> item_donate_qty,Map<String,String> item_donate_remarks,String userId)
     {
        try{  
        TransactionMaster tm=new TransactionMaster();
        tm.setHomeId(new HomeDetails(homeid));
        System.out.println("::In Service::saveDonationItems()::donateDate::"+donateDate+":::from::"+donateFrom+"::remarks::"+donateRemarks);
        tm.setTransDate(donateDate);
        tm.setTransType("DONATION"); 
        tm.setDonateReceivePurchaseFrom(donateFrom);
        tm.setRemarks(donateRemarks);
        tm.setLastModifiedBy(userId);
        tm.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        
        TransactionMaster tmreturn=inventoryDAO.saveTransMaster(tm);
        System.out.println("::In Service:::saveDonationItem()::transid got:::"+tmreturn.getTransId());
        List<TransactionDetails> tdList=new ArrayList<TransactionDetails>(); 
         
       

         for(int i=0;i<item_donate_list.size();i++)
         {
         
         String im=item_donate_list.get(i);
         HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, Integer.parseInt(im));
         
          System.out.println("***i="+i+"****hiq returned***"+hiq);
                  
                   TransactionDetails td=new TransactionDetails(tmreturn.getTransId(), Integer.parseInt(im));
                   td.setQuantity(Double.parseDouble(item_donate_qty.get(im).trim()));
                 //td.setIssuedTo(homeid);
                   
                   td.setRemarks(item_donate_remarks.get(im));
         Double quanClose;
         if(hiq==null)
         {
             td.setOpenBalance(0.0);
             hiq=new HomeItemQoh(homeid, Integer.parseInt(im));
             quanClose=Double.parseDouble(item_donate_qty.get(im));
             hiq.setQoh(quanClose);
             td.setCloseBalance(quanClose);
             tdList.add(td);
         }
         else
         {
             System.out.println("***quantity in  im="+im+"****is***="+hiq.getQoh());
             td.setOpenBalance(hiq.getQoh());
             quanClose=hiq.getQoh()+Float.parseFloat(item_donate_qty.get(im));
             hiq.setQoh(quanClose);
             td.setCloseBalance(quanClose);
             tdList.add(td);
         }
              inventoryDAO.saveHomeitemQoh(hiq);   
              }
            inventoryDAO.saveBulkTransdetails(tdList);
        
        }catch(Exception e)
        {
            System.out.println("----in service save donation after updating item quantity details**");
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            e.printStackTrace();
            return false;
        }
            
        return true;
         
     }

/*
    public boolean saveReceiptItems(Date receipt_date, String homeid,String receipt_from,String letno,Date letdate,String receipt_remarks, List<String> item_receipt_list,Map<String,String> item_receipt_qty,Map<String,String> item_receipt_remarks,String userId) {
        
        try{
         TransactionMaster tm=new TransactionMaster();
         tm.setHomeId(new HomeDetails(homeid));
         System.out.println("::In Service::saveReceiptItems()::receiptDate::"+receipt_date+":::from::"+receipt_from+"::remarks::"+receipt_remarks);
         tm.setTransDate(receipt_date);
         tm.setTransType("RECEIPT"); 
         tm.setInvoiceNo(letno);
         tm.setInvoiceDate(letdate);
         tm.setDonateReceivePurchaseFrom(receipt_from);
         tm.setRemarks(receipt_remarks);
         tm.setLastModifiedBy(userId);
         tm.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
         
         
         TransactionMaster tmreturn=inventoryDAO.saveTransMaster(tm);
         
         
         System.out.println("::In Service:::saveReceiptItem()::transid got:::"+tmreturn.getTransId());
          List<TransactionDetails> tdList=new ArrayList<TransactionDetails>(); 
         
       
              for(int i=0;i<item_receipt_list.size();i++)
              {
                  String im=item_receipt_list.get(i);
                  HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, Integer.parseInt(im));
         
                  System.out.println("***i="+i+"****hiq returned***"+hiq);
                  
                   TransactionDetails td=new TransactionDetails(tmreturn.getTransId(), Integer.parseInt(im));
                   td.setQuantity(Double.parseDouble(item_receipt_qty.get(im).trim()));
                 //td.setIssuedTo(homeid);
                   
                   td.setRemarks(item_receipt_remarks.get(im));
                   
         Double quanClose;
         if(hiq==null)
         {
             td.setOpenBalance(0.0);
             hiq=new HomeItemQoh(homeid, Integer.parseInt(im));
             quanClose=Double.parseDouble(item_receipt_qty.get(im));
             hiq.setQoh(quanClose);
             td.setCloseBalance(quanClose);
             tdList.add(td);
         }
         else
         {
             System.out.println("***quantity in  im="+im+"****is***="+hiq.getQoh());
             td.setOpenBalance(hiq.getQoh());
             quanClose=hiq.getQoh()+Float.parseFloat(item_receipt_qty.get(im));
             hiq.setQoh(quanClose);
             td.setCloseBalance(quanClose);
             tdList.add(td);
         }
              inventoryDAO.saveHomeitemQoh(hiq);   
              }
            inventoryDAO.saveBulkTransdetails(tdList);
        
        }catch(Exception e)
        {
            System.out.println("----in service save receipt after updating item quantity details**");
            e.printStackTrace();
            return false;
        }
        
            return true;
      
    }
    */
     public List<ItemMaster> getItemDetails_im(List<String> subcatname)
    {
      
           // int subcatno=inventoryDAO.findCatNoByName(subcatname);
        List<ItemMaster> l=new ArrayList<ItemMaster>();
              for(String catno :subcatname) 
              {
                    List<ItemMaster> pop_list=inventoryDAO.populate_itemDetails(Integer.parseInt(catno));
                    l.addAll(pop_list);
              }
             
             System.out.println("Size of list returned"+l.size());
             
           
             
             
             return l;
        
    }
    public String modifyItemDetails_qoh(List<String> itemNo,String homeid,Map<String, String> qoh,String userId)
    {
        try
        {
            String message="";
        for(String ino : itemNo)
        {
       /*    HomeItemQoh hiqcheck=inventoryDAO.getHomeItemQoh(homeid, Integer.parseInt(ino));
           if(hiqcheck!=null)
           {
            message+="In "+homeid+" quantity for "+inventoryDAO.getItem(ino).getItemName()+" already exists\n";   
           }
            else
           {   */
        HomeItemQoh hiq=new HomeItemQoh(homeid, Integer.parseInt(ino));
        String homeQty=qoh.get(ino);
        hiq.setQoh(Double.parseDouble(homeQty));
        hiq.setLastModifiedBy(userId);
        hiq.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        
        inventoryDAO.saveHomeitemQoh(hiq);
          message+=homeid+" quantity="+homeQty+" for item "+inventoryDAO.getItem(ino).getItemName()+" was saved\n";
      //  }
        }
        return message;
                
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return null;
        }
    }

    public boolean modifyItemDetails(List<String> itemNo, Map<String, String> itemName, Map<String, String> itemSpec, Map<String, String> remarks, Map<String, String> mfgDate, Map<String, String> expDate) {
        List<ItemMaster> itemList=new ArrayList<ItemMaster>();
        
        for(String ikey:itemNo)
        {
            ItemMaster im=inventoryDAO.getItem(ikey);
            im.setItemName(itemName.get(ikey));
            im.setSpecifications(itemSpec.get(ikey));
            //im.setUom(itemUOM.get(ikey));
            
            System.out.println("string-->big decimaal:::"+ikey);
            
          //  im.setUnitPrice((new BigDecimal(unitPrice.get(ikey))).abs());
            System.out.println("::"+ikey+"::remarks"+remarks.get(ikey));
            im.setRemarks(remarks.get(ikey));
            System.out.println("mfg date::"+ikey+"::expdate"+mfgDate+":"+expDate);
            if(mfgDate!=null)
                 im.setMfgDate(StringToDate.getStringToDate(mfgDate.get(ikey)));
            if(expDate!=null)
                 im.setExpDate(StringToDate.getStringToDate(expDate.get(ikey)));
            
            ProductCatSubcat prnum=inventoryDAO.getItem(ikey).getProductSubcatNo();
            
            im.setProductSubcatNo(prnum);
            
          
            
            
            itemList.add(im);
            
        }
        
        if(inventoryDAO.saveBulkItemDetails(itemList))
            return true;
        else
            return false;
        
        
        
    }

    public boolean addTopcat(String name, String type,String userId,String homeId) {
        
        try
        {
        ProductCatSubcat pcs=new ProductCatSubcat();
        
        pcs.setProductCatNo((new ProductCatSubcat(1)));    //becomes cat types as topcat
        pcs.setProductSubcatName(name);
        pcs.setItemType(type);
        pcs.setLastModifiedBy(userId);
        pcs.setHomeId(inventoryDAO.getHomeMaster(homeId));
        pcs.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        inventoryDAO.addCategory(pcs);
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return false;
        }
            
        
        return true;
    }

    public List<String> getListCatNamesForCatNo(List<String> catnums) {
          List<String> catnames=new ArrayList<String>();
          
          for(String catnum:catnums)
          {
              String catname=inventoryDAO.findCatNameByNO(Integer.parseInt(catnum));
              
              catnames.add(catname);
          }
        
        return catnames;
    }

    public List<ItemDto> getItemDetails_view(String homeid, String subcatname) {
            int subcatno=inventoryDAO.findCatNoByNameHomeId(subcatname, inventoryDAO.getHomeMaster(homeid));
             
             List<ItemMaster> l=new ArrayList<ItemMaster>();
             
            
            
             l.addAll(inventoryDAO.populate_itemDetails(subcatno));
          
             List<ItemDto> itemDtoList=new ArrayList<ItemDto>();
             
             //SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
             
             
             for(ItemMaster im:l)
             {
                 ItemDto id=new ItemDto();
                 id.setItemNO(im.getItemNo());
                 id.setItemName(im.getItemName());
       //          id.setProductSubcatNo(im.getProductSubcatNo().getProductCatNo());
                 id.setSpecifications(im.getSpecifications());
                 id.setUOM(im.getUom());
                 id.setRemarks(im.getRemarks());
                 System.out.println("Get Unit Price^^^^^^^^^^^^^^^^^^^^^^^"+im.getUnitPrice());
                 id.setUnitPrice(im.getUnitPrice().floatValue());
                 
                 System.out.println("mfg date::im::exp date"+im.getMfgDate()+"::"+im.getExpDate());
                 
                 id.setMfg_date(im.getMfgDate());
                 id.setExp_date(im.getExpDate());
                 
                 System.out.println("mfg date::id::exp date"+id.getMfg_date()+"::"+id.getExp_date()+"--homeid--"+homeid);
                 
                 HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, im.getItemNo());
                 
                 double qty;
                 if(hiq!=null)
                       qty=hiq.getQoh();
                 else
                     qty=0.00f;
                 id.setQoh(qty);
                
                 itemDtoList.add(id);
                 
             }
             
             
             
             System.out.println("Size of list returned"+l.size());
             
             return itemDtoList;
        
    }

    public List<ItemDto> getItemDetailsByCatList(String homeid, List<String> catnums) {
         // int subcatno=inventoryDAO.findCatNoByName(subcatname);
            
             List<ItemMaster> l=new ArrayList(); 
               for(String str:catnums)
               {
               l.addAll(inventoryDAO.populate_itemDetails(Integer.parseInt(str)));
               }
             
             System.out.println("--item master list--"+l);  
             List<ItemDto> itemDtoList=new ArrayList<ItemDto>();
             
             //SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
             
             
             for(ItemMaster im:l)
             {
                 ItemDto id=new ItemDto();
                 id.setItemNO(im.getItemNo());
                 id.setItemName(im.getItemName());
       //          id.setProductSubcatNo(im.getProductSubcatNo().getProductCatNo());
                 id.setSpecifications(im.getSpecifications());
                 id.setUOM(im.getUom());
                 id.setRemarks(im.getRemarks());
                 id.setUnitPrice(im.getUnitPrice().floatValue());
                 
                 System.out.println("--home id--"+homeid);
                 
                 id.setMfg_date(im.getMfgDate());
                 id.setExp_date(im.getExpDate());
                 
                 HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, im.getItemNo());
                 
                 double qty;
                 if(hiq!=null)
                       qty=hiq.getQoh();
                 else
                     qty=0.00f;
                 id.setQoh(qty);
                
                 itemDtoList.add(id);
                 
             }
             
             
             
             System.out.println("Size of itemDto list"+itemDtoList.size());
             
             return itemDtoList;
    }

  public List<String> popStakeHolders(String homeid) 
    {
        
   
        List list=new ArrayList();
        
        List<UserDetail> udList=inventoryDAO.populateUsersInHome(homeid);
        Iterator<UserDetail> udItr=udList.iterator();
        while(udItr.hasNext())
        {
            UserDetail ud=udItr.next();
            
             list.add(ud.getUserDetailPK().getUserId()+"("+ud.getRoleMaster().getRoleName()+")");   
          
        }
        
        list.add("Others");
        System.out.println("stake holders are"+list);
        
        return list;
        

       
    }

    public List<String> popChilds(String homeid) {
        List l=new ArrayList();
        
        List<ChildMaster> childIdList=new ArrayList<ChildMaster>();
        
        childIdList.addAll(inventoryDAO.popChildsInHome(homeid));
        
       if(homeid.contains("CHB"))
        {
           homeid=homeid.replace("CHB", "RUB");
           
           childIdList.addAll(inventoryDAO.popChildsInHome(homeid));
        }
        else if(homeid.contains("CHG"))
        {
           homeid=homeid.replace("CHG", "RUG");
           
           childIdList.addAll(inventoryDAO.popChildsInHome(homeid));
        }

         
       for(ChildMaster cm:childIdList)
        {
            String str;
            if(cm.getStatus().equalsIgnoreCase("inactive"))
            {
                str=cm.getChildProfileId()+"-->"+cm.getChildName()+"(inactive)";
            }
            else
            {
                str=cm.getChildProfileId()+"-->"+cm.getChildName();
            }
           
            
            l.add(str);
            
        }
        
        return l;
        
    }

    @Transactional(readOnly=false,propagation= Propagation.REQUIRES_NEW)    //annotation added
    public String saveIssueItem(Date issue_date,String homeid,String is,  List issue_to, String issue_remarks, List<String> item_issued_list, Map<String, String> issued_item_qty, Map<String, String> issued_item_remarks,String userId) 
    {
        String message="";
        boolean mflag=false;
          try{
         TransactionMaster tm=new TransactionMaster();
         tm.setHomeId(new HomeDetails(homeid));
         System.out.println("::In Service::savIssueItems()::issueDate::"+issue_date+":::to::"+issue_to+"::remarks::"+issue_remarks);
         tm.setTransDate(issue_date);
         tm.setTransType("ISSUE"); 
         //tm.setDonateReceivePurchaseFrom(issue_from);
         tm.setRemarks(issue_remarks);
         tm.setLastModifiedBy(userId);
         tm.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
         
         TransactionMaster tmreturn=inventoryDAO.saveTransMaster(tm);
         
         
          System.out.println("::In Service:::saveIssueItem()::transid got:::"+tmreturn.getTransId());
          List<TransactionDetails> tdList=new ArrayList<TransactionDetails>(); 
          List<IssueDetails> isList=new ArrayList<IssueDetails>(); 
         
         for(int i=0;i<item_issued_list.size();i++)
         {
         String im=item_issued_list.get(i);
         System.out.println("--in service--saveIssueItems()---itemno="+im+"--quan="+issued_item_qty.get(im)+"---remarks="+issued_item_remarks.get(im));
         
          HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, Integer.parseInt(im));
         
         System.out.println("***i="+i+"****hiq returned***"+hiq);
         
         if(hiq==null)
         {
             message+="\n"+"quantity for item <"+inventoryDAO.getItem(im).getItemName()+"> is not sufficient.";
             mflag=true;
             
         }
         else
         {
             System.out.println("***quantity in  im="+im+"****is***="+hiq.getQoh());
             
             double quan_remained=hiq.getQoh()-Double.parseDouble(issued_item_qty.get(im));
             
             if(quan_remained>=0)
             {
              TransactionDetails td=new TransactionDetails(tmreturn.getTransId(), Integer.parseInt(im));
              td.setQuantity(Double.parseDouble(issued_item_qty.get(im)));
              td.setOpenBalance(hiq.getQoh());
              td.setCloseBalance(quan_remained);
              
              hiq.setQoh(quan_remained);
             
              
             for(Object str:issue_to)
             {
                 IssueDetails ids=new IssueDetails(tmreturn.getTransId(),Integer.parseInt(im), (String)str);
                 isList.add(ids);
             }
                  td.setIssuedTo(is);
                  td.setRemarks(issued_item_remarks.get(im));
                  tdList.add(td);
                  
                   inventoryDAO.saveHomeitemQoh(hiq);
             }
             else
             {
                   message+="\n"+"quantity for item <"+inventoryDAO.getItem(im).getItemName()+"> is not sufficient.";
                   mflag=true;
             }
         }
         
       
        
          }
        
          boolean tdsave=inventoryDAO.saveBulkTransdetails(tdList);
          boolean issave=inventoryDAO.saveItemUserTrans(isList);
          if(!(tdsave||issave))
          {
              return "trans detail failed";
          }
          
           
            if(mflag)
            {
                 message+="\n"+"Other item issue details saved succesfully.";
            }
            else
            {
                message+="\nIssue details saved succesfully.";
            }
         
        } catch(Exception e)
        {
            System.out.println("----in service save item issue before updating item quantity details**");
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            e.printStackTrace();
            return "trans detail failed";
        }
        
     /*   //updating quantity in home
        
        try{
          
              for(int i=0;i<item_issued_list.size();i++)
              {
                  String im=item_issued_list.get(i);
                  HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, Integer.parseInt(im));
         
         System.out.println("***i="+i+"****hiq returned***"+hiq);
         
         if(hiq==null)
         {
             return false;
             
         }
         else
         {
             System.out.println("***quantity in  im="+im+"****is***="+hiq.getQoh());
             
             hiq.setQoh(hiq.getQoh()-Float.parseFloat(issued_item_qty.get(im)));
          
             
             inventoryDAO.saveHomeitemQoh(hiq);
         }
                  
              }
        
        
        }catch(Exception e)
        {
            System.out.println("----execption in service save issued after updating item quantity details**");
            e.printStackTrace();
            return false;
        }
         */
            return message;
      
    }

    @Transactional(readOnly=false,propagation= Propagation.REQUIRES_NEW)    //annotation added
    public boolean savePurchaseItems(Date receipt_date,String homeid,String recvType, String invno, Date invdate, String receipt_from, String receipt_remarks, List<String> item_receipt_list, Map<String, String> item_receipt_qty, Map<String, String> item_receipt_remarks,String userId) {
        
         try{
         TransactionMaster tm=new TransactionMaster();
         tm.setHomeId(new HomeDetails(homeid));
         System.out.println("::In Service::saveReceiptItems()::receiptDate::"+receipt_date+":::from::"+receipt_from+"::remarks::"+receipt_remarks);
         tm.setTransDate(receipt_date);
         if(recvType.equalsIgnoreCase("r"))
         {
             tm.setTransType("RECEIPT");
         }
         else if(recvType.equalsIgnoreCase("p"))
         {
               tm.setTransType("PURCHASE"); 
         }
         else
         {
             return false;
         }
         tm.setDonateReceivePurchaseFrom(receipt_from);
         tm.setRemarks(receipt_remarks);
         tm.setInvoiceNo(invno);                         //setting invoice num
         tm.setInvoiceDate(invdate);                     //setting invoice date 
         tm.setLastModifiedBy(userId);
         tm.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
         
         TransactionMaster tmreturn=inventoryDAO.saveTransMaster(tm);
       
         System.out.println("::In Service:::saveReceiptItem()::transid got:::"+tmreturn.getTransId());
          List<TransactionDetails> tdList=new ArrayList<TransactionDetails>(); 
         
       
              for(int i=0;i<item_receipt_list.size();i++)
              {
                  String im=item_receipt_list.get(i);
                  HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, Integer.parseInt(im));
         
                  System.out.println("***i="+i+"****hiq returned***"+hiq);
                  
                   TransactionDetails td=new TransactionDetails(tmreturn.getTransId(), Integer.parseInt(im));
                   td.setQuantity(Double.parseDouble(item_receipt_qty.get(im).trim()));
                 //td.setIssuedTo(homeid);
                   
                   td.setRemarks(item_receipt_remarks.get(im));
         
         Double quanClose;
         if(hiq==null)
         {
             td.setOpenBalance(0.0);
             hiq=new HomeItemQoh(homeid, Integer.parseInt(im));
             quanClose=Double.parseDouble(item_receipt_qty.get(im));
             hiq.setQoh(quanClose);
             td.setCloseBalance(quanClose);
             tdList.add(td);
         }
         else
         {
             System.out.println("***quantity in  im="+im+"****is***="+hiq.getQoh());
             td.setOpenBalance(hiq.getQoh());
             quanClose=hiq.getQoh()+Float.parseFloat(item_receipt_qty.get(im));
             hiq.setQoh(quanClose);
             td.setCloseBalance(quanClose);
             tdList.add(td);
         }
              inventoryDAO.saveHomeitemQoh(hiq);   
              }
            inventoryDAO.saveBulkTransdetails(tdList);
        
        }catch(Exception e)
        {
            System.out.println("----in service save receipt after updating item quantity details**");
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            e.printStackTrace();
            return false;
        }
        
            return true;
      
        
        
        
    }

    public List<BOMItemDto> populateRationBOM(String homeId){
        
//          allSubCategories(5);                //ration------------itemo=5
//        
//          List<Integer> subcat=rnum;
//          
//          List<BOMItemDto> bomList=new ArrayList<BOMItemDto>();
//          
//          System.out.println("list of subcats"+subcat);
//          for(int catno:subcat)
//          {
//              BOMItemDto bidto=new BOMItemDto();
//              
//              List<ItemMaster>imlist= inventoryDAO.populate_itemDetails(catno);
//              
//              for(ItemMaster im:imlist)
//              {
//              System.out.println("item nums for construction of BOM"+im.getItemNo());    
//              bidto.setItemNo(im.getItemNo());
//              bidto.setItemName(im.getItemName());
              
            //  int bomno=8888;
              
             List<DietChart> dcList=inventoryDAO.findDietChart(homeId);
             
           //  System.out.println("list of diet chart"+dcList);
             
             List<BOMItemDto> bomList=new ArrayList<BOMItemDto>();
             
             for(DietChart dc:dcList)
             {
                 BOMItemDto bdto=new BOMItemDto();
                 
                 
                 HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeId, dc.getItemMaster().getItemNo());    
                 
                 if(hiq==null)
                 {
                     bdto.setHome_qoh(0.0d);
                 }
                 else
                 {
                     bdto.setHome_qoh(hiq.getQoh());
                 }
                // bdto.setBOM_no(bomno);
                if(dc.getItemMaster().getItemName().equalsIgnoreCase("milk"))
                 {                 
                        bdto.setItemName("Milk\n(Milk+Buttermilk Combine)");
                 }
                 else
                 {
                        bdto.setItemName(dc.getItemMaster().getItemName());
                 }

                 bdto.setItemNo(dc.getItemMaster().getItemNo());  
                 bdto.setUom(dc.getItemMaster().getUom());
                 bdto.setScale(dc.getScale());
                 
                 bomList.add(bdto);
             }
             
             System.out.println("list of bomitem dto"+bomList);
             
             
             
             
//              bidto.setBOM_no(dc.getDietChartPK().getBom());
//              bidto.setScale(dc.getScale());
//              
//
//              bomList.add(bidto);
//             }
//            
//          }
          
          return bomList;
    
    }
    private void allSubCategories(int catno)
    {
        if(catno==5)
        {
         rnum=new ArrayList<Integer>();
        }
         
         rnum.add(catno);
        
        List<Integer> subnum=inventoryDAO.findSubcatByNo(catno);
        
        if(subnum.isEmpty())
        {
            return ;
        }
        else
        {
            rnum.addAll(subnum);
            
            for(int s:subnum)
                allSubCategories(s);
            
        }
        
        
        
        
        
    }
   
 List<Integer> rnum;

    public List<ItemMaster> popRationItems() {
        allSubCategories(5);
        
        List<Integer> catnum=rnum;
        
        List<ItemMaster> itemcat=new ArrayList();
        
        for(int i:catnum)
        {
            itemcat.addAll(inventoryDAO.populate_itemDetails(i));
        }
                
        return itemcat;
        
        
        
    }

    public boolean saveBOMItems(List<String> bomItemNo, Map<String,String> bom_quanntity,String userId,String homeId) {
        System.out.println("inside service::saveBOMItems()"+bomItemNo+"::"+bom_quanntity);
        List<DietChart> dclist=new ArrayList<DietChart>();
        
        int bom;
            int gotbom=inventoryDAO.getMaxBOM();
            if(gotbom==0)
            {
                bom=8888;
            }
            else
            {
                bom=gotbom+1;
            }
        
        for(String itemno:bomItemNo)
        {
            String item_quan=bom_quanntity.get(itemno);
            
            System.out.println("itemno"+itemno+"quanttity"+item_quan);
            
            
            int itemNo=Integer.parseInt(itemno);
            
            DietChart dc=new DietChart(bom,itemNo);
            dc.setScale(Double.parseDouble(item_quan));
            dc.setHomeId(homeId);
            dc.setLastModifiedBy(userId);
            dc.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
            
             System.out.println("dc  for ::"+itemno+"is::"+dc);
            
            dclist.add(dc);

        }
        System.out.println("dclist::"+dclist);
              if(inventoryDAO.saveBulkDietChartDetails(dclist))
                  return true;
              else
                  return false;
        
        
    }
   @Transactional(readOnly=false,propagation= Propagation.REQUIRES_NEW)    //annotation added
   public String saveDietIssueItems(Date dietIssueDate,String homeid, int srchild, int jrchild, List<String> itemNumlist,String userId,List actIssues) 
    {
        String message="";
        boolean mflag=false;
        try{
        TransactionMaster tm=new TransactionMaster();
        tm.setHomeId(new HomeDetails(homeid));
        tm.setTransDate(dietIssueDate);
        tm.setTransType("DIET ISSUE");
        tm.setRemarks("sr:"+srchild+"-jr:"+jrchild);
        tm.setLastModifiedBy(userId);
        tm.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
                System.out.println("saveDietIssue()::trans master::"+tm);
                
        TransactionMaster tmreturn=inventoryDAO.saveTransMaster(tm);
        
         List<TransactionDetails> tdList=new ArrayList<TransactionDetails>();  
        //gettting rice itemno start
            System.out.println("itemnumlist----->"+itemNumlist);
         int riceitemno=0;
            for (Iterator<String> it = itemNumlist.iterator(); it.hasNext();) {
                String itemNumDetails = it.next();
                itemNumDetails = itemNumDetails.substring(0, itemNumDetails.indexOf('-'));
                System.out.println("itemNumDetails----->"+itemNumDetails);
                ItemMaster im=inventoryDAO.getItem(itemNumDetails);
                
                if(im.getItemName().equalsIgnoreCase("rice"))
                {
                    riceitemno=im.getItemNo();
                    break;
                }
                
            }
                     
                
//                ItemMaster riceitem=inventoryDAO.findItemNoByName("rice");        
//                if(riceitem==null)
//                {
//                    riceitem=inventoryDAO.findItemNoByName("Rice");        
//                }
//                riceitemno=riceitem.getItemNo();
        //getting rice itemno ends
                
                
              
        for(String item:itemNumlist)
        {
          
            int itemno=Integer.parseInt(item.substring(0, item.indexOf('-')));
            int indexno=Integer.parseInt(item.substring(item.indexOf('-')+1,item.length()));
            
            ItemMaster itemObj=inventoryDAO.getItem(String.valueOf(itemno));
            double quan_issued;
            System.out.println("---->value at index--"+(indexno-1)+"===value is==="+actIssues.get(indexno-1));
                        if(actIssues.get(indexno-1)==null||actIssues.get(indexno-1).equals(""))
                        {
                                double quan_bom=0.0f;
                                quan_bom =inventoryDAO.findBOMScale(inventoryDAO.getHomeMaster(homeid),itemno);
                                System.out.println("riceitemno--->"+riceitemno+"==itemno--->"+itemno+"==qun_bom-->"+quan_bom);  
                                        if(itemno==riceitemno)
                                        {
                                            quan_issued=(srchild*(quan_bom+100))+(jrchild*quan_bom);
                                            System.out.println("======rice quan issued--->"+quan_issued);
                                        }
                                        else
                                        {
                                            quan_issued=(srchild+jrchild)*quan_bom;
                                        }
                        }
                        else
                        {
                            quan_issued=Double.parseDouble((String)actIssues.get(indexno-1));
                            if(!itemObj.getUom().equalsIgnoreCase("nums"))
                            {
                                quan_issued=quan_issued*1000;
                            }
                        }
                 
                       HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, itemno); 
                       if(hiq==null)
                       {
                             message+="\n"+homeid+"does not contain item<"+inventoryDAO.getItem(String.valueOf(itemno)).getItemName()+">";
                             mflag=true;
                       }
                       else
                       {
        //calculate quan remained start
                                 double quanRemained=hiq.getQoh();
                                 if(itemObj.getUom().equalsIgnoreCase("kgs")||itemObj.getUom().equalsIgnoreCase("litres")||itemObj.getUom().equalsIgnoreCase("lts"))
                                  {        
                                          double l=hiq.getQoh()*1000-quan_issued;
                                          quanRemained=l/1000;
                                          System.out.println("qoh--->"+hiq.getQoh()+"==quan issued---->"+quan_issued+"==quan remained--->"+l+"====quanRemainded in kgs"+quanRemained); 
                                          quan_issued=quan_issued/1000;
                                  }
                                  else if(itemObj.getUom().equalsIgnoreCase("nums"))
                                  {
                                           quanRemained=hiq.getQoh()-quan_issued;                                           
                                  }
                                  else
                                  {
                                   quanRemained=hiq.getQoh()-quan_issued; 
                                  }
                                  //calculate quan remained ends
                                 //updating QOH start 
                                  if(quanRemained>=0)
                                  {
                                        
                                      TransactionDetails td=new TransactionDetails(tmreturn.getTransId(), itemno);
                                      td.setQuantity(quan_issued);         //saves quan Issued in KGS
                                      td.setIssuedTo("COOK");
                                      td.setOpenBalance(hiq.getQoh());  
                                      td.setCloseBalance(quanRemained);
                                      tdList.add(td);                                      
                                     
                                      hiq.setQoh(quanRemained);
                                      inventoryDAO.saveHomeitemQoh(hiq);
                                     
                                  }
                                  else
                                  {
                                      message+="\n"+"quantity for item <"+inventoryDAO.getItem(String.valueOf(itemno)).getItemName()+"> is not sufficient.";
                                      mflag=true;
                                  }
                                  //updating QOH ends

                        }
                  }
                     boolean tdsave=inventoryDAO.saveBulkTransdetails(tdList);
                     if(!tdsave)
                     {
                              System.out.println("saveDietIssue()::trans roll backed");
                              return "trans detail failed";
                     }
                    if(mflag)
                    {
                         message+="\n"+"Other item issue details saved succesfully.";
                    }
                    else
                    {
                        message+="\nIssue details saved succesfully.";
                    }
        }
        catch(Exception e)
        {
            System.out.println("::in service ::saveDietIssue::Exceptio occured");
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            e.printStackTrace();
            return "trans detail failed";
        }
          
        return message; 
    }

    public List<BOMItemDto> populateBOM(String homeId,List<ItemMaster> imList) {
        List<BOMItemDto> blist=new ArrayList<BOMItemDto>();
        for(ItemMaster im:imList)
        {
            double sc=inventoryDAO.findBOMScale(inventoryDAO.getHomeMaster(homeId),im.getItemNo());
            
            BOMItemDto bdto=new BOMItemDto();
            bdto.setItemNo(im.getItemNo());
            bdto.setItemName(im.getItemName());
            bdto.setScale(sc);
            
            blist.add(bdto);
        }
        
        return blist;
        
    }

    public List<ItemDto> populate_rawCloth_items() 
    {
          String cattype="raw cloth";
          List<ItemMaster> imList=inventoryDAO.popItemsbyItemType(cattype);
         
          List<ItemDto> dtoList=new ArrayList<ItemDto>();
          
          for(ItemMaster im:imList)
          {
              ItemDto id=new ItemDto();
              
              id.setItemNO(im.getItemNo());
              id.setItemName(im.getItemName());
              id.setProductSubcatNo(im.getProductSubcatNo().getProductSubcatNo());
              id.setUnitPrice(im.getUnitPrice().floatValue());
              id.setSpecifications(im.getSpecifications());
              id.setUOM(im.getUom());
              
              dtoList.add(id);
              
          }
          
          return dtoList;
        
    }
@Transactional(readOnly=false,propagation= Propagation.REQUIRES_NEW)    //annotation added
    public String saveTailoringIssue(Date issueDate, String homeid, String letterno,String tailAddress, List<String> itemNumList, Map<String, String> itemQuanList, Map<String, String> itemRemList,String userId) 
    {
        String message="";
        boolean mflag=false;
        try{
        TransactionMaster tm=new TransactionMaster();
        tm.setHomeId(new HomeDetails(homeid));
        tm.setTransDate(issueDate);
        tm.setInvoiceNo(letterno);
        tm.setDonateReceivePurchaseFrom(tailAddress);
        tm.setTransType("TAILOR ISSUE");
        tm.setLastModifiedBy(userId);
        tm.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
        
        System.out.println("saveDietIssue()::trans master::"+tm);
        TransactionMaster tmreturn=inventoryDAO.saveTransMaster(tm);
        List<TransactionDetails> tdList=new ArrayList<TransactionDetails>();        
        
        for(String item:itemNumList)
        {
                 int itemno=Integer.parseInt(item);

                 HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, itemno);  
                 System.out.println("***i="+item+"****hiq returned***"+hiq);

                 if(hiq==null)
                 {             
                     message+="\n"+"quantity for item <"+inventoryDAO.getItem(item).getItemName()+"> is not sufficient.";
                     mflag=true;
                 }
                 else
                 {
                     System.out.println("***quantity in  im="+item+"****is***="+hiq.getQoh());

                     double quan_remained=hiq.getQoh()-Double.parseDouble(itemQuanList.get(item));
                     if(quan_remained>0)
                     {
                         TransactionDetails td=new TransactionDetails(tmreturn.getTransId(),itemno);
                         td.setQuantity(Double.parseDouble(itemQuanList.get(item)));
                         td.setOpenBalance(hiq.getQoh());
                         td.setCloseBalance(quan_remained);              
                         hiq.setQoh(quan_remained);
                         td.setIssuedTo("TAILOR");
                         td.setRemarks(itemRemList.get(item));
                         tdList.add(td);
                         inventoryDAO.saveHomeitemQoh(hiq);
                     }
                     else
                     {
                         message+="\n"+"quantity for item <"+inventoryDAO.getItem(item).getItemName()+"> is not sufficient.";
                         mflag=true;
                     }

                 }
       
         
         }
        
            boolean tdsave=inventoryDAO.saveBulkTransdetails(tdList);
            
            if(!tdsave)
       {
            //  tr.rollback();
              System.out.println("saveDietIssue()::trans roll backed");
              return "trans detail failed";
       }
            
            if(mflag)
            {
                 message+="\n"+"Other item issue details saved succesfully.";
            }
            else
            {
                message+="\nIssue details saved succesfully.";
            }
         
        } catch(Exception e)
        {
            System.out.println("----in service save donation before updating item quantity details**");
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            e.printStackTrace();
            return "trans detail failed";
        }
        
        
      
  
        return message;
    }

    public List<ItemDto> populate_stichCloth_items() {
        
       
         
          String cattype="stich cloth";
          List<ItemMaster> imList=inventoryDAO.popItemsbyItemType(cattype);
         
          List<ItemDto> dtoList=new ArrayList<ItemDto>();
                
          
         
          
          for(ItemMaster im:imList)
          {
              ItemDto id=new ItemDto();
              
              id.setItemNO(im.getItemNo());
              id.setItemName(im.getItemName());
              id.setProductSubcatNo(im.getProductSubcatNo().getProductSubcatNo());
              id.setUnitPrice(im.getUnitPrice().floatValue());
              id.setSpecifications(im.getSpecifications());
              id.setUOM(im.getUom());
              
              dtoList.add(id);
              
          }
          
          return dtoList;
        
    }
    @Transactional(readOnly=false,propagation= Propagation.REQUIRES_NEW)    //annotation added
    public boolean saveTailoringReceive(Date receiveDate, String homeid, String letterno, String tailAddress, List<String> itemNumList, Map<String, String> itemQuanList, Map<String, String> itemRemList,String userId) {
        
        try{  
        TransactionMaster tm=new TransactionMaster();
        tm.setHomeId(new HomeDetails(homeid));
        System.out.println("::In Service::saveDonationItems()::donateDate::"+receiveDate+":::from::"+tailAddress);
        tm.setTransDate(receiveDate);
        tm.setTransType("TAILOR RECEIPT"); 
        tm.setInvoiceNo(letterno);
        tm.setDonateReceivePurchaseFrom(tailAddress);
        tm.setLastModifiedBy(userId);
        tm.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
       // tm.setRemarks(donateRemarks);
        TransactionMaster tmreturn=inventoryDAO.saveTransMaster(tm);
        System.out.println("::In Service:::saveDonationItem()::transid got:::"+tmreturn.getTransId());
        List<TransactionDetails> tdList=new ArrayList<TransactionDetails>(); 
         
        
         for(String itemno:itemNumList)
         {
         
                 String quan=itemQuanList.get(itemno).trim();
                 HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeid, Integer.parseInt(itemno));
                 
                 System.out.println("***i="+itemno+"****hiq returned***"+hiq);
                  
                   TransactionDetails td=new TransactionDetails(tmreturn.getTransId(), Integer.parseInt(itemno));
                   td.setQuantity(Double.parseDouble(quan));
                 //td.setIssuedTo(homeid);
                   
                   td.setRemarks(itemRemList.get(itemno));
           
                  Double quanClose;
                  if(hiq==null)
                 {
                     td.setOpenBalance(0.0);
                     hiq=new HomeItemQoh(homeid, Integer.parseInt(itemno));
                     quanClose=Double.parseDouble(quan);
                     hiq.setQoh(quanClose);
                     td.setCloseBalance(quanClose);
                     tdList.add(td);

                 }
                 else
                 {
                     System.out.println("***quantity in  im="+itemno+"****is***="+hiq.getQoh());
                     td.setOpenBalance(hiq.getQoh());
                     quanClose=hiq.getQoh()+Float.parseFloat(quan);
                     hiq.setQoh(quanClose);
                     td.setCloseBalance(quanClose);
                     tdList.add(td);
                 }
                      
          inventoryDAO.saveHomeitemQoh(hiq);   
              }
            inventoryDAO.saveBulkTransdetails(tdList);
        
        }catch(Exception e)
        {
            System.out.println("----exception tail recv--->");
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            e.printStackTrace();
            return false;
        }
            
        return true;
         
        
        
    }

    public List<TransDto> viewDonation(String homeId, Date fromDate, Date toDate,String type) 
    {
           List<TransactionMaster> tmList=inventoryDAO.getTMBetweenDates(homeId,fromDate,toDate,type);
           
           List<TransDto> transDtoList=new ArrayList<TransDto>();
           
           for(TransactionMaster tm:tmList)
           {
               TransDto transDto=new TransDto();
               transDto.setTm(tm);
               
               List<TransactionDetails> tdList=inventoryDAO.getTransDetailsByTM(tm.getTransId());
               List<TransObjectDto> tdObjList=new ArrayList<TransObjectDto>();
               
                for (TransactionDetails transDetails : tdList) {
                   
                   String itemName=transDetails.getItemMaster().getItemName();
                   TransObjectDto transObjDto=new TransObjectDto();
                   if(transDetails.getIssuedTo()!=null)
                   {
                   if(transDetails.getIssuedTo().equals("sh")||transDetails.getIssuedTo().equals("SH"))
                   {
                       IssueDetails id=inventoryDAO.getIssueDetails(new Integer(transDetails.getTransactionDetailsPK().getTransId()).toString(),transDetails.getItemMaster().getItemNo().toString()).get(0);
                       
                       transDetails.setIssuedTo(id.getIssueDetailsPK().getUseridProfileid());
                   }
                   }
                   
                   transObjDto.setTd(transDetails);
                   transObjDto.setItemName(itemName);
                   
                   tdObjList.add(transObjDto);
               }

               
               transDto.setTdList(tdObjList);           
               transDtoList.add(transDto);
           }
           
           return transDtoList;
    }
       public List<ItemMaster> getRationItems(String home_id) {
       HomeMaster hm=inventoryDAO.getHomeMaster(home_id);
                     
       int pcs=inventoryDAO.findCatNoByNameHomeId("ration",hm);   
       
       
                       
       return inventoryDAO.populate_itemDetails(pcs);
    }

    public List<TransactionDetails> getAllRationTransactions(Date date,String homeId) {
          //System.out.print("IN SERVICE------------date for td->"+date);
          List<TransactionMaster> tmlist = inventoryDAO.getIssuesInDate(date,homeId,"DIET ISSUE");
          
          //System.out.print("----Num of transactions num of items="+tmlist.size());
          List<TransactionDetails> tdlist=new ArrayList<TransactionDetails>();
          for(int i=0;i<tmlist.size();i++)
          {
              //System.out.println("----Num of items in"+tmlist.get(i).getTransId()+" transactions num of items="+tdlist.size());
              tdlist.addAll(inventoryDAO.getTransDetailsByTM(tmlist.get(i).getTransId())); 
          }
        
      
      /*    List<TransactionDetails> f_tdlist=new ArrayList<TransactionDetails>();
          Iterator<TransactionDetails> itr=tdlist.iterator();
              while(itr.hasNext())
              {
                  TransactionDetails td=(TransactionDetails)itr.next(); 
                  //System.out.println("in service-------getAllRationTrans------->"+td.getIssuedTo());
                  if(td.getIssuedTo()!=null&&td.getIssuedTo().equalsIgnoreCase("COOK"))
                  {
                     
                       f_tdlist.add(td);
                  }
                   //System.out.println("\n----Num of trans for cook--"+f_tdlist.size());
              }   */
     
          //return f_tdlist;
          
          return tdlist;
    }

     public Map<Integer,int[]> getNumChilds(String home,String cmonth,String cyear)
    {
        try{
        int month=Integer.parseInt(cmonth);
        int year=Integer.parseInt(cyear);
        
        Map<Integer,int[]> childAgeMap=new HashMap<Integer,int[]>();
           
            Calendar calCurr = GregorianCalendar.getInstance();
            calCurr.set(year, month-1, 1); // Months are 0 to 11
           
            
            
            
            System.out.println("Last Day of Month: " + calCurr.getActualMaximum(GregorianCalendar.DAY_OF_MONTH));
            Calendar calCurr2 = GregorianCalendar.getInstance();
            calCurr2.set(year, month-1, calCurr.getActualMaximum(GregorianCalendar.DAY_OF_MONTH)); // Months are 0 to 11
            
            
            
            SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
            Date fromDate,toDate;        
       
                fromDate = new Date(calCurr.getTime().getTime());
                fromDate= sdf.parse(sdf.format(fromDate));
           
            System.out.println("fromdate converted--------------->"+fromDate);  
            
            
               toDate=  new Date(calCurr2.getTime().getTime());
               toDate= sdf.parse(sdf.format(toDate));
            System.out.println("todate converted--------------->"+toDate);  
            
            
            
            
            List<TransactionMaster> tmList=inventoryDAO.getTMBetweenDates(home, fromDate, toDate, "DIET ISSUE");
            boolean isNew=false;
            if(!tmList.isEmpty())
            {
                for (Iterator<TransactionMaster> it = tmList.iterator(); it.hasNext();) {
                    TransactionMaster transactionMaster = it.next();
                    
                    if(transactionMaster.getRemarks().startsWith("sr:"))
                    {
                        isNew=true;
                    
                    }
                }
 
               if(isNew)
               {
                    Calendar cal=Calendar.getInstance();
                    for(int i=1;i<=tmList.size();i++)
                    {
                        TransactionMaster tm=tmList.get(i-1);

                        cal.setTime(tm.getTransDate());
                        int day=cal.get(Calendar.DAY_OF_MONTH);
                        String rem=tm.getRemarks();

                        int[] c=new int[2];
                        c[0]=Integer.parseInt(rem.substring(rem.indexOf(':')+1, rem.indexOf('-')));
                        c[1]=Integer.parseInt(rem.substring(rem.lastIndexOf(':')+1,rem.length()));

                        childAgeMap.put(day, c);

                    }

                    System.out.println("child age map---->"+childAgeMap);

                    //return childAgeMap;
        
               }
        
            }
            else
            {
                
            }
                    return childAgeMap;
                    
     /*   Map<String,Date> dobMap=new HashMap<String, Date>();
        
        List<ChildMaster> childList=inventoryDAO.popChildsInHome(home);
          Calendar cal=Calendar.getInstance();
          Iterator<ChildMaster> citr1=childList.iterator(); 
           while(citr1.hasNext())
            {
                ChildMaster cm=citr1.next();
               // System.out.println("--------------adm-->"+cm.getDateTimeAdm());
              //  System.out.println("----------------dis-->"+cm.getDischargeRegister().getTransDischargeDate());
                
                ChildDetails cd=inventoryDAO.getChildDetails(cm.getChildProfileId()); 
                
                
                  Date dob,fromDate1;
                  if((cd==null)||(cd.getDob()==null))  
                  {
                        fromDate1= cm.getDateTimeAdm();
                        Calendar cal1=Calendar.getInstance();
                        cal1.setTime(fromDate1);
                        cal1.set(Calendar.YEAR,cal.get(Calendar.YEAR)-cm.getAge());
                        dob=cal1.getTime();
                  }
                  else
                  {
                      dob=cd.getDob();
                  }
        
                  
                  dobMap.put(cm.getChildProfileId(), dob);
            }      
       // Map<Integer,int[]> childAgeMap=new HashMap<Integer,int[]>();
        
        
        
        
        
         Calendar cal2=Calendar.getInstance();
         Calendar cal3=Calendar.getInstance();
         Calendar cal4=Calendar.getInstance();
        
      //  System.out.println("----------->year-->"+year+"------>month-->"+month+"---->child list size-->"+childList.size());
        
      
        for(int i=1;i<=31;i++)
        {
            int srChild=0;
            int jrChild=0;
            int tChild=0; 
            cal2.set(year, month-1, i);
            Iterator<ChildMaster> citr=childList.iterator(); 
            while(citr.hasNext())
            {
               
                  ChildMaster cm=citr.next();
                  cal3.setTime(cm.getDateTimeAdm());
                  
                  
                if(cm.getDischargeRegister()!=null)
                {
                    cal4.setTime(cm.getDischargeRegister().getTransDischargeDate());
                    if((cal2.after(cal3)&&cal2.before(cal4)))
                {
                            tChild=tChild+1;                            
                            if(CurrentDateProvider.getYears(dobMap.get(cm.getChildProfileId()), cal2.getTime())>14)
                            {
                                srChild+=1;
                            }
                            else
                            {
                                jrChild+=1;
                            }
                }         
                }  
                else
                {
                           tChild=tChild+1;                            
                            if(CurrentDateProvider.getYears(dobMap.get(cm.getChildProfileId()), cal2.getTime())>14)
                            { 
                                srChild+=1;
                            }
                            else
                            {
                                jrChild+=1;
                            }
                }
            }
            
            //System.out.println("in service----i--"+i+"----tc-->"+tChild+"----sr-->"+srChild+"------jr-->"+jrChild);
            int age_day[]={srChild,jrChild};
            childAgeMap.put(i, age_day);
            
        }
        
        
        return childAgeMap;
        */
        
        }catch (ParseException ex) {
            System.out.println("Parse---->"+ex);
            return null;
        }
    }
      public IssueDetail viewIssueDetail(String transId,String itemNo) {
        
         TransactionMaster tm=inventoryDAO.getTransMaster(transId);
         ItemMaster im=inventoryDAO.getItem(itemNo);
         
         
         IssueDetail id=new IssueDetail();
         id.setDate(tm.getTransDate());
         id.setItem(im.getItemName());
        // id.getItem()
         
        
        
         List<IssueDetails> issuedetail=inventoryDAO.getIssueDetails(transId,itemNo);  
         Iterator<IssueDetails> idItr=issuedetail.iterator();
         
       //  List<ChildDetails> cmList=new ArrayList<ChildDetails>();
         
         while(idItr.hasNext())
         {
             String childId=idItr.next().getIssueDetailsPK().getUseridProfileid();
             ChildMaster cm=inventoryDAO.getChildMaster(childId);
             
             if(cm!=null)
             {
                   id.getIssued_child().add(cm);
             }
             else
             {
                 System.out.println("---------->issue child null"+cm);
             }
             
         }
         
        System.out.println("issued childs----------"+id.getIssued_child());
         
         //(cmList);
         
         return id;
    }

 public Map<String, String> getAllHomesExcept(String loggedInhome)
    {
        Map<String,String> hometype=new HashMap();
        hometype.put("CHB", "Children Home For Boys");
        hometype.put("RUB", "Reception Unit For Boys");
        hometype.put("CHG", "Children Home For Girls");
        hometype.put("RUG", "Reception Unit For Girls");
        hometype.put("OHB", "Observation Home For Boys");
        hometype.put("SHB", "Special Home For Boys");
        hometype.put("OHG", "Observation Home For Girls");
        hometype.put("SHG", "Special Home For Girls");  
        
      List<HomeDetails>   allHomeDetails=inventoryDAO.popAllHomeDetails();
      
      Map<String,String> loanHomesMap=new TreeMap<String, String>();
      String keyStr,valStr="";
      
      Iterator<HomeDetails> homeDetItr=allHomeDetails.iterator();
      
      while(homeDetItr.hasNext())
      {
          HomeDetails hd=(HomeDetails)homeDetItr.next();
          String home_id=hd.getHomeMaster().getHomeId();
          if(home_id.equals(loggedInhome)||home_id.contains("RUB")||home_id.contains("RUG"))                             //modified on 6/7/2012
          {
            
          }
          else
          {
            valStr=valStr+ hometype.get(hd.getHomeMaster().getHomeName());
            valStr=valStr+","+hd.getHomeMaster().getDistrictId().getDistrictName();
            valStr=valStr+"("+hd.getHomeAddress()+")";
            loanHomesMap.put(hd.getHomeId(), valStr);
          }
          
          valStr="";
      }
      
     return  loanHomesMap;
      
    }

    @Transactional(readOnly=false,propagation= Propagation.REQUIRES_NEW)    //annotation added
    public boolean saveLoan(String homeId, String loan_date, String loanGiveOrTake, String loan_homeId, String loan_remarks, List<String> receiptitemChecked, Map<String, String> receiptitem_qoh, Map<String, String> receiptitem_remarks, String userId) {
        try{
         TransactionMaster tm=new TransactionMaster();
         tm.setHomeId(new HomeDetails(homeId));
       //  System.out.println("::In Service::saveReceiptItems()::receiptDate::"+receipt_date+":::from::"+receipt_from+"::remarks::"+receipt_remarks);
         tm.setTransDate(StringToDate.getStringToDate(loan_date));
         if(loanGiveOrTake.equalsIgnoreCase("g"))
                tm.setTransType("LOAN GIVEN"); 
         if(loanGiveOrTake.equalsIgnoreCase("t"))
                tm.setTransType("LOAN TAKEN"); 
         tm.setDonateReceivePurchaseFrom(loan_homeId);
         tm.setRemarks(loan_remarks);
         tm.setLastModifiedBy(userId);
         tm.setLastModifiedDate(CurrentDateProvider.getCurrentDate());
         
         
         TransactionMaster tmreturn=inventoryDAO.saveTransMaster(tm);
         
         
         System.out.println("::In Service:::saveReceiptItem()::transid got:::"+tmreturn.getTransId());
          List<TransactionDetails> tdList=new ArrayList<TransactionDetails>(); 
         
         for(int i=0;i<receiptitemChecked.size();i++)
         {
         String im=receiptitemChecked.get(i);
         System.out.println("--in service--saveDonationItems()---itemno="+im+"--quan="+receiptitem_qoh.get(im)+"---remarks="+receiptitem_remarks.get(im));
         
         TransactionDetails td=new TransactionDetails(tmreturn.getTransId(), Integer.parseInt(im));
         td.setQuantity(Double.parseDouble(receiptitem_qoh.get(im).trim()));
         //td.setIssuedTo(homeid);
         td.setRemarks(receiptitem_remarks.get(im));
         tdList.add(td);
          }
        
            inventoryDAO.saveBulkTransdetails(tdList);
         
        } catch(Exception e)
        {
            System.out.println("----in service save donation before updating item quantity details**");
            e.printStackTrace();
            return false;
        }
        
        //updating quantity in home
        
        try{
          
              for(int i=0;i<receiptitemChecked.size();i++)
              {
                  String im=receiptitemChecked.get(i);
                  HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(homeId, Integer.parseInt(im));
                  HomeItemQoh hiq_loan=inventoryDAO.getHomeItemQoh(loan_homeId, Integer.parseInt(im));
         
         System.out.println("***i="+i+"****hiq returned***"+hiq);
         if(loanGiveOrTake.equalsIgnoreCase("t"))
         {
         if(hiq==null)
         {
             HomeItemQoh hiqn=new HomeItemQoh(homeId, Integer.parseInt(im));
             hiqn.setQoh(Double.parseDouble(receiptitem_qoh.get(im)));
             inventoryDAO.saveHomeitemQoh(hiqn);
             
         }
         else
         {
             System.out.println("***quantity in  im="+im+"****is***="+hiq.getQoh());
             
             hiq.setQoh(hiq.getQoh()+Float.parseFloat(receiptitem_qoh.get(im)));
 //            hiq_loan.setQoh(hiq_loan.getQoh()-Float.parseFloat(receiptitem_qoh.get(im)));
             inventoryDAO.saveHomeitemQoh(hiq);
            // inventoryDAO.saveHomeitemQoh(hiq_loan);
         
         }
         }
         else if(loanGiveOrTake.equalsIgnoreCase("g"))
         {
//             if(hiq_loan==null)
//             {
//                 HomeItemQoh hiqn=new HomeItemQoh(loan_homeId, Integer.parseInt(im));
//                 hiqn.setQoh(Float.parseFloat(receiptitem_qoh.get(im)));
//                 inventoryDAO.saveHomeitemQoh(hiqn);
//
//             }
//             else
//             {
                 System.out.println("***quantity in  im="+im+"****is***="+hiq.getQoh());

                 hiq.setQoh(hiq.getQoh()-Float.parseFloat(receiptitem_qoh.get(im)));
//                 hiq_loan.setQoh(hiq_loan.getQoh()+Float.parseFloat(receiptitem_qoh.get(im)));
                 inventoryDAO.saveHomeitemQoh(hiq);
             //    inventoryDAO.saveHomeitemQoh(hiq_loan);

//             }
         }
         
              }
         
        
        }catch(Exception e)
        {
            System.out.println("----in service save receipt after updating item quantity details**");
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            e.printStackTrace();
            return false;
        }
        
            return true;
        
    }

    @Override
    public List<LoanDto> getLoansOfType(String loggedInhome, String pbtype) {
        List<LoanDto> loanDtoList=new ArrayList<LoanDto>();
        if(pbtype.equals("m"))
        {
            System.out.println("loggedInhome = " + loggedInhome);
           List<TransactionMaster> tmList =inventoryDAO.getTMByTypes(loggedInhome,"LOAN TAKEN");
            System.out.println("tmList.size() = " + tmList.size());
           
           for(int i=0;i<tmList.size();i++)
           {
               TransactionMaster tm=tmList.get(i);
               
               List<TransactionDetails> tdList=inventoryDAO.getTransDetailsByTM(tm.getTransId());
               
                LoanDto ld=new LoanDto();
                   ld.setTransId(tm.getTransId().toString());
                   ld.setLoanDate(tm.getTransDate());
                   ld.setLoanStatus(tm.getTransType());
                   
                   String homeid=tm.getDonateReceivePurchaseFrom();
                   if("other".equalsIgnoreCase(homeid))
                   {
                       ld.setLoanHome("other");
                   }
                   else
                   {
                   HomeDetails hd=inventoryDAO.getHomeDetails(homeid);                   
                   ld.setLoanHome(hd.getHomeId()+"("+hd.getHomeAddress()+")");
                   }
               Iterator<TransactionDetails> tdItr=tdList.iterator();
               List itemList=new ArrayList();
               List quanList=new ArrayList();
               while(tdItr.hasNext())
               {
                   TransactionDetails td=tdItr.next();                  
                   itemList.add(td.getItemMaster().getItemName());                  
                   quanList.add(td.getQuantity());                   
               }
                   ld.setLoanItem(itemList);
                   ld.setLoanQuan(quanList);
                loanDtoList.add(ld);
           }
        }
        if(pbtype.equals("a"))
        {
            List<TransactionMaster> tmList =inventoryDAO.getTMByTypes(loggedInhome,"LOAN GIVEN");
            
           for(int i=0;i<tmList.size();i++)
           {
              TransactionMaster tm=tmList.get(i);
               
               List<TransactionDetails> tdList=inventoryDAO.getTransDetailsByTM(tm.getTransId());
               
                LoanDto ld=new LoanDto();
                   ld.setTransId(tm.getTransId().toString());
                   ld.setLoanDate(tm.getTransDate());
                   ld.setLoanStatus(tm.getTransType());
                   
                    String homeid=tm.getDonateReceivePurchaseFrom();
                   if("other".equalsIgnoreCase(homeid))
                   {
                       ld.setLoanHome("other");
                   }
                   else
                   {
                   
                     HomeDetails hd=inventoryDAO.getHomeDetails(homeid);                   
                      ld.setLoanHome(hd.getHomeId()+"("+hd.getHomeAddress()+")");
                   }
               Iterator<TransactionDetails> tdItr=tdList.iterator();
               List itemList=new ArrayList();
               List quanList=new ArrayList();
               while(tdItr.hasNext())
               {
                   TransactionDetails td=tdItr.next();                  
                   itemList.add(td.getItemMaster().getItemName());                  
                   quanList.add(td.getQuantity());                   
               }
                   ld.setLoanItem(itemList);
                   ld.setLoanQuan(quanList);
                loanDtoList.add(ld);
           }
        }
        System.out.println("loanDtoList.size() = " + loanDtoList.size());
        return loanDtoList;
    }

    public boolean savePayBack(String pbtype, List<String> loanTransId, Date payBack_Date, String payBack_remarks) {
        try {
            
      
                
          Iterator<String> tranItr=loanTransId.iterator();
          
           while(tranItr.hasNext())
           {
                TransactionMaster tm= inventoryDAO.getTransMaster(tranItr.next());
                
                List<TransactionDetails> tdList=inventoryDAO.getTransDetailsByTM(tm.getTransId());
                
                for (int i = 0; i < tdList.size(); i++)
                {
                   TransactionDetails td = tdList.get(i);
                   
                   
                   HomeItemQoh hiq=inventoryDAO.getHomeItemQoh(tm.getHomeId().getHomeId(), td.getItemMaster().getItemNo());
                   
                   if(pbtype.equalsIgnoreCase("m"))
                   {
                        hiq.setQoh(hiq.getQoh()-new Double(td.getQuantity()).floatValue());
                   }
                   else  if(pbtype.equalsIgnoreCase("a"))
                   {
                        hiq.setQoh(hiq.getQoh()+new Double(td.getQuantity()).floatValue());
                   }
                   inventoryDAO.saveHomeitemQoh(hiq);
                 }
                 if(pbtype.equalsIgnoreCase("m"))
                   {
                       tm.setTransType("LOAN CLEARED");
                   }
                  else  if(pbtype.equalsIgnoreCase("a"))
                   {
                       tm.setTransType("LOAN CREDITED");
                   }
                 tm.setLastModifiedDate(payBack_Date);
                 tm.setRemarks(tm.getRemarks()+":"+payBack_remarks);
                 inventoryDAO.saveTransMaster(tm);
            }
           
                return true;
          } catch (Exception e) {
              e.printStackTrace();
              return false;
        }
        
    }

     public String addMenuItem(String[] nameMenu, String[] menuType, String homeId) {
        List<MenuMaster> mmList=new ArrayList<MenuMaster>();
        for (int i = 0; i < nameMenu.length; i++) {
            String string = nameMenu[i];
            
            MenuMaster mm=new MenuMaster();
            if(nameMenu[i].equals("")||menuType[i].equals("1"))
            {
                return null;
            }
            mm.setItemName(nameMenu[i]);
            mm.setType(menuType[i]);
            mm.setHomeId(homeId);
            mmList.add(mm);
        }
             
       boolean msg= inventoryDAO.addMenuList(mmList);
        if(msg)
        {
            return "success";
        }
        else
        {
            return "failure";
        }
        
    }

    public List getMenuMap(String homeId) {
        
     //   Map<String,List<MenuMaster>> menuMap=new HashMap<String, List<MenuMaster>>();
        
        HomeMaster hm=inventoryDAO.getHomeMaster(homeId);
        
        List<MenuMaster> mmlist=inventoryDAO.getMenuMap(hm);
        
        if(mmlist==null)
            return null;
        
        return mmlist;
        
        
    }

     public String saveMenuDetail(Date menu_date, List bitem_check, List litem_check, List sitem_check, List ditem_check, String break_qty, String lunch_qty, String snacks_qty, String dinner_qty)
     {
      //   System.out.println("in service---->saveMenuDetail()----break---size==>"+bitem_check.size()+"--breakItem--"+bitem_check.get(0)+"--dinneritem-->"+ditem_check.get(0)); 
        List<MenuDetail> mdlist=new ArrayList<MenuDetail>();
        
        MenuDetail md;
        try{
        if(bitem_check!=null)
        {
            if(!bitem_check.isEmpty())
            {
            for (int i = 0; i < bitem_check.size(); i++) {
                md=new MenuDetail(Integer.parseInt((String)bitem_check.get(i)), menu_date);
                md.setNumChild(Integer.parseInt(break_qty));
                mdlist.add(md);
            }
            }
        }
        if(litem_check!=null)
        {
            if(!litem_check.isEmpty())
            {
            for (int i = 0; i < litem_check.size(); i++) {
                md=new MenuDetail(Integer.parseInt((String)litem_check.get(i)), menu_date);
                md.setNumChild(Integer.parseInt(lunch_qty));
                mdlist.add(md);
            }
            }
        }
        if(sitem_check!=null)
        {
            if(!sitem_check.isEmpty())
            {
            for (int i = 0; i < sitem_check.size(); i++) {
                md=new MenuDetail(Integer.parseInt((String)sitem_check.get(i)), menu_date);
                md.setNumChild(Integer.parseInt(snacks_qty));
                mdlist.add(md);
            }
            }
        }
        if(ditem_check!=null)
        {
            if(!ditem_check.isEmpty())
            {
            for (int i = 0; i < ditem_check.size(); i++) {
                md=new MenuDetail(Integer.parseInt((String)ditem_check.get(i)), menu_date);
                md.setNumChild(Integer.parseInt(dinner_qty));
                mdlist.add(md);
            }
            }
        }
        }
        catch(java.lang.NumberFormatException e)
        {
            e.printStackTrace();
            return "err_numChild";
        }
        
        catch(Exception e)
        {
            e.printStackTrace();
            return "error";
        }
         System.out.println("mdlist size--->"+mdlist.size());
        boolean sta=inventoryDAO.saveMenuDetails(mdlist);
        
        if(sta)
            return "success";
        else
            return "error";
        
    }

    public List<MenuDetail> viewMenuDetail(String viewMenu_date,String homeId) {
        List<MenuDetail> mdList=inventoryDAO.getMenuDetail(StringToDate.getStringToDate(viewMenu_date), homeId);
        
        
        return mdList;
    }

     public TransDto viewDietIssue(Date view_date,String home_id) {
        
        TransDto tdto=new TransDto();
        List<TransactionMaster> tm=inventoryDAO.getTMsOnDate(view_date,home_id,"DIET ISSUE");
        if(!tm.isEmpty())
        {
        List<TransObjectDto> todList=new ArrayList<TransObjectDto>();
      if(tm!=null)
      {
          for (Iterator<TransactionMaster> it = tm.iterator(); it.hasNext();) {
              TransactionMaster t = it.next();
              
        
  
        List<TransactionDetails>  tdList=inventoryDAO.getTransDetailsByTM(t.getTransId()); 
        
             for (TransactionDetails transDetail : tdList) {
            
                    TransObjectDto tod=new TransObjectDto();

                    tod.setItemName(transDetail.getItemMaster().getItemName());
                       transDetail.setQuantity(transDetail.getQuantity());  //for displaying in KGS
                    tod.setTd(transDetail);

                    todList.add(tod);
             }
          }
      }
        String rem=tm.get(0).getRemarks();
        String sr=rem.substring(3, rem.indexOf('j')-1);
        String jr=rem.substring(rem.indexOf('j')+3,rem.length());
        
        tm.get(0).setRemarks("Senior:"+sr+"   "+"Junior:"+jr);
        tdto.setTm(tm.get(0));  
        tdto.setTdList(todList); 
        }
        System.out.println("servce--->viewDietIssue()--->tdto==="+tdto);
        return tdto;
    }
 
    public long numChild_menu(String homeId) {
       try {
            long n2=0; 
                    
              long  n1=inventoryDAO.getNumChildHome(homeId);
            
             System.out.println("n1----->"+homeId+"---"+n1);
            
            if(homeId.contains("CHB"))
            {
               homeId= homeId.replace("CHB", "RUB");
               n2=inventoryDAO.getNumChildHome(homeId);
                
            }
            else if(homeId.contains("CHG"))
            {
               homeId= homeId.replace("CHG", "RUG");
               n2=inventoryDAO.getNumChildHome(homeId);
            }
           
            System.out.println("ch----->"+(n1+n2));
            
             return n1+n2;
             
             
                
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
  
       
    }
    
     public boolean saveSinBOM(int itemNo, double scale,String homeId,String modBy,Date modDate) {
        return  inventoryDAO.saveDietChart(itemNo,scale,homeId,modBy,modDate);
              
    }

    public List<RepTransDTO> getRepTransJSON(String loggedInhome, String rMonth, String rYear, String trType) {
       List<RepTransDTO> repDtoList= new ArrayList<RepTransDTO>();
        try {
            
            int rmonth=Integer.parseInt(rMonth);
            int ryear=Integer.parseInt(rYear);            
            DateFormat outForm = new SimpleDateFormat("dd/MM/yyyy");
            
            
            Map<String,String> trMap=new HashMap<String,String>();
            trMap.put("p", "PURCHASE");
            trMap.put("r", "RECEIPT");
            //trMap.put("q", "RECEIPT','PURCHASE");
            trMap.put("i", "ISSUE");
            
            System.out.println("service--->repTrans--->"+loggedInhome+"---->"+rmonth+"---->"+ryear+"--trType-->"+trType);
            List<TransactionMaster> tmList=inventoryDAO.getTMInMonth(loggedInhome,rmonth,ryear,trMap.get(trType));
            Iterator<TransactionMaster> tmItr = tmList.iterator();
            
            while(tmItr.hasNext())
            {
                TransactionMaster tm = tmItr.next();                
                Collection<TransactionDetails> tdCol=tm.getTransactionDetailsCollection();
                
                for (TransactionDetails td : tdCol) {
                    
                    RepTransDTO rdto=new RepTransDTO();
                    rdto.setTransID(tm.getTransId());
                    rdto.setTransDate(outForm.format(tm.getTransDate()));
                    if (trType.equals("i")) {
                        if(td.getIssuedTo().equals("sh"))
                        {      
                            rdto.setTransFrom("Stake Holder");
                        }
                        else if(td.getIssuedTo().equals("in"))
                        {
                             rdto.setTransFrom("Inmates");
                        }
                    } else {
                        rdto.setTransFrom(tm.getDonateReceivePurchaseFrom());
                    }
                    
                    rdto.setInvNum(tm.getInvoiceNo());
                       if(tm.getInvoiceDate()!=null)
                           rdto.setInvDate(outForm.format(tm.getInvoiceDate()));
                       else
                           rdto.setInvDate("");
                       
                      if(tm.getRemarks().equals("")) 
                           rdto.setRemarks("-");   
                      else
                          rdto.setRemarks(tm.getRemarks());
                      
                    rdto.setItemNO(td.getItemMaster().getItemNo());
                    rdto.setItemName(td.getItemMaster().getItemName());
                    rdto.setQuanRecv(td.getQuantity());
                    if(td.getOpenBalance()==null)
                    {
                        rdto.setOpenBal(0.0);
                    }else
                    {
                        rdto.setOpenBal(td.getOpenBalance());
                    }
                    if(td.getCloseBalance()==null)
                    {
                        rdto.setCloseBal(0.0);
                    }else
                    {
                        rdto.setCloseBal(td.getCloseBalance());
                    }
                    
                    if(td.getRemarks().equals(""))
                        rdto.setItemRemarks("-");
                    else
                        rdto.setItemRemarks(td.getRemarks());   
                    
                    rdto.setOperType(tm.getTransType());                    
                    
                    repDtoList.add(rdto);
                }
               
            }
            
           
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
         return repDtoList;
    }

}




    
    

