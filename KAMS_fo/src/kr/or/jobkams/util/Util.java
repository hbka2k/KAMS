package kr.or.jobkams.util;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Properties;

/**
 * Program Name : kr.go.songpa.ssem.util
 * Author : shlee
 * Date : 2020-09-13
 * Description :
 * History :
 * Version :
 */
public class Util {

    private static Properties commonProp;
    public static void setCommonProp(Properties prop) {
        commonProp = prop;
    }

    public static String getSubString(String src, String token) {
        return src.substring(0,  src.indexOf(token));
    }

    public static String getDate(int div) {
        Calendar cal = Calendar.getInstance();
        String yyyy = Integer.toString(cal.get(Calendar.YEAR));
        String mm = Integer.toString(cal.get(Calendar.MONTH) + 1);
        String dd = Integer.toString(cal.get(Calendar.DATE));
        if (mm.length() == 1)
            mm = "0" + mm;
        if (dd.length() == 1)
            dd = "0" + dd;

        String reDate = "";
        if (div == 1)
            reDate = yyyy + mm + dd;
        if (div == 2)
            reDate = yyyy + "/" + mm + "/" + dd;
        if (div == 3)
            reDate = yyyy + "-" + mm + "-" + dd;
        return reDate;
    }

    public static String getDateMonthMinus(int div, int minus) {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, minus);

        String yyyy = Integer.toString(cal.get(Calendar.YEAR));
        String mm = Integer.toString(cal.get(Calendar.MONTH) + 1);
        String dd = Integer.toString(cal.get(Calendar.DATE));

        if (mm.length() == 1)
            mm = "0" + mm;
        if (dd.length() == 1)
            dd = "0" + dd;

        String reDate = "";
        if (div == 1)
            reDate = yyyy + mm + dd;
        if (div == 2)
            reDate = yyyy + "/" + mm + "/" + dd;
        if (div == 3)
            reDate = yyyy + "-" + mm + "-" + dd;

        return reDate;
    }

    public static List<String> getLocalTelNo() {
        ArrayList<String> localTelNoList = new ArrayList<String>();

        localTelNoList.add("010");		/* ????????? */
        localTelNoList.add("02");		/* ??????????????? */
        localTelNoList.add("031");		/* ????????? */
        localTelNoList.add("032");		/* ???????????????, ????????? ????????? */
        localTelNoList.add("033");		/* ????????? */
        localTelNoList.add("041");		/* ???????????? */
        localTelNoList.add("042");		/* ??????????????? */
        localTelNoList.add("043");		/* ???????????? */
        localTelNoList.add("051");		/* ??????????????? */
        localTelNoList.add("052");		/* ??????????????? */
        localTelNoList.add("053");		/* ??????????????? */
        localTelNoList.add("054");		/* ???????????? */
        localTelNoList.add("055");		/* ???????????? */
        localTelNoList.add("061");		/* ???????????? */
        localTelNoList.add("062");		/* ??????????????? */
        localTelNoList.add("063");		/* ???????????? */
        localTelNoList.add("064");		/* ????????? */

        return localTelNoList;
    }

    public static String getRemoteAddr(HttpServletRequest request) {
        String ip = null;
        ip = request.getHeader("X-Forwarded-For");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-Real-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-RealIP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("REMOTE_ADDR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }

    public static String getRemoteOs(HttpServletRequest request) {
        String agent = request.getHeader("User-Agent");
        String os = "";

        if(agent.contains("NT 6.0")) os = "Windows Vista/Server 2008";
        else if(agent.contains("NT 5.2")) os = "Windows Server 2003";
        else if(agent.contains("NT 5.1")) os = "Windows XP";
        else if(agent.contains("NT 5.0")) os = "Windows 2000";
        else if(agent.contains("NT 7.0")) os = "Windows 7";
        else if(agent.contains("NT 10.0")) os = "Windows 10";
        else if(agent.contains("NT")) os = "Windows NT";
        else if(agent.contains("9x 4.90")) os = "Windows Me";
        else if(agent.contains("98")) os = "Windows 98";
        else if(agent.contains("95")) os = "Windows 95";
        else if(agent.contains("Win16")) os = "Windows 3.x";
        else if(agent.contains("Windows")) os = "Windows";
        else if(agent.contains("Linux")) os = "Linux";
        else if(agent.contains("Macintosh")) os = "Macintosh";
        else os = "";

        return os;
    }

    public static String getRemoteBrowser(HttpServletRequest request) {
        String agent = request.getHeader("User-Agent");
        String brower = "";

        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + agent);

        if (agent != null) {
            if (agent.contains("Trident")) {
                brower = "MSIE";
            } else if (agent.contains("Edg")) {
                brower = "Edge";
            } else if (agent.contains("Firefox")) {
                brower = "Firefox";
            } else if (agent.contains("Chrome")) {
                brower = "Chrome";
            } else if (agent.contains("Opera")) {
                brower = "Opera";
            } else if (agent.contains("iPhone") && agent.contains("Mobile")) {
                brower = "iPhone";
            } else if (agent.contains("Android") && agent.contains("Mobile")) {
                brower = "Android";
            }
        }

        return brower;
    }

    public static synchronized String nvl(Object object, String result) {
        String retVal = result;
        if (object != null) {
            retVal = object.toString();
        }
        return retVal;
    }

    public static synchronized int nvl(Object object, int result) {
        int retVal = result;
        if (object != null) {
            retVal = Integer.parseInt((String) object.toString());
        }
        return retVal;
    }

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static synchronized String nvl(Object object)
    {
        String _s = null;
        if (object == null || object.equals("null"))
            _s = new String("");
        else
            _s = object.toString();
        return _s;
    }

    public static String substring(String src, int start, int end)
    {
        String retVal = "";
        if (!(src == null || "".equals(src) || start > src.length() || start > end || start < 0)){
            if (end > src.length())
                end = src.length();
            retVal = src.substring(start, end);
        }
        return retVal;
    }

    public static String getArrayToStr(String[] array) {
        StringBuilder rtn = new StringBuilder();

        int size = array.length;
        if (size != 0) {
            for(String item : array) {
                rtn.append(item).append(",");
            }
        }
        return rtn.toString().substring(0, rtn.toString().length()-1);
    }

    public static String getPwdTemp(String mob_no) {
        String pwd = "";
        String[] tokens = mob_no.split("-");

        if(tokens.length == 3) {
            pwd = "ssem@" + tokens[2] + "!";
        } else {
            pwd = "ssem@0000!";
        }

        return pwd;
    }

    public static String admintype(String code) {
        String rtnStr = "";

        if("S".equals(code)) {
            rtnStr = "??????????????????";
        } else if("G".equals(code)) {
            rtnStr = "???????????????";
        } else if("N".equals(code)) {
            rtnStr = "???????????????";
        } else if("B".equals(code)) {
            rtnStr = "??????????????????";
        } else if ("".equals(code)) {
            rtnStr = "???????????????";
        }

        return rtnStr;
    }

    public static List<String> getRateList() {
        List<String> minList = new ArrayList<String>();
        int strMin = 5;

        while(100 >= strMin) {
            minList.add(String.valueOf(strMin));
            strMin = strMin + 5;
        }

        return minList;
    }

    public static List<String> transStringToList(String str, String div) {
        List<String> rtn = new ArrayList<String>();

        if(!"".equals(str)) {
            String[] tokens = str.split(div);
            for(String token : tokens) {
                rtn.add(token);
            }
        }

        return rtn;
    }
}
