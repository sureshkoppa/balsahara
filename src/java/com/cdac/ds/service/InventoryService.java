/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cdac.ds.service;


import com.cdac.ds.dto.BOMItemDto;

import com.cdac.ds.dto.IssueDetail;
import com.cdac.ds.dto.ItemDto;
import com.cdac.ds.dto.LoanDto;
import com.cdac.ds.dto.RepTransDTO;
import com.cdac.ds.dto.TransDto;
import com.cdac.usermanagement.ORM.ChildMaster;
import com.cdac.usermanagement.ORM.DistrictMaster;
import com.cdac.usermanagement.ORM.HomeMaster;
import com.cdac.usermanagement.ORM.ItemMaster;

import com.cdac.usermanagement.ORM.MenuDetail;
import com.cdac.usermanagement.ORM.ProductCatSubcat;
import com.cdac.usermanagement.ORM.TransactionDetails;
import com.einnovates.customtags.tree.TreeNode;
import java.util.Date;
import java.util.List;
import java.util.Map;


/**
 *
 * @author ksuresh
 */
public interface InventoryService {
    /**populates topcat names
       @return list of strings containing cat names under topcat
      */
    
    //suresh added 13-01-2011 start
    /**gives map details*/
     public List<DistrictMaster> displayMap();
     
     public Map<String,List<HomeMaster>> popDistrict_home(List<DistrictMaster> dis_list);
     
     
     public List<ChildMaster> countChild_home(String home_id);
     
     
     //suresh added 13-01-2011 end

    
    public Map<Integer,String> populate_top_cat(String homeId);
    
    /**populate topcat objects*/
    
    public Map<Integer,Object> populate_top_cat_object();
    
    
  //  public List populate_sub_cat(String top_cat);
    
    
    /**gives subcats under given cat
       @return  list of productcatsubcat under given cat
     */
    public List<ProductCatSubcat> populate_subCategory(String cat);
   
    
    
    /**gives map of all subcats under slected cat
       @return map with catname as key and and it's depth items as value
     */
    public Map popAllSubCat(String topcatnum);
    
    /**gives list of BOM items */
    public List<BOMItemDto> populateRationBOM(String homeId);
    
    /**populates items from ItemMaster under category 'ration'*/
    
    public List<ItemMaster> popRationItems();
    
    
    /**service method for adding category
     */
    public boolean addCategory(String catno,String catname,String itemtype,String homeId,String userId);
    /**service method for removing catgory list
     */
    public String removeCategory(List<String> cat);
    
    
    
 
    
    
    public  boolean savePurchaseItems(Date receipt_date,String homeid,String recvFrom,String invno,Date invdate,String receipt_from,String receipt_remarks,List<String> item_receipt_list,Map<String,String> receipt_item_qty,Map<String,String> receipt_item_remarks,String userId);
    
    
   // public boolean saveDonationItem(Date donateDate,String donateFrom,String donation_remarks,List<HomeItemQoh> item_donate_list);
    /**service method for saving donation details
     */
     public boolean saveDonationItem(Date donateDate,String homeid,String donateFrom,String donation_remarks,List<String> item_donate_list,Map<String,String> donate_qty,Map<String,String> donate_remarks,String userId);
    /**view donation*/ 
     public List<TransDto> viewDonation(String homeId,Date fromDate,Date toDate,String type);
     
     /**service method for saving receipt details
      */
    // public boolean saveReceiptItems(Date receipt_date,String homeid,String receipt_from,String invno,Date invdate,String receipt_remarks,List<String> item_receipt_list,Map<String,String> receipt_item_qty,Map<String,String> receipt_item_remarks,String userId);
   // public boolean saveReceiptDetails(Date receipt_date,String receipt_from,String receipt_remarks,List<String> itemsChecked,double[] qoh,String[] itemRemarks);
   // public boolean saveReceiptItems(Date receipt_date,String receipt_from,String receipt_remarks,List<DonationOrReceiptItem> item_receipt_list);
      /**saves issue details*/
     public String saveIssueItem(Date issue_date,String homeid,String issue_to,List issue_from,String issue_remarks,List<String> item_issued_list,Map<String,String> issued_item_qty,Map<String,String> issued_item_remarks,String userId);
     public boolean addItem(ItemMaster im);
    /**service method for adding item 
      */
   // public boolean addItem(String homeId,String prSubcaatNo,String itemName,String specs,float qoh,String uom,float unitPrice,String remarks,Date mfgDate,Date expDate,String userId);

   public int addItem1(String prSubcaatNo,String itemName,String specs,String uom,float unitPrice,String remarks,Date mfgDate,Date expDate,String userId);
    
