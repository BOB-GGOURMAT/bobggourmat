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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bobggourmat.service.CommentService;
import com.bobggourmat.service.LikeService;
import com.bobggourmat.vo.CommentVO;
import com.bobggourmat.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequiredArgsConstructor
public class CommentController {

	private final CommentService commentService;
	private final LikeService likeService;
	
	
	  //댓글 생성(get)
	   @GetMapping(value="/commentOk")
	   public String commentInsert() {
	   return "redirect:/";
	   }
	   
	   //댓글 생성(post)
	   @PostMapping(value= "/commentOk")
	   public String commentInsert(@ModelAttribute CommentVO commentVO,HttpServletRequest request) {
		   log.info("Resinfo controller commentInsert 호출 :" + commentVO );
		   String referer = request.getHeader("Referer");
		   commentService.insert(commentVO);
		   return"redirect:"+ referer;
	   }
	   
	   //댓글 삭제(POST)
	   @GetMapping(value="/commentDeleteOk")
	   public String commentDelete () {
		   return "redirect:/";
	   }
	   
	   //댓글 삭제(POST)
	   @ResponseBody
	   @PostMapping(value="/commentDeleteOk")
	   public String commentDelete (@RequestParam int comment_idx) {
		   log.info("Resinfo controller commentDelete 호출 :" + comment_idx );
		   commentService.delete(comment_idx);
		   return "삭제 성공";
	   }
	   
	   //댓글 수정(get)
	   @RequestMapping(value="/commentUpdateOk")
	   public String commentUpdateOk() {
	   return "redirect:/";
	   }
	   
	   //댓글 수정(post)
	   @PostMapping(value="/commentUpdateOk")
	   public String commentUpdateOk (@ModelAttribute CommentVO commentVO) {
		   log.info("Resinfo controller commentUpdateOk 호출 :"+ commentVO);
		   commentService.update(commentVO);
		   return "redirect:/resinfo?resinfo_idx="+commentVO.getResinfo_idx();
	   }
	   
	   //댓글 좋아요 (GET)
	   @GetMapping
	   public String like() {
		   return "redirect:/";
	   }
		   
	   //댓글 좋아요 (POST)
	   @ResponseBody
	   @PostMapping(value="/likeOk")
	   public String like(@RequestParam int comment_idx,  Model model, HttpSession session) {
		   UserVO user = (UserVO) session.getAttribute("userinfo");
		   int user_idx = 0;
		   if(user != null) { 
		   user_idx = user.getUser_idx();
		   }
		   HashMap<String, Integer> map =new HashMap<>();
		   map.put("user_idx", user_idx);
		   map.put("comment_idx", comment_idx);
		   int likeCheck = 0;
		   likeCheck =likeService.checkLike(map);
		   if(likeCheck == 0) {
			   likeService.plusLike(map);
			   return "좋아요 성공!!";
		   }else {
			   likeService.deleteLike(map);
			   return "좋아요 취소!!";
		   }
	   }
	   
}
