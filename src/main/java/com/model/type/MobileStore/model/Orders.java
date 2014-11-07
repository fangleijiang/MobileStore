package com.model.type.MobileStore.model;

import java.util.Date;

import java.util.List;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="t_orders")
public class Orders {
	
	@Column(length=50)
	private int id;
	@Column(length=100)
	private String order_number;//订单�?
	
	@Column(length=100)
	private String invoice_number;//发货�?
	
	@Column(length=4)
	private int product_quantity;//商品数量
	
	@Column(length=10)
	private int money;//付款金额
	
	private Date payment_time = new Date();//付款日期
	
	@Column(length=2)
	private int invoice_Status;//发货状�?
	
	@Column(length=200)
	private String recipient_address;//ַ收件人地�?
	
	private String recipient_name;
	private String phonenumber;//手机号码
	private User user;
	private Mobile mobile;
	private String paymentMode;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrder_number() {
		return order_number;
	}
	public void setOrder_number(String order_number) {
		this.order_number = order_number;
	}
	public String getInvoice_number() {
		return invoice_number;
	}
	public void setInvoice_number(String invoice_number) {
		this.invoice_number = invoice_number;
	}
	public int getProduct_quantity() {
		return product_quantity;
	}
	public void setProduct_quantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public Date getPayment_time() {
		return payment_time;
	}
	public void setPayment_time(Date payment_time) {
		this.payment_time = payment_time;
	}
	public int getInvoice_Status() {
		return invoice_Status;
	}
	public void setInvoice_Status(int invoice_Status) {
		this.invoice_Status = invoice_Status;
	}
	public String getRecipient_address() {
		return recipient_address;
	}
	public void setRecipient_address(String recipient_address) {
		this.recipient_address = recipient_address;
	}
	
	
	@ManyToOne(fetch = FetchType.EAGER)//,fetch = FetchType.EAGER(cascade = CascadeType.ALL)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	public Mobile getMobile() {
		return mobile;
	}
	public void setMobile(Mobile mobile) {
		this.mobile = mobile;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getRecipient_name() {
		return recipient_name;
	}
	public void setRecipient_name(String recipient_name) {
		this.recipient_name = recipient_name;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	
	
	
	
}
