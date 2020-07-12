package com.cdweb.didongxanh.Model;

import java.util.Date;

public abstract class Promotion {

	private int id;
	private int idProduct;
	private String name;
	private Date startDate;
	private Date endDate;
	private int active_Flag;
	private Date create_Date;
	private Date update_Date;


	public Promotion(int id, int idProduct, String name, Date startDate, Date endDate, int active_Flag,
			Date create_Date, Date update_Date) {
		super();
		this.id = id;
		this.idProduct = idProduct;
		this.name = name;
		this.startDate = startDate;
		this.endDate = endDate;
		this.active_Flag = active_Flag;
		this.create_Date = create_Date;
		this.update_Date = update_Date;
	}

	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getActive_Flag() {
		return active_Flag;
	}
	public void setActive_Flag(int active_Flag) {
		this.active_Flag = active_Flag;
	}
	public Date getCreate_Date() {
		return create_Date;
	}
	public void setCreate_Date(Date create_Date) {
		this.create_Date = create_Date;
	}
	public Date getUpdate_Date() {
		return update_Date;
	}
	public void setUpdate_Date(Date update_Date) {
		this.update_Date = update_Date;
	}
	
	
}
