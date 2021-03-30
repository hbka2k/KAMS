package kr.or.jobkams.controller;

import kr.or.jobkams.common.EgovProperties;
import kr.or.jobkams.model.AdminRuleVo;
import kr.or.jobkams.model.AdminVo;
import kr.or.jobkams.model.SearchVo;
import kr.or.jobkams.service.AppService;
import kr.or.jobkams.service.BasicService;
import kr.or.jobkams.util.Util;
import net.sf.jxls.transformer.XLSTransformer;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Program Name : kr.or.jobkams.controller
 * Author : shlee
 * Date : 2021-03-25
 * Description :
 * History :
 * Version :
 */
@Controller
public class ExcelController extends CommonController {

    @Autowired
    private BasicService basicService;

    @Autowired
    private AppService appService;

    public ExcelController() {
    }

    @RequestMapping(value="/cont/excel/admin_list.do", method = RequestMethod.GET)
    public void excel_admin_list(HttpServletRequest request, HttpServletResponse response, Model model)  throws Exception {
        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        List<AdminVo> itemList = basicService.selectAdminList(searchVo);
        for(AdminVo item : itemList) {
            String kind_cd = item.getKind_cd();
            if("S".equals(kind_cd)) {
                item.setKind_cd("통합관리자");
            } else {
                item.setKind_cd("일반관리자");
            }

            String use_yn = item.getUse_yn();
            if("Y".equals(use_yn)) {
                item.setUse_yn("사용");
            } else {
                item.setUse_yn("미사용");
            }

            String code_nm = appService.selectCodeNm(item.getCode_idx());
            item.setPart_nm(code_nm);

            String reg_dt = item.getReg_dt().substring(0, 10);
            item.setReg_dt(reg_dt);
        }
        int totalCount = basicService.selectAdminListTotal(searchVo);
        /*if(searchVo.getPageIndex() != 1) {
            totalCount = totalCount - (searchVo.getPageIndex() - 1) * searchVo.getPageSize();
        }*/

        Map<String,Object> beans = new HashMap<String,Object>();
        beans.put("itemList",itemList);
        beans.put("Total",totalCount);

        XLSTransformer transformer = new XLSTransformer();
        String filename = EgovProperties.getProperty("excel.file.path") + "admin_list.xls";

        if(!filename.contains("../")) {
            File uFile = new File(filename);
            FileInputStream fis = new FileInputStream(uFile);
            try {
                Workbook wb = transformer.transformXLS(fis, beans);
                /*HSSFWorkbook workbook = (HSSFWorkbook)transformer.transformXLS(fis, beans);
                Biff8EncryptionKey.setCurrentUserPassword(searchVo.getSearchVal10());
                workbook.writeProtectWorkbook(Biff8EncryptionKey.getCurrentUserPassword(), "");*/
                //엑셀명 지정
                String excelName = "관리자 목록 " + Util.getDate(3);

                if (!(excelName.contains("\r\n"))) {
                    //response.setHeader("Content-Type", "application/octet-stream");
                    response.setHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(excelName + ".xls", "UTF-8").replaceAll("\\+", "%20"));
                    response.setContentType("application/x-msexcel");

                    wb.write(response.getOutputStream());
                }
            } catch (IOException e) {
            } catch (Exception e) {
            } finally {
                try {
                    fis.close();
                } catch (IOException e) {
                }
            }
            response.getOutputStream().flush();
            response.getOutputStream().close();

            return;
        }
    }

    @RequestMapping(value="/cont/excel/admin_group_list.do", method = RequestMethod.GET)
    public void excel_admin_group_list(HttpServletRequest request, HttpServletResponse response, Model model)  throws Exception {
        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        List<AdminRuleVo> itemList = basicService.selectAdminRuleList(searchVo);
        for(AdminRuleVo item : itemList) {
            String kind_cd = item.getKind_cd();
            if("S".equals(kind_cd)) {
                item.setKind_cd("통합관리자");
            } else {
                item.setKind_cd("일반관리자");
            }

            String use_yn = item.getUse_yn();
            if("Y".equals(use_yn)) {
                item.setUse_yn("사용");
            } else {
                item.setUse_yn("미사용");
            }
        }
        int totalCount = basicService.selectAdminRuleListTotal(searchVo);
        /*if(searchVo.getPageIndex() != 1) {
            totalCount = totalCount - (searchVo.getPageIndex() - 1) * searchVo.getPageSize();
        }*/

        Map<String,Object> beans = new HashMap<String,Object>();
        beans.put("itemList",itemList);
        beans.put("Total",totalCount);

        XLSTransformer transformer = new XLSTransformer();
        String filename = EgovProperties.getProperty("excel.file.path") + "admin_rule_list.xls";

        if(!filename.contains("../")) {
            File uFile = new File(filename);
            FileInputStream fis = new FileInputStream(uFile);
            try {
                Workbook wb = transformer.transformXLS(fis, beans);
                /*HSSFWorkbook workbook = (HSSFWorkbook)transformer.transformXLS(fis, beans);
                Biff8EncryptionKey.setCurrentUserPassword(searchVo.getSearchVal10());
                workbook.writeProtectWorkbook(Biff8EncryptionKey.getCurrentUserPassword(), "");*/
                //엑셀명 지정
                String excelName = "관리자 목록 " + Util.getDate(3);

                if (!(excelName.contains("\r\n"))) {
                    //response.setHeader("Content-Type", "application/octet-stream");
                    response.setHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(excelName + ".xls", "UTF-8").replaceAll("\\+", "%20"));
                    response.setContentType("application/x-msexcel");

                    wb.write(response.getOutputStream());
                }
            } catch (IOException e) {
            } catch (Exception e) {
            } finally {
                try {
                    fis.close();
                } catch (IOException e) {
                }
            }
            response.getOutputStream().flush();
            response.getOutputStream().close();

            return;
        }
    }
}
