package com.bobggourmat.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bobggourmat.service.CommentService;
import com.bobggourmat.service.LikeService;
import com.bobggourmat.service.MenuService;
import com.bobggourmat.service.ResinfoService;
import com.bobggourmat.vo.MenuVO;
import com.bobggourmat.vo.ResCommentVO;
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
	private final LikeService likeService;
	
   //식당 상세페이지
   @RequestMapping(value = "/resinfo")
   public String resinfo(@RequestParam(required = false) int resinfo_idx, HttpSession session,Model model) {
	   log.info("Resinfo controller resinfo 호출 :" + resinfo_idx);
	   ResinfoVO resinfo = resinfoService.selectByIdx(resinfo_idx);
	   List<MenuVO> menuinfo = menuService.menuList(resinfo_idx);
	   List<ResCommentVO> commentlist = commentService.comment_list(resinfo_idx);
	   int commentCount = commentService.commentCount(resinfo_idx);
	   
	   //user_idx 구하기
	   UserVO userVO = (UserVO) session.getAttribute("userinfo");
	   int user_idx = 0;
	   if(userVO !=null) {
		  user_idx=userVO.getUser_idx();
	   }else {
		   user_idx =0;
	   }
	   
	   //식당 저장 확인하기
	   HashMap<String, Integer> savemap = new HashMap<>();
	   savemap.put("user_idx",user_idx);
	   savemap.put("resinfo_idx", resinfo_idx);
	   int saveCheck = resinfoService.checkSave(savemap);
	   
	   //댓글 좋아요 확인하기
	   HashMap<String, Integer> likemap = new HashMap<>();
	   int likeCount = 0;
	   int likeCheck = 0;
	   for(int i=0; i<commentlist.size(); i++) {
		   int comment_idx = commentlist.get(i).getComment_idx();
		   likeCount=likeService.countLike(comment_idx);
		   commentlist.get(i).setLikeCount(likeCount);
		   likemap.put("user_idx",user_idx);
		   likemap.put("comment_idx", comment_idx);	   
		   likeCheck =likeService.checkLike(likemap);
		   commentlist.get(i).setLikeCheck(likeCheck);
	   }
	   
	   model.addAttribute("saveCheck",saveCheck);
	   model.addAttribute("resinfo", resinfo);
	   model.addAttribute("menuinfo",menuinfo);
	   model.addAttribute("commentlist",commentlist);
	   model.addAttribute("commentCount",commentCount);
	   log.info("controller resinfo 리턴" + model );
	   return "resinfo";
   }

 //평가한 식당
   @RequestMapping(value="/estimateRes")
   public String estimateRes(HttpSession session, Model model) {
	   log.info("Resinfo controller estimateRes 호출 :"  +session);
	   UserVO user = (UserVO) session.getAttribute("userinfo");
	   int user_idx = user.getUser_idx();
	   List<ResCommentVO> estimate_resinfo=commentService.estimate_resinfo(user_idx);
	   model.addAttribute("estimate_resinfo",estimate_resinfo);
	   log.info("Resinfo controller estimateRes 리턴:"  +estimate_resinfo);
	   return"estimateRes";
   }
   
   
   //저장한 식당
   @RequestMapping(value="/saveRes")
	   public String saveRes( ) {
	   return"saveRes";
   }
   //식당 저장하기 (GET)
   @GetMapping(value="/saveOk")
   public String saveOk() {
    return "redirect:/";
   }
   
   //식당 저장하기 (POST)
   @ResponseBody
   @PostMapping(value="/saveOk")
   public String saveOk(@RequestParam(required = false) String resinfo_idx,HttpSession session,  Model model) {
	   log.info("Resinfo controller saveOk 호출 :"  + resinfo_idx);
	   UserVO user = (UserVO) session.getAttribute("userinfo");
	   int user_idx = 0;
	   if(user != null) { 
	   log.info("Resinfo controller user if 호출 :"  + user);
	   user_idx = user.getUser_idx();
	   }
	   HashMap<String, Integer> map =new HashMap<>();
	   map.put("user_idx", user_idx);
	   map.put("resinfo_idx", Integer.parseInt(resinfo_idx));
	   int saveCheck = 0;
	   saveCheck = resinfoService.checkSave(map);
	   if(saveCheck == 0) {
	   log.info("Resinfo controller saveCheck==0 호출 :"  + map);
		   resinfoService.insert_save(map);
	   }else {
		   log.info("Resinfo controller saveCheck else 호출 :"  + map);
		   resinfoService.delete_save(map);
	   }
	   return "redirect:/resinfo?resinfo_idx="+resinfo_idx;
   }
}
