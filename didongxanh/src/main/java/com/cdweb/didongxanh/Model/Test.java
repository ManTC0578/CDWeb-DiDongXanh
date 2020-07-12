package com.cdweb.didongxanh.Model;

import java.math.BigDecimal;

public class Test {
	private int id;
	private int capacity;
	private BigDecimal price;

	public Test(int id, int capacity, BigDecimal price) {
		super();
		this.id = id;
		this.capacity = capacity;
		this.price = price;
	}

	public Test() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

}
