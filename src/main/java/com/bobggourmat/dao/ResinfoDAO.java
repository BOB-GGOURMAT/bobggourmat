package com.bobggourmat.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bobggourmat.vo.ResinfoVO;

@Repository
@Mapper
public interface ResinfoDAO {
	// <!-- 1. select_ 식당 한개 정보 가져오기 -->
	ResinfoVO selectByIdx(int resinfo_idx);

	// <!-- 2. select_ 지역 이름 가져오기-->
	String location_name(int location_idx);

	// <!-- 3. select_ 카테고리 이름 가져오기-->
	String category_name(int category_idx);

	// <!-- 4. select_ 지역별 식당 리스트 가져오기 -->
	List<ResinfoVO> location_resinfo(int location_idx);

	// <!-- 5. select_ 카테고리별 식당 리스트 가져오기 -->
	List<ResinfoVO> category_resinfo(int category_idx);

	// <!-- 6. select_ 저장한 식당 리스트 가져오기 -->
	List<ResinfoVO> save_resinfo(int user_idx);

	// 7. 검색 기능 -구수현
	List<ResinfoVO> search(String keyword);
    
	//<!-- 8. select_카테고리 식당 별점 가져오기-->
	double category_star ( HashMap<String, Integer> map );
	
	//<!-- 9. select_지역 식당 별점 가져오기-->
	double location_star (HashMap<String, Integer> map);
	
	//<!--10. insert 식당 저장하기 -->
	void insert_save(HashMap<String, Integer> map);
	
	//<!--11. delete 저장식당 삭제하기 -->
	void delete_save(HashMap<String, Integer> map);
	
	//<!--12. select 식당 저장 여부 확인하기 -->
	int saveCheck (HashMap<String, Integer> map);
}
