/*jadclipse*/// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) radix(10) lradix(10) 
// Source File Name:   CacheAccessor.java
package com.gstore.common.util;

import net.sf.ehcache.Ehcache;
import net.sf.ehcache.Element;

public class CacheAccessor {

    public CacheAccessor() {
    }

    public void putData(String key, Object data) {
        Element element = new Element(key, data);
        cache.put(element);
    }

    public String putData(Object data) {
        String cacheKey = generateKey(data.hashCode());
        Element element = new Element(cacheKey, data);
        cache.put(element);
        return cacheKey;
    }

    public Object getData(String cacheKey) {
        Element element = cache.get(cacheKey);
        if (element == null)
            return null;
        else
            return element.getObjectValue();
    }

    public Ehcache getCache() {
        return cache;
    }

    public void setCache(Ehcache cache) {
        this.cache = cache;
    }

    public String generateKey(int prefix) {
        long timeMillis = System.currentTimeMillis();
        StringBuffer sb = new StringBuffer();
        sb.append(prefix).append(timeMillis).append(timeMillis + (long) prefix);
        return sb.toString();
    }

    private Ehcache cache;
}
