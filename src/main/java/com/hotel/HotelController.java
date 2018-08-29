package com.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.dao.HotelRepository;
import com.hotel.entity.Hotel;

@Controller
public class HotelController {
	
	@Autowired
	HotelRepository hot;
	
	@RequestMapping(value= {"/", "home"})
	public ModelAndView home()  {
		return new ModelAndView("home", "index", "Home Page");
	}
	

	@RequestMapping("/search")
	public ModelAndView search(@RequestParam("location") String loc)  {
		List<Hotel> h1 = hot.findByCity(loc);
		return new ModelAndView("search", "results", h1);
	}
	
	@RequestMapping("/searchprice")
	public ModelAndView searchPrice(@RequestParam(value="Price", required = false) String price)  {
		List<Hotel> h1 = hot.findByPricePerNightOrderByPricePerNightDesc(price);
		return new ModelAndView("search", "results", h1);
	}
	

}
