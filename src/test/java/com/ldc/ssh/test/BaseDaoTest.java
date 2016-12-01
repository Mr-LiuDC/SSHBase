package com.ldc.ssh.test;

import org.junit.Test;

import com.ldc.ssh.dao.DepartmentDao;
import com.ldc.ssh.dao.RoleDao;
import com.ldc.ssh.dao.UserDao;
import com.ldc.ssh.dao.impl.DepartmentDaoImpl;
import com.ldc.ssh.dao.impl.RoleDaoImpl;
import com.ldc.ssh.dao.impl.UserDaoImpl;

public class BaseDaoTest {

	@Test
	public void test_Dao() {
		UserDao userDao = new UserDaoImpl();
		System.out.println(userDao);
		RoleDao roleDao = new RoleDaoImpl();
		System.out.println(roleDao);
		DepartmentDao departmentDao = new DepartmentDaoImpl();
		System.out.println(departmentDao);
		
	}

}
