package com.hotel.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.hotel.entity.Hotel;

@Repository
@Transactional
public class HotelDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public Hotel findById(Long id)  {
		return em.find(Hotel.class, id);
	}
	
	public List<Hotel> findAll()  {
		return em.createQuery("FROM hotel_list", Hotel.class).getResultList();
	}
	

}
