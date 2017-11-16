 /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.common.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Ramu Parupalli
 */
public class StringToDate {
    
    public static Date getStringToDate(String dateString)
    {
        Date date=null;
     DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy");
     
        try
        { 
            date=dfopreg.parse(dateString);
            //this.childDetails_dob = dfopreg.parse(childDetails_dob);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
        return date;
    }
    
    public static Date getStringToDateTime(String dateString,String timeString)
    {
        Date date=null;
     DateFormat dfopreg=new SimpleDateFormat("dd/MM/yyyy HH:mm");
     
        try
        { 
            date=dfopreg.parse(dateString+" "+timeString);
            //this.childDetails_dob = dfopreg.parse(childDetails_dob);
        }
        catch(ParseException pe)
        {
            pe.printStackTrace();
        }
        return date;
    }
    
    public static Date getStringToDateTime(String yearMonthDayHourMinSecString)
    {
    
    Date date = null;
    
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    
        try {
            date = dateFormat.parse(yearMonthDayHourMinSecString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    
        return date;
    }
    
    
    public static String getYear(String dateString)
    {
    String[] temp=dateString.split("/");
    
    return temp[2];
    
    }
    
}
