package com.wdu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wdu.entity.Blog;

public interface blogRepository extends JpaRepository<Blog, Integer> {

}
