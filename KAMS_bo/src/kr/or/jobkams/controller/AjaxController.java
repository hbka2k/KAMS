package kr.or.jobkams.controller;

import com.alibaba.fastjson.JSON;
import kr.or.jobkams.model.*;
import kr.or.jobkams.service.BannerService;
import kr.or.jobkams.service.BasicService;
import kr.or.jobkams.service.BbsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
public class AjaxController extends CommonController {

    @Autowired
    private BasicService basicService;

    @Autowired
    private BannerService bannerService;

    @Autowired
    private BbsService bbsService;

    public AjaxController() {
    }

    @RequestMapping( value = "/ajax/admin_rule_list.do", produces = "text/json; charset=UTF-8" )
    public ResponseEntity<String> admin_rule_list(@RequestParam Map<String, Object> parameterMap, HttpServletRequest request, Model model) {

        try {
            String kind_cd = ServletRequestUtils.getStringParameter(request, "kind_cd", "");
            List<AdminRuleVo> adminRuleList = basicService.selectAdminRuleListEx(kind_cd);

            return new ResponseEntity<String>( JSON.toJSONString( adminRuleList ), HttpStatus.OK );
        }
        catch ( Exception e ) {
            return new ResponseEntity<String>( e.getMessage(), HttpStatus.BAD_REQUEST );
        }
    }

    @RequestMapping(value="/ajax/ip_con_delete.do", method = RequestMethod.POST)
    public ResponseEntity<String> ip_con_delete(HttpServletRequest request, HttpServletResponse response, Model model
            , @ModelAttribute("ipConVo") IpConVo ipConVo
            , BindingResult bindingResult
            , SessionStatus status
    )  throws Exception {

        try {
            String[] del_id_arr = ServletRequestUtils.getStringParameters(request, "del_id");

            for(int i = 0; i < del_id_arr.length; i ++) {
                basicService.deleteIpCon(Integer.parseInt(del_id_arr[i]));
            }

            return new ResponseEntity<String>( JSON.toJSONString( true ), HttpStatus.OK );
        }
        catch ( Exception e ) {
            return new ResponseEntity<String>( e.getMessage(), HttpStatus.BAD_REQUEST );
        }
    }

    @RequestMapping(value="/ajax/admin_rule_delete.do", method = RequestMethod.POST)
    public ResponseEntity<String> admin_rule_delete(HttpServletRequest request, HttpServletResponse response, Model model
            , @ModelAttribute("adminRuleVo") AdminRuleVo adminRuleVo
            , BindingResult bindingResult
            , SessionStatus status
    )  throws Exception {

        try {
            String[] del_id_arr = ServletRequestUtils.getStringParameters(request, "del_id");

            for(int i = 0; i < del_id_arr.length; i ++) {
                basicService.deleteAdminRule(Integer.parseInt(del_id_arr[i]));
            }

            return new ResponseEntity<String>( JSON.toJSONString( true ), HttpStatus.OK );
        }
        catch ( Exception e ) {
            return new ResponseEntity<String>( e.getMessage(), HttpStatus.BAD_REQUEST );
        }
    }

    @RequestMapping(value="/ajax/banner_delete.do", method = RequestMethod.POST)
    public ResponseEntity<String> banner_delete(HttpServletRequest request, HttpServletResponse response, Model model
            , @ModelAttribute("bannerVo") BannerVo bannerVo
            , BindingResult bindingResult
            , SessionStatus status
    )  throws Exception {

        try {
            String[] del_id_arr = ServletRequestUtils.getStringParameters(request, "del_id");

            for(int i = 0; i < del_id_arr.length; i ++) {
                bannerService.deleteBanner(Integer.parseInt(del_id_arr[i]));
            }

            return new ResponseEntity<String>( JSON.toJSONString( true ), HttpStatus.OK );
        }
        catch ( Exception e ) {
            return new ResponseEntity<String>( e.getMessage(), HttpStatus.BAD_REQUEST );
        }
    }

    @RequestMapping(value="/ajax/popup_delete.do", method = RequestMethod.POST)
    public ResponseEntity<String> popup_delete(HttpServletRequest request, HttpServletResponse response, Model model
            , @ModelAttribute("popupVo") PopupVo popupVo
            , BindingResult bindingResult
            , SessionStatus status
    )  throws Exception {

        try {
            String[] del_id_arr = ServletRequestUtils.getStringParameters(request, "del_id");

            for(int i = 0; i < del_id_arr.length; i ++) {
                bannerService.deletePopup(Integer.parseInt(del_id_arr[i]));
            }

            return new ResponseEntity<String>( JSON.toJSONString( true ), HttpStatus.OK );
        }
        catch ( Exception e ) {
            return new ResponseEntity<String>( e.getMessage(), HttpStatus.BAD_REQUEST );
        }
    }

    @RequestMapping(value="/ajax/bbs_detail_delete.do", method = RequestMethod.POST)
    public ResponseEntity<String> bbs_detail_delete(HttpServletRequest request, HttpServletResponse response, Model model
            , @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo
            , BindingResult bindingResult
            , SessionStatus status
    )  throws Exception {

        try {
            String[] del_id_arr = ServletRequestUtils.getStringParameters(request, "del_id");

            for(int i = 0; i < del_id_arr.length; i ++) {
                bbsService.deleteBbsDetail(Integer.parseInt(del_id_arr[i]));
            }

            return new ResponseEntity<String>( JSON.toJSONString( true ), HttpStatus.OK );
        }
        catch ( Exception e ) {
            return new ResponseEntity<String>( e.getMessage(), HttpStatus.BAD_REQUEST );
        }
    }
}
