package com.model.type.MobileStore.model;

import java.util.List;

public class PageBean {
	
	private int allRow;//总记录数
	private int totalPage;//总页数
	private int currentPage;//当前页
	private int pageSize;//每页的记录数
	private boolean isFirstPage;//判断是否是第一页
	private boolean isLastPage;//判断是否是最后一页
	private boolean hasPreviousPage;//判断是否有前一页
	private boolean hasNextPage;//判断是否有下一页
	private List<Mobile> list_mobile;
	private List<Orders> list_orders;
	private List<User> list_user;
	public int getAllRow() {
		return allRow;
	}
	public void setAllRow(int allRow) {
		this.allRow = allRow;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public boolean isFirstPage() {
		return isFirstPage;
	}
	public void setFirstPage(boolean isFirstPage) {
		this.isFirstPage = isFirstPage;
	}
	public boolean isLastPage() {
		return isLastPage;
	}
	public void setLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}
	public boolean isHasPreviousPage() {
		return hasPreviousPage;
	}
	public void setHasPreviousPage(boolean hasPreviousPage) {
		this.hasPreviousPage = hasPreviousPage;
	}
	public boolean isHasNextPage() {
		return hasNextPage;
	}
	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}
	
	
	
	
	/*
	 * 初始化分页信息
	 * 
	 */
	
	public List<Orders> getList_orders() {
		return list_orders;
	}
	public List<User> getList_user() {
		return list_user;
	}
	public void setList_user(List<User> list_user) {
		this.list_user = list_user;
	}
	public void setList_orders(List<Orders> list_orders) {
		this.list_orders = list_orders;
	}
	public List<Mobile> getList_mobile() {
		return list_mobile;
	}
	public void setList_mobile(List<Mobile> list_mobile) {
		this.list_mobile = list_mobile;
	}
	public void init(){
		this.isFirstPage = isFirstPage;
		this.isLastPage = isLastPage;
		this.hasPreviousPage = hasPreviousPage;
		this.hasNextPage = hasNextPage;
		}

	/*
	 * 计算总页数
	 * pageSize 每页的记录数
	 * allRow 总记录数
	 * @return 总页数 
	 * 
	 */
	
	
	public static int countTotalPage(final int pageSize,final int allRow){
		int total = allRow % pageSize == 0 ? allRow/pageSize : allRow/pageSize + 1;
		return total;
	}
	
	/*
	 * 计算当前页开始记录
	 * pageSize 每页记录数
	 * currentPage 当前第几页
	 * @return 当前开始记录号
	 */
	public static int currentOffset(final int pageSize,final int currentPage){
		final int offset = pageSize * (currentPage - 1);
		return offset;
	}
	
	/*
	 * 计算当前页
	 * 如果为0，则用1代替
	 * 
	 */
	
	public static int countCurrentPage(int page){
		final int current = (page == 0 ? 1 : page);
		return current;
		
		
	}
	
}
