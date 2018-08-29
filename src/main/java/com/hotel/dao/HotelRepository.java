package com.hotel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hotel.entity.Hotel;

public interface HotelRepository extends JpaRepository<Hotel, Long>  {
	
	List<Hotel> findByNameContaining(String keyword);
	
	List<Hotel> findByCity(String city);
	
	List<Hotel> findByPricePerNightOrderByPricePerNightDesc(String price);
	
	
	}
