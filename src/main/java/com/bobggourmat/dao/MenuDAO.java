package com.bobggourmat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bobggourmat.vo.MenuVO;
@Repository
@Mapper
public interface MenuDAO {
  //<!-- 1. select_menu 목록 가져오기-->
	List<MenuVO> menuList (int resinfo_idx);
}
