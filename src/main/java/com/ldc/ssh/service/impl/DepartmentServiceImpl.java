package com.ldc.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ldc.ssh.bean.Department;
import com.ldc.ssh.dao.DepartmentDao;
import com.ldc.ssh.service.DepartmentService;

@Service
@Transactional
public class DepartmentServiceImpl implements DepartmentService {
	
	@Resource
	private DepartmentDao departmentDao;

	public List<Department> findAll() {
		return departmentDao.findAll();
	}

	public void delete(Long id) {
		departmentDao.delete(id);
	}

	public void save(Department model) {
		departmentDao.save(model);
	}

	public Department getById(Long id) {
		return departmentDao.getById(id);
	}

	public void update(Department department) {
		departmentDao.update(department);
	}


}
