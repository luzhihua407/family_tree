package com.starfire.familytree.vo;

import java.util.List;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

/**
 * 分页信息
 * 
 * @author luzh
 * @time 2018年3月19日上午10:55:36
 * @contact 670177230
 * @version V1.0
 * @param <P>
 *            请求参数对象
 * @param <T>
 *            结果集对象
 */
public class PageInfo<P, T> implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 请求参数对象
	 */
	private P param;
	/**
	 * 结果集合
	 */
	private List<T> result;

	/**
	 * 总条数
	 */
	private Long total = 0l;

	/**
	 * 总页数
	 */
	private Integer pageCount = 1;
	/**
	 * 页码
	 */
	private Integer pageNumber = 1;

	/**
	 * 每页条数
	 */
	private Integer pageSize = 10;

	public PageInfo() {

	}

	/**
	 * 构造Page实例
	 * 
	 * @param result
	 * @param total
	 * @param pageCount
	 * @param pageNumber
	 * @param pageSize
	 */
	public PageInfo(List<T> result, Long total, Integer pageCount, Integer pageNumber, Integer pageSize) {
		this.result = result;
		this.total = total;
		this.pageCount = pageCount;
		this.pageSize = pageSize;
		this.pageNumber = pageNumber;
	}

	public P getParam() {
		return param;
	}

	/**
	 * 设置请求参数
	 * 
	 * @param param
	 * @author luzh
	 */
	public void setParam(P param) {
		this.param = param;
	}

	/**
	 * 获取结果集
	 * 
	 * @return
	 * @author luzh
	 */
	public List<T> getResult() {
		return result;
	}

	/**
	 * 设置结果集
	 * 
	 * @param result
	 * @author luzh
	 */
	public void setResult(List<T> result) {
		// 提取分页信息
		if (result instanceof PageInfo) {
			// Page page=(Page)result;
			// this.pageCount=page.getPages();
			// this.total=page.getTotal();
		}
		this.result = result;
	}

	/**
	 * 获取总条数
	 * 
	 * @return
	 * @author luzh
	 */
	public Long getTotal() {
		return total;
	}

	/**
	 * 设置总条数
	 * 
	 * @param total
	 * @author luzh
	 */
	public void setTotal(Long total) {
		this.total = total;
	}

	/**
	 * 获取总页数
	 * 
	 * @return
	 * @author luzh
	 */
	public Integer getPageCount() {
		return pageCount;
	}

	/**
	 * 设置总页数
	 * 
	 * @param pageCount
	 * @author luzh
	 */
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	/**
	 * 获取页码
	 * 
	 * @return
	 * @author luzh
	 */
	public Integer getPageNumber() {
		return pageNumber;
	}

	/**
	 * 设置页码
	 * 
	 * @param pageNumber
	 * @author luzh
	 */
	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}

	/**
	 * 获取每页条数
	 * 
	 * @return
	 * @author luzh
	 */
	public Integer getPageSize() {
		return pageSize;
	}

	/**
	 * 设置每页条数
	 * 
	 * @param pageSize
	 * @author luzh
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * 转换成Mybatis-plus Page 对象
	 *
	 * @return
	 * @author luzh
	 */
	public Page<T> toMybatisPlusPage() {
		Page<T> page = new Page<T>();
		page.setPages(this.pageCount);
		page.setSize(this.getPageSize());
		page.setTotal(this.getTotal());
		page.setCurrent(this.getPageNumber());
		return page;
	}
	
	public PageInfo<?,T> from(Page<T> page){
		
		long current = page.getCurrent();
		long pages = page.getPages();
		List<T> records = page.getRecords();
		long size = page.getSize();
		long total = page.getTotal();
		this.setPageCount((int)pages);
		this.setPageNumber((int)current);
		this.setPageSize((int)size);
		this.setResult(records);
		this.setTotal(total);
		return null;
		
	}
}
