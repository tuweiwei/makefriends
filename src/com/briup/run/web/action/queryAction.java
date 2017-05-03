package com.briup.run.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.briup.run.common.bean.Memberinfo;
import com.briup.run.common.bean.WeiBo;
import com.briup.run.common.exception.MemberServiceException;
import com.briup.run.service.IMemberService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class queryAction extends ActionSupport implements ServletRequestAware{
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
	    	try {
				List<Memberinfo> list=memberService.findAll();
				List<Memberinfo> list2=memberService.findBoy();
				List<Memberinfo> list3=memberService.findGirl();
				List<Memberinfo> list4=memberService.findOnline();
				List<WeiBo> list5=memberService.allWeiBo();
				if(list!=null&&list.size()>=1){
					session.setAttribute("members", list);
					session.setAttribute("memberCount", list.size());
					session.setAttribute("Boymembers", list2);
					session.setAttribute("Girlmembers", list3);
					session.setAttribute("Onlines", list4.size());
					session.setAttribute("weiboList", list5);
					session.setAttribute("onLineMemberList", list4);
					return "success";
				}
			} catch (MemberServiceException e) {
				
				e.printStackTrace();
			}
	    	
	    	return "failed";
	    }
	

}
