package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.SocialMediaLinksRepository;
import com.wdu.entity.SocialMediaLinks;

@Service
public class SocialMediaLinksService {

	@Autowired
	SocialMediaLinksRepository socialMediaLinksRepository;

	public SocialMediaLinks getFirstSocialMediaLinks() {
		List<SocialMediaLinks> socialMediaLinksList = socialMediaLinksRepository.findAll();
		if(socialMediaLinksList.size() > 0) {
			return socialMediaLinksList.get(0);
		} else {
			return new SocialMediaLinks();
		}
	}

	public void save(SocialMediaLinks socialMediaLinks) {
		socialMediaLinksRepository.save(socialMediaLinks);
		
		
	}
}
