package com.gstore.common.util;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.util.ReflectionUtils;

public class DaoBeanPostProcessor implements BeanPostProcessor {

    public DaoBeanPostProcessor() {
    }

    public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
        return bean;
    }

    public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
        java.lang.reflect.Method method = ReflectionUtils.findMethod(bean.getClass(), "setSqlMapClientTemplate",
            new Class[]{org.springframework.orm.ibatis.SqlMapClientTemplate.class});
        if (method != null)
            ReflectionUtils.invokeMethod(method, bean, new Object[]{sqlMapClientTemplate});
        return bean;
    }

    public SqlMapClientTemplate getSqlMapClientTemplate() {
        return sqlMapClientTemplate;
    }

    public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
        this.sqlMapClientTemplate = sqlMapClientTemplate;
    }

    private SqlMapClientTemplate sqlMapClientTemplate;
}
