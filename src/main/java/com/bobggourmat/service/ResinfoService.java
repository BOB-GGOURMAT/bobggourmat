package com.bobggourmat.service;

import java.util.HashMap;
import java.util.List;

import com.bobggourmat.vo.ResinfoVO;

public interface ResinfoService {
     //1. 지역 이름 가져오기.
	String location_name (int location_idx);
	 //2. 지역으로 식당 목록 가져오기
	List<ResinfoVO> location_reslist (int location_idx);
	//3. 카테고리 이름 가져오기.
	String category_name (int category_idx);
	//4. 카테고리로 식당 목록 가져오기
	List<ResinfoVO> category_reslist (int category_idx);
	//5. 식당 정보 한개 가져오기
	ResinfoVO selectByIdx (int resinfo_idx);
	//6. 카테고리 식당 별점 가져오기
	double category_Star (HashMap<String, Integer> map );
	//7. 지역 식당 별점 가져오기
	double location_Star (HashMap<String, Integer> map);
	//8. 식당 저장 추가.
	void insert_save(HashMap<String, Integer> map);
	//9. 식당 저장 삭제.
	void delete_save(HashMap<String, Integer> map);
	//9. 식당 저장 목록보기.
	List<ResinfoVO> save_reslist(int user_idx);
	//10. 식당 저장 여부 확인
    int checkSave (HashMap<String,Integer> map);
    //11. 저장한 식당 별점 가져오기
    double saveRes_star(int resinfo_idx);
}
