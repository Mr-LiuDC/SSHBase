package com.ldc.ssh.test;

import org.junit.Test;

import com.ldc.ssh.utils.MyCommonUtils;

public class MyCommonUtilsTest {

	@Test
	public void testMyUUID() {
		String myuuid = MyCommonUtils.MyUUID();
		System.out.println(myuuid);
		System.out.println(myuuid.toUpperCase());
	}

}
