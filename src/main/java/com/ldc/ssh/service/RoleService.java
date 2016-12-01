package com.ldc.ssh.service;

import java.util.List;

import com.ldc.ssh.bean.Role;

public interface RoleService {

	void delete(Long id);
	
	// 查询所有
	List<Role> findAll();

	void save(Role role);

	Role getById(Long id);

	void update(Role role);

	

}