  //  public List populate_item(String catselect);
  //  public List populate_item();
    
    
   // public ItemMaster populate_item(String itemName); 
    
    /**service method for removing list of items 
     */
    public boolean removeItemList(List itemList);
    /**service method for removing item
     */
  //  public boolean removeItem(String itemName);
    
    
    /**service method for getting spring tree node for topcat
     */
    public TreeNode viewCategoryTree(String catName,String homeId) ;
    /**adds top cat*/
    public boolean addTopcat(String name,String type,String userId,String homeId);
     
     
    /**service method for getting item(Item Master) details under cat num passed
     */
    public List<ItemMaster> getItemDetails_im(List<String> subcatname);
    
    /**getting item detials for homeid list of item nums passed */
    
     public List<ItemDto> getItemDetails(String homeid,List<String> itemnums);

   /**getting item detials for homeid list of cat nums passed */
    
     public List<ItemDto> getItemDetailsByCatList(String homeid,List<String> catnums);
     
   
      
     
     /**service method for getting item details for itemNo passed
      @param item number for the item
      @return item master object for the itemno
      */
     public ItemMaster getItemByItemNo(String itemNo);
    
     public  String modifyItemDetails_qoh(List<String> itemNo,String homeid,Map<String, String> qoh,String userId);
     
     public boolean modifyItemDetails(List<String> itemNo,Map<String,String> itemName,Map<String,String> itemSpec,Map<String,String> remarks,Map<String,String> mfgDate,Map<String,String> expDate);
     
     /**gives list of cat names for list catnums passed*/
     
     public List<String> getListCatNamesForCatNo(List<String> catnums);
     
     /**gives list of items for viewing*/
     public List<ItemDto> getItemDetails_view(String homeid,String subcatname);
     
     public List<String> popStakeHolders(String homeid);
     
     public List<String> popChilds(String homeid);
     
     /**sAVES  bom items  diet quantity*/
     
     public boolean saveBOMItems(List<String> bomItemNo,Map<String,String> bom_quanntity,String userId,String homeId);
     
     /**saves diet issue items and quantity*/
     public String saveDietIssueItems(Date dietIssueDate,String homeid,int srchild,int jrchild,List<String> itemNumlist,String userId,List actItems);
     
     /**populate bomitem dto for a list of itemmaster passesd*/
     public List<BOMItemDto> populateBOM(String homeId,List<ItemMaster> imList);
     
     /**populates items under raw cloth category */
     public List<ItemDto> populate_rawCloth_items();
     
     /**saves tailoring issue information*/
     public String saveTailoringIssue(Date issueDate,String homeid,String letterno,String tailAddress,List<String> itemNumList,Map<String,String> itemQuanList,Map<String,String> itemRemList,String userId);
     
     /**populates items under stich cloth category*/
     public List<ItemDto> populate_stichCloth_items();
     
     /**saves tailoring receive information*/
     public boolean saveTailoringReceive(Date receiveDate,String homeid,String letterno,String tailAddress,List<String> itemNumList,Map<String,String> itemQuanList,Map<String,String> itemRemList,String userId);
     
     //methods for report
    
    public List <ItemMaster> getRationItems(String home_id);
    public List<TransactionDetails> getAllRationTransactions(Date date,String homeId);

    public Map<Integer,int[]> getNumChilds(String home,String cmonth,String cyear);
    
    public IssueDetail viewIssueDetail(String transId,String itemNo);

     public Map<String, String> getAllHomesExcept(String loggedInhome);

    public boolean saveLoan(String homeId, String loan_date, String loanGiveOrTake, String loan_homeId, String loan_remarks, List<String> receiptitemChecked, Map<String, String> receiptitem_qoh, Map<String, String> receiptitem_remarks, String userId);

    public List<LoanDto> getLoansOfType(String loggedInhome, String pbtype);

    public boolean savePayBack(String pbtype, List<String> loanTransId, Date payDate, String payBack_remarks);
    
      public String addMenuItem(String[] nameMenu, String[] menuType, String homeId);

    public List getMenuMap(String homeId);

    public String saveMenuDetail(Date stringToDate, List bitem_check, List litem_check, List sitem_check, List ditem_check, String break_qty, String lunch_qty, String snacks_qty, String dinner_qty);

    public List<MenuDetail> viewMenuDetail(String viewMenu_date,String homeId);

    public TransDto viewDietIssue(Date view_date,String home_id);
    
    public long numChild_menu(String homeId);
    
    public boolean saveSinBOM(int parseInt, double scale,String loggedInhome,String modBy,Date modDate);

    public List<RepTransDTO> getRepTransJSON(String loggedInhome, String report_year, String report_month, String trType);

   
    
}
