
package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.PricingPlansRepository;
import com.wdu.entity.PricingPlans;

@Service
public class PricingPlansService {

	@Autowired
	PricingPlansRepository pricingPlansRepository;

	public void savePricePlan(PricingPlans pricingPlans) {
		pricingPlansRepository.save(pricingPlans);
	}

	public List<PricingPlans> getAllPricingPlans() {
		return pricingPlansRepository.findAll();

	}

	public void deletePricePlanById(int id) {
		pricingPlansRepository.deleteById(id);

	}

	public PricingPlans getPricePlanById(int id) {
		return pricingPlansRepository.findById(id).get();

	}

}
