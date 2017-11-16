/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.ds.dao;


import com.cdac.usermanagement.ORM.ChildDetails;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.DietChart;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.HomeDetails;
import com.cdac.usermanagement.ORM.HomeItemQoh;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.IssueDetails;
import com.cdac.usermanagement.ORM.ItemMaster;
import com.cdac.usermanagement.ORM.MenuDetail;
import com.cdac.usermanagement.ORM.MenuMaster;
import com.cdac.usermanagement.ORM.ProductCatSubcat;
import com.cdac.usermanagement.ORM.TransactionDetails;
import com.cdac.usermanagement.ORM.TransactionMaster;
import com.cdac.usermanagement.ORM.UserDetail;
import com.cdac.usermanagement.ORM.UserMaster;
import java.util.Date;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ksuresh
 */

public interface InventoryDAO {
    
    /**
     gives list of top category names
     */
  //  public List populate_top_cat();    
    
    
    /**Returns sub category names for a given cat name.
      @param catname to get 
     */
   // public List populate_sub_cat(String top_cat);
    
 
    /**Returns category number for the cat name
      @param catname
      @return catnum
     */
    //suresh added 13-01-2011 start
    public List<DistrictMaster> displayMap();
    
    public List<ChildMaster> countChild_home(String home_id);
    
    public List<HomeMaster> populateDis_Home(DistrictMaster dis_id);

    
    public List<Integer> findCatNoByName(String catname);
    
    //suresh added 13-01-2011 end
    /**Adds the category to the underlying DB
      @param object of ProductCatSubcat
     */
    public boolean addCategory(ProductCatSubcat pcs);
    
    
    /**Removes the category from the underlying DB
      @param product subcat num
     */
    public boolean removeCategory(int prodSubcatNo);
    public boolean saveRationIssue(ItemMaster im);
    
    /**Saves the transaction master in the underlying DB
     @param object of Transaction master to be saved
     @return same trans master object after saving
     */
    public TransactionMaster saveTransMaster(TransactionMaster tm);
    
  //  public boolean saveTransDetails(TransactionDetails td);
    
    /**Saves the transaction details list  in the underlying DB
     @param list object of Transaction details to be saved
    */
    public boolean saveBulkTransdetails(List<TransactionDetails> tdbulk);
    

    
    public boolean saveItemUserTrans(List<IssueDetails>isList);
    /**
     Adds the item to the underlying DB
     @param object of ItemMaster
     */
   public ItemMaster addItem(ItemMaster im);

  //  public List populate_item(String catselect);
 //   public List populate_item();
    
    /**returns cat num for catname passed*/
    
   // public int populate_sub_catNo(String top_cat);
  
    /**
     Removes item by name from the underlying DB
     @param  name of the item
     */
//    public boolean removeItemByName(String itemName);
    
     /**
     Removes list of items by name from the underlying DB
     @param  name of the item
     */
    public boolean removeItemList(List itemNoList);
    
    /**populates BOM based on bomno passed*/
    
    public List<DietChart> findDietChart(String homeId);
    
    /**
     Returns list of subcat nums for the cat num passed
     */
    public List findSubcatByNo(int catno);
    
    /**
     Returns name of cat for the cat num passed
     @param  cat num
     @return cat name
     */
    public String findCatNameByNO(int catno);
    
    /**
     Returns item num for item name
     @param item name
     @return item num
     */
    public ItemMaster findItemNoByName(String itemName);
    
    /**
     Returns the list of items under cat num passed
     @param  catnumber
     @return list of item objects
     */
    public List<ItemMaster> populate_itemDetails(int catselect);

    
    /**
     Returns item object for the item number
     @param item number
     @return Object of item master
     */
   
