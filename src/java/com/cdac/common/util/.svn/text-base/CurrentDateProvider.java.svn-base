/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;

/**
 *
 * @author Ramu Parupalli
 */
public class CurrentDateProvider {
    
    public static Date getCurrentDate()
    {
        Date date1=null;
    String DATE_FORMAT ="yyyy-MM-dd HH:mm:ss";
        SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
        String date=sdf.format(new Date());
        
          try {
            date1 = sdf.parse(date);
        } catch (Exception e) {
            e.printStackTrace();
        }
         return date1;
    }
    
   public static int getYears(Date fDate,Date tDate)
   {
       
       Calendar fcal=Calendar.getInstance();
       fcal.setTime(fDate);
       
       Calendar tcal=Calendar.getInstance();
       tcal.setTime(tDate);
       
       int noY=tcal.get(Calendar.YEAR)-fcal.get(Calendar.YEAR);
       
       if(tcal.get(Calendar.MONTH)<fcal.get(Calendar.MONTH))
       {   
           noY=noY-1;
       }
       else if(tcal.get(Calendar.MONTH)==fcal.get(Calendar.MONTH))
       {
           if(tcal.get(Calendar.DAY_OF_YEAR)<fcal.get(Calendar.DAY_OF_YEAR))
           {
               noY=noY-1;
           }
       }
       
       return noY;
   }
    



   
    
    
}
