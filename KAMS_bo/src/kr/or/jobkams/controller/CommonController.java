package kr.or.jobkams.controller;

import kr.or.jobkams.common.Constants;
import kr.or.jobkams.common.PageHolder;
import kr.or.jobkams.model.*;
import kr.or.jobkams.service.AppService;
import kr.or.jobkams.service.BasicService;
import kr.or.jobkams.util.FileMngUtil;
import kr.or.jobkams.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Program Name : kr.go.songpa.ssem.controller
 * Author : shlee
 * Date : 2020-09-10
 * Description :
 * History :
 * Version :
 */
public class CommonController {

    @Autowired
    private AppService appService;

    @Autowired
    private BasicService basicService;

    @Autowired
    private FileMngUtil fileUtil;

    protected HashMap<String, String> paramMap = null;

    public CommonController() {
        paramMap = new HashMap<String, String>();
    }

    protected SearchVo getSearch(HttpServletRequest request) {
        return getSearch(request, 0);
    }

    protected SearchVo getSearchSetEduIdx(HttpServletRequest request, int listSizeIn, int edu_idx) {
        this.paramMap = new HashMap<String, String>();
        SearchVo search = new SearchVo();

        search.setSearchVal(ServletRequestUtils.getStringParameter(request, "searchVal", ""));
        search.setSearchVal2(ServletRequestUtils.getStringParameter(request, "searchVal2", ""));
        search.setSearchVal3(ServletRequestUtils.getStringParameter(request, "searchVal3", ""));
        search.setSearchVal4(ServletRequestUtils.getStringParameter(request, "searchVal4", ""));
        search.setSearchVal5(ServletRequestUtils.getStringParameter(request, "searchVal5", ""));
        search.setSearchVal6(ServletRequestUtils.getStringParameter(request, "searchVal6", ""));
        search.setSearchVal7(ServletRequestUtils.getStringParameter(request, "searchVal7", ""));
        search.setSearchVal8(ServletRequestUtils.getStringParameter(request, "searchVal8", ""));
        search.setSearchVal9(ServletRequestUtils.getStringParameter(request, "searchVal9", ""));
        search.setSearchVal10(ServletRequestUtils.getStringParameter(request, "searchVal10", ""));
        search.setSearchSDate(ServletRequestUtils.getStringParameter(request, "searchSDate", Util.getDateMonthMinus(3, -12)));
        search.setSearchEDate(ServletRequestUtils.getStringParameter(request, "searchEDate", Util.getDate(3)));
        search.setSearchKind(ServletRequestUtils.getStringParameter(request, "searchKind", ""));
        search.setSearchKind2(ServletRequestUtils.getStringParameter(request, "searchKind2", ""));
        search.setSearchKind3(ServletRequestUtils.getStringParameter(request, "searchKind3", ""));
        search.setSearchKind4(ServletRequestUtils.getStringParameter(request, "searchKind4", ""));
        search.setSearchLang(ServletRequestUtils.getStringParameter(request, "searchLang", ""));

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);

        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);
        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);


        paramMap.put("listSize", Integer.toString(listSize));
        paramMap.put("page", Integer.toString(page));

        paramMap.put("searchVal", search.getSearchVal());
        paramMap.put("searchVal2", search.getSearchVal2());
        paramMap.put("searchVal3", search.getSearchVal3());
        paramMap.put("searchVal4", search.getSearchVal4());
        paramMap.put("searchVal5", search.getSearchVal5());
        paramMap.put("searchVal6", search.getSearchVal6());
        paramMap.put("searchVal7", search.getSearchVal7());
        paramMap.put("searchVal8", search.getSearchVal8());
        paramMap.put("searchVal9", search.getSearchVal9());
        paramMap.put("searchVal10", search.getSearchVal10());
        paramMap.put("searchSDate", search.getSearchSDate());
        paramMap.put("searchEDate", search.getSearchEDate());
        paramMap.put("searchKind", search.getSearchKind());
        paramMap.put("searchKind2", search.getSearchKind2());
        paramMap.put("searchKind3", search.getSearchKind3());
        paramMap.put("searchKind4", search.getSearchKind4());
        paramMap.put("searchLang", search.getSearchLang());

        paramMap.put("edu_idx", String.valueOf(edu_idx));

        return search;
    }

    protected SearchVo getSearchSetVerApyIdx(HttpServletRequest request, int listSizeIn, int ver_apy_idx) {
        this.paramMap = new HashMap<String, String>();
        SearchVo search = new SearchVo();

        search.setSearchVal(ServletRequestUtils.getStringParameter(request, "searchVal", ""));
        search.setSearchVal2(ServletRequestUtils.getStringParameter(request, "searchVal2", ""));
        search.setSearchVal3(ServletRequestUtils.getStringParameter(request, "searchVal3", ""));
        search.setSearchVal4(ServletRequestUtils.getStringParameter(request, "searchVal4", ""));
        search.setSearchVal5(ServletRequestUtils.getStringParameter(request, "searchVal5", ""));
        search.setSearchVal6(ServletRequestUtils.getStringParameter(request, "searchVal6", ""));
        search.setSearchVal7(ServletRequestUtils.getStringParameter(request, "searchVal7", ""));
        search.setSearchVal8(ServletRequestUtils.getStringParameter(request, "searchVal8", ""));
        search.setSearchVal9(ServletRequestUtils.getStringParameter(request, "searchVal9", ""));
        search.setSearchVal10(ServletRequestUtils.getStringParameter(request, "searchVal10", ""));
        search.setSearchSDate(ServletRequestUtils.getStringParameter(request, "searchSDate", Util.getDateMonthMinus(3, -12)));
        search.setSearchEDate(ServletRequestUtils.getStringParameter(request, "searchEDate", Util.getDate(3)));
        search.setSearchKind(ServletRequestUtils.getStringParameter(request, "searchKind", ""));
        search.setSearchKind2(ServletRequestUtils.getStringParameter(request, "searchKind2", ""));
        search.setSearchKind3(ServletRequestUtils.getStringParameter(request, "searchKind3", ""));
        search.setSearchKind4(ServletRequestUtils.getStringParameter(request, "searchKind4", ""));
        search.setSearchLang(ServletRequestUtils.getStringParameter(request, "searchLang", ""));

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);

        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);
        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);


        paramMap.put("listSize", Integer.toString(listSize));
        paramMap.put("page", Integer.toString(page));

        paramMap.put("searchVal", search.getSearchVal());
        paramMap.put("searchVal2", search.getSearchVal2());
        paramMap.put("searchVal3", search.getSearchVal3());
        paramMap.put("searchVal4", search.getSearchVal4());
        paramMap.put("searchVal5", search.getSearchVal5());
        paramMap.put("searchVal6", search.getSearchVal6());
        paramMap.put("searchVal7", search.getSearchVal7());
        paramMap.put("searchVal8", search.getSearchVal8());
        paramMap.put("searchVal9", search.getSearchVal9());
        paramMap.put("searchVal10", search.getSearchVal10());
        paramMap.put("searchSDate", search.getSearchSDate());
        paramMap.put("searchEDate", search.getSearchEDate());
        paramMap.put("searchKind", search.getSearchKind());
        paramMap.put("searchKind2", search.getSearchKind2());
        paramMap.put("searchKind3", search.getSearchKind3());
        paramMap.put("searchKind4", search.getSearchKind4());
        paramMap.put("searchLang", search.getSearchLang());

        paramMap.put("ver_apy_idx", String.valueOf(ver_apy_idx));

        return search;
    }

    protected SearchVo getSearchSetVerIdx(HttpServletRequest request, int listSizeIn, int ver_idx) {
        this.paramMap = new HashMap<String, String>();
        SearchVo search = new SearchVo();

        search.setSearchVal(ServletRequestUtils.getStringParameter(request, "searchVal", ""));
        search.setSearchVal2(ServletRequestUtils.getStringParameter(request, "searchVal2", ""));
        search.setSearchVal3(ServletRequestUtils.getStringParameter(request, "searchVal3", ""));
        search.setSearchVal4(ServletRequestUtils.getStringParameter(request, "searchVal4", ""));
        search.setSearchVal5(ServletRequestUtils.getStringParameter(request, "searchVal5", ""));
        search.setSearchVal6(ServletRequestUtils.getStringParameter(request, "searchVal6", ""));
        search.setSearchVal7(ServletRequestUtils.getStringParameter(request, "searchVal7", ""));
        search.setSearchVal8(ServletRequestUtils.getStringParameter(request, "searchVal8", ""));
        search.setSearchVal9(ServletRequestUtils.getStringParameter(request, "searchVal9", ""));
        search.setSearchVal10(ServletRequestUtils.getStringParameter(request, "searchVal10", ""));
        search.setSearchSDate(ServletRequestUtils.getStringParameter(request, "searchSDate", Util.getDateMonthMinus(3, -12)));
        search.setSearchEDate(ServletRequestUtils.getStringParameter(request, "searchEDate", Util.getDate(3)));
        search.setSearchKind(ServletRequestUtils.getStringParameter(request, "searchKind", ""));
        search.setSearchKind2(ServletRequestUtils.getStringParameter(request, "searchKind2", ""));
        search.setSearchKind3(ServletRequestUtils.getStringParameter(request, "searchKind3", ""));
        search.setSearchKind4(ServletRequestUtils.getStringParameter(request, "searchKind4", ""));
        search.setSearchLang(ServletRequestUtils.getStringParameter(request, "searchLang", ""));

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);

        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);
        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);


        paramMap.put("listSize", Integer.toString(listSize));
        paramMap.put("page", Integer.toString(page));

        paramMap.put("searchVal", search.getSearchVal());
        paramMap.put("searchVal2", search.getSearchVal2());
        paramMap.put("searchVal3", search.getSearchVal3());
        paramMap.put("searchVal4", search.getSearchVal4());
        paramMap.put("searchVal5", search.getSearchVal5());
        paramMap.put("searchVal6", search.getSearchVal6());
        paramMap.put("searchVal7", search.getSearchVal7());
        paramMap.put("searchVal8", search.getSearchVal8());
        paramMap.put("searchVal9", search.getSearchVal9());
        paramMap.put("searchVal10", search.getSearchVal10());
        paramMap.put("searchSDate", search.getSearchSDate());
        paramMap.put("searchEDate", search.getSearchEDate());
        paramMap.put("searchKind", search.getSearchKind());
        paramMap.put("searchKind2", search.getSearchKind2());
        paramMap.put("searchKind3", search.getSearchKind3());
        paramMap.put("searchKind4", search.getSearchKind4());
        paramMap.put("searchLang", search.getSearchLang());

        paramMap.put("ver_idx", String.valueOf(ver_idx));

        return search;
    }

    protected SearchVo getSearch(HttpServletRequest request, int listSizeIn, String start_dt, String end_dt) {
        this.paramMap = new HashMap<String, String>();
        SearchVo search = new SearchVo();

        search.setSearchVal(ServletRequestUtils.getStringParameter(request, "searchVal", ""));
        search.setSearchVal2(ServletRequestUtils.getStringParameter(request, "searchVal2", ""));
        search.setSearchVal3(ServletRequestUtils.getStringParameter(request, "searchVal3", ""));
        search.setSearchVal4(ServletRequestUtils.getStringParameter(request, "searchVal4", ""));
        search.setSearchVal5(ServletRequestUtils.getStringParameter(request, "searchVal5", ""));
        search.setSearchVal6(ServletRequestUtils.getStringParameter(request, "searchVal6", ""));
        search.setSearchVal7(ServletRequestUtils.getStringParameter(request, "searchVal7", ""));
        search.setSearchVal8(ServletRequestUtils.getStringParameter(request, "searchVal8", ""));
        search.setSearchVal9(ServletRequestUtils.getStringParameter(request, "searchVal9", ""));
        search.setSearchVal10(ServletRequestUtils.getStringParameter(request, "searchVal10", ""));
        search.setSearchSDate(ServletRequestUtils.getStringParameter(request, "searchSDate", start_dt));
        search.setSearchEDate(ServletRequestUtils.getStringParameter(request, "searchEDate", end_dt));
        search.setSearchKind(ServletRequestUtils.getStringParameter(request, "searchKind", ""));
        search.setSearchKind2(ServletRequestUtils.getStringParameter(request, "searchKind2", ""));
        search.setSearchKind3(ServletRequestUtils.getStringParameter(request, "searchKind3", ""));
        search.setSearchKind4(ServletRequestUtils.getStringParameter(request, "searchKind4", ""));
        search.setSearchLang(ServletRequestUtils.getStringParameter(request, "searchLang", ""));

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);

        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);
        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);


        paramMap.put("listSize", Integer.toString(listSize));
        paramMap.put("page", Integer.toString(page));

        paramMap.put("searchVal", search.getSearchVal());
        paramMap.put("searchVal2", search.getSearchVal2());
        paramMap.put("searchVal3", search.getSearchVal3());
        paramMap.put("searchVal4", search.getSearchVal4());
        paramMap.put("searchVal5", search.getSearchVal5());
        paramMap.put("searchVal6", search.getSearchVal6());
        paramMap.put("searchVal7", search.getSearchVal7());
        paramMap.put("searchVal8", search.getSearchVal8());
        paramMap.put("searchVal9", search.getSearchVal9());
        paramMap.put("searchVal10", search.getSearchVal10());
        paramMap.put("searchSDate", search.getSearchSDate());
        paramMap.put("searchEDate", search.getSearchEDate());
        paramMap.put("searchKind", search.getSearchKind());
        paramMap.put("searchKind2", search.getSearchKind2());
        paramMap.put("searchKind3", search.getSearchKind3());
        paramMap.put("searchKind4", search.getSearchKind4());
        paramMap.put("searchLang", search.getSearchLang());

        return search;
    }

    protected SearchVo getSearch(HttpServletRequest request, int listSizeIn) {
        this.paramMap = new HashMap<String, String>();
        SearchVo search = new SearchVo();

        search.setSearchVal(ServletRequestUtils.getStringParameter(request, "searchVal", ""));
        search.setSearchVal2(ServletRequestUtils.getStringParameter(request, "searchVal2", ""));
        search.setSearchVal3(ServletRequestUtils.getStringParameter(request, "searchVal3", ""));
        search.setSearchVal4(ServletRequestUtils.getStringParameter(request, "searchVal4", ""));
        search.setSearchVal5(ServletRequestUtils.getStringParameter(request, "searchVal5", ""));
        search.setSearchVal6(ServletRequestUtils.getStringParameter(request, "searchVal6", ""));
        search.setSearchVal7(ServletRequestUtils.getStringParameter(request, "searchVal7", ""));
        search.setSearchVal8(ServletRequestUtils.getStringParameter(request, "searchVal8", ""));
        search.setSearchVal9(ServletRequestUtils.getStringParameter(request, "searchVal9", ""));
        search.setSearchVal10(ServletRequestUtils.getStringParameter(request, "searchVal10", ""));
        search.setSearchSDate(ServletRequestUtils.getStringParameter(request, "searchSDate", Util.getDateMonthMinus(3, -12)));
        search.setSearchEDate(ServletRequestUtils.getStringParameter(request, "searchEDate", Util.getDate(3)));
        search.setSearchKind(ServletRequestUtils.getStringParameter(request, "searchKind", ""));
        search.setSearchKind2(ServletRequestUtils.getStringParameter(request, "searchKind2", ""));
        search.setSearchKind3(ServletRequestUtils.getStringParameter(request, "searchKind3", ""));
        search.setSearchKind4(ServletRequestUtils.getStringParameter(request, "searchKind4", ""));
        search.setSearchLang(ServletRequestUtils.getStringParameter(request, "searchLang", ""));

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);

        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);
        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);


        paramMap.put("listSize", Integer.toString(listSize));
        paramMap.put("page", Integer.toString(page));

        paramMap.put("searchVal", search.getSearchVal());
        paramMap.put("searchVal2", search.getSearchVal2());
        paramMap.put("searchVal3", search.getSearchVal3());
        paramMap.put("searchVal4", search.getSearchVal4());
        paramMap.put("searchVal5", search.getSearchVal5());
        paramMap.put("searchVal6", search.getSearchVal6());
        paramMap.put("searchVal7", search.getSearchVal7());
        paramMap.put("searchVal8", search.getSearchVal8());
        paramMap.put("searchVal9", search.getSearchVal9());
        paramMap.put("searchVal10", search.getSearchVal10());
        paramMap.put("searchSDate", search.getSearchSDate());
        paramMap.put("searchEDate", search.getSearchEDate());
        paramMap.put("searchKind", search.getSearchKind());
        paramMap.put("searchKind2", search.getSearchKind2());
        paramMap.put("searchKind3", search.getSearchKind3());
        paramMap.put("searchKind4", search.getSearchKind4());
        paramMap.put("searchLang", search.getSearchLang());

        return search;
    }

    protected SearchVo getSearch(HttpServletRequest request, int listSizeIn, int group_idx) {
        this.paramMap = new HashMap<String, String>();
        SearchVo search = new SearchVo();

        search.setSearchVal(ServletRequestUtils.getStringParameter(request, "searchVal", ""));
        search.setSearchVal2(ServletRequestUtils.getStringParameter(request, "searchVal2", ""));
        search.setSearchVal3(ServletRequestUtils.getStringParameter(request, "searchVal3", ""));
        search.setSearchVal4(ServletRequestUtils.getStringParameter(request, "searchVal4", ""));
        search.setSearchVal5(ServletRequestUtils.getStringParameter(request, "searchVal5", ""));
        search.setSearchVal6(ServletRequestUtils.getStringParameter(request, "searchVal6", ""));
        search.setSearchVal7(ServletRequestUtils.getStringParameter(request, "searchVal7", ""));
        search.setSearchVal8(ServletRequestUtils.getStringParameter(request, "searchVal8", ""));
        search.setSearchVal9(ServletRequestUtils.getStringParameter(request, "searchVal9", ""));
        search.setSearchVal10(ServletRequestUtils.getStringParameter(request, "searchVal10", ""));
        search.setSearchSDate(ServletRequestUtils.getStringParameter(request, "searchSDate", Util.getDateMonthMinus(3, -12)));
        search.setSearchEDate(ServletRequestUtils.getStringParameter(request, "searchEDate", Util.getDate(3)));
        search.setSearchKind(ServletRequestUtils.getStringParameter(request, "searchKind", ""));
        search.setSearchKind2(ServletRequestUtils.getStringParameter(request, "searchKind2", ""));
        search.setSearchKind3(ServletRequestUtils.getStringParameter(request, "searchKind3", ""));
        search.setSearchKind4(ServletRequestUtils.getStringParameter(request, "searchKind4", ""));
        search.setSearchLang(ServletRequestUtils.getStringParameter(request, "searchLang", ""));

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);

        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);
        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);
        search.setSearchKind(String.valueOf(group_idx));


        paramMap.put("listSize", Integer.toString(listSize));
        paramMap.put("page", Integer.toString(page));

        paramMap.put("searchVal", search.getSearchVal());
        paramMap.put("searchVal2", search.getSearchVal2());
        paramMap.put("searchVal3", search.getSearchVal3());
        paramMap.put("searchVal4", search.getSearchVal4());
        paramMap.put("searchVal5", search.getSearchVal5());
        paramMap.put("searchVal6", search.getSearchVal6());
        paramMap.put("searchVal7", search.getSearchVal7());
        paramMap.put("searchVal8", search.getSearchVal8());
        paramMap.put("searchVal9", search.getSearchVal9());
        paramMap.put("searchVal10", search.getSearchVal10());
        paramMap.put("searchSDate", search.getSearchSDate());
        paramMap.put("searchEDate", search.getSearchEDate());
        paramMap.put("searchKind", search.getSearchKind());
        paramMap.put("searchKind2", search.getSearchKind2());
        paramMap.put("searchKind3", search.getSearchKind3());
        paramMap.put("searchKind4", search.getSearchKind4());
        paramMap.put("searchLang", search.getSearchLang());

        return search;
    }

    protected SearchVo getSearch(HttpServletRequest request, int listSizeIn, int p_idx, int group_idx) {
        this.paramMap = new HashMap<String, String>();
        SearchVo search = new SearchVo();

        search.setSearchVal(ServletRequestUtils.getStringParameter(request, "searchVal", ""));
        search.setSearchVal2(ServletRequestUtils.getStringParameter(request, "searchVal2", ""));
        search.setSearchVal3(ServletRequestUtils.getStringParameter(request, "searchVal3", ""));
        search.setSearchVal4(ServletRequestUtils.getStringParameter(request, "searchVal4", ""));
        search.setSearchVal5(ServletRequestUtils.getStringParameter(request, "searchVal5", ""));
        search.setSearchVal6(ServletRequestUtils.getStringParameter(request, "searchVal6", ""));
        search.setSearchVal7(ServletRequestUtils.getStringParameter(request, "searchVal7", ""));
        search.setSearchVal8(ServletRequestUtils.getStringParameter(request, "searchVal8", ""));
        search.setSearchVal9(ServletRequestUtils.getStringParameter(request, "searchVal9", ""));
        search.setSearchVal10(ServletRequestUtils.getStringParameter(request, "searchVal10", ""));
        search.setSearchSDate(ServletRequestUtils.getStringParameter(request, "searchSDate", Util.getDateMonthMinus(3, -12)));
        search.setSearchEDate(ServletRequestUtils.getStringParameter(request, "searchEDate", Util.getDate(3)));
        search.setSearchKind(ServletRequestUtils.getStringParameter(request, "searchKind", ""));
        search.setSearchKind2(ServletRequestUtils.getStringParameter(request, "searchKind2", ""));
        search.setSearchKind3(ServletRequestUtils.getStringParameter(request, "searchKind3", ""));
        search.setSearchKind4(ServletRequestUtils.getStringParameter(request, "searchKind4", ""));
        search.setSearchLang(ServletRequestUtils.getStringParameter(request, "searchLang", ""));

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);

        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);
        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);
        search.setSearchVal2(String.valueOf(p_idx));
        search.setSearchVal3(String.valueOf(group_idx));

        paramMap.put("listSize", Integer.toString(listSize));
        paramMap.put("page", Integer.toString(page));

        paramMap.put("searchVal", search.getSearchVal());
        paramMap.put("searchVal2", search.getSearchVal2());
        paramMap.put("searchVal3", search.getSearchVal3());
        paramMap.put("searchVal4", search.getSearchVal4());
        paramMap.put("searchVal5", search.getSearchVal5());
        paramMap.put("searchVal6", search.getSearchVal6());
        paramMap.put("searchVal7", search.getSearchVal7());
        paramMap.put("searchVal8", search.getSearchVal8());
        paramMap.put("searchVal9", search.getSearchVal9());
        paramMap.put("searchVal10", search.getSearchVal10());
        paramMap.put("searchSDate", search.getSearchSDate());
        paramMap.put("searchEDate", search.getSearchEDate());
        paramMap.put("searchKind", search.getSearchKind());
        paramMap.put("searchKind2", search.getSearchKind2());
        paramMap.put("searchKind3", search.getSearchKind3());
        paramMap.put("searchKind4", search.getSearchKind4());
        paramMap.put("searchLang", search.getSearchLang());

        return search;
    }

    protected SearchVo getSearchEx(HttpServletRequest request, int month, int listSizeIn) {
        this.paramMap = new HashMap<String, String>();
        SearchVo search = new SearchVo();

        search.setSearchVal(ServletRequestUtils.getStringParameter(request, "searchVal", ""));
        search.setSearchVal2(ServletRequestUtils.getStringParameter(request, "searchVal2", ""));
        search.setSearchVal3(ServletRequestUtils.getStringParameter(request, "searchVal3", ""));
        search.setSearchVal4(ServletRequestUtils.getStringParameter(request, "searchVal4", ""));
        search.setSearchVal5(ServletRequestUtils.getStringParameter(request, "searchVal5", ""));
        search.setSearchVal6(ServletRequestUtils.getStringParameter(request, "searchVal6", ""));
        search.setSearchVal7(ServletRequestUtils.getStringParameter(request, "searchVal7", ""));
        search.setSearchVal8(ServletRequestUtils.getStringParameter(request, "searchVal8", ""));
        search.setSearchVal9(ServletRequestUtils.getStringParameter(request, "searchVal9", ""));
        search.setSearchVal10(ServletRequestUtils.getStringParameter(request, "searchVal10", ""));
        search.setSearchSDate(ServletRequestUtils.getStringParameter(request, "searchSDate", Util.getDateMonthMinus(3, month)));
        search.setSearchEDate(ServletRequestUtils.getStringParameter(request, "searchEDate", Util.getDate(3)));
        search.setSearchKind(ServletRequestUtils.getStringParameter(request, "searchKind", ""));
        search.setSearchKind2(ServletRequestUtils.getStringParameter(request, "searchKind2", ""));
        search.setSearchKind3(ServletRequestUtils.getStringParameter(request, "searchKind3", ""));
        search.setSearchKind4(ServletRequestUtils.getStringParameter(request, "searchKind4", ""));
        search.setSearchLang(ServletRequestUtils.getStringParameter(request, "searchLang", ""));

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);

        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);
        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);


        paramMap.put("listSize", Integer.toString(listSize));
        paramMap.put("page", Integer.toString(page));

        paramMap.put("searchVal", search.getSearchVal());
        paramMap.put("searchVal2", search.getSearchVal2());
        paramMap.put("searchVal3", search.getSearchVal3());
        paramMap.put("searchVal4", search.getSearchVal4());
        paramMap.put("searchVal5", search.getSearchVal5());
        paramMap.put("searchVal6", search.getSearchVal6());
        paramMap.put("searchVal7", search.getSearchVal7());
        paramMap.put("searchVal8", search.getSearchVal8());
        paramMap.put("searchVal9", search.getSearchVal9());
        paramMap.put("searchVal10", search.getSearchVal10());
        paramMap.put("searchSDate", search.getSearchSDate());
        paramMap.put("searchEDate", search.getSearchEDate());
        paramMap.put("searchKind", search.getSearchKind());
        paramMap.put("searchKind2", search.getSearchKind2());
        paramMap.put("searchKind3", search.getSearchKind3());
        paramMap.put("searchKind4", search.getSearchKind4());
        paramMap.put("searchLang", search.getSearchLang());

        return search;
    }

    protected void getModel(HttpServletRequest request, Model model) {
        getModel(request, model, 0);
    }

    protected void getModel(HttpServletRequest request, Model model, int listSizeIn, String start_dt, String end_dt) {
        Calendar cal = Calendar.getInstance();

        SearchVo search = new SearchVo();

        String searchVal = ServletRequestUtils.getStringParameter(request, "searchVal", "");
        String searchVal2 = ServletRequestUtils.getStringParameter(request, "searchVal2", "");
        String searchVal3 = ServletRequestUtils.getStringParameter(request, "searchVal3", "");
        String searchVal4 = ServletRequestUtils.getStringParameter(request, "searchVal4", "");
        String searchVal5 = ServletRequestUtils.getStringParameter(request, "searchVal5", "");
        String searchVal6 = ServletRequestUtils.getStringParameter(request, "searchVal6", "");
        String searchVal7 = ServletRequestUtils.getStringParameter(request, "searchVal7", "");
        String searchVal8 = ServletRequestUtils.getStringParameter(request, "searchVal8", "");
        String searchVal9 = ServletRequestUtils.getStringParameter(request, "searchVal9", "");
        String searchVal10 = ServletRequestUtils.getStringParameter(request, "searchVal10", "");
        String searchSDate = ServletRequestUtils.getStringParameter(request, "searchSDate", start_dt);
        String searchEDate = ServletRequestUtils.getStringParameter(request, "searchEDate", end_dt);
        String searchKind = ServletRequestUtils.getStringParameter(request, "searchKind", "");
        String searchKind2 = ServletRequestUtils.getStringParameter(request, "searchKind2", "");
        String searchKind3 = ServletRequestUtils.getStringParameter(request, "searchKind3", "");
        String searchKind4 = ServletRequestUtils.getStringParameter(request, "searchKind4", "");
        String searchLang = ServletRequestUtils.getStringParameter(request, "searchLang", "");

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);
        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);

        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);

        // ?????? ?????? 3??? - XSS
        /*searchVal = EgovWebUtil.clearXSSNormal(searchVal);
        searchVal2 = EgovWebUtil.clearXSSNormal(searchVal2);
        searchVal3 = EgovWebUtil.clearXSSNormal(searchVal3);
        searchVal4 = EgovWebUtil.clearXSSNormal(searchVal4);*/

        search.setSearchVal(searchVal);
        search.setSearchVal2(searchVal2);
        search.setSearchVal3(searchVal3);
        search.setSearchVal4(searchVal4);
        search.setSearchVal5(searchVal5);
        search.setSearchVal6(searchVal6);
        search.setSearchVal7(searchVal7);
        search.setSearchVal8(searchVal8);
        search.setSearchVal9(searchVal9);
        search.setSearchVal10(searchVal10);
        search.setSearchSDate(searchSDate);
        search.setSearchEDate(searchEDate);
        search.setSearchKind(searchKind);
        search.setSearchKind2(searchKind2);
        search.setSearchKind3(searchKind3);
        search.setSearchKind4(searchKind4);
        search.setSearchLang(searchLang);

        model.addAttribute("page", page);
        model.addAttribute("listSize", String.valueOf(listSize));

        model.addAttribute("searchVal", searchVal);
        model.addAttribute("searchVal2", searchVal2);
        model.addAttribute("searchVal3", searchVal3);
        model.addAttribute("searchVal4", searchVal4);
        model.addAttribute("searchVal5", searchVal5);
        model.addAttribute("searchVal6", searchVal6);
        model.addAttribute("searchVal7", searchVal7);
        model.addAttribute("searchVal8", searchVal8);
        model.addAttribute("searchVal9", searchVal9);
        model.addAttribute("searchVal10", searchVal10);
        model.addAttribute("searchSDate", searchSDate);
        model.addAttribute("searchEDate", searchEDate);
        model.addAttribute("searchKind", searchKind);
        model.addAttribute("searchKind2", searchKind2);
        model.addAttribute("searchKind3", searchKind3);
        model.addAttribute("searchKind4", searchKind4);
        model.addAttribute("searchLang", searchLang);
    }

    protected void getModel(HttpServletRequest request, Model model, int listSizeIn) {
        Calendar cal = Calendar.getInstance();

        SearchVo search = new SearchVo();

        String searchVal = ServletRequestUtils.getStringParameter(request, "searchVal", "");
        String searchVal2 = ServletRequestUtils.getStringParameter(request, "searchVal2", "");
        String searchVal3 = ServletRequestUtils.getStringParameter(request, "searchVal3", "");
        String searchVal4 = ServletRequestUtils.getStringParameter(request, "searchVal4", "");
        String searchVal5 = ServletRequestUtils.getStringParameter(request, "searchVal5", "");
        String searchVal6 = ServletRequestUtils.getStringParameter(request, "searchVal6", "");
        String searchVal7 = ServletRequestUtils.getStringParameter(request, "searchVal7", "");
        String searchVal8 = ServletRequestUtils.getStringParameter(request, "searchVal8", "");
        String searchVal9 = ServletRequestUtils.getStringParameter(request, "searchVal9", "");
        String searchVal10 = ServletRequestUtils.getStringParameter(request, "searchVal10", "");
        String searchSDate = ServletRequestUtils.getStringParameter(request, "searchSDate", Util.getDateMonthMinus(3, -12));
        String searchEDate = ServletRequestUtils.getStringParameter(request, "searchEDate", Util.getDate(3));
        String searchKind = ServletRequestUtils.getStringParameter(request, "searchKind", "");
        String searchKind2 = ServletRequestUtils.getStringParameter(request, "searchKind2", "");
        String searchKind3 = ServletRequestUtils.getStringParameter(request, "searchKind3", "");
        String searchKind4 = ServletRequestUtils.getStringParameter(request, "searchKind4", "");
        String searchLang = ServletRequestUtils.getStringParameter(request, "searchLang", "");

        // ???????????? ?????? ??????
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", listSizeIn);
        if (listSize == 0) {
            //if(strPageNumRow.equals("0")){
            listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            //}else{
            //	listSize = Util.nvl(strPageNumRow, 0);
            //}
        }
        search.setPageIndex(page);
        search.setPageSize(listSize);
        int strRow = (search.getPageIndex() - 1) * listSize + 1;
        //int strRow = (search.getPageIndex() - 1) * listSize; // MYSQL LIMIT 0 ?????? ??????
        int endRow = strRow + (listSize - 1);

        search.setFirstIndex(strRow);
        search.setLastIndex(endRow);

        // ?????? ?????? 3??? - XSS
        /*searchVal = EgovWebUtil.clearXSSNormal(searchVal);
        searchVal2 = EgovWebUtil.clearXSSNormal(searchVal2);
        searchVal3 = EgovWebUtil.clearXSSNormal(searchVal3);
        searchVal4 = EgovWebUtil.clearXSSNormal(searchVal4);*/

        search.setSearchVal(searchVal);
        search.setSearchVal2(searchVal2);
        search.setSearchVal3(searchVal3);
        search.setSearchVal4(searchVal4);
        search.setSearchVal5(searchVal5);
        search.setSearchVal6(searchVal6);
        search.setSearchVal7(searchVal7);
        search.setSearchVal8(searchVal8);
        search.setSearchVal9(searchVal9);
        search.setSearchVal10(searchVal10);
        search.setSearchSDate(searchSDate);
        search.setSearchEDate(searchEDate);
        search.setSearchKind(searchKind);
        search.setSearchKind2(searchKind2);
        search.setSearchKind3(searchKind3);
        search.setSearchKind4(searchKind4);
        search.setSearchLang(searchLang);

        model.addAttribute("page", page);
        model.addAttribute("listSize", String.valueOf(listSize));

        model.addAttribute("searchVal", searchVal);
        model.addAttribute("searchVal2", searchVal2);
        model.addAttribute("searchVal3", searchVal3);
        model.addAttribute("searchVal4", searchVal4);
        model.addAttribute("searchVal5", searchVal5);
        model.addAttribute("searchVal6", searchVal6);
        model.addAttribute("searchVal7", searchVal7);
        model.addAttribute("searchVal8", searchVal8);
        model.addAttribute("searchVal9", searchVal9);
        model.addAttribute("searchVal10", searchVal10);
        model.addAttribute("searchSDate", searchSDate);
        model.addAttribute("searchEDate", searchEDate);
        model.addAttribute("searchKind", searchKind);
        model.addAttribute("searchKind2", searchKind2);
        model.addAttribute("searchKind3", searchKind3);
        model.addAttribute("searchKind4", searchKind4);
        model.addAttribute("searchLang", searchLang);
    }

    protected Model setCommonModel(MenuMstVo menuMstVo, Model model) throws Exception {
        Model rtnModel = model;

        model.addAttribute("topMenu", menuMstVo.getTopMenu());
        model.addAttribute("subMenu", menuMstVo.getSubMenu());
        model.addAttribute("currentMenu", menuMstVo.getCurrentMenu());
        model.addAttribute("topMenuList", menuMstVo.getTopMenuList());
        model.addAttribute("subMenuList", menuMstVo.getSubMenuList());
        model.addAttribute("menuDept", menuMstVo.getMenuDept());
        model.addAttribute("menuSubDept", menuMstVo.getMenuSubDept());
        model.addAttribute("name", menuMstVo.getName());

        return rtnModel;
    }

    protected MenuMstVo getMenuMstInfo(String url, AdminLoginVo adminLoginVo, String type) throws Exception {
        MenuMstVo menuMstVo = new MenuMstVo();
        MenuVo menu = new MenuVo();
        menu.setYn_use("Y");
        menu.setType("S");
        menu.setLang("KO");

        // context path ?????? ????????????
        url = "/artmore_adm" + url;
        // ?????? ?????? ??????
        List<MenuVo> topMenuList = appService.seletTopMenuList(menu);

        // ????????????
        MenuVo currentMenu = appService.selectMenu(url);
        MenuVo topMenu = currentMenu;
        if (topMenu.getLevel() != 1) {
            do {
                topMenu = appService.selectMenuByIdx(topMenu.getP_menu_idx());
            } while(topMenu.getLevel() != 1);
        }

        // 2?????? ????????? ????????????
        MenuVo subMenu = null;
        if (currentMenu.getLevel() == 3) {
            subMenu = appService.selectMenuByIdx(currentMenu.getP_menu_idx());
        }

        List<MenuVo> subMenuList = null;
        for(MenuVo top : topMenuList) {
            subMenuList = appService.selectSubMenuList(top.getMenu_idx());
            if (subMenuList != null) {
                for(MenuVo sMenu : subMenuList) {
                    List<MenuVo> childMenuList = appService.selectSubMenuList(sMenu.getMenu_idx());
                    sMenu.setSublist(childMenuList);
                }
                top.setSublist(subMenuList);
            }
        }

        /*List<MenuVo> subMenuList = appService.selectSubMenuList(topMenu.getMenu_idx());
        if (subMenuList != null) {
            for(MenuVo sMenu : subMenuList) {
                List<MenuVo> childMenuList = appService.selectSubMenuList(sMenu.getMenu_idx());
                sMenu.setSublist(childMenuList);
            }
        }*/

        // ?????? URL??? ?????? ????????? ????????? ????????????.
        if (adminLoginVo != null) {
            String menu_info = adminLoginVo.getMenu_info() + ",";
            if(menu_info.indexOf("," + String.valueOf(currentMenu.getMenu_idx() + ",")) == -1 ) {

                // 2depth checking
                if(currentMenu.getLevel() == 3) {
                    if(menu_info.indexOf("," + String.valueOf(subMenu.getMenu_idx() + ",")) == -1) {
                        String idx = Util.getSubString(adminLoginVo.getMenu_info(), ",");
                        String ret_url = appService.selectMenuUrl(Integer.valueOf(idx));

                        menuMstVo.setRet_url(ret_url);
                    }
                } else {
                    String idx = Util.getSubString(adminLoginVo.getMenu_info(), ",");
                    String ret_url = appService.selectMenuUrl(Integer.valueOf(idx));

                    menuMstVo.setRet_url(ret_url);
                }
            }

            //* ?????? ? *//*
            /*List<String> arrayIdx = getUrl(type);
            for(String idx : arrayIdx) {
                if(adminLoginVo.getMenu_info().indexOf("," + idx + ",") != -1 ) {
                    menuMstVo.setChild_url(appService.selectMenuUrl(Integer.valueOf(idx)));
                    break;
                } else {
                    menuMstVo.setChild_url(url);
                }
            }*/
        }

        if("1".equals(type)) {
            topMenu.setMenu_idx(-1);
            menuMstVo.setMenuSubDept(-1);
        } else {
            menuMstVo.setMenuSubDept(currentMenu.getMenu_idx());
        }

        menuMstVo.setTopMenu(topMenu);
        menuMstVo.setSubMenu(subMenu);
        menuMstVo.setCurrentMenu(currentMenu);
        menuMstVo.setTopMenuList(topMenuList);
        menuMstVo.setSubMenuList(subMenuList);
        menuMstVo.setMenuDept(topMenu.getMenu_idx());

        return menuMstVo;
    }

    private List<String> getUrl(String type) {
        List<String> arrayUrl = new ArrayList<String>();

        if("1".equals(type)) {
            arrayUrl.add("9");
            arrayUrl.add("12");
            arrayUrl.add("15");
        } else if("2".equals(type)) {
            arrayUrl.add("16");
            arrayUrl.add("17");
            arrayUrl.add("18");
            arrayUrl.add("19");
            arrayUrl.add("118");
            arrayUrl.add("120");
        } else if("3".equals(type)) {
            arrayUrl.add("20");
            arrayUrl.add("21");
            arrayUrl.add("22");
            arrayUrl.add("23");
            arrayUrl.add("24");
        } else if("4".equals(type)) {
            arrayUrl.add("25");
            arrayUrl.add("26");
            arrayUrl.add("27");
            arrayUrl.add("28");
            arrayUrl.add("29");
            arrayUrl.add("30");
        } else if("5".equals(type)) {
            arrayUrl.add("31");
            arrayUrl.add("32");
        } else if("6".equals(type)) {
            arrayUrl.add("33");
            arrayUrl.add("34");
            arrayUrl.add("121");
        } else if("7".equals(type)) {
            arrayUrl.add("35");
            arrayUrl.add("36");
            arrayUrl.add("37");
        } else if("8".equals(type)) {
            arrayUrl.add("41");
            arrayUrl.add("42");
            arrayUrl.add("43");
            arrayUrl.add("44");
            arrayUrl.add("113");
        } else if("112".equals(type)) {
            arrayUrl.add("39");
            arrayUrl.add("40");
            arrayUrl.add("115");
            arrayUrl.add("116");
            arrayUrl.add("117");
        }

        return arrayUrl;
    }

   /* protected int checkLoginOptions(AdminLoginVo adminLoginVo, HttpServletRequest request) throws Exception {
        *//* rtn value *//*
        *//* 1 => ????????? ID ??? PW ?????? ?????? *//*
        *//* 2 => ?????? IP ?????? *//*
        *//* 3 => ???????????? 5??? ????????? ?????? ID ?????? *//*
        *//* 4 => ????????? ?????? *//*
        *//* 9 => ?????? *//*
        int rtn = 9;

        //????????? ID ??? PW ?????? ??????
        AdminLoginVo adminVo = adminService.selectAdminInfo(adminLoginVo);

        if (adminVo != null) {
            if ("N".equals(adminVo.getApp_yn())) {
                // ????????? ??????
                return 4;
            }
            if ("N".equals(adminVo.getStatus())) {
                // ????????? ??????
                return 4;
            }
            //?????? IP ??????
            String remoteIP = Util.getRemoteAddr(request);
            if( !remoteIP.equals(adminVo.getLogin_ip())) {
                return 2;
            }
        } else {
            // ????????? ?????? COUNT UPDATE
            // adminService.updateLoginFailedCnt(adminLoginVo);
            return 1;
        }

        return rtn;
    }*/

    protected PageHolder setPageNumRow(HttpServletRequest request, int totalCount) throws Exception {
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);
        int listSize = ServletRequestUtils.getIntParameter(request, "listSize", 0);

        HttpSession session = request.getSession();
        session.setAttribute(Constants.SESSION_ATTRIBUTE_PAGENUMROW, 0);
        if (listSize == 0) {
            String strPageNumRow = Util.nvl(session.getAttribute(Constants.SESSION_ATTRIBUTE_PAGENUMROW), "0");
            if (strPageNumRow.equals("0")) {
                session.setAttribute(Constants.SESSION_ATTRIBUTE_PAGENUMROW, String.valueOf(Constants.DEFAULT_LISTSIZE));
                listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            } else {
                listSize = Util.nvl(strPageNumRow, 0);
            }
        } else {
            session.setAttribute(Constants.SESSION_ATTRIBUTE_PAGENUMROW, listSize);
        }

        return new PageHolder(totalCount, page, listSize, paramMap);
    }

    protected PageHolder setPageNumRowEx(HttpServletRequest request, int totalCount, int listSize) throws Exception {
        int page = ServletRequestUtils.getIntParameter(request, "page", 1);

        HttpSession session = request.getSession();

        session.setAttribute(Constants.SESSION_ATTRIBUTE_PAGENUMROW, 0);

        if(listSize == 0){
            String strPageNumRow = Util.nvl(session.getAttribute(Constants.SESSION_ATTRIBUTE_PAGENUMROW), "0");
            if(strPageNumRow.equals("0")){
                session.setAttribute(Constants.SESSION_ATTRIBUTE_PAGENUMROW, String.valueOf(Constants.DEFAULT_LISTSIZE));
                listSize = Integer.parseInt(String.valueOf(Constants.DEFAULT_LISTSIZE));
            }else{
                listSize = Util.nvl(strPageNumRow, 0);
            }
        }
        else
        {
            session.setAttribute(Constants.SESSION_ATTRIBUTE_PAGENUMROW, listSize);
        }

        return new PageHolder(totalCount, page, listSize, paramMap);
    }

    protected CommonVo getAttachFileInfo(MultipartHttpServletRequest multiRequest) {
        CommonVo cmm = new CommonVo();
        boolean ftype_flag = true;
        MultipartFile file = null;
        List<MultipartFile> tmpAttFiles = multiRequest.getFiles("attfile");
        LinkedHashMap<String, MultipartFile> tmpfiles = new LinkedHashMap<String, MultipartFile>();
        int chkcnt = 0;
        for(int i = 0;i< tmpAttFiles.size();i++){
            file = tmpAttFiles.get(i);
            if(file != null)
                if(!file.isEmpty()){
                    if(!fileUtil.chkFileExt(file, Constants.allowExtFile)){
                        ftype_flag = false;
                        break;
                    }
                    tmpfiles.put(file.getName() + i, file);
                    chkcnt ++;
                }
        }

        cmm.setFtype_flag(ftype_flag);
        cmm.setChkcnt(chkcnt);
        cmm.setTmpfiles(tmpfiles);

        return cmm;
    }

    protected CommonVo getAttachFileInfoExcel(MultipartHttpServletRequest multiRequest) {
        CommonVo cmm = new CommonVo();
        boolean ftype_flag = true;
        MultipartFile file = null;
        List<MultipartFile> tmpAttFiles = multiRequest.getFiles("attfile");
        LinkedHashMap<String, MultipartFile> tmpfiles = new LinkedHashMap<String, MultipartFile>();

        int chkcnt = 0;
        for(int i = 0;i< tmpAttFiles.size();i++){
            file = tmpAttFiles.get(i);
            if(file != null)
                if(!file.isEmpty()){
                    if(!fileUtil.chkFileExt(file, Constants.allowExtFileExcel)){
                        ftype_flag = false;
                        break;
                    }
                    tmpfiles.put(file.getName() + i, file);
                    chkcnt ++;
                }
        }

        cmm.setFtype_flag(ftype_flag);
        cmm.setChkcnt(chkcnt);
        cmm.setTmpfiles(tmpfiles);

        return cmm;
    }

    protected CommonVo getAttachImgFileInfo(MultipartHttpServletRequest multiRequest) {
        CommonVo cmm = new CommonVo();
        boolean ftype_flag = true;
        MultipartFile file = null;
        List<MultipartFile> tmpAttFiles = multiRequest.getFiles("attfile");
        LinkedHashMap<String, MultipartFile> tmpfiles = new LinkedHashMap<String, MultipartFile>();

        int chkcnt = 0;
        for(int i = 0;i< tmpAttFiles.size();i++){
            file = tmpAttFiles.get(i);
            if(file != null)
                if(!file.isEmpty()){
                    if(!fileUtil.chkFileExt(file, Constants.allowExtFileImg)){
                        ftype_flag = false;
                        break;
                    }
                    tmpfiles.put(file.getName() + i, file);
                    chkcnt ++;
                }
        }

        cmm.setFtype_flag(ftype_flag);
        cmm.setChkcnt(chkcnt);
        cmm.setTmpfiles(tmpfiles);

        return cmm;
    }

    protected CommonVo getAttachMovieFileInfo(MultipartHttpServletRequest multiRequest) {
        CommonVo cmm = new CommonVo();
        boolean ftype_flag = true;
        MultipartFile file = null;
        List<MultipartFile> tmpAttFiles = multiRequest.getFiles("attfile");
        LinkedHashMap<String, MultipartFile> tmpfiles = new LinkedHashMap<String, MultipartFile>();

        int chkcnt = 0;
        for(int i = 0;i< tmpAttFiles.size();i++){
            file = tmpAttFiles.get(i);
            if(file != null)
                if(!file.isEmpty()){
                    if(!fileUtil.chkFileExt(file, Constants.allowExtFileMovie)){
                        ftype_flag = false;
                        break;
                    }
                    tmpfiles.put(file.getName() + i, file);
                    chkcnt ++;
                }
        }

        cmm.setFtype_flag(ftype_flag);
        cmm.setChkcnt(chkcnt);
        cmm.setTmpfiles(tmpfiles);

        return cmm;
    }

    protected CommonVo getAttachFileInfoEx(MultipartHttpServletRequest multiRequest, String name) {
        CommonVo cmm = new CommonVo();
        boolean ftype_flag = true;
        MultipartFile file = null;
        List<MultipartFile> tmpAttFiles = multiRequest.getFiles(name);
        LinkedHashMap<String, MultipartFile> tmpfiles = new LinkedHashMap<String, MultipartFile>();

        int chkcnt = 0;
        for(int i = 0;i< tmpAttFiles.size();i++){
            file = tmpAttFiles.get(i);
            if(file != null)
                if(!file.isEmpty()){
                    if(!fileUtil.chkFileExt(file, Constants.allowExtFile)){
                        ftype_flag = false;
                        break;
                    }
                    tmpfiles.put(file.getName() + i, file);
                    chkcnt ++;
                }
        }

        cmm.setFtype_flag(ftype_flag);
        cmm.setChkcnt(chkcnt);
        cmm.setTmpfiles(tmpfiles);

        return cmm;
    }

    protected CommonVo getAttachImgFileInfoEx(MultipartHttpServletRequest multiRequest, String name) {
        CommonVo cmm = new CommonVo();
        boolean ftype_flag = true;
        MultipartFile file = null;
        List<MultipartFile> tmpAttFiles = multiRequest.getFiles(name);
        LinkedHashMap<String, MultipartFile> tmpfiles = new LinkedHashMap<String, MultipartFile>();

        int chkcnt = 0;
        for(int i = 0;i< tmpAttFiles.size();i++){
            file = tmpAttFiles.get(i);
            if(file != null)
                if(!file.isEmpty()){
                    if(!fileUtil.chkFileExt(file, Constants.allowExtFileImg)){
                        ftype_flag = false;
                        break;
                    }
                    tmpfiles.put(file.getName() + i, file);
                    chkcnt ++;
                }
        }

        cmm.setFtype_flag(ftype_flag);
        cmm.setChkcnt(chkcnt);
        cmm.setTmpfiles(tmpfiles);

        return cmm;
    }

    protected int checkLoginOptions(AdminLoginVo adminLoginVo, HttpServletRequest request) throws Exception {
        /* rtn value */
        /* 1 => ????????? ID ??? PW ?????? ?????? */
        /* 2 => ?????? IP ?????? */
        /* 3 => ???????????? 5??? ????????? ?????? ID ?????? */
        /* 4 => ????????? ?????? */
        /* 9 => ?????? */
        int rtn = 9;

        //????????? ID ??? PW ?????? ??????
        AdminLoginVo adminVo = basicService.selectAdminInfo(adminLoginVo);

        if (adminVo != null) {
            if ("N".equals(adminVo.getUse_yn())) {
                // ????????? ??????
                return 4;
            }
            //?????? IP ??????
            String remoteIP = Util.getRemoteAddr(request);
            int check = basicService.selectIpCount(remoteIP);
            if( check != 1 ) {
                return 2;
            }
        } else {
            // ????????? ?????? COUNT UPDATE
            // adminService.updateLoginFailedCnt(adminLoginVo);
            return 1;
        }

        return rtn;
    }
}
