package com.briup.run.web.action;

import com.briup.run.common.bean.Memberinfo;
import com.briup.run.common.exception.MemberServiceException;
import com.briup.run.service.IMemberService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport{
	private Memberinfo memberinfo;
    private IMemberService memberService;
    private String year;
    private String mouth;
    private String day;
	public Memberinfo getMemberinfo() {
		return memberinfo;
	}

	public void setMemberinfo(Memberinfo memberinfo) {
		this.memberinfo = memberinfo;
	}
	public IMemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(IMemberService memberService) {
		this.memberService = memberService;
	}
	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMouth() {
		return mouth;
	}

	public void setMouth(String mouth) {
		this.mouth = mouth;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}


	@Override
	public String execute() {
		
		try {
			memberinfo.setBirthday(year+"-"+mouth+"-"+day);
			memberService.registerMemberinfo(memberinfo);
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
			return "failed";
		}
		return "success";
	}

	
	
}
