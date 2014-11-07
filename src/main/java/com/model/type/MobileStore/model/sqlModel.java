package com.model.type.MobileStore.model;


public class sqlModel {

	private  String brand;//品牌
	
	private  int price;//价格
	
	private  String network_format;//网络型号ʽ

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

	public   String getSql(){
		String hql = "from Mobile mobile where ";
		if(brand!=null){
			hql = hql +"mobile.brand like '%"+brand+"%' and ";
		}
		if(network_format!=null){
			hql = hql+"mobile.network_format like '%"+network_format+"%' and ";
		}
		if(price!=0 && price<4000){
			hql = hql+"mobile.price > '"+((price/500)*500-1)+"' and mobile.price < '"+((price/500)*500+500)+"'";
		}
		else {
			hql = hql+"mobile.price > '"+price+"'";
		}
		String hql2 = " order by mobile.id desc";
		
		return hql+hql2;
	}
}
