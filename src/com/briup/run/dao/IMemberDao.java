package com.briup.run.dao;

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

public interface IMemberDao {
	Memberinfo findMemberinfoByName(String name) throws DataAccessException;
	void saveOrUpdateMemberinfo(Memberinfo memberinfo) throws DataAccessException;
	Pointaction findPointactionByPointAction(String pointAction)throws DataAccessException;
	List<photoAlbum> lookPhotos(String name) throws DataAccessException;
	void addPhotos(photoAlbum album) throws DataAccessException;
	void deletePhotoAlbum(Long id)throws DataAccessException;
	List<MyDiary> lookDiary(String name) throws DataAccessException;
	void addDiary(MyDiary myDiary)throws DataAccessException;
	List<Memberinfo> findAll()throws DataAccessException;
	List<Memberinfo> findBoy()throws DataAccessException;
	List<Memberinfo> findGirl()throws DataAccessException;
	List<Memberinfo> findOnline()throws DataAccessException;
	MyDiary diaryDetail(Long id)throws DataAccessException;
	void deleteDiary(MyDiary diary)throws DataAccessException;
	List<Email> lookReceiveEmail(String name)throws DataAccessException;
	List<Email> lookSendEmail(String name)throws DataAccessException;
	void sendEmail(Email email) throws DataAccessException;
	void deleteEmail(Email email)throws DataAccessException;
	Email emailDetail(Long id)throws DataAccessException;
	void addWeiBo(WeiBo weiBo)throws DataAccessException;
	List<WeiBo> allWeiBo()throws DataAccessException;
	Memberinfo findByName(String name)throws DataAccessException;
	void addAttention(MyAttention myAttention)throws DataAccessException;
	List<MyAttention> lookAttention(String selfname)throws DataAccessException;
	void deleteAttention(MyAttention myAttention)throws DataAccessException;
	MyAttention findAttentionByName(String selfname,String attentioname)throws DataAccessException;
	List<Look> meLookwho(String selfname)throws DataAccessException;
	void addMeLookWho(Look look)throws DataAccessException;
	void addWhoLookMe(LookMe lookMe)throws DataAccessException;
	List<Look> whoLookMe(String lookname)throws DataAccessException;
	void deleteWhoLookMe(Look look)throws DataAccessException;
	Look whoLook(String lookname,String selfname)throws DataAccessException;
}
