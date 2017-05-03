package com.briup.run.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.HibernateTemplate;


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
import com.briup.run.dao.IMemberDao;

public class MemberDaoImpl extends HibernateTemplate implements IMemberDao{

	@SuppressWarnings("unchecked")
	public Memberinfo findMemberinfoByName(String name)
			throws DataAccessException {
		
		List<Memberinfo> list = this.find("from Memberinfo where name='"+name+"'");
		
		if(list==null||list.size()==0){
			return null;
		}
		else{
			return list.get(0);
		}
	}

	public void saveOrUpdateMemberinfo(Memberinfo memberinfo)
			throws DataAccessException {
		this.saveOrUpdate(memberinfo);
		
	}

	@SuppressWarnings("unchecked")
	public Pointaction findPointactionByPointAction(String pointAction)
			throws DataAccessException {
		 List list=this.find("from Pointaction u where u.actionname='"+pointAction+"'");
         if(list!=null&&list.size()>=1){
      	   return (Pointaction)list.get(0);
         }
         else{
      	   
      	   return null;
         }
	}

	@SuppressWarnings("unchecked")
	public List<photoAlbum> lookPhotos(String name) throws DataAccessException {
		 List list=this.find("from photoAlbum u where u.membername='"+name+"'");
		 if(list!=null&&list.size()>=1){
			 return list;
		 }
		 else{
			 return null;
		 }
		
	}

	public void addPhotos(photoAlbum album) throws DataAccessException {
		this.save(album);
		
		
	}

	@SuppressWarnings("unchecked")
	public void deletePhotoAlbum(Long id) throws DataAccessException {
		
		
		List<photoAlbum> list=this.find("from photoAlbum u where u.id='"+id+"'");
		photoAlbum album=list.get(0);
		this.delete(album);
		
	}

	@SuppressWarnings("unchecked")
	public List<MyDiary> lookDiary(String name) throws DataAccessException {
		
		List<MyDiary> list=this.find("from MyDiary u where u.membername='"+name+"'");
		if(list!=null&&list.size()>=1){
			 return list;
		 }
		 else{
			 return null;
		 }
	}

	public void addDiary(MyDiary myDiary) throws DataAccessException {
		
		this.save(myDiary);
		
	}

	@SuppressWarnings("unchecked")
	public List<Memberinfo> findAll() throws DataAccessException {
		List<Memberinfo> list=this.find("from Memberinfo");
		if(list!=null&&list.size()>=1){
			 return list;
		 }
		 else{
			 return null;
		 }
	}

	@SuppressWarnings("unchecked")
	public List<Memberinfo> findBoy() throws DataAccessException {
		List<Memberinfo> list=this.find("from Memberinfo u where u.sax='ÄÐ'");
		if(list!=null&&list.size()>=1){
			 return list;
		 }
		 else{
			 return null;
		 }
	}

	@SuppressWarnings("unchecked")
	public List<Memberinfo> findGirl() throws DataAccessException {
		List<Memberinfo> list=this.find("from Memberinfo u where u.sax='Å®'");
		if(list!=null&&list.size()>=1){
			 return list;
		 }
		 else{
			 return null;
		 }
	}

	@SuppressWarnings("unchecked")
	public List<Memberinfo> findOnline() throws DataAccessException {
		List<Memberinfo> list=this.find("from Memberinfo u where u.status='1'");
		if(list!=null&&list.size()>=1){
			 return list;
		 }
		 else{
			 return null;
		 }
	}

	@SuppressWarnings("unchecked")
	public MyDiary diaryDetail(Long id) throws DataAccessException {
		List<MyDiary> list=this.find("from MyDiary u where u.id='"+id+"'");
		MyDiary diary=list.get(0);
		if(diary!=null){
			return diary;
		}
		return null;
	}

	public void deleteDiary(MyDiary diary) throws DataAccessException {

            this.delete(diary);
		
	}

