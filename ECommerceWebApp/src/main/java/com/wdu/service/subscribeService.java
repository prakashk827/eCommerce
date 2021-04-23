package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.SubscribRepository;
import com.wdu.entity.Subscribe;

@Service
public class subscribeService {

	@Autowired
	SubscribRepository subscribRepository;
	public void save(Subscribe subscribe){
		 subscribRepository.save(subscribe);	
	}
	public Subscribe getFirstSubscribeRecord() {
		List<Subscribe> subscribeList = subscribRepository.findAll();
		if(subscribeList.size() > 0) {
			return  subscribRepository.findAll().get(0);
		} else {
			return new Subscribe();
		}
		
		
		
	}
	
	
}
