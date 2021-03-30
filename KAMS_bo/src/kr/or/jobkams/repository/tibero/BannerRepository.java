package kr.or.jobkams.repository.tibero;

import kr.or.jobkams.model.BannerVo;
import kr.or.jobkams.model.OrdVo;
import kr.or.jobkams.model.PopupVo;
import kr.or.jobkams.model.SearchVo;

import java.util.List;

/**
 * Program Name : kr.or.jobkams.repository.tibero
 * Author : shlee
 * Date : 2021-03-27
 * Description :
 * History :
 * Version :
 */
public interface BannerRepository {
    List<BannerVo> selectBannerList(SearchVo searchVo) throws Exception;

    int selectBannerListTotal(SearchVo searchVo) throws Exception;

    int selectBannerOrd(BannerVo bannerVo) throws Exception;

    void insertBannerInfo(BannerVo bannerVo) throws Exception;

    void deleteBanner(int banner_idx) throws Exception;

    void updateBannerOrd(OrdVo ord) throws Exception;

    BannerVo selectBannerInfo(BannerVo bannerVo) throws Exception;

    void updateBannerView(BannerVo bannerVo) throws Exception;

    void updateBannerInfo(BannerVo bannerVo) throws Exception;

    void deleteBannerInfo(BannerVo bannerVo) throws Exception;

    void insertPopup(PopupVo popupVo) throws Exception;

    int selectPopupOrd(PopupVo popupVo) throws Exception;

    List<PopupVo> selectPopupList(SearchVo searchVo) throws Exception;

    int selectPopupListTotal(SearchVo searchVo) throws Exception;

    void deletePopup(int popup_idx) throws Exception;

    void updatePopupOrd(OrdVo ord) throws Exception;

    PopupVo selectPopup(PopupVo popupVo) throws Exception;

    void deletePopupInfo(PopupVo popupVo) throws Exception;

    void updatePopup(PopupVo popupVo) throws Exception;
}
