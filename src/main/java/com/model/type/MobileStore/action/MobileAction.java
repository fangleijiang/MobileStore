package com.model.type.MobileStore.action;

import java.io.File;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.model.type.MobileStore.model.Mobile;
import com.model.type.MobileStore.model.PageBean;
import com.model.type.MobileStore.model.sqlModel;
import com.model.type.MobileStore.service.MobileService;
import com.model.type.MobileStore.service.PageService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;




@Controller("mobile_action")
@Scope("prototype")
public class MobileAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private Mobile mobile;

	private MobileService mobileService;
	
	private File file;
	private String contentType;
	private String fileName;

	private sqlModel sql_model;
	
	private PageBean pageBean;
	private PageBean pageBean2;
	private PageService page_mobileService;
	private List<Mobile> listMobile;
	private List<Mobile> listNewMobile;
	private int page = 1;
	
	
	public sqlModel getSql_model() {
		return sql_model;
	}

	public void setSql_model(sqlModel sql_model) {
		this.sql_model = sql_model;
	}

	public Mobile getMobile() {
		return mobile;
	}

	public void setMobile(Mobile mobile) throws UnsupportedEncodingException {

		this.mobile = mobile;
	}

	public MobileService getMobileService() {
		return mobileService;
	}

	@Resource
	public void setMobileService(MobileService mobileService) {
		this.mobileService = mobileService;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) throws UnsupportedEncodingException {
		this.fileName = new String(fileName.getBytes("ISO-8859-1"), "UTF-8");  
	
	}
	public void setUpload(File file) {  
        this.file = file;  
    }  
  
    public void setUploadFileName(String fileName) {  
        this.fileName = fileName;  
    }  
   
	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public PageService getPage_mobileService() {
		return page_mobileService;
	}
	@Resource
	public void setPage_mobileService(PageService page_mobileService) {
		this.page_mobileService = page_mobileService;
	}

	public List<Mobile> getListMobile() {
		return listMobile;
	}

	public void setListMobile(List<Mobile> listMobile) {
		this.listMobile = listMobile;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
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

	@SuppressWarnings("unchecked")
	public String addMobile() throws Exception {
		ActionContext context = ActionContext.getContext();   
		@SuppressWarnings("rawtypes")
		Map session = context.getSession();  
		mobile.setPictrue((String)session.get("picture"));
		this.mobileService.Save_Mobile(mobile);
		session.put("picture", null);
		return "addsuccess";
	}

	
	@SuppressWarnings("unchecked")
	public String upload() throws Exception {
		ActionContext context = ActionContext.getContext();   
		@SuppressWarnings("rawtypes")
		Map session = context.getSession();  
		String path = ServletActionContext.getServletContext().getRealPath(
				"/upload_images");
		fileName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf('.'));  
		File saveFile = new File(path + "/" + fileName);
		session.put("picture", "./upload_images" + "/" + fileName);
		if (!saveFile.getParentFile().exists())
			saveFile.getParentFile().mkdirs();
		FileUtils.copyFile(file, saveFile);// 复制文件
		return "uploadsucess";
	}

	public String ListProductsToindex() throws Exception{
		this.pageBean = page_mobileService.queryForPage_Mobile(20, page);
		this.listMobile = this.pageBean.getList_mobile();
		this.pageBean2 = page_mobileService.queryForPage_Mobile(5, page);
		this.listNewMobile = this.pageBean2.getList_mobile();
		return "list_mobile_success";
	}
	
	public String Product_center() throws Exception{
		this.pageBean = page_mobileService.queryForPage_Mobile(20, page);
		this.listMobile = this.pageBean.getList_mobile();
		
		return "list_mobile_tocenter_success";
	}
	
	public String findMobileById() throws Exception{
		this.mobile = this.mobileService.find_Mobile_By_Id(mobile.getId());
		HttpServletRequest request = ServletActionContext.getRequest();
		String path = request.getContextPath();
		ActionContext context = ActionContext.getContext();   
		@SuppressWarnings("rawtypes")
		Map session = context.getSession(); 
		session.put("historyURL", request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"Mobile_findMobileById.action?mobile.id="+request.getParameter("mobile.id"));
		this.pageBean2 = page_mobileService.queryForPage_Mobile(5, page);
		this.listNewMobile = this.pageBean2.getList_mobile();
		return "find_mobile_success";
	}
	
	public String listProducttoBackSuccssoBack() throws Exception{
		this.pageBean = page_mobileService.queryForPage_Mobile(20, page);
		this.listMobile = this.pageBean.getList_mobile();
		return "listProducttoBackSuccss";
	}
	
	
	public String listNewProduct() throws Exception{
		this.pageBean = page_mobileService.queryForPage_Mobile(12, page);
		this.listMobile = this.pageBean.getList_mobile();
		this.pageBean2 = page_mobileService.queryForPage_Mobile(5, page);
		this.listNewMobile = this.pageBean2.getList_mobile();
		return "listNewProduct";
	}
	
	public String Fuzzysearch() throws Exception{
	//	System.out.println("ss="+sql_model.getBrand());
		this.pageBean = page_mobileService.queryForPage_Fuzzysearch(12, page,sql_model);
		this.listMobile = this.pageBean.getList_mobile();
		this.pageBean2 = page_mobileService.queryForPage_Mobile(5, page);
		this.listNewMobile = this.pageBean2.getList_mobile();
		return "FuzzysearchSuc";
	}
}
