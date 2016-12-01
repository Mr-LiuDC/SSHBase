package com.ldc.ssh.service;

import java.util.List;

import com.ldc.ssh.bean.Department;

public interface DepartmentService {

	List<Department> findAll();

	void delete(Long id);

	void save(Department model);

	Department getById(Long id);

	void update(Department department);

}
