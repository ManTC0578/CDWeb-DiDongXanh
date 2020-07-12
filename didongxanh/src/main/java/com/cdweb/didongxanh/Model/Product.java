package com.cdweb.didongxanh.Model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name = "product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="item_id")
	private Items item;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="brand_id")
	private Brand brand_product;
	

	private String name;
	private String code;
	private String description;
	private String img_Main;
	private String img_1;
	private String img_2;
	private String img_3;
	private int activeFlag;
	private Date createDate;
	private Date updateDate;
	

	@OneToMany(mappedBy="product_proDetail",fetch= FetchType.EAGER)
	private Set<ProductDetail> productDetails;

	
	
	public Product() {
		super();
	}
	

	public Product(Integer id, String name, String code, String description, String img_Main, String img_1,
			String img_2, String img_3, int activeFlag, Date createDate, Date updateDate) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
		this.description = description;
		this.img_Main = img_Main;
		this.img_1 = img_1;
		this.img_2 = img_2;
		this.img_3 = img_3;
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




	public Brand getBrand_product() {
		return brand_product;
	}

	public void setBrand_product(Brand brand_product) {
		this.brand_product = brand_product;
	}

	

	public Items getItem() {
		return item;
	}


	public void setItem(Items item) {
		this.item = item;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImg_Main() {
		return img_Main;
	}

	public void setImg_Main(String img_Main) {
		this.img_Main = img_Main;
	}

	public String getImg_1() {
		return img_1;
	}

	public void setImg_1(String img_1) {
		this.img_1 = img_1;
	}

	public String getImg_2() {
		return img_2;
	}

	public void setImg_2(String img_2) {
		this.img_2 = img_2;
	}

	public String getImg_3() {
		return img_3;
	}

	public void setImg_3(String img_3) {
		this.img_3 = img_3;
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

	public Set<ProductDetail> getProductDetails() {
		return productDetails;
	}

	public void setProductDetails(Set<ProductDetail> productDetails) {
		this.productDetails = productDetails;
	}
	
	
	

	
}
