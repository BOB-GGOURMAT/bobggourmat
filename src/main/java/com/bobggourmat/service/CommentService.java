package com.bobggourmat.service;


import java.util.List;

import com.bobggourmat.vo.CommentVO;


public interface CommentService {
	//1. 댓글 보여주기 
	List<CommentVO> comment_list (int resinfo_idx);
	// 2. 저장하기
	void insert(CommentVO commentVO);
	// 3. 수정하기
	void update(CommentVO commentVO);
	// 4. 삭제하기
	void delete(CommentVO commentVO);	
}
