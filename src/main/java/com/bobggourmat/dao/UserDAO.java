package com.bobggourmat.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bobggourmat.vo.UserVO;

@Mapper
@Repository
public interface UserDAO {
  
	// 1. insert_계정 저장하기(회원가입)
	void insertUser (UserVO userVO);
    // 2. select_개정 1개 불러오기
	UserVO selectByIdx (int idx);
	// 3. update_계정 수정하기 
	void updateUser (UserVO userVO);
	// 4. update_비밀번호 변경하기 (아이디랑 바꿀 비밀번호를 입력) 
	void updatePassword(HashMap<String, String> map);
	// 5. delete_계정 삭제하기
	void deleteUser (UserVO userVO);
	//==================================================================
	// 6. select_해당아이디의 개수 (아이디 중복확인에 사용: 0이면 사용가능, 1이상이면 사용불가)
	int selectCountByUserId(String userid);
	// 7. select_이름과 전화번호로 가져오기(아이디찾기)
	UserVO selectByUserID(UserVO userVO);
	// 8. select_ID와 전화번호로 가져오기(비번찾기 사용)
	UserVO selectByUserPW(UserVO userVO);
	// 9. select_login하기
	UserVO login(UserVO userVO);
	// 10. Icon변경하기
	void updateIcon(UserVO userVO);
}