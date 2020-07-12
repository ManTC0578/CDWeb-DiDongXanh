package com.cdweb.didongxanh.Model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity(name="store_list_items")
public class StoreListItems {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="store_id")
	private Store store_storeListItems;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="product_detail_id",nullable=false)
	private ProductDetail productDetail_storeListItems;
	
	private int quantity;
	private int activeFlag;
	private Date createDate;
	private Date updateDate;
	public StoreListItems() {
		super();
	}
	public StoreListItems(Integer id, Store store_storeListItems, ProductDetail productDetail_storeListItems,
			int quantity, int activeFlag, Date createDate, Date updateDate) {
		super();
		this.id = id;
		this.store_storeListItems = store_storeListItems;
		this.productDetail_storeListItems = productDetail_storeListItems;
		this.quantity = quantity;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Store getStore_storeListItems() {
		return store_storeListItems;
	}
	public void setStore_storeListItems(Store store_storeListItems) {
		this.store_storeListItems = store_storeListItems;
	}
	public ProductDetail getProductDetail_storeListItems() {
		return productDetail_storeListItems;
	}
	public void setProductDetail_storeListItems(ProductDetail productDetail_storeListItems) {
		this.productDetail_storeListItems = productDetail_storeListItems;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
	
}
