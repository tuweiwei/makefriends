package com.briup.run.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.briup.run.common.bean.Memberinfo;
import com.briup.run.common.exception.MemberServiceException;
import com.briup.run.service.IMemberService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class deletePhotoAction extends ActionSupport implements ServletRequestAware{
     private HttpServletRequest request;
     private IMemberService memberService;
	 public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}
	 public IMemberService getMemberService() {
			return memberService;
		}
		public void setMemberService(IMemberService memberService) {
			this.memberService = memberService;
		}
	@Override
	public String execute() {
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		memberinfo.setPhoto(null);
		try {
			memberService.saveOrUpdate(memberinfo);
			return "success";
		} catch (MemberServiceException e) {
			e.printStackTrace();
		}
		return "failed";
	}
	
}
