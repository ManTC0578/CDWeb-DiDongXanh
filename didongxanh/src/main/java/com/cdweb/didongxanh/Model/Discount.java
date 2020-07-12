package com.cdweb.didongxanh.Model;

import java.util.Date;

public class Discount extends Promotion {

	public Discount(int id, int idProduct, String name, Date startDate, Date endDate, int active_Flag, Date create_Date,
			Date update_Date) {
		super(id, idProduct, name, startDate, endDate, active_Flag, create_Date, update_Date);
		// TODO Auto-generated constructor stub
	}

	public Discount(int id, int idProduct, String name, Date startDate, Date endDate, int active_Flag, Date create_Date,
			Date update_Date, long price) {
		super(id, idProduct, name, startDate, endDate, active_Flag, create_Date, update_Date);
		this.price = price;
	}

	private long price;

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

}
