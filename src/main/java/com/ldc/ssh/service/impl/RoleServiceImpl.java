package com.ldc.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ldc.ssh.bean.Role;
import com.ldc.ssh.dao.RoleDao;
import com.ldc.ssh.service.RoleService;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {

	@Resource
	private RoleDao roleDao;

	public void delete(Long id) {
		roleDao.delete(id);
	}

	public List<Role> findAll() {
		return roleDao.findAll();
	}

	public void save(Role role) {
		roleDao.save(role);
	}

	public Role getById(Long id) {
		return roleDao.getById(id);
	}

	public void update(Role role) {
		roleDao.update(role);
	}
	

}
