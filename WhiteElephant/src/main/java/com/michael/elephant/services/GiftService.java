package com.michael.elephant.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.michael.elephant.models.Gift;
import com.michael.elephant.repositories.GiftRepository;


@Service
public class GiftService {
	
	@Autowired
	private GiftRepository giftRepo;
	
//	FULL CRUD
	
//	CREATE
	public Gift createGift(Gift gift) {
		return giftRepo.save(gift);
	}
	
//	FIND ALL
	public List<Gift> allGifts(){
		return giftRepo.findAll();
	}
	
//	FIND ONE
	public Gift oneGift(Long id) {
		Optional<Gift> optionalGift = giftRepo.findById(id);
				if(optionalGift.isPresent()) {
					return optionalGift.get();
				}else {
					return null;
				}
	}
//	EDIT
	public Gift editGift(Gift gift) {
		return giftRepo.save(gift);
	}
//	DELETE
	public void deleteGift(Long id) {
		giftRepo.deleteById(id);
	}
}
