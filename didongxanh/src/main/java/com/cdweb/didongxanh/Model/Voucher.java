package com.cdweb.didongxanh.Model;

import java.util.Date;

public class Voucher extends Promotion{

	
	public Voucher(int id, int idProduct, String name, Date startDate, Date endDate, int active_Flag, Date create_Date,
			Date update_Date) {
		super(id, idProduct, name, startDate, endDate, active_Flag, create_Date, update_Date);
		
	}
	
	public Voucher(int id, int idProduct, String name, Date startDate, Date endDate, int active_Flag, Date create_Date,
			Date update_Date, int id_Product, long price) {
		super(id, idProduct, name, startDate, endDate, active_Flag, create_Date, update_Date);
		this.id_Product = id_Product;
		this.price = price;
	}

	private int id_Product;
	private long price;
	
	
	public int getId_Product() {
		return id_Product;
	}
	public void setId_Product(int id_Product) {
		this.id_Product = id_Product;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	
	

}
