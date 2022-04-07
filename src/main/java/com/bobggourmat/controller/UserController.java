package com.bobggourmat.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bobggourmat.service.UserService;
import com.bobggourmat.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class UserController {
	private final UserService userService;
	
	    //회원가입 페이지
		@RequestMapping(value = "/joinForm")
		public String joinForm()  {
			return "joinForm";
		}
		
		//회원가입 검사(GET)
		@GetMapping(value = "/insertOk")
		public String insertOk() {
			return "redirect:/joinForm";
		}
		
		//회원가입 검사(POST)
		@PostMapping(value = "/insertOk")
		public String insertOk(@ModelAttribute UserVO userVO, Model model) {
			log.info("userVO 호출 : " + userVO);
			userService.joinUser(userVO); // DB에 저장
			model.addAttribute("vo", userVO);
			log.info("userVO 리턴 : " + model);
			return "redirect:/login";
		}
		
		//아이디 체크
		@RequestMapping(value = "/idCheck")
	    @ResponseBody
		public int idCheck(@RequestParam(required = false) String user_id) {
	     log.info("controller idcheck 호출 :" + user_id);
	     System.out.println("controller idcheck 호출 :" + user_id);
	     return userService.idCheck(user_id);
		}
	 
	   //마이페이지 화면
	   @RequestMapping(value = "/mypage")
	   public String mypage() {
		   return "mypage";
	   }
		
	   //회원수정 화면
	   @RequestMapping(value = "/updateForm")
	   public String updateForm() {
		   return "updateForm";
	   }

	    //아이디 비번 찾기 화면
		@RequestMapping(value = "/findIDPW")
		public String findIDPW()  {
			return "findIDPW";
		}
	   
}
