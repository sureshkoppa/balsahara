/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.common.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author ANUPAM
 */
public class RegExUtil {
    private static boolean testResult = false;
    
    public static boolean statrsWith(String input,String pattern){      
        pattern ="^"+pattern;
        Pattern p = Pattern.compile(pattern);
        
        Matcher m = p.matcher(input);
        return m.find();          
    
    }
    
    public static String replcaeAtbeginning(String input,String oldPattern,String newPattern){
    
          oldPattern = "^"+oldPattern;
          
          Pattern p = Pattern.compile(oldPattern);
          Matcher m = p.matcher(input);
          input = m.replaceAll(newPattern);
          
          return input;
    
    }
    
    
}