	@SuppressWarnings("unchecked")
	public List<Email> lookReceiveEmail(String name) throws DataAccessException {
		
		List<Email> list=this.find("from Email u where u.receiver='"+name+"'");
		if(list!=null&&list.size()>=1){
			 return list;
		 }
		 else{
			 return null;
		 }
	}

	@SuppressWarnings("unchecked")
	public List<Email> lookSendEmail(String name) throws DataAccessException {
		
		List<Email> list=this.find("from Email u where u.sender='"+name+"' and u.status='0'");
		if(list!=null&&list.size()>=1){
			 return list;
		 }
		 else{
			 return null;
		 }
	}

	public void sendEmail(Email email) throws DataAccessException {
		
		this.save(email);
		
	}

	public void deleteEmail(Email email) throws DataAccessException {
		
		this.delete(email);
		
	}

	@SuppressWarnings("unchecked")
	public Email emailDetail(Long id) throws DataAccessException {
		
		List<Email> list=this.find("from Email u where u.id='"+id+"'");
		Email email=list.get(0);
		if(email!=null){
			return email;
		}
		return null;
	}

	public void addWeiBo(WeiBo weiBo) throws DataAccessException {
		
		this.save(weiBo);
		
	}

	@SuppressWarnings("unchecked")
	public List<WeiBo> allWeiBo() throws DataAccessException {
		
		List<WeiBo> list=this.find("from WeiBo");
		
		if(list!=null&&list.size()>=1){
			return list;
		}
		
		return null;
	}

	@SuppressWarnings("unchecked")
	public Memberinfo findByName(String name) throws DataAccessException {
		
		List<Memberinfo> list=this.find("from Memberinfo u where u.name='"+name+"'");
		
		Memberinfo memberinfo=list.get(0);
		
		if(memberinfo!=null){
			return memberinfo;
		}
		
		return null;
	}

	public void addAttention(MyAttention myAttention)
			throws DataAccessException {
		
		this.save(myAttention);
		
	}

	@SuppressWarnings("unchecked")
	public List<MyAttention> lookAttention(String selfname)
			throws DataAccessException {
		
		List<MyAttention> list=this.find("from MyAttention u where u.selfname='"+selfname+"'");
		
		if(list!=null&&list.size()>=1){
			return list;
		}
		
		return null;
	}

	public void deleteAttention(MyAttention myAttention)
			throws DataAccessException {
		
		this.delete(myAttention);
		
	}

	@SuppressWarnings("unchecked")
	public MyAttention findAttentionByName(String selfname, String attentioname)
			throws DataAccessException {
		
		List<MyAttention> list=this.find("from MyAttention u where u.selfname='"+selfname+"' and u.attentionname='"+attentioname+"'");
		
		MyAttention myAttention=list.get(0);
		
		if(myAttention!=null){
			return myAttention;
		}
		
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Look> meLookwho(String selfname) throws DataAccessException {
		
		List<Look> list=this.find("from Look u where u.selfname='"+selfname+"'");
		
		if(list!=null&&list.size()>=1){
			return list;
		}
		
		return null;
	}

	public void addMeLookWho(Look look) throws DataAccessException {
		
		this.save(look);
		
	}

	public void addWhoLookMe(LookMe lookMe) throws DataAccessException {
		
		this.save(lookMe);
	}

	@SuppressWarnings("unchecked")
	public List<Look> whoLookMe(String lookname) throws DataAccessException {
		List<Look> list=this.find("from Look u where u.lookname='"+lookname+"'");
		
		if(list!=null&&list.size()>=1){
			return list;
		}
		
		return null;
	}

	public void deleteWhoLookMe(Look look) throws DataAccessException {
		
		this.delete(look);
		
	}

	@SuppressWarnings("unchecked")
	public Look whoLook(String lookname, String selfname)
			throws DataAccessException {
		List<Look> list=this.find("from Look u where u.lookname='"+lookname+"' and  u.selfname='"+selfname+"'");
		
		Look look=list.get(0);
		if(look!=null){
			return look;
		}
		
		return null;
	}

}
