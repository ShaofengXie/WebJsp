package com.xsf.springmvc.service;

import com.xsf.springmvc.domain.Product;

public interface ProductService {
	Product add(Product product);

	Product get(long id);
}
