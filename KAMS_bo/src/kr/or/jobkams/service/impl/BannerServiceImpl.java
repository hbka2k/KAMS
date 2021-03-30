package kr.or.jobkams.service.impl;

import kr.or.jobkams.model.BannerVo;
import kr.or.jobkams.model.OrdVo;
import kr.or.jobkams.model.PopupVo;
import kr.or.jobkams.model.SearchVo;
import kr.or.jobkams.repository.tibero.BannerRepository;
import kr.or.jobkams.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Program Name : kr.or.jobkams.service.impl
 * Author : shlee
 * Date : 2021-03-27
 * Description :
 * History :
 * Version :
 */
@Service
public class BannerServiceImpl implements BannerService {

    @Autowired
    private BannerRepository bannerRepository;

    @Override
    public List<BannerVo> selectBannerList(SearchVo searchVo) throws Exception {
        return bannerRepository.selectBannerList(searchVo);
    }

    @Override
    public int selectBannerListTotal(SearchVo searchVo) throws Exception {
        return bannerRepository.selectBannerListTotal(searchVo);
    }

    @Override
    public int selectBannerOrd(BannerVo bannerVo) throws Exception {
        return bannerRepository.selectBannerOrd(bannerVo);
    }

    @Override
    public void insertBannerInfo(BannerVo bannerVo) throws Exception {
        bannerRepository.insertBannerInfo(bannerVo);
    }

    @Override
    public void deleteBanner(int banner_idx) throws Exception {
        bannerRepository.deleteBanner(banner_idx);
    }

    @Override
    public void updateBannerOrd(OrdVo ord) throws Exception {
        bannerRepository.updateBannerOrd(ord);
    }

    @Override
    public BannerVo selectBannerInfo(BannerVo bannerVo) throws Exception {
        return bannerRepository.selectBannerInfo(bannerVo);
    }

    @Override
    public void updateBannerView(BannerVo bannerVo) throws Exception {
        bannerRepository.updateBannerView(bannerVo);
    }

    @Override
    public void updateBannerInfo(BannerVo bannerVo) throws Exception {
        bannerRepository.updateBannerInfo(bannerVo);
    }

    @Override
    public void deleteBannerInfo(BannerVo bannerVo) throws Exception {
        bannerRepository.deleteBannerInfo(bannerVo);
    }

    @Override
    public void insertPopup(PopupVo popupVo) throws Exception {
        bannerRepository.insertPopup(popupVo);
    }

    @Override
    public int selectPopupOrd(PopupVo popupVo) throws Exception {
        return bannerRepository.selectPopupOrd(popupVo);
    }

    @Override
    public List<PopupVo> selectPopupList(SearchVo searchVo) throws Exception {
        return bannerRepository.selectPopupList(searchVo);
    }

    @Override
    public int selectPopupListTotal(SearchVo searchVo) throws Exception {
        return bannerRepository.selectPopupListTotal(searchVo);
    }

    @Override
    public void deletePopup(int popup_idx) throws Exception {
        bannerRepository.deletePopup(popup_idx);
    }

    @Override
    public void updatePopupOrd(OrdVo ord) throws Exception {
        bannerRepository.updatePopupOrd(ord);
    }

    @Override
    public PopupVo selectPopup(PopupVo popupVo) throws Exception {
        return bannerRepository.selectPopup(popupVo);
    }

    @Override
    public void deletePopupInfo(PopupVo popupVo) throws Exception {
        bannerRepository.deletePopupInfo(popupVo);
    }

    @Override
    public void updatePopup(PopupVo popupVo) throws Exception {
        bannerRepository.updatePopup(popupVo);
    }
}
