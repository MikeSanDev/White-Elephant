package com.michael.elephant.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.michael.elephant.models.Gift;


@Repository
public interface GiftRepository extends CrudRepository<Gift, Long>{
	List<Gift> findAll();
}
