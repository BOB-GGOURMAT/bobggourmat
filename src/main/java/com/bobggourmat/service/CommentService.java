package com.bobggourmat.service;


import java.util.List;

import org.springframework.ui.Model;

import com.bobggourmat.vo.CommentVO;
import com.bobggourmat.vo.ResCommentVO;


public interface CommentService {
	//1. 댓글 목록 보여주기 
	List<ResCommentVO> comment_list (int resinfo_idx);
	// 2. 저장하기
	void insert(CommentVO commentVO);
	// 3. 수정하기
	void update(CommentVO commentVO);
	// 4. 삭제하기
	void delete(CommentVO commentVO);	
	// 5. 해당 식당 댓글 개수 가져오기
	int commentCount (int resinfo_idx);
	// 6.평가한 식당 리스트 가져오기
	List<ResCommentVO> estimate_resinfo(int user_idx);
}
