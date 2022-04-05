package com.bobggourmat.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bobggourmat.service.UserService;
import com.bobggourmat.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class LoginController {
	private final UserService userService;
	
	 // 로그인 화면
	   @RequestMapping(value = "/login")
	   public String login() {
		   return "login";
	   }
	   
	   // loginOk
		@RequestMapping(value = "/loginOk")
		public String loginOk(@ModelAttribute UserVO userVO, Model model, HttpSession session) {
			log.info("controller loginOk 호출 : " + userVO);
			UserVO dbvo = userService.loginOk(userVO);
			if (dbvo != null) {
				// 로그인 성공
				log.info("controller loginOk if호출 :" + dbvo);
				session.setAttribute("userinfo", dbvo);
				return "redirect:/";
			} else {
				// 로그인 실패
				log.info("controller loginOk else호출 :" + dbvo);
				return "login";
			}
		}
		// logout
		@GetMapping(value = "/logout")
		public String logout(HttpServletRequest request)throws Exception {
			log.info("controller logout호출 :" + request);
			HttpSession session = request.getSession();
			session.invalidate();
			return "redirect:/";
		}

}
