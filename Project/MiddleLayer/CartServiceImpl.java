package com.alpha.householdrental.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alpha.householdrental.dao.CartRepository;
import com.alpha.householdrental.model.Cart;
import com.alpha.householdrental.service.CartService;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired
	CartRepository cartRepository;

	@Override
	public boolean insertItemToCart(Cart cart) throws Exception {
		try {
			//user.set_id(ObjectId.get());
			cartRepository.save(cart);
			
		}
		catch (Exception e) {
			System.out.println("Item does not exist");
			throw new Exception("Error in saving Item ");
		}
		return true;
	}
	

}
