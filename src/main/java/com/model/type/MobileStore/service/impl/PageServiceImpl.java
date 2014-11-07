package com.model.type.MobileStore.service.impl;

import java.util.List;


import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.model.type.MobileStore.dao.PageDAO;
import com.model.type.MobileStore.model.Mobile;
import com.model.type.MobileStore.model.Orders;
import com.model.type.MobileStore.model.PageBean;
import com.model.type.MobileStore.model.User;
import com.model.type.MobileStore.model.sqlModel;
import com.model.type.MobileStore.service.PageService;



@Service
public class PageServiceImpl implements PageService {

	private PageDAO pageDAO;

	private Mobile mobile;
	public PageDAO getPageDAO() {
		return pageDAO;
	}
	@Resource
	public void setPageDAO(PageDAO pageDAO) {
		this.pageDAO = pageDAO;
	}
	
	public Mobile getMobile() {
		return mobile;
	}
	public void setMobile(Mobile mobile) {
		this.mobile = mobile;
	}
	public PageBean queryForPage_Mobile(int pageSize, int page) {
		final String hql = "from Mobile mobile order by mobile.id";
		int allRow = pageDAO.getAllRowCount(hql);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset  = PageBean.currentOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = PageBean.countCurrentPage(page);
		List<Mobile> list_mobile  = pageDAO.queryForPage_Mobile(hql, offset, length);
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList_mobile(list_mobile);
		pageBean.init();
		return pageBean;
	
	}
	@Override
	public PageBean queryForPage_Orders(int pageSize, int page) {
		final String hql = "from Orders orders order by orders.id desc";
		int allRow = pageDAO.getAllRowCount(hql);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset  = PageBean.currentOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = PageBean.countCurrentPage(page);
		List<Orders> list_orders  = pageDAO.queryForPage_Orders(hql, offset, length);
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList_orders(list_orders);
		pageBean.init();
		return pageBean;
	}
	@Override
	public PageBean queryForPage_User(int pageSize, int page) {
		final String hql = "from User user order by user.id";
		int allRow = pageDAO.getAllRowCount(hql);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset  = PageBean.currentOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = PageBean.countCurrentPage(page);
		List<User> list_user  = pageDAO.queryForPage_User(hql, offset, length);
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList_user(list_user);
		pageBean.init();
		return pageBean;
	}
	@Override
	public PageBean queryForPage_Fuzzysearch(int pageSize, int page,sqlModel sql_model) {
		//System.out.println("sql000000");
		//System.out.println("sql="+mobile.getSql());
		int allRow = pageDAO.getAllRowCount(sql_model.getSql());
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset  = PageBean.currentOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = PageBean.countCurrentPage(page);
		List<Mobile> list_mobile  = pageDAO.queryForPage_Mobile(sql_model.getSql(), offset, length);
		System.out.println(list_mobile.size());
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList_mobile(list_mobile);
		pageBean.init();
		return pageBean;
	}
	
	
	
}
