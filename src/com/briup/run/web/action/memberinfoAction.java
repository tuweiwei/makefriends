package com.briup.run.web.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.briup.run.common.bean.Email;
import com.briup.run.common.bean.Look;
import com.briup.run.common.bean.Memberinfo;
import com.briup.run.common.bean.MyAttention;
import com.briup.run.common.bean.MyDiary;
import com.briup.run.common.bean.WeiBo;
import com.briup.run.common.bean.photoAlbum;
import com.briup.run.common.exception.MemberServiceException;
import com.briup.run.service.IMemberService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class memberinfoAction extends ActionSupport implements ServletRequestAware{
	private HttpServletRequest request;
	private String oldpassword;
	private String newpassword2;
	private String newpassword1;
	private IMemberService memberService;
	private String address;
	private String degree;
	private String weight;
	private Long id;
	private String title;
	private String content;
	private String weather;
	private String mood;
	private List<Long> ids;
	private String receivename;
	private String emailcontent;
	private String membername; 
	private String attentionname;
	private String lookname;
	public String getLookname() {
		return lookname;
	}
	public void setLookname(String lookname) {
		this.lookname = lookname;
	}
	public String getReceivename() {
		return receivename;
	}
	public void setReceivename(String receivename) {
		this.receivename = receivename;
	}
	public String getEmailcontent() {
		return emailcontent;
	}
	public void setEmailcontent(String emailcontent) {
		this.emailcontent = emailcontent;
	}
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public String getMood() {
		return mood;
	}
	public void setMood(String mood) {
		this.mood = mood;
	}
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getNewpassword2() {
		return newpassword2;
	}
	public void setNewpassword2(String newpassword2) {
		this.newpassword2 = newpassword2;
	}
	public String getNewpassword1() {
		return newpassword1;
	}
	public void setNewpassword1(String newpassword1) {
		this.newpassword1 = newpassword1;
	}
	public IMemberService getMemberService() {
		return memberService;
	}
	public void setMemberService(IMemberService memberService) {
		this.memberService = memberService;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public List<Long> getIds() {
		return ids;
	}
	public void setIds(List<Long> ids) {
		this.ids = ids;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getAttentionname() {
		return attentionname;
	}
	public void setAttentionname(String attentionname) {
		this.attentionname = attentionname;
	}
	//�����޸�
	public String modifypassword(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		if(oldpassword.length()==0||oldpassword==null){
			addActionMessage("参数错误!");
		}
		else if(!(oldpassword.equals(memberinfo.getPassword()))){
			addActionMessage("参数错误!");
		}
		else if(newpassword1.length()==0||newpassword1==null){
			addActionMessage("参数错误!");
		}else if(newpassword2.length()==0||newpassword2==null){
			addActionMessage("参数错误!");
		}
		else if(!(newpassword1.equals(newpassword2))){
			addActionMessage("参数错误!");
		}
		else{
			memberinfo.setPassword(newpassword2);
			try {
				memberService.saveOrUpdate(memberinfo);
				addActionMessage("参数错误!");
				return "success";
			} catch (MemberServiceException e) {
				
				e.printStackTrace();
			}
		}
		return "failed";
	}
	//�޸ĸ�����Ϣ
	public String modifyMemberinfo(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		memberinfo.setAddress(address);
		memberinfo.setDegree(degree);
		memberinfo.setWeight(weight);
		try {
			memberService.saveOrUpdate(memberinfo);
			addActionMessage("参数错误");
			return "success";
		} catch (MemberServiceException e) {
			e.printStackTrace();
		}
		return "failed";
	}
	//�������
	
	public String photoAlbum(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		System.out.println(memberinfo.getName());
		try {
			
			List<photoAlbum> list=memberService.lookPhoto(memberinfo.getName());
			if(list!=null&&list.size()>=1){
				session.setAttribute("photoList", list);
				return "success";
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		return "failed";
	}
	//ɾ��������Ƭ
	public String deletePhotoAlbum(){
		try {
			memberService.deletePhotoAlbum(id);
			
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "success";
	}
	//��ѯ�����ռ�
	public String myDiary(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			List<MyDiary> list=memberService.lookDiary(memberinfo.getName());
			if(list!=null&&list.size()>=1){
				session.setAttribute("DiaryList", list);
				session.setAttribute("count", list.size());
				return "success";
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		return "failed";
	}
	//����ռ�
	public String addDiary(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		MyDiary diary=new MyDiary();
		diary.setContent(content);
		diary.setTitle(title);
		diary.setMood(mood);
		diary.setWeather(weather);
		diary.setTime(new Date());
		diary.setMembername(memberinfo.getName());
		try {
			memberService.addDiary(diary);
			return "success";
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		return "failed";
	}
	//�鿴�ռ�����
	public String diaryDetail(){
		HttpSession session=request.getSession();
		try {
			MyDiary diary=memberService.diaryDetail(id);
			if(diary!=null){
				session.setAttribute("myDiary", diary);
				return "success";
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		return null;
	}
	//ɾ���ռ�
	public String deleteDiary(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
				List<MyDiary> list=memberService.lookDiary(memberinfo.getName());
			
			if(list.size()==ids.size()){
				session.setAttribute("DiaryList",null);
				session.setAttribute("count",0);
				
			}
			
			memberService.deleteDiary(ids);
			return "success";
			
			
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	//�鿴�ռ���
	public String receiveBox(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			 List<Email> list=memberService.lookReceiveEmail(memberinfo.getName());
			 if(list!=null&&list.size()>=1){
				 
				 session.setAttribute("receiveEmailList", list);
				 return "success";
			 }
			 
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	//�����ʼ�
	public String sendEmail(){
		
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			memberService.sendEmail(receivename, memberinfo.getName(), emailcontent);
			return "success";
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	
	//�鿴������
	public String sendBox(){
		
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			 List<Email> list=memberService.lookSendEmail(memberinfo.getName());
			 if(list!=null&&list.size()>=1){
				 
				 session.setAttribute("sendEmailList", list);
				 return "success";
			 }
			 
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	//ɾ���ʼ�
	public String deleteEmail(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			List<Email> list=memberService.lookSendEmail(memberinfo.getName());
			if(list.size()==ids.size()){
				 session.setAttribute("sendEmailList", null);
				
			}
			memberService.deleteEmail(ids);
			return "success";
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	//�鿴�ʼ�������
	public String emailDetail(){
		
		try {
			HttpSession session=request.getSession();
			Email email=memberService.emailDetail(id);
			if(email!=null){
				session.setAttribute("emailDetail",email);
				return "success";
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	//����΢�� 
	public String weibo(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			memberService.addWeiBo(memberinfo.getName(), content);
			return "success";
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		return "failed";
	}
	//����΢���б� 
	public String weiboList(){
		HttpSession session=request.getSession();
		 try {
			List<WeiBo> list=memberService.allWeiBo();
			List<Memberinfo> memberinfo=new ArrayList();
			if(list!=null&&list.size()>=1){
				
				for(WeiBo weiBo:list){
					
					Memberinfo memberinfo2=memberService.findByName(weiBo.getMembername());
					
					memberinfo.add(memberinfo2);
					
					
				}
				
				
				session.setAttribute("weiboList", list);
				session.setAttribute("weiboMemberinfo", memberinfo);
				return "success";
			}
			
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
			
		}
		
		return "failed";
	}
	//�鿴�����Ϣ
	
	public String memberListInfo(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo1=(Memberinfo) session.getAttribute("memberinfo");
		try {
			Memberinfo memberinfo=memberService.findByName(membername);
			if(memberinfo!=null){
				memberService.addMeLookWho(memberinfo1.getName(), membername);
				session.setAttribute("memberListInfo", memberinfo);
				return "success";
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	//��ӹ�ע
	public String addAttion(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		
		try {
			memberService.addAttention(memberinfo.getName(), attentionname);
			addActionMessage("�Ѿ���ע�˺��ѣ�");
			return "success";
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		return "failed";
	}
	//�鿴��ע����
	@SuppressWarnings("unchecked")
	public String myAttention(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		List<Memberinfo> m=new ArrayList();
		try {
			List<MyAttention> list=memberService.lookAttention(memberinfo.getName());
			if(list!=null){
				
				for(MyAttention myAttention:list){
					
					Memberinfo	mm=memberService.findByName(myAttention.getAttentionname());
					
					m.add(mm);
					
				}
				session.setAttribute("attentionList", m);
				session.setAttribute("attentionCount", list.size());
				return "success";
				
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	
	//ȡ���ע
	public String deleteAttention(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			List<MyAttention> list=memberService.lookAttention(memberinfo.getName());
			if(list.size()==1){
				session.setAttribute("attentionList", null);
				session.setAttribute("attentionCount", 0);
			}
			memberService.deleteAttention(memberinfo.getName(), attentionname);
			
			return "success";
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
		
	}
	//�鿴�ҿ���˭
	@SuppressWarnings("unchecked")
	public String meLookwho(){
		
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		List<Memberinfo> m=new ArrayList();
		try {
			List<Look> list=memberService.meLookwho(memberinfo.getName());
			if(list!=null){
				for(Look look:list){
					
					Memberinfo memberinfo2=memberService.findByName(look.getLookname());
					m.add(memberinfo2);
				}
				session.setAttribute("meLookwhoList", m);
				session.setAttribute("meLookwhoListCount", list.size());
				return "success";
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	//�鿴˭������
	public String whoLookme(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		List<Memberinfo> m=new ArrayList();
		try {
			List<Look> list=memberService.whoLookMe(memberinfo.getName());
			if(list!=null){
				for(Look look:list){
					
					Memberinfo memberinfo2=memberService.findByName(look.getSelfname());
					m.add(memberinfo2);
				}
				session.setAttribute("whoLookmeList", m);
				session.setAttribute("whoLookmeListCount", list.size());
				return "success";
			}
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		return "failed";
	}
	//ɾ��˭�����ҵ���
	public String deleteWhoLookMe(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			List<Look> list=memberService.whoLookMe(memberinfo.getName());
			if(list.size()==1){
				session.setAttribute("whoLookmeList", null);
				session.setAttribute("whoLookmeListCount", 0);
			}
			memberService.deleteWhoLookMe(lookname, memberinfo.getName());
			return "success";
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		
		
		return "failed";
		
	}
	//ɾ���ҿ���˭������
	public String deleteMeLookWho(){
		HttpSession session=request.getSession();
		Memberinfo memberinfo=(Memberinfo) session.getAttribute("memberinfo");
		try {
			List<Look> list=memberService.meLookwho(memberinfo.getName());
			if(list.size()==1){
				session.setAttribute("meLookwhoList", null);
				session.setAttribute("meLookwhoListCount", 0);
			}
			memberService.deleteMeLookWho(memberinfo.getName(), lookname);
			return "success";
		} catch (MemberServiceException e) {
			
			e.printStackTrace();
		}
		return "failed";
	}
}
