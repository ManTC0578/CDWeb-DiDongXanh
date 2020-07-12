package com.cdweb.didongxanh.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdweb.didongxanh.DAO.StoreDAO;
import com.cdweb.didongxanh.Model.Pagging;
import com.cdweb.didongxanh.Model.Store;

@Service
public class StoreService {

	@Autowired
	private StoreDAO<Store> storeDAO;

	public void saveStore(Store store) throws Exception {

		store.setActiveFlag(1);
		store.setCreateDate(new Date());
		store.setUpdateDate(new Date());
		this.storeDAO.save(store);
	}

	public List<Store> findByProperty(String property, Object value) {

		return storeDAO.findByProperty(property, value);

	}
	
	public void updateStore(Store store) throws Exception {

		store.setActiveFlag(1);

		store.setUpdateDate(new Date());

		this.storeDAO.update(store);
	}

	public void deleteStore(Store store) throws Exception {

		store.setActiveFlag(0);
		store.setUpdateDate(new Date());
		this.storeDAO.update(store);
	}

	public Store getStoreById(int id) {
		return this.storeDAO.findById(Store.class, id);
	}

	public List<Store> getAll(Store store, Pagging pagging) {
		StringBuilder sb = new StringBuilder("");
		Map<String, Object> mapParams = new HashMap<>();

		if (store != null) {

			if (store.getAddress() != null) {
				sb.append(" and model.address like :address");
				mapParams.put("address", "%"+store.getAddress()+"%");
			}
		}

		return this.storeDAO.getList(sb.toString(), mapParams, pagging);

	}
	public List<Store> listStore(int productId, int productDetailId) {
		return this.storeDAO.listStore(productId, productDetailId);
	}

}
