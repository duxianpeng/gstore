package com.gstore.common.util;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.gstore.common.Constants;

public class CommonUtil {

    public static boolean isNullOrEmpty(String value) {
        return value == null || value.trim().equals("");
    }

    public static boolean isNullOrZero(Integer value) {
        return value == null || value.intValue() == 0;
    }

    public static boolean isNullOrZero(Long value) {
        return value == null || value.longValue() == 0L;
    }

    public static boolean isNullOrZero(Double value) {
        return value == null || value.doubleValue() == 0.0D;
    }

    public static boolean isNullOrEmpty(List value) {
        return value == null || value.size() == 0;
    }

    public static boolean isNullOrEmpty(Set value) {
        return value == null || value.size() == 0;
    }

    public static boolean isNullOrEmpty(Map value) {
        return value == null || value.size() == 0;
    }

    public static boolean isNullOrEmpty(Object obj) {
        return obj == null || obj.equals("");
    }

    /**
     * Method to parse the string
     * 
     * @author duxianpeng
     * @param String
     * @param String
     *            Default is Comma.
     * @return String[]
     */
    public static String[] parseString(String s, String delimit) {
        if (s == null)
            return null;
        if (delimit == null) {
            delimit = Constants.COMMA;
        }
        Vector list = new Vector();
        StringTokenizer st = new StringTokenizer(s, delimit);
        while (st.hasMoreElements()) {
            list.add(st.nextElement());
        }
        String[] str = new String[list.size()];
        list.copyInto(str);
        return str;
    }

    /**
     * Method to parse the string
     * 
     * @author duxianpeng
     * @param String
     * @param String
     *            Default is Comma.
     * @return List<String>
     */
    public static List<String> parseStringToList(String s, String delimit) {
        if (s == null)
            return null;
        if (delimit == null) {
            delimit = Constants.COMMA;
        }
        List<String> list = new ArrayList<String>();
        StringTokenizer st = new StringTokenizer(s, delimit);
        while (st.hasMoreElements()) {
            list.add((String) st.nextElement());
        }
        return list;
    }

    /**
     * This method convert a string array to a string, each element of array separated by parameter <code>delimit</code>
     * <p>
     * eg: <br/>
     * 
     * <pre>
     *     String[] strs = [&quot;duxianpeng@bhr.com.cn&quot;, &quot;xuechunlian@bhr.com.cn&quot;];
     *     String delimit = &quot;;&quot;;
     *     String str = StringUtil.deparseString(strs, delimit);
     * </pre>
     * 
     * Print str:<br/> duxianpeng@bhr.com.cn;xuechunlian@bhr.com.cn
     * 
     * @author duxianpeng
     * @param strs
     *            String Array
     * @param delimit
     *            Custom Separator
     * @return String that have deparsed.
     */
    public static String deparseString(String[] strs, String delimit) {
        String str = Constants.EMPTY_STRING;
        if (CommonUtil.isNullOrEmpty(strs)) {
            return str;
        }

        if (delimit == null) {
            delimit = Constants.COMMA;
        }

        StringBuffer bf = new StringBuffer();
        for (String s : strs) {
            if (CommonUtil.isNullOrEmpty(s)) {
                continue;
            }
            bf.append(s);
            bf.append(delimit);
        }
        str = bf.toString();
        if (!CommonUtil.isNullOrEmpty(str)) {
            int lastIndex = str.lastIndexOf(delimit);
            str = str.substring(0, lastIndex);
        }
        return str;
    }

    public static String deparseStringFromList(List<String> strs, String delimit) {
        String str = Constants.EMPTY_STRING;
        if (CommonUtil.isNullOrEmpty(strs)) {
            return str;
        }

        if (delimit == null) {
            delimit = Constants.COMMA;
        }

        StringBuffer bf = new StringBuffer();
        for (String s : strs) {
            if (CommonUtil.isNullOrEmpty(s)) {
                continue;
            }
            bf.append(s);
            bf.append(delimit);
        }
        str = bf.toString();
        if (!CommonUtil.isNullOrEmpty(str)) {
            int lastIndex = str.lastIndexOf(delimit);
            str = str.substring(0, lastIndex);
        }
        return str;
    }

