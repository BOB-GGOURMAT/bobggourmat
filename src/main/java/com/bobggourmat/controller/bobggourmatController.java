package com.bobggourmat.controller;


import java.util.List;

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

import com.bobggourmat.service.CommentService;
import com.bobggourmat.service.MenuService;
import com.bobggourmat.service.ResinfoService;
import com.bobggourmat.service.UserService;
import com.bobggourmat.vo.CommentVO;
import com.bobggourmat.vo.MenuVO;
import com.bobggourmat.vo.ResinfoVO;
import com.bobggourmat.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequiredArgsConstructor
public class bobggourmatController {
    private final ResinfoService resinfoService;
	private final CommentService commentService;
	private final UserService userService;
	private final MenuService menuService;
	
	//홈 화면
	@RequestMapping(value = "/")
	public String Home()  {
		return "home";
	}

	//카테고리 페이지
	@RequestMapping(value = "/category")
	public String category(@RequestParam (value="category_idx",required=false, defaultValue="0") String category_idx, Model model)  {
		log.info("controller category호출 :" +category_idx );
		if(category_idx.equals("0")) {
	    log.info("controller category_idx 1 : " +category_idx);
		model.addAttribute("category_name", category_idx);
		log.info("controller category 리턴 1: " + model);
		}else {
		log.info("controller category_idx 2 : " +category_idx);
		String category_name = resinfoService.category_name(Integer.parseInt(category_idx));
		List<ResinfoVO> category_reslist = resinfoService.category_reslist(Integer.parseInt(category_idx));
		if(category_reslist.isEmpty()) {
			model.addAttribute("location_name", "NoData");
		    }else {
		model.addAttribute("category_name", category_name);
		model.addAttribute("category_reslist",category_reslist);
		log.info("controller category 리턴 2 :" +model);
		}
		}
		return "category";
	}
	
	// 지역 페이지
	@RequestMapping(value = "/map")
	public String map(@RequestParam (value="location_idx",required=false, defaultValue="0") String location_idx, @RequestParam (value="img",required=false, defaultValue="m001s.png")String img, Model model )  {
		log.info("controller map호출 :" +location_idx +", "+img);
		if(location_idx.equals("0")) {
	    log.info("controller map location_idx 1 : " +location_idx);
		model.addAttribute("location_name", location_idx);
		model.addAttribute("img", "m001s.png");
		log.info("controller map 리턴 1: " + model);
		}else {
		log.info("controller map location_idx 2 : " +location_idx);
		String location_name = resinfoService.location_name(Integer.parseInt(location_idx));
		List<ResinfoVO> location_reslist = resinfoService.location_reslist(Integer.parseInt(location_idx));
		if(location_reslist.isEmpty()) {
			model.addAttribute("location_name", "NoData");
			model.addAttribute("img", img);
		    }else {
			model.addAttribute("location_name", location_name);
			model.addAttribute("img", img);
			model.addAttribute("location_reslist",location_reslist);
			log.info("controller map 리턴 2 :" +model);
		     }
		}
		return "map";
	}

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
   
   //회원수정 화면
   @RequestMapping(value = "/updateForm")
   public String updateForm() {
	   return "updateForm";
   }

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
   
   //마이페이지 화면
   @RequestMapping(value = "/mypage")
   public String mypage() {
	   return "mypage";
   }
   
   //식당 상세페이지
   @RequestMapping(value = "/resinfo")
   public String resinfo(@RequestParam(required = false) int resinfo_idx, Model model) {
	   log.info("controller resinfo 호출 :" + resinfo_idx);
	   ResinfoVO resinfo = resinfoService.selectByIdx(resinfo_idx);
	   List<MenuVO> menuinfo = menuService.menuList(resinfo_idx);
	   List<CommentVO> commentlist = commentService.comment_list(resinfo_idx);
	   model.addAttribute("resinfo", resinfo);
	   model.addAttribute("menuinfo",menuinfo);
	   model.addAttribute("commentlist",commentlist);
	   log.info("controller resinfo 리턴" + model );
	   return "resinfo";
   }
   
   
}
