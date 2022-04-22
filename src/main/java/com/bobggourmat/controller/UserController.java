package com.bobggourmat.controller;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	   public String mypage(HttpSession session) {
		   UserVO user = (UserVO) session.getAttribute("userinfo");
		   if(user != null) {
			   return "mypage";
		   }
           return "error";
	   }
	   
	   // 비밀번호 수정 화면
	   @RequestMapping(value = "/updatePW")
	   public String updatePW() {
		   return "updatePW";
	   }
	   
	   
	   @GetMapping (value ="/updatePWOk")
	   public String updatePWOk () {
		   return "redirect:/";
	   }
	   
	   @PostMapping (value="/updatePWOk")
       public String updatePWOk(@RequestParam String user_password ,HttpSession session, Model model) {
		   UserVO user = (UserVO) session.getAttribute("userinfo");
		   String user_id = user.getUser_id();
		   
		   HashMap<String, String> map = new HashMap<>();
		   map.put("user_id", user_id);
		   map.put("user_password", user_password);
		  userService.updatePassword(map);
		   model.addAttribute("msg", "비밀번호 변경에 성공했습니다.");
		   return"updatePW";
	   }
	   
		
	   //회원수정 화면
	   @RequestMapping(value = "/updateForm")
	   public String updateForm() {
		   return "updateForm";
	   }
       // 회원탈퇴페이지로 갈때
	   @RequestMapping(value = "/delete")
	   public String delete() {
		   return "delete";
	   }
	   
	   
	   // 회원탈퇴 버튼 눌렀을때
	   @RequestMapping(value="/deleteOk", method = RequestMethod.GET)
	   public void deleteGET() throws Exception {
	   	log.info("deleteGET");
	   }

	   @RequestMapping(value="/deleteOk", method = RequestMethod.POST)
	   public String removePOST(@ModelAttribute UserVO userVO, HttpSession session, Model model) throws Exception {
	   	log.info("deletePOST 호출");
	   	
	   	UserVO user = (UserVO)session.getAttribute("userinfo");
	   	
	   	//현재 로그인중인 회원 비밀번호
	   	String user_password_check = user.getUser_password();
	   	//입력받은 비밀번호
	   	String user_password = userVO.getUser_password();
	   	
	   	if(user_password.equals(user_password_check)) {
	   		log.info("deletePOST if 호출");
	   		userService.deleteUser(userVO);
	   		session.invalidate();
	   		model.addAttribute("result","deleteSuccess");
	   		return "redirect:/";
	   	} else {
	   		log.info("deletePOST else 호출");
	   		model.addAttribute("result","deleteFail");
	   		return "delete";
	   	}
	   }
	   
	   
	// findID폼으로 이동
			@RequestMapping(value = "/findID")
			public String findID() {
				log.info("controller findID호출 : " );
				return "findID";
			}
			
			// findID폼 get방식으로 접근 시
			@RequestMapping(value = "/findIDOk", method = RequestMethod.GET)
			public String findIDOk() {
				return "redirect:/findIDOk";
			}
			
			// findID폼 post방식으로 접근 시
			@RequestMapping(value = "/findIDOk", method = RequestMethod.POST)
			public String findIDOK(@ModelAttribute UserVO userVO, Model model ) {
				log.info("user controller의 findIDOK 호출 :  " + userVO);
				UserVO vo = userService.idSearch(userVO);
				if(vo!=null) {
					// 일치하는 id가 존재하는 경우
					model.addAttribute("userID", vo);
					log.info("user controller의 findIDOK if 리턴 :  " + model);
					return "findIDOk";
				} 
				model.addAttribute("userID", null);
				log.info("user controller의 findIDOK else 리턴:  " + model);
					return "findIDOk";
			}
			
			// findPW폼으로 이동
			@RequestMapping(value = "/findPW")
			public String findPW() {
				log.info("controller findPW호출 : ");
				return "findPW";
			}
			
			// findPW폼 get방식으로 접근 시
			@RequestMapping(value = "/findPWOk", method = RequestMethod.GET) 
			public String findPWOk() {
				return "redirect:/findPWOk";
			}
			
			// findPW폼 post방식으로 접근 시
			@RequestMapping(value = "/findPWOk", method = RequestMethod.POST) 
			public String findPWOk(@ModelAttribute UserVO userVO, Model model) {
				UserVO vo = userService.passwordSearch(userVO);
				if(vo!=null) {
					// 일치하는 password가 존재하는 경우
					model.addAttribute("userPW", vo);
					return "findPWOk";
				}
				model.addAttribute("userPW", null);
				return "findPWOk";
			}
			
			// findIDPW폼으로 가기
			@RequestMapping(value = "/findIDPW")
			public String findIDPW() {
				return "findIDPW";
			}
			
	}
	   