    /**
     * This method is used to get email subject. The email subject contains one parameter.
     * 
     * @param emailSubject
     *            email subject in configuration file.
     * @param param
     *            dynamic parameter.
     * @return Email Subject.
     */
    public static String getEmailSubject(String emailSubject, String param) {

        if (CommonUtil.isNullOrEmpty(emailSubject)) {
            return Constants.EMPTY_STRING;
        }
        String result = emailSubject;

        try {
            MessageFormat format = new MessageFormat(emailSubject);
            String[] args = new String[]{param};

            result = format.format(args);
        } catch (Exception e) {
            return Constants.EMPTY_STRING;
        }

        return result;
    }

    /**
     * Formats a date using the standard date format for DMCC services.
     * 
     * @param date
     *            Date
     * @return String
     */
    public static String formatDate(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat(Constants.DISPLAY_DATE_FORMAT, Locale.US);
        return formatter.format(date);
    }

    /**
     * Formats date provided with the specified pattern
     * 
     * @param date
     *            Date
     * @param pattern
     *            String
     * @return String
     */
    public static String formatDate(Date date, String pattern) {
        SimpleDateFormat formatter = new SimpleDateFormat(pattern, Locale.US);
        return formatter.format(date);
    }

    /**
     * Decimal rounding.
     * 
     * @param value
     *            The number to be format.
     * @param scale
     *            The count of number after the decimal point
     * @param roundingMode
     *            The rounding mode eg. BigDecimal.ROUND_HALF_DOWN etc.
     * @return The number after format.
     */
    public static double round(double value, int scale, int roundingMode) {
        BigDecimal bd = new BigDecimal(value);
        bd = bd.setScale(scale, roundingMode);
        double d = bd.doubleValue();
        bd = null;
        return d;
    }

    public static Map toMap(Object obj) throws IllegalArgumentException, IllegalAccessException,
        InvocationTargetException {
        Map hashMap = new HashMap();
        Class c = obj.getClass();
        Method m[] = c.getDeclaredMethods();
        for (int i = 0; i < m.length; i++) {
            if (m[i].getName().indexOf("get") == 0 && m[i].getName().length() > 3) {
                Object temp = m[i].invoke(obj);
                if (!CommonUtil.isNullOrEmpty(temp)) {
                    String methodName = m[i].getName();
                    String firstChar = methodName.substring(3, 4);
                    firstChar = firstChar.toLowerCase();
                    String afterSubStr = methodName.substring(4);
                    methodName = firstChar + afterSubStr;
                    hashMap.put(methodName, temp);
                }
            }
        }
        return hashMap;
    }

    public static String uniqueStr(String source, String delimit) {
        if (!CommonUtil.isNullOrEmpty(source)) {
            List<String> strs = CommonUtil.parseStringToList(source, delimit);
            List<String> newStrs = new ArrayList<String>();
            if (!CommonUtil.isNullOrEmpty(strs)) {
                for (String str : strs) {
                    if (!CommonUtil.isNullOrEmpty(str)) {
                        if (!newStrs.contains(str)) {
                            newStrs.add(str);
                        }
                    }
                }
            }
            String result = CommonUtil.deparseStringFromList(newStrs, delimit);
            return result;

        }
        return source;
    }

    /**
     * 将queryForList结果List转换为Object[]
     * 
     * @param list
     *            queryForList的结果
     * @param key
     *            List中Map里转换为String的Key
     * @return
     */
    public static Object[] ListToObjectArray(List list, String key) {
        int listSize = list.size();
        if (listSize > 0) {
            Object[] objArray = new Object[listSize];
            for (int i = 0; i < listSize; i++) {
                objArray[i] = ((Map) list.get(i)).get(key);
            }
            return objArray;
        } else {
            return null;
        }
    }

    /**
     * 加密密码
     */
    public static String makePassword(String password) {
        StringBuffer key = new StringBuffer(30);
        byte passChar[] = password.getBytes();
        for (int i = 0; i < passChar.length; i++) {
            key.append(String.valueOf(passChar[i] ^ 0xff));
        }
        return key.toString();
    }

    /**
     * 解密密码
     */
    public static String getPassword(String key) {
        StringBuffer password = new StringBuffer();
        int sum = key.length() / 3;
        int index = 0;
        for (int i = 0; i < sum; i++) {
            char c = (char) (Integer.parseInt(key.substring(index, index + 3)) ^ 0xff);
            password.append(c);
            index += 3;
        }
        return password.toString();
    }

