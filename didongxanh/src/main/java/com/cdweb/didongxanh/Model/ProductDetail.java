package com.cdweb.didongxanh.Model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name = "product_detail")
public class ProductDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "product_id", nullable = false)
	private Product product_proDetail;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "spec_id")
	private Spec spec_proDetail;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "color_id")
	private Color color_proDetail;
	

	private BigDecimal price;
	private String img_url;
	private int activeFlag;
	private Date createDate;
	private Date updateDate;

	@OneToMany(mappedBy = "productDetail_storeListItems", fetch = FetchType.EAGER)
	private Set<StoreListItems> storeListItems_ProDetail;

	
	@javax.persistence.Transient
	private BigDecimal gotPriceMin;
	@javax.persistence.Transient
	private int state;
	
	
	public ProductDetail() {
		super();
	}

	public ProductDetail(Integer id, Color color_proDetail, BigDecimal price, String img_url, int activeFlag,
			Date createDate, Date updateDate,int state) {
		super();
		this.id = id;
		this.color_proDetail = color_proDetail;
		this.price = price;
		this.img_url = img_url;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
		this.state=state;
	}

	
	
	

	public ProductDetail(Integer id, Spec spec_proDetail, Color color_proDetail, BigDecimal price, String img_url,
			int activeFlag, Date createDate, Date updateDate) {
		super();
		this.id = id;
		this.spec_proDetail = spec_proDetail;
		this.color_proDetail = color_proDetail;
		this.price = price;
		this.img_url = img_url;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public BigDecimal getGotPriceMin() {
		return gotPriceMin;
	}

	public void setGotPriceMin(BigDecimal gotPriceMin) {
		this.gotPriceMin = gotPriceMin;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

	public Set<StoreListItems> getStoreListItems_ProDetail() {
		return storeListItems_ProDetail;
	}

	public void setStoreListItems_ProDetail(Set<StoreListItems> storeListItems_ProDetail) {
		this.storeListItems_ProDetail = storeListItems_ProDetail;
	}

	public Spec getSpec_proDetail() {
		return spec_proDetail;
	}

	public void setSpec_proDetail(Spec spec_proDetail) {
		this.spec_proDetail = spec_proDetail;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Product getProduct_proDetail() {
		return product_proDetail;
	}

	public void setProduct_proDetail(Product product_proDetail) {
		this.product_proDetail = product_proDetail;
	}

	public Color getColor_proDetail() {
		return color_proDetail;
	}

	public void setColor_proDetail(Color color_proDetail) {
		this.color_proDetail = color_proDetail;
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
