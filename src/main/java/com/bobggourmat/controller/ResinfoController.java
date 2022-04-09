package com.bobggourmat.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bobggourmat.service.CommentService;
import com.bobggourmat.service.MenuService;
import com.bobggourmat.service.ResinfoService;
import com.bobggourmat.vo.CommentVO;
import com.bobggourmat.vo.MenuVO;
import com.bobggourmat.vo.ResinfoVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequiredArgsConstructor
public class ResinfoController {
    private final ResinfoService resinfoService;
	private final CommentService commentService;
	private final MenuService menuService;
	
   //식당 상세페이지
   @RequestMapping(value = "/resinfo")
   public String resinfo(@RequestParam(required = false) int resinfo_idx, Model model) {
	   log.info("controller resinfo 호출 :" + resinfo_idx);
	   ResinfoVO resinfo = resinfoService.selectByIdx(resinfo_idx);
	   List<MenuVO> menuinfo = menuService.menuList(resinfo_idx);
	   List<CommentVO> commentlist = commentService.comment_list(resinfo_idx);
	   int commentCount = commentService.commentCount(resinfo_idx);
	   model.addAttribute("resinfo", resinfo);
	   model.addAttribute("menuinfo",menuinfo);
	   model.addAttribute("commentlist",commentlist);
	   model.addAttribute("commentCount",commentCount);
	   log.info("controller resinfo 리턴" + model );
	   return "resinfo";
   }
   
}
