package com.bobggourmat.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.bobggourmat.dao.UserDAO;
import com.bobggourmat.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("userService")
public class UserServiceImpl implements UserService {

	private final UserDAO userDAO;

	@Override // 컨트롤러만들때 만듬
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
		if (userVO != null) {
			// DB에서 정보를 받아와 비번이 일치할때만 수정을 실행한다.
			UserVO dbVO = userDAO.selectByIdx(userVO.getUser_idx());
			if (dbVO != null) { // db에 해당 idx의 멤버가 존재하면
				String dbPassword = dbVO.getUser_password(); // 암호화된 내용을 DB에서 가져옴
				if (userVO.getUser_password() == dbPassword) { // 암호화된 비번 일치여부 확인
					// 회원 정보 수정
					userDAO.insertUser(userVO);
					// 수정된 정보를 다시 얻는다.
					dbVO = userDAO.selectByIdx(userVO.getUser_idx());
					return dbVO;
				}
			}
		}
		return null;
	}

	@Override // 회원 탈퇴
	public void deleteUser(UserVO userVO) {
		log.info("UserService deleteUser 호출 : " + userVO);
		if (userVO != null) {
			UserVO vo = userDAO.selectByIdx(userVO.getUser_idx()); // 해당 아이디의 정보 가져오기
			if (vo != null) { // 있다면
				String dbPassword = vo.getUser_password(); // 암호화된 내용을 DB에서 가져옴
				if (userVO.getUser_password() == dbPassword) { // 암호화된 비번 일치여부 확인
					// 회원 탈퇴
					userDAO.deleteUser(vo.getUser_idx());
				}
			}
		}

	}

	@Override // 비번 변경
	public void updatePassword(UserVO userVO) {
		log.info("UserService updatePassword 호출 : " + userVO);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userid", userVO.getUser_id());
		// password는 암호화해서 저장되어야 한다.
		String encryptPassword = userVO.getUser_password();
		map.put("password", encryptPassword);
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
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("user_name", userVO.getUser_name());
			map.put("user_phone", userVO.getUser_phone());
			vo = userDAO.selectByUsername(map);
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
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("user_id", userVO.getUser_id());
			map.put("user_phone", userVO.getUser_phone());
			vo = userDAO.selectByUserId(map);
		log.info("UserService passwordSearch 리턴 : " + vo);
		return vo;
	}
		return null;
}
}