package com.wdu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wdu.entity.Instruments;

public interface InstrumentsRepository extends JpaRepository<Instruments, Integer> {

}
