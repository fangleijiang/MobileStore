package com.model.type.MobileStore.model;

import java.util.List;



import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="t_mobile")
public class Mobile {
	
	@Column(length=50)
	private int id;
	
	@Column(length=50)
	private  String brand;//品牌
	
	@Column(length=10)
	private  int price;//价格
	
	@Column(length=20)
	private  String network_format;//网络型号ʽ
	
	@Column(length=4)
	private String screen_size;//屏幕尺寸
	
	@Column(length=10)
	private String model;//型号
	
	@Column(length=10)
	private String color;//颜色
	
	private String time_to_market;//上市时间
	
	@Column(length=50)
	private String cpu;
	
	@Column(length=20)
	private String camera;//相机
	
	@Column(length=10)
	private String ram;//运行内存
	
	@Column(length=10)
	private String rom;//硬盘存储
	
	@Column(length=255)
	private String pictrue;
	
	private String discription;
	
	private List<Orders> list_orders;
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getNetwork_format() {
		return network_format;
	}
	public void setNetwork_format(String network_format) {
		this.network_format = network_format;
	}
	public String getScreen_size() {
		return screen_size;
	}
	public void setScreen_size(String screen_size) {
		this.screen_size = screen_size;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getTime_to_market() {
		return time_to_market;
	}
	public void setTime_to_market(String time_to_market) {
		this.time_to_market = time_to_market;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public String getCamera() {
		return camera;
	}
	public void setCamera(String camera) {
		this.camera = camera;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getRom() {
		return rom;
	}
	public void setRom(String rom) {
		this.rom = rom;
	}
	
	public String getPictrue() {
		return pictrue;
	}
	 
	
	
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER, mappedBy = "mobile")
	public List<Orders> getList_orders() {
		return list_orders;
	}
	
	public void setList_orders(List<Orders> list_orders) {
		this.list_orders = list_orders;
	}
	public void setPictrue(String pictrue) {
		this.pictrue = pictrue;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	

	
	
	
}
