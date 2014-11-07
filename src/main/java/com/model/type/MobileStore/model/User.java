package com.model.type.MobileStore.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="t_user")
public class User {

	@Column(length=50)
	private int id;
	
	@Column(length=50)
	private String username;
	
	@Column(length=50)
	private String password;
	
	@Column(length=6)
	private String sex;
	
	@Column(length=255)
	private String address;
	
	@Column(length=6)
	private String age;
	
	@Column(length=6)
	private String identitys;
	
	private String status;
	
	private List<Orders> list_orders;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	
	@OneToMany(mappedBy = "user",fetch = FetchType.EAGER)//cascade = CascadeType.ALL,fetch = FetchType.EAGER,
	public List<Orders> getList_orders() {
		return list_orders;
	}

	public void setList_orders(List<Orders> list_orders) {
		this.list_orders = list_orders;
	}

	public String getIdentitys() {
		return identitys;
	}

	public void setIdentitys(String identitys) {
		this.identitys = identitys;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	
}
