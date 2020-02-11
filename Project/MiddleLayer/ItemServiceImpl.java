package com.alpha.householdrental.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alpha.householdrental.dao.ItemRepository;
import com.alpha.householdrental.model.Item;
import com.alpha.householdrental.service.ItemService;

@Service("itemService")
public class ItemServiceImpl implements ItemService {

	@Autowired
	ItemRepository itemRepository;

	@Override
	public boolean insertItem(Item item) throws Exception {
		try {
			//user.set_id(ObjectId.get());
			itemRepository.save(item);
			
		}
		catch (Exception e) {
			System.out.println("Item does not exist");
			throw new Exception("Error in saving Item ");
		}
		return true;
	}
	
	@Override
	public Item getItemDetailsFromDB(String itemName) throws Exception {
		Item item = null;
		itemName = "Diano";
		try {
			
			item = itemRepository.getItemDetails(itemName);
		}
		catch (Exception e)
		{
			System.out.println("Iten can not be fetched");
			throw new Exception("Error getting details");
		}
		
	return item;
	}
}

