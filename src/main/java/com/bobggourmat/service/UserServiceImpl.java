package com.bobggourmat.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.bobggourmat.dao.UserDAO;
import com.bobggourmat.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.bytebuddy.asm.Advice.Return;

@Slf4j
@RequiredArgsConstructor
@Service("userService")
public class UserServiceImpl implements UserService {

	private final UserDAO userDAO;

	@Override 
	public UserVO loginOk(UserVO userVO) {
		log.info("UserService loginOK호출 : " + userVO);
		if(userVO != null) {
			//아이디 입력폼이 공란이 아니라면
			log.info("UserService loginOK if 호출: " + userVO);
			UserVO dbvo = userDAO.login(userVO);
			log.info("UserService loginOK if 리턴: " + dbvo);
			return dbvo;
		}
		log.info("UserService loginOK리턴 : " + userVO);
		return null;
	}


	@Override // 회원가입
	public void joinUser(UserVO userVO) {
		log.info("UserService insertUser 호출 : " + userVO);
		if (userVO != null) {
			// DB에 저장한다.
			userDAO.insertUser(userVO);
		}
	}

	@Override // 회원정보수정
	public UserVO updateUser(UserVO userVO) {
		log.info("UserService updateUser 호출 : " + userVO);
		 userDAO.updateUser(userVO);
		 return userDAO.selectByIdx(userVO.getUser_idx());
		 
	}
	

	@Override // 회원 탈퇴
	public void deleteUser(UserVO userVO) {
		log.info("UserService deleteUser 호출 : " + userVO);
		if (userVO != null) {
			UserVO vo = userDAO.selectByIdx(userVO.getUser_idx()); // 해당 아이디의 정보 가져오기
			if (vo != null) { // 있다면
					// 회원 탈퇴
					userDAO.deleteUser(vo);
				}
			}
		}


	@Override // 비번 변경
	public void updatePassword(HashMap<String, String> map) {
		log.info("UserService updatePassword 호출 : " + map);
		userDAO.updatePassword(map);
	}

	@Override // 아이디 중복확인
	public int idCheck(String userid) {
		log.info("UserService idCheck 호출 : " + userid);
		return userDAO.selectCountByUserId(userid);
	}

	@Override // 아이디찾기
	public UserVO idSearch(UserVO userVO) {
		log.info("UserService idSearch 호출 : " + userVO);
		UserVO vo = null ;
		if (userVO != null) {
	
			vo = userDAO.selectByUserID(userVO);
			log.info("UserService idSearch 리턴 : " + vo);
			return vo;
		}
		return null;
	}
	
	@Override // 비번 찾기
	public UserVO passwordSearch(UserVO userVO) {
		log.info("UserService passwordSearch 호출 : " + userVO);
		UserVO vo = null;
		if (userVO != null) {
			vo = userDAO.selectByUserPW(userVO);
		log.info("UserService passwordSearch 리턴 : " + vo);
		return vo;
	}
		return null;
}
}