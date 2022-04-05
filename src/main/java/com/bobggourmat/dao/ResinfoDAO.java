package com.bobggourmat.dao;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bobggourmat.vo.ResinfoVO;

@Repository
@Mapper
public interface ResinfoDAO {
       //<!-- 1. select_ 식당 한개 정보 가져오기 -->
	   ResinfoVO selectByIdx(int resinfo_idx);
	   //<!-- 2. select_ 지역 이름 가져오기-->
	   String location_name(int location_idx);
	   //<!-- 3. select_ 카테고리 이름 가져오기-->
	   String category_name(int category_idx);
	   //<!-- 4. select_ 지역별 식당 리스트 가져오기 -->
	   List<ResinfoVO> location_resinfo (int location_idx);
	   //<!-- 5. select_ 카테고리별 식당 리스트 가져오기 -->
	   List<ResinfoVO> category_resinfo (int category_idx);
	   //<!-- 6. select_ 저장한 식당 리스트 가져오기 -->
       List<ResinfoVO> save_resinfo (int user_idx);	 
}
