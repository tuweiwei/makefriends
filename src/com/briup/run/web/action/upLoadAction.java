package com.briup.run.web.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.briup.run.common.bean.Memberinfo;
import com.briup.run.service.IMemberService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class upLoadAction extends ActionSupport implements ServletRequestAware{
    private IMemberService memberService;
    private HttpServletRequest request;
	
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	public void setSavePath(String value){
		this.savePath = value;
	}
	private String getSavePath() throws Exception {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}
	public void setUpload(File upload){
		this.upload = upload; 
	}
	public File getUpload() {
		return this.upload; 
	}
	public void setUploadContentType(String uploadContentType){
		this.uploadContentType = uploadContentType; 
	}
	public String getUploadContentType(){
		return this.uploadContentType; 
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName; 
	}
	public String getUploadFileName(){
		return this.uploadFileName; 
	}
	public IMemberService getMemberService() {
		return memberService;
	}
	public void setMemberService(IMemberService memberService) {
		this.memberService = memberService;
	}
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}
	public String execute() throws Exception{
		FileOutputStream fos = new FileOutputStream(getSavePath()
			+ "\\" + getUploadFileName());
		FileInputStream fis = new FileInputStream(getUpload());
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = fis.read(buffer))>0){
			fos.write(buffer , 0 , len);
		}
		fos.close();
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		if(memberinfo!=null){
		memberinfo.setPhoto("save/"+this.uploadFileName);
		memberService.saveOrUpdate(memberinfo);
		return "success";
		}
		else{
			return "failed";
		}
	}
	
	
}
