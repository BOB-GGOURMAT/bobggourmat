package com.bobggourmat.service;


import com.bobggourmat.vo.UserVO;


public interface UserService {
	
	//  1. 로그 인
	UserVO loginOk (UserVO userVO);
	//  2. 회원 가입
	void joinUser (UserVO userVO);
	//  3. 회원 정보 수정
	UserVO updateUser (UserVO userVO);
	//  4. 회원 탈퇴
	void deleteUser (UserVO userVO);
	//  5. 비번 변경
	void updatePassword (UserVO userVO);
	//  6. 아이디 중복확인
	int idCheck(String userid);
	//  7. 아이디 찾기
	UserVO idSearch (UserVO userVO);
	//  8. 비번 찾기
	UserVO passwordSearch (UserVO userVO);

}
