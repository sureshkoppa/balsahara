/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.multimedia.result;

/**
 *
 * @author ANUPAM
 */
import com.cdac.multimedia.Actions.ImageAction;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;

 
public class CustomImageBytesResult implements Result {
 
	public void execute(ActionInvocation invocation) throws Exception {
 
		ImageAction action = (ImageAction) invocation.getAction();
		HttpServletResponse response = ServletActionContext.getResponse();
 
		response.setContentType(action.getCustomContentType());
		response.getOutputStream().write(action.getCustomImageInBytes());
		response.getOutputStream().flush();
 
	}
 
}
