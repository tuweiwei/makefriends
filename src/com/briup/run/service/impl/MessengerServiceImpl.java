package com.briup.run.service.impl;

import java.util.List;


import com.briup.run.common.exception.DataAccessException;
import com.briup.run.common.exception.MessengerServiceException;
import com.briup.run.dao.IMemberDao;
import com.briup.run.dao.IMessengerDao;
import com.briup.run.service.IMessengerService;

public class MessengerServiceImpl implements IMessengerService{
   private IMemberDao memberDao;
   private IMessengerDao messengerDao;
	

	public IMemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(IMemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public IMessengerDao getMessengerDao() {
		return messengerDao;
	}

	public void setMessengerDao(IMessengerDao messengerDao) {
		this.messengerDao = messengerDao;
	}

	

}
