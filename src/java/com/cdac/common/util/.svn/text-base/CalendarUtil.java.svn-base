/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.common.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ANUPAM
 */
public class CalendarUtil {
    
    private static Map<Integer,String> monthMap = new HashMap<Integer,String>(12);
    
    static{
    
    monthMap.put(1,"January");
    monthMap.put(2,"February");
    monthMap.put(3,"March");
    monthMap.put(4,"April");
    monthMap.put(5,"May");
    monthMap.put(6,"June");
    monthMap.put(7,"July");
    monthMap.put(8,"August");
    monthMap.put(9,"September");
    monthMap.put(10,"October");
    monthMap.put(11,"November");
    monthMap.put(12,"December");
  
    }
    
      public static String getCurrentDateString(){
    StringBuilder date = new StringBuilder(35);    
    Calendar calendar = Calendar.getInstance();
    
    SimpleDateFormat dateformatter = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss  a ");
        
    date.append(dateformatter.format(calendar.getTime())); 
    
    
    return date.toString();
    }
    /*public static void main(String []args)
    {
    System.out.println(" ======= "+CalendarUtil.getCurrentDateString());
    }*/
      
      public static String getCurrentDateComponet(String comp)
{
String result = "No support for this component";

Calendar cal = Calendar.getInstance();
  int day = cal.get(Calendar.DATE);
   int month = cal.get(Calendar.MONTH) + 1;
   int year = cal.get(Calendar.YEAR);
   int dow = cal.get(Calendar.DAY_OF_WEEK);
   int dom = cal.get(Calendar.DAY_OF_MONTH);
   int doy = cal.get(Calendar.DAY_OF_YEAR);
   
   if(comp.trim().equalsIgnoreCase("month"))
   {
   result = ""+monthMap.get(month);
   }
   else if(comp.trim().equalsIgnoreCase("year"))
   {
   result = ""+year;
   }

   return result;
}
      
}