    public ItemMaster getItem(String itemNo);
    
    
    /**
     Returns home item qunatiry object for the passed homeid and itemnum
     @param homeid and itemid
     @return object of HomeItemQoh
     */
    public HomeItemQoh getHomeItemQoh(String home_id,int itemNo);
    
    
    /**
     Saves the homeitemqoh in the underlying DB
     @param object of HomeItemQoh
     @return true if object is saved
     */
    public boolean   saveHomeitemQoh(HomeItemQoh hiQoh);
    /**
     * returns BOM max number/
     * 
     */
    public int getMaxBOM();
    
    
   // public boolean incrementItem(List<HomeItemQoh> homeQuanList);
   // public boolean decremrntItem(List homeQuanList,List<Double> quanList);
   // public boolean decrementItem(List<HomeItemQoh> homeQuanList);
    
    
    /**
     Returns product cat subcat object for subcat num passed
     */
    public ProductCatSubcat getProductCatSubcat(int prno);
    
    
    /**
     Returns list of product cat subcat objects under category num passed
     @param product cat num
     @return list of pcs objects for categories under catnum passed
     */
  //  public List<ProductCatSubcat> popCategoryByName(String cat);
    
    public boolean saveBulkItemDetails(List<ItemMaster> itemBulk);
    
    /**populates sub categories under cat number passed*/
    
    public List<ProductCatSubcat> popCategoryByNo(int prno);
    
     public List<ProductCatSubcat> popTopCatByHomeId(int prno,HomeMaster hm);
    
    /**Gives list of user names in a particular home*/
    public List populateUsersInHome(String homeid);

    /**Gives list of Child master profiles in a particular home*/
     public  List<ChildMaster> popChildsInHome(String homeid);
     
   /**saves list of diet chart items*/
     public boolean saveBulkDietChartDetails(List<DietChart> dietclartList);
     
     /**gives  bom scale for a item passed*/
     public double findBOMScale(HomeMaster hm,int itemno);
     
   /**gives list of item master under category type(itemType) passed*/
     public List<ItemMaster> popItemsbyItemType(String cattype);
     
   /**gives cat number based on itemType passed*/  
     public int findCatNoByItemType(String itemType);
     
     public HibernateTemplate getHibernateTemplate();

    public List<TransactionMaster> getTMBetweenDates(String homeId, Date fromDate, Date toDate,String type);

    public List<TransactionDetails> getTransDetailsByTM(Integer transId);
    
    public ChildDetails getChildDetails(String childProfileId);
   public List<TransactionMaster> getIssuesInMonth(String month,String year);
   
   public List<TransactionMaster>  getIssuesInDate(Date date,String homeId,String type);
   
   //public List<TransactionMaster> getIssuesInDate(Date date);
   
      public List<IssueDetails> getIssueDetails(String transId,String itemNo);
   public TransactionMaster getTransMaster(String transId);
   public ChildMaster getChildMaster(String childId);

      public List<HomeDetails> popAllHomeDetails();

   // public List<LoanDto> getLoansOfType(String loggedInhome, String string);

    public List<TransactionMaster> getTMByTypes(String loggedInhome, String string);

    public HomeDetails getHomeDetails(String donateReceivePurchaseFrom);

    public UserDetail getUserDetails(String useridProfileid);

    public HomeMaster getHomeMaster(String homeId);

    public int findCatNoByNameHomeId(String string, HomeMaster hm);

    public List<Integer> findSubcatByNoAndHomeId(int catno, String homeId);
    
     public boolean addMenuList(List<MenuMaster> mmList);

    public List<MenuMaster> getMenuMap(HomeMaster hm);

    public boolean saveMenuDetails(List<MenuDetail> mdlist);

    public List<MenuDetail> getMenuDetail(Date stringToDate,String homeId);
    
    public List<TransactionMaster> getTMsOnDate(Date view_date, String home_id, String string);
    
    public long getNumChildHome(String homeId);
    
     public boolean saveDietChart(int itemNo,double scale,String homeId,String modBy,Date modDate);

    public List<ItemMaster> checkItem(ProductCatSubcat pcs, String itemName, String uom);

    public List<TransactionMaster> getTMInMonth(String homeDetails, int ryear, int rmonth, String get);

  
}
