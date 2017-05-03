package com.briup.run.service.impl;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.List;


import com.briup.run.common.bean.Email;
import com.briup.run.common.bean.Look;
import com.briup.run.common.bean.LookMe;
import com.briup.run.common.bean.Memberinfo;
import com.briup.run.common.bean.MyAttention;
import com.briup.run.common.bean.MyDiary;
import com.briup.run.common.bean.Pointaction;
import com.briup.run.common.bean.WeiBo;
import com.briup.run.common.bean.photoAlbum;
import com.briup.run.common.exception.DataAccessException;
import com.briup.run.common.exception.MemberServiceException;
import com.briup.run.common.util.MD5;
import com.briup.run.dao.IMemberDao;
import com.briup.run.service.IMemberService;

public class MemberServiceImpl implements IMemberService{
	private IMemberDao memberDao;
	
	public IMemberDao getMemberDao() {
	return memberDao;
}

public void setMemberDao(IMemberDao memberDao) {
	this.memberDao = memberDao;
}

public void registerMemberinfo(Memberinfo memberinfo)
		throws MemberServiceException {
	String name=memberinfo.getName();
	try {
		String ip=null;
		Memberinfo m=memberDao.findMemberinfoByName(name);
		if(m!=null){
			throw new MemberServiceException("用户已存在!");
		}
		else{
			try {
				ip=InetAddress.getLocalHost().getHostAddress();
			} catch (UnknownHostException e) {
				e.printStackTrace();
			}
			memberinfo.setRegisterdate(new Date());
			Pointaction pointaction=memberDao.findPointactionByPointAction("REGISTER");
			memberinfo.setPoint(pointaction.getPoint());
			memberinfo.setRegisterip(ip);
			memberinfo.setLogincount(0l);
			memberinfo.setStatus(0l);
			memberinfo.setPhoto("images/no_photo.png");
			memberDao.saveOrUpdateMemberinfo(memberinfo);
		}
		
	} catch (DataAccessException e) {
		
		throw new MemberServiceException("注册失败");
	}
}
public Memberinfo login(String username, String passwd)
		throws MemberServiceException {
	  try {
		  String ip=null;
		  Long status=1l;
		Memberinfo memberinfo=memberDao.findMemberinfoByName(username);
		if(memberinfo!=null){
			if(passwd.equals(memberinfo.getPassword())){
				try {
					 ip=InetAddress.getLocalHost().getHostAddress();
				} catch (UnknownHostException e) {
					
					e.printStackTrace();
				}
				memberinfo.setLatestdate(new Date());
				memberinfo.setIp(ip);
				Pointaction pointaction=memberDao.findPointactionByPointAction("LOGIN");
				memberinfo.setPoint(memberinfo.getPoint()+pointaction.getPoint());
				memberinfo.setLogincount(memberinfo.getLogincount()+1);
				memberinfo.setStatus(status);
				memberDao.saveOrUpdateMemberinfo(memberinfo);
				return memberinfo;
			}
		}
	} catch (DataAccessException e) {
		
		throw new MemberServiceException("��¼ʧ��");
	}
		return null;
	}

public void saveOrUpdate(Memberinfo memberinfo) throws MemberServiceException {
	try {
		memberDao.saveOrUpdateMemberinfo(memberinfo);
	} catch (DataAccessException e) {

		throw new MemberServiceException("����ʧ��");
	}
	
}

public List<photoAlbum> lookPhoto(String name) throws MemberServiceException {
	
	try {
		List<photoAlbum> list=(List<photoAlbum>) memberDao.lookPhotos(name);
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {
		
		e.printStackTrace();
	}
	return null;
}

public void addPhotos(String photopath, String membername) throws MemberServiceException{
	photoAlbum album=new photoAlbum();
	album.setMembername(membername);
	album.setPhotopath(photopath);
	try {
		memberDao.addPhotos(album);
	} catch (DataAccessException e) {
		throw new MemberServiceException("������Ƭʱ����");
	}
  }

public void deletePhotoAlbum(Long id) throws MemberServiceException {
	try {
		memberDao.deletePhotoAlbum(id);
	} catch (DataAccessException e) {
		
		throw new MemberServiceException("ɾ��ʧ��!");
	}
	
}

public List<MyDiary> lookDiary(String name) throws MemberServiceException {
	try {
		List<MyDiary> list=memberDao.lookDiary(name);
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {
		throw new MemberServiceException("�鿴ʧ��!");
	}
	return null;
}

public void addDiary(MyDiary myDiary) throws MemberServiceException {
	try {
		memberDao.addDiary(myDiary);
	} catch (DataAccessException e) {
		throw new MemberServiceException("���ʧ��!");
	}
	
	
}

public List<Memberinfo> findAll() throws MemberServiceException {
	try {
		List<Memberinfo> list=memberDao.findAll();
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {
		throw new MemberServiceException("�鿴ʧ��!");
	}
	return null;
}

public List<Memberinfo> findBoy() throws MemberServiceException {
	try {
		List<Memberinfo> list=memberDao.findBoy();
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {
		throw new MemberServiceException("�鿴ʧ��!");
	}
	return null;
}

public List<Memberinfo> findGirl() throws MemberServiceException {
	try {
		List<Memberinfo> list=memberDao.findGirl();
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {
		throw new MemberServiceException("�鿴ʧ��!");
	}
	return null;
}

public List<Memberinfo> findOnline() throws MemberServiceException {
	try {
		List<Memberinfo> list=memberDao.findOnline();
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {
		throw new MemberServiceException("�鿴ʧ��!");
	}
	return null;
}

public MyDiary diaryDetail(Long id) throws MemberServiceException {
	try {
		MyDiary diary=memberDao.diaryDetail(id);
		if(diary!=null){
			return diary;
		}
	} catch (DataAccessException e) {
		
		e.printStackTrace();
	}
	return null;
}

public void deleteDiary(List<Long> ids) throws MemberServiceException {
	
	for(Long id:ids){
		
		try {
			memberDao.deleteDiary(memberDao.diaryDetail(id));
		} catch (DataAccessException e) {
			
			e.printStackTrace();
		}
		
		
	}
	
	
}

public List<Email> lookReceiveEmail(String name) throws MemberServiceException {
	
	try {
		List<Email> list=memberDao.lookReceiveEmail(name);
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {
		
		e.printStackTrace();
	}
	
	return null;
}

public void sendEmail(String receivname,String sendname,String content) throws MemberServiceException {
	
	Long status=0l;
	
	Email email=new Email();
	email.setReceiver(receivname);
	email.setSender(sendname);
	email.setStatus(status);
	email.setContent(content);
	email.setTime(new Date());
	try {
		memberDao.sendEmail(email);
	} catch (DataAccessException e) {
		throw new MemberServiceException("����ʧ��!");
	}
   }

public List<Email> lookSendEmail(String name) throws MemberServiceException {
	
	try {
		List<Email> list=memberDao.lookSendEmail(name);
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {
		
		e.printStackTrace();
	}
	
	return null;
}

public void deleteEmail(List<Long> ids) throws MemberServiceException {
	   
	for(Long id:ids){
		
		try {
			memberDao.deleteEmail(memberDao.emailDetail(id));
		} catch (DataAccessException e) {
			
			throw new MemberServiceException("�ʼ�ɾ��ʧ��!");
		}
		
	}
	
  }

public Email emailDetail(Long id) throws MemberServiceException {
	
	try {
		Email email=memberDao.emailDetail(id);
		if(email!=null){
			return email;
		}
	} catch (DataAccessException e) {
		throw new MemberServiceException("�鿴�ʼ�ʧ��!");
	}
	return null;
  }

public void addWeiBo(String membername, String content)
		throws MemberServiceException {
	WeiBo weiBo=new WeiBo();
	weiBo.setContent(content);
	weiBo.setMembername(membername);
	try {
		memberDao.addWeiBo(weiBo);
	} catch (DataAccessException e) {
		throw new MemberServiceException("΢�����ʧ��!");
	}
	
  }

public List<WeiBo> allWeiBo() throws MemberServiceException {
	
	try {
		List<WeiBo> list=memberDao.allWeiBo();
		if(list!=null&&list.size()>=1){
			return list;
		}
	} catch (DataAccessException e) {

		throw new MemberServiceException("΢���鿴ʧ��!");
	}
	
	return null;
}

public Memberinfo findByName(String name) throws MemberServiceException {
	try {
		Memberinfo memberinfo=memberDao.findByName(name);
		if(memberinfo!=null){
			return memberinfo;
		}
	} catch (DataAccessException e) {
		
		e.printStackTrace();
	}
	return null;
}

public void addAttention(String selfname, String attentionname)
		throws MemberServiceException {
	
	MyAttention myAttention=new MyAttention();
	myAttention.setSelfname(selfname);
	myAttention.setAttentionname(attentionname);
	try {
		memberDao.addAttention(myAttention);
	} catch (DataAccessException e) {
		
		throw new MemberServiceException("��ӹ�עʧ��!");
	}
	
	
  }

public List<MyAttention> lookAttention(String selfname)
		throws MemberServiceException {
	
	try {
		List<MyAttention> list=memberDao.lookAttention(selfname);
		if(list!=null){
			
			return list;
		}
	} catch (DataAccessException e) {
		throw new MemberServiceException("�鿴��עʧ��!");
	}
	
	return null;
  }

public void deleteAttention(String selfname,String attentionname) throws MemberServiceException {
	
	try {
		MyAttention myAttention=memberDao.findAttentionByName(selfname, attentionname);
		if(myAttention!=null){
			memberDao.deleteAttention(myAttention);
		}
	} catch (DataAccessException e) {
		throw new MemberServiceException("ɾ���עʧ��!");
	}
	
}

public List<Look> meLookwho(String selfname) throws MemberServiceException {
	
	try {
		List<Look> list=memberDao.meLookwho(selfname);
		if(list!=null){
			return list;
		}
	} catch (DataAccessException e) {
		
		throw new MemberServiceException("�鿴�ҿ���˭ʧ��!");
	}
	
	
	return null;
}

public void addMeLookWho(String selfname, String lookname)
		throws MemberServiceException {
	
	Look look=new Look();
	look.setSelfname(selfname);
	look.setLookname(lookname);
	try {
		memberDao.addMeLookWho(look);
	} catch (DataAccessException e) {
		throw new MemberServiceException("����ҿ���˭ʧ��!");
	}
	
}

public void addWhoLookMe(String selfname, String lookname)
		throws MemberServiceException {
	
	LookMe lookMe=new LookMe();
	lookMe.setLookname(lookname);
	lookMe.setSelfname(selfname);
	try {
		memberDao.addWhoLookMe(lookMe);
	} catch (DataAccessException e) {
		throw new MemberServiceException("���˭������˭ʧ��!");
	}
}

public List<Look> whoLookMe(String lookname) throws MemberServiceException {
	try {
		List<Look> list=memberDao.whoLookMe(lookname);
		if(list!=null){
			return list;
		}
	} catch (DataAccessException e) {
		
		throw new MemberServiceException("�鿴˭������ʧ��!");
	}
	return null;
}

public void deleteWhoLookMe(String lookname,String selfname) throws MemberServiceException {
	
	try {
		Look look=memberDao.whoLook(lookname, selfname);
		if(look!=null){
			
			memberDao.deleteWhoLookMe(look);
			
		}
	} catch (DataAccessException e) {
		
		e.printStackTrace();
	}
	
	
	
}

public void deleteMeLookWho(String selfname, String lookname)
		throws MemberServiceException {
	
	try {
		Look look=memberDao.whoLook(lookname, selfname);
		if(look!=null){
			
			memberDao.deleteWhoLookMe(look);
			
		}
	} catch (DataAccessException e) {
		
		e.printStackTrace();
	}
	
}
}
