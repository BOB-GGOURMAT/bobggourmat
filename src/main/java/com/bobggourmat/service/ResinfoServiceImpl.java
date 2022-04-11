package com.bobggourmat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bobggourmat.dao.ResinfoDAO;
import com.bobggourmat.vo.ResinfoVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("resinfoService")
public class ResinfoServiceImpl implements ResinfoService {
	
	public final ResinfoDAO resinfoDAO;
	
	@Override
	public String location_name(int location_idx) {
		log.info("ResinfoService location_name 호출 :" +location_idx);
		return resinfoDAO.location_name(location_idx);
	}

	@Override
	public List<ResinfoVO> location_reslist(int location_idx) {
		log.info("ResinfoService location_reslist 호출 :" + location_idx);
		return resinfoDAO.location_resinfo(location_idx);
	}

	@Override
	public String category_name(int category_idx) {
		log.info("ResinfoService category_name 호출 :" +category_idx);
		return resinfoDAO.category_name(category_idx);
	}

	@Override
	public List<ResinfoVO> category_reslist(int category_idx) {
		log.info("ResinfoService category_reslist 호출 :" + category_idx);
		return resinfoDAO.category_resinfo(category_idx);
	}

	@Override
	public ResinfoVO selectByIdx(int resinfo_idx) {
		log.info("ResinfoService selectByIdx호출" + resinfo_idx);
		return resinfoDAO.selectByIdx(resinfo_idx);
	}

	@Override
	public List<ResinfoVO> category_Star(ResinfoVO resinfoVO) {
		log.info("ResinfoService category_Star호출" + resinfoVO);
		return resinfoDAO.category_star(resinfoVO);
	}

	@Override
	public List<ResinfoVO> location_Star(ResinfoVO resinfoVO) {
		log.info("ResinfoService location_Star호출" + resinfoVO);
		return resinfoDAO.location_star(resinfoVO);
	}

}
