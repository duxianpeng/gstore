package com.gstore.common.convertor;

import org.dozer.CustomConverter;

import com.gstore.common.util.CommonUtil;

public class HotNumberConvertor implements CustomConverter {

	public Object convert(Object dest, Object source, Class<?> arg2,
			Class<?> arg3) {
		// TODO Auto-generated method stub
		Object resultValue = null;
		if (!CommonUtil.isNullOrEmpty(source)) {
			if (source instanceof Integer) {
				if ((Integer) source >= 10000) {
					return 5;
				}
				if ((Integer) source >= 10000) {
					return 4;
				}
				if ((Integer) source >= 1000) {
					return 3;
				}
				if ((Integer) source >= 100) {
					return 2;
				}
				if ((Integer) source >= 10) {
					return 1;
				}
			}
		}
		return resultValue;
	}

}
