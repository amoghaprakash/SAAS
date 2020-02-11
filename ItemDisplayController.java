package com.alpha.householdrental.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alpha.householdrental.model.Item;
import com.alpha.householdrental.service.ItemService;

@Controller
public class ItemDisplayController {

	@Autowired
	private ItemService itemService;
	
	@RequestMapping(value = "itemDisplay", method = RequestMethod.GET)
	@ResponseBody
	public Item itemDisplay() throws Exception {
				String itemName = "Diano";
				Item item = itemService.getItemDetailsFromDB(itemName);
				return item;
	}
}

			
		
