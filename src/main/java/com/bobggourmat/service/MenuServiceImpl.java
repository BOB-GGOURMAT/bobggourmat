package com.bobggourmat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bobggourmat.dao.MenuDAO;
import com.bobggourmat.vo.MenuVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("menuService")
public class MenuServiceImpl implements MenuService{

	public final MenuDAO menuDAO;
	
	@Override
	public List<MenuVO> menuList(int resinfo_idx) {
		log.info("MenuService menuList호출:"+resinfo_idx);
		return menuDAO.menuList(resinfo_idx);
	}

}
