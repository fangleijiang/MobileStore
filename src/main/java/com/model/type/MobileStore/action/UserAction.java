package com.model.type.MobileStore.action;


import java.io.PrintWriter;


import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;



import com.model.type.MobileStore.model.Mobile;
import com.model.type.MobileStore.model.PageBean;
import com.model.type.MobileStore.model.User;
import com.model.type.MobileStore.service.PageService;
import com.model.type.MobileStore.service.UserService;
import com.model.type.MobileStore.util.Email_Autherticator;
import com.model.type.MobileStore.util.MD5;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.model.type.MobileStore.model.Orders;
@Controller("user_action")
@Scope("prototype")
public class UserAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	private User user;
	
	private UserService userservice;

	private String checkname;
	
	private List<Orders> list_orders;

	private List<Mobile> list_mobile;
	private Mobile mobile;
	
	private Orders orders;
	
	private PageBean pageBean;
	private PageService pageService;
	private List<User> list_user;
	private int page = 1;

	
	 @JSON(serialize=false)
	public User getUser() {
		return user;
	}
	 
	public void setUser(User user) {
		this.user = user;
	}
	 @JSON(serialize=false)
	public UserService getUserservice() {
		return userservice;
	}
	@Resource
	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}
	
	

	public void setCheckname(String checkname) {
		this.checkname = checkname;
	}

	
	public List<Orders> getList_orders() {
		return list_orders;
	}

	public void setList_orders(List<Orders> list_orders) {
		this.list_orders = list_orders;
	}
	
	


	public Mobile getMobile() {
		return mobile;
	}

	public void setMobile(Mobile mobile) {
		this.mobile = mobile;
	}

	
	public List<Mobile> getList_mobile() {
		return list_mobile;
	}

	public void setList_mobile(List<Mobile> list_mobile) {
		this.list_mobile = list_mobile;
	}
	
	

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
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

	public List<User> getList_user() {
		return list_user;
	}

	public void setList_user(List<User> list_user) {
		this.list_user = list_user;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	
	public void sendMail(String mail_context) throws Exception {
		try {
			Properties props = new Properties();// 获取系统环境
			Authenticator auth = new Email_Autherticator("fangleijiang@163.com", "flj142319");// 用户验证
			props.put("mail.smtp.host", "smtp.163.com");
			props.put("mail.smtp.auth", "true");
			System.out.println(props);
			Session session = Session.getDefaultInstance(props, auth);
			// 设置session,和邮件服务器进行通讯
			MimeMessage message = new MimeMessage(session);
			message.setContent("Hello", "text/html");
			message.setText(mail_context);// 文本内容，正文
			message.setSentDate(new Date());// 邮件发送时间
			message.setSubject("欢迎注册手机一号店！");
			Address address = new InternetAddress("fangleijiang@163.com",
					"手机一号店");
			message.setFrom(address);// 设置邮件发送者的地
			Address toaddress = new InternetAddress(user.getUsername());// 邮件接收者地址ַ
			message.addRecipient(Message.RecipientType.TO, toaddress);
			System.out.println(message);
			Transport.send(message);// 邮件发送
			System.out.println("Send Mail Ok!");
		} catch (Exception e) {
			e.printStackTrace();
		}

	
	}
	
	

	@SuppressWarnings("unchecked")
	public String Login() throws Exception{
		ActionContext context = ActionContext.getContext();   
		@SuppressWarnings("rawtypes")
		Map session = context.getSession(); 
		User user1 = this.userservice.find_User_By_username(user.getUsername());
		if(this.userservice.checkLogin(user)==true && user.getIdentitys().equals("普通用户")){
			session.put("username", user1.getUsername());
			session.put("uid", user1.getId());
			session.put("identitys", "普通用户");
			System.out.println(session.get("username"));
			return "userloginSuccess";
		}
		else if(this.userservice.checkLogin(user)==true && user.getIdentitys().equals("管理员")){
			session.put("username", user1.getUsername());
			session.put("uid", user1.getId());
			session.put("identitys", "管理员");
			return "adminloginSuccess";
		}
		return "loginfaile";
	}
	
	public String addCartLogin() throws Exception{
		Login();
		ActionContext context = ActionContext.getContext();   
		@SuppressWarnings("rawtypes")
		Map session = context.getSession(); 
		HttpServletResponse response = ServletActionContext.getResponse();
		response.sendRedirect((String)session.get("historyURL"));
		return "addCartLogin";
		
	}
	
	public String checkRegister() throws Exception{
		HttpServletResponse response = ServletActionContext.getResponse();
		JSONObject json=new JSONObject();  
		PrintWriter out  = response.getWriter();
		if(this.userservice.checkRegister(checkname)==false){
			
			json.put("exist", "false");
			out.println(json);  
			out.flush();
			out.close();
			return "userAllowRegister";
		}
			json.put("exist", "true");
			out.println(json); 
			out.flush();
			out.close();
		return "userNoRegister";
	}
	
	public String Register() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		String path = request.getContextPath();
		String text = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"User_ActivatingRegister.action?user.username="+request.getParameter("user.username");
		sendMail("欢迎注册，请点击链接激活账号！"+text);
		user.setStatus("未激活");
		user.setIdentitys("普通用户");
		user.setPassword(MD5.GetMd5(user.getPassword()));
		this.userservice.save(user);
		return "saveSuccess";
		
	}
	
	@SuppressWarnings("unchecked")
	public String logOut() throws Exception{
		ActionContext context = ActionContext.getContext();   
		@SuppressWarnings("rawtypes")
		Map session = context.getSession(); 
		if(session.get("username")!=null){
			session.put("username", null);
			return "userlogOutSuccess";
		}
		return "logfaile";
	}
	
	public String personalCenter() throws Exception{
		user  = this.userservice.find_User_By_id(user.getId());
		list_orders = user.getList_orders();
		return "personalCenter";
	}
	
	public String listUsertoBackground() throws Exception{
		this.pageBean = this.pageService.queryForPage_User(20, page);
		this.list_user = pageBean.getList_user();
		return "listUserSuccess";
	}
	
	public String ActivatingRegister() throws Exception{
		this.userservice.ActivatingRegister(user.getUsername());
		return "ActivatingRegister";
	}
}
