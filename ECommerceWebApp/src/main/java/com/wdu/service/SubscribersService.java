package com.wdu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.SubscribersRepository;
import com.wdu.entity.Subscribers;

@Service
public class SubscribersService {

	@Autowired
	SubscribersRepository subscribersRepository;

	public void save(Subscribers subscribers) {
		subscribersRepository.save(subscribers);
	}
}