    /**
     * 将Web请求Map中的Key转换大小写
     */
    public static Map mapKeyChangeCase(Map m, String ul) {
        Map newMap = new HashMap(m.size());
        Iterator it = m.keySet().iterator();
        while (it.hasNext()) {
            String key = (String) it.next();
            if ("Upper".equals(ul)) {
                newMap.put(key.toUpperCase(), m.get(key));
            } else {
                newMap.put(key.toLowerCase(), m.get(key));
            }
        }
        return newMap;
    }

    /**
     * 将给定的字符串使用UTF-8进行URL编码
     */
    public static String toUrl(String src) {
        return toUrl(src, Constants.ENCODING);
    }

    /**
     * 将给定的字符串进行URL编码
     */
    public static String toUrl(String src, String enc) {
        String target = null;
        try {
            target = URLEncoder.encode(src, enc);
        } catch (UnsupportedEncodingException e) {
            target = src;
        }
        return target;
    }

    /**
     * 分类时在类Id前补零
     */
    public static String fillZero(String nextId, String parentId) {
        int len = parentId.length() + 3;
        if ("0".equals(parentId)) {
            len = 3;
        }
        int srcLen = nextId.length();
        if (srcLen >= len) {
            return nextId;
        } else {
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < len - srcLen; i++) {
                sb.append("0");
            }
            sb.append(nextId);
            return sb.toString();
        }
    }

    /**
     * 将数据库中查询出的简单的List转化为Map
     */
    public static Map simpleListToMap(List list, String key, String value) {
        Map m = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map item = (Map) it.next();
            m.put(item.get(key), item.get(value));
        }
        return m;
    }

    /**
     * 将数据库中查询出的简单的List转化为已主键为key的Map
     */
    public static Map listToMap(List list, String key) {
        Map m = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map item = (Map) it.next();
            m.put(item.get(key).toString(), item);
        }
        return m;
    }

    /**
     * 将数据库查询出的List转换为JSON格式字符串
     */
    public static String listToJson(List list) {
        JSONArray array = new JSONArray();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                Object tmp = list.get(i);
                if (tmp instanceof Map) {
                    Map srcMap = (Map) tmp;
                    JSONObject obj = new JSONObject();
                    Iterator it = srcMap.keySet().iterator();
                    Object key = null;
                    while (it.hasNext()) {
                        key = it.next();
                        Object value = srcMap.get(key);
                        if (value instanceof java.util.Date) {
                            value = value.toString();
                        }
                        obj.put(key.toString(), value);
                    }
                    array.add(obj);
                } else {
                    array.add(tmp);
                }
            }
        }
        return array.toString();
    }

    /**
     * 获取字符串的MD5加密结果
     */
    public static String getMD5ofStr(String str) {
        MD5 md5 = new MD5();
        return md5.getMD5ofStr(str);
    }

    /**
     * 将请求参数还原为key=value的形式
     */
    public static String getQueryString(Map params) {
        StringBuffer queryString = new StringBuffer(256);
        Iterator it = params.keySet().iterator();
        int count = 0;
        while (it.hasNext()) {
            String key = (String) it.next();
            String[] param = (String[]) params.get(key);
            for (int i = 0; i < param.length; i++) {
                if (count == 0) {
                    count++;
                } else {
                    queryString.append("&");
                }
                queryString.append(key);
                queryString.append("=");
                try {
                    queryString.append(URLEncoder.encode((String) param[i], Constants.ENCODING));
                } catch (UnsupportedEncodingException e) {
                }
            }
        }
        return queryString.toString();
    }

    /**
     * 对传入的url进行编码
     */
    public static String encodeURL(String url) {
        try {
            return URLEncoder.encode(url, Constants.ENCODING);
        } catch (UnsupportedEncodingException e) {
            return url;
        }
    }

    /**
     * 获得请求的路径及参数
     */
    public static String getRequestURL(HttpServletRequest request) {
        StringBuffer originalURL = new StringBuffer(request.getServletPath());
        Map parameters = request.getParameterMap();
        if (parameters != null && parameters.size() > 0) {
            originalURL.append("?");
            originalURL.append(getQueryString(parameters));
        }
        return originalURL.toString();
    }
}
