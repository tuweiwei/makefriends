package com.briup.run.web.action;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.briup.run.common.bean.Look;
import com.briup.run.common.bean.Memberinfo;
import com.briup.run.common.bean.photoAlbum;
import com.briup.run.common.exception.MemberServiceException;
import com.briup.run.service.IMemberService;
import com.opensymphony.xwork2.ActionSupport;



@SuppressWarnings("serial")
public class LoginAction extends ActionSupport implements ServletRequestAware{
	
	private IMemberService memberService;
	private String name;
	private String password;
	private String authCode;
	private HttpServletRequest request;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAuthCode() {
		return authCode;
	}

	public void setAuthCode(String authCode) {
		this.authCode = authCode;
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
	@SuppressWarnings("unchecked")
	@Override
	public String execute(){
		try {
			HttpSession session=request.getSession();
			Memberinfo memberinfo=memberService.login(name, password);
			List<Memberinfo> m=new ArrayList();
			List<Memberinfo> m1=new ArrayList();
			String code=(String) session.getAttribute("authCode");
			if(memberinfo!=null){
				if(authCode.equals(code)){
					session.setAttribute("memberinfo", memberinfo);
					List<photoAlbum> list=memberService.lookPhoto(name);
					if(list!=null){
						List<Look> list1=memberService.meLookwho(name);
						session.setAttribute("photoAlbumContent", list.size());
						
						if(list1!=null){
							for(Look look:list1){
								
								Memberinfo memberinfo2=memberService.findByName(look.getLookname());
								m.add(memberinfo2);
							}
							session.setAttribute("meLookwhoList", m);
							session.setAttribute("meLookwhoListCount", list1.size());
						}
						
						
						List<Look> list2=memberService.whoLookMe(name);
						if(list2!=null){
							for(Look look:list2){
								
								Memberinfo memberinfo2=memberService.findByName(look.getLookname());
								m1.add(memberinfo2);
							}
							session.setAttribute("whoLookmeList", m1);
							session.setAttribute("whoLookmeListCount", list2.size());
						
						
					  }
					}
					return "success";
				}
				else{
					addActionMessage("参数错误!");
				}
			}
			else{
				addActionMessage("参数错误!");
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		return "failed";
	}
	
}
