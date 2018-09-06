/*
 * Copyright(C) 2011. BHR-FRONTLINE Technologies (Dalian) Co. Ltd. All Rights Reserved.
 * Application : gstore
 * Class Name  : com.gstore.service.BaseService
 * Date Created: Mar 10, 2011
 * Author      : duxianpeng
 */
package com.gstore.common.service;

import javax.annotation.Resource;

import org.dozer.Mapper;

public class BaseService {
	@Resource(name = "dozerMapper")
	private Mapper mapper;

	public Mapper getMapper() {
		return mapper;
	}

	public void setMapper(Mapper mapper) {
		this.mapper = mapper;
	}
}
