package com.briup.run.service;

import java.util.List;

import com.briup.run.common.bean.Email;
import com.briup.run.common.bean.Look;
import com.briup.run.common.bean.Memberinfo;
import com.briup.run.common.bean.MyAttention;
import com.briup.run.common.bean.MyDiary;
import com.briup.run.common.bean.WeiBo;
import com.briup.run.common.bean.photoAlbum;
import com.briup.run.common.exception.DataAccessException;
import com.briup.run.common.exception.MemberServiceException;

public interface IMemberService {
	void registerMemberinfo(Memberinfo memberinfo) throws MemberServiceException;
	Memberinfo login(String username, String passwd) throws MemberServiceException;
	void saveOrUpdate(Memberinfo memberinfo) throws MemberServiceException;
	List<photoAlbum> lookPhoto(String name) throws MemberServiceException;
	void addPhotos(String photopath,String membername) throws MemberServiceException;
	void deletePhotoAlbum(Long id)throws MemberServiceException;
	List<MyDiary> lookDiary(String name) throws MemberServiceException;
	void addDiary(MyDiary myDiary)throws MemberServiceException;
	List<Memberinfo> findAll()throws MemberServiceException;
	List<Memberinfo> findBoy()throws MemberServiceException;
	List<Memberinfo> findGirl()throws MemberServiceException;
	List<Memberinfo> findOnline()throws MemberServiceException;
	MyDiary diaryDetail(Long id)throws MemberServiceException;
	void deleteDiary(List<Long> ids)throws MemberServiceException;
	List<Email> lookReceiveEmail(String name)throws MemberServiceException;
	void sendEmail(String receivname,String sendname,String content) throws MemberServiceException;
	List<Email> lookSendEmail(String name)throws MemberServiceException;
	void deleteEmail(List<Long> ids)throws MemberServiceException;
	Email emailDetail(Long id)throws MemberServiceException;
	void addWeiBo(String membername,String content)throws MemberServiceException;
	List<WeiBo> allWeiBo()throws MemberServiceException;
	Memberinfo findByName(String name)throws MemberServiceException;
	void addAttention(String selfname,String attentionname)throws MemberServiceException;
	List<MyAttention> lookAttention(String selfname)throws MemberServiceException;
	void deleteAttention(String selfname,String attentionname)throws MemberServiceException;
	List<Look> meLookwho(String selfname)throws MemberServiceException;
	void addMeLookWho(String selfname,String lookname)throws MemberServiceException;
	void addWhoLookMe(String selfname,String lookname)throws MemberServiceException;
	List<Look> whoLookMe(String lookname)throws MemberServiceException;
	void deleteWhoLookMe(String lookname,String selfname)throws MemberServiceException;
	void deleteMeLookWho(String selfname,String lookname)throws MemberServiceException;
}
