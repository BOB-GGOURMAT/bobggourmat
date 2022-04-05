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
public class ResinfoController {
    private final ResinfoService resinfoService;
	private final CommentService commentService;
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
