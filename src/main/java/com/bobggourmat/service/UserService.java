package com.bobggourmat.service;


import com.bobggourmat.vo.UserVO;


public interface UserService {
	
	//  1. 로그 인
	UserVO loginOk (UserVO userVO);
	//  2. 로그 아웃
	UserVO logoutOk (UserVO userVO);
	//  3. 회원 가입
	void joinUser (UserVO userVO);
	//  4. 회원 정보 수정
	UserVO updateUser (UserVO userVO);
	//  5. 회원 탈퇴
	void deleteUser (UserVO userVO);
	//  6. 비번 변경
	void updatePassword (UserVO userVO);
	//  7. 아이디 중복확인
	int idCheck(String userid);
	//  8. 아이디 찾기
	UserVO idSearch (UserVO userVO);
	//  9. 비번 찾기
	UserVO passwordSearch (UserVO userVO);

}
