package com.ldc.ssh.base;

import java.util.List;

public interface BaseDao<T> {

	/**
	 * 保存实体
	 * @param entity
	 */
	void save(T entity);
	
	/**
	 * 根据id删除实体
	 * @param id
	 */
	void delete(Long id);
	
	/**
	 * 更新实体
	 * @param entity
	 */
	void update(T entity);
	
	/***
	 * 按id查询
	 * @param id
	 * @return
	 */
	T getById(Long id);
	
	/**
	 * 按id查询(查询多条记录)
	 * @param ids
	 * @return
	 */
	List<T> getByIds(Long[] ids);
	
	/**
	 * 查询所有
	 * @return
	 */
	List<T> findAll();
	
}
