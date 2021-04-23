package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.blogRepository;
import com.wdu.entity.Blog;

@Service
public class BlogService {

	@Autowired
	blogRepository blogRepository;
	
	public void save(Blog blog) {
		blogRepository.save(blog);
	}
	public List<Blog> getAllBlogs() {
		return blogRepository.findAll();
		
	}
	public Blog getBlogById(int id) {
		return blogRepository.findById(id).get();
		
	}
	
}
