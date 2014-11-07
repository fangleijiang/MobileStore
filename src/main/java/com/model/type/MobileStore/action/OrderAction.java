package com.model.type.MobileStore.action;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.model.type.MobileStore.model.Mobile;
import com.model.type.MobileStore.model.Orders;
import com.model.type.MobileStore.model.PageBean;
import com.model.type.MobileStore.model.User;
import com.model.type.MobileStore.service.MobileService;
import com.model.type.MobileStore.service.OrderService;
import com.model.type.MobileStore.service.PageService;
import com.model.type.MobileStore.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("order_action")
@Scope("prototype")
public class OrderAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private OrderService orderService;
	private MobileService mobileService;
	private UserService userService;
	private Orders orders = new Orders();
	private Mobile mobile;
	private User user;
	private List<Orders> list_orders;
	private PageBean pageBean;
	private PageService pageService;
	private int page = 1;
	private List<Mobile> listNewMobile;
	private PageBean pageBean2;
	
	
	public OrderService getOrderService() {
		return orderService;
	}
	@Resource
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	
	public MobileService getMobileService() {
		return mobileService;
	}
	@Resource
	public void setMobileService(MobileService mobileService) {
		this.mobileService = mobileService;
	}
	
	
	public UserService getUserService() {
		return userService;
	}
	@Resource
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	
	
	public Mobile getMobile() {
		return mobile;
	}
	public void setMobile(Mobile mobile) {
		this.mobile = mobile;
	}
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	public List<Orders> getList_orders() {
		return list_orders;
	}
	public void setList_orders(List<Orders> list_orders) {
		this.list_orders = list_orders;
	}
	
	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	
	
	public PageService getPageService() {
		return pageService;
	}
	@Resource
	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	

	public List<Mobile> getListNewMobile() {
		return listNewMobile;
	}
	public void setListNewMobile(List<Mobile> listNewMobile) {
		this.listNewMobile = listNewMobile;
	}
	public PageBean getPageBean2() {
		return pageBean2;
	}
	public void setPageBean2(PageBean pageBean2) {
		this.pageBean2 = pageBean2;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	@SuppressWarnings("unchecked")
	public String addtoCart() throws Exception{
		mobile = this.mobileService.find_Mobile_By_Id(mobile.getId());
		orders.setOrder_number(UUID.randomUUID().toString());
		ActionContext context = ActionContext.getContext();   
		@SuppressWarnings("rawtypes")
		Map session = context.getSession();
		session.put("totalprice", orders.getProduct_quantity()*mobile.getPrice());
		session.put("quantity", orders.getProduct_quantity());
		session.put("order_number", orders.getOrder_number());
		this.pageBean2 = pageService.queryForPage_Mobile(5, page);
		this.listNewMobile = this.pageBean2.getList_mobile();
		return "addtoCartSuccess";
	}
	
	
	public String addOrder() throws Exception{
		ActionContext context = ActionContext.getContext();   
		@SuppressWarnings("rawtypes")
		Map session = context.getSession();
		mobile = this.mobileService.find_Mobile_By_Id(mobile.getId());
		user = this.userService.find_User_By_username(user.getUsername());
		orders.setOrder_number(UUID.randomUUID().toString());//订单号,随机数
		orders.setInvoice_number(UUID.randomUUID().toString());//发货号
		orders.setProduct_quantity((Integer)session.get("quantity"));//商品数量
		orders.setMoney((Integer)session.get("totalprice"));//总价钱
		orders.setPayment_time(orders.getPayment_time());//下单时间
		orders.setRecipient_address(orders.getRecipient_address());//收货地址
		orders.setPhonenumber(orders.getPhonenumber());
		orders.setPaymentMode("货到付款");
		orders.setUser(user);
		orders.setMobile(mobile);
		this.orderService.addOrder(orders);
		this.pageBean2 = pageService.queryForPage_Mobile(5, page);
		this.listNewMobile = this.pageBean2.getList_mobile();
		return "addOrderSuccess";
	}
	
	public String ListOrdertoBackground() throws Exception{
		this.pageBean = this.pageService.queryForPage_Orders(15, page);
		list_orders = pageBean.getList_orders();
		return "listOrderSuccess";
	}
	
	
	public String CheckOrders() throws Exception{
		this.orderService.update_order_by_id(orders.getId());
		return "checkSuccess";
	}
	
}
