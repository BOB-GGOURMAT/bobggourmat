package com.bobggourmat.controller;



import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bobggourmat.service.CommentService;
import com.bobggourmat.vo.CommentVO;
import com.bobggourmat.vo.ResinfoVO;
import com.bobggourmat.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequiredArgsConstructor
public class CommentController {

	private final CommentService commentService;
	
	 //댓글 입력 
	 @RequestMapping(value="/comment")
     public String comment(@RequestParam int resinfo_idx , HttpSession session,Model model) {	
		 log.info("Comment controller comment 호출:" +resinfo_idx);
		 UserVO user = (UserVO)session.getAttribute("userinfo");
		 if(user == null) {
			 model.addAttribute("msg","로그인 후 이용 가능합니다.");
			 return"redirect:/resinfo?resinfo_idx="+resinfo_idx;
		 }
		 model.addAttribute("resinfo",resinfo_idx);
		 model.addAttribute("userinfo",user);
		 return "comment";
	 }
	
	 //댓글 생성(get)
	   @GetMapping(value="/commentOk")
	   public String commentInsert() {
	   return "redirect:/";
	   }
	   
	   //댓글 생성(post)
	   @PostMapping(value= "/commentOk")
	   public String commentInsert(@ModelAttribute CommentVO commentVO) {
		   log.info("Resinfo controller commentInsert 호출 :" + commentVO );
		   commentService.insert(commentVO);
		   return"redirect:/resinfo?resinfo_idx="+commentVO.getResinfo_idx();
	   }
	   
	   //댓글 삭제
	   @RequestMapping(value="/deleteOk")
	   public String commentDelete (@RequestParam int comment_idx, @RequestParam int resinfo_idx) {
		   log.info("Resinfo controller commentDelete 호출 :" + comment_idx );
		   commentService.delete(comment_idx);
		   return "redirect:/resinfo?resinfo_idx="+resinfo_idx;
	   }


	   @RequestMapping(value = "/commentUpdate")
	   public String commentUpdate(@ModelAttribute ResinfoVO resinfoVO,@RequestParam int comment_idx,Model model) {
		   log.info("Resinfo controller commentUpdate 호출 :"+ resinfoVO +"," +comment_idx);
		   CommentVO commentselect = commentService.selectByIdx(comment_idx);
		   model.addAttribute("resinfo",resinfoVO);
		   model.addAttribute("commentselect",commentselect);
		   log.info("Resinfo controller commentUpdate 리턴 :" +model);
		   return "redirect:/comment";
	   }
	   
	   //댓글 수정(get)
	   @GetMapping(value="/updateOk")
	   public String commentUpdateOk() {
	   return "redirect:/";
	   }
	   
	   //댓글 수정(post)
	   @PostMapping(value="/updateOk")
	   public String commentUpdateOk (@ModelAttribute CommentVO commentVO) {
		   log.info("Resinfo controller commentUpdateOk 호출 :"+ commentVO);
		   commentService.update(commentVO);
		   return "redirect:/resinfo?resinfo_idx="+commentVO.getResinfo_idx();
	   }
	   
	   
	   
}
