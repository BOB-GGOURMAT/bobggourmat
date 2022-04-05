package com.bobggourmat.service;

import java.util.List;

import com.bobggourmat.vo.MenuVO;

public interface MenuService {
    //1. menu목록 불러오기
	List<MenuVO> menuList (int resinfo_idx);
}
