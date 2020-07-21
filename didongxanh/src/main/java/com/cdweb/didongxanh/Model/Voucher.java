package com.cdweb.didongxanh.Model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="voucher")

public class Voucher{

	@Id
	@GeneratedValue( strategy = GenerationType.AUTO )
	private int id;
	private String name;
	private Date startDate;
	private Date endDate;
	private int percentage;
	private long price;	
	private int activeFlag;
	private Date createDate;
	private Date updateDate;
	
	
	public Voucher() {
		super();
	}

	

}
