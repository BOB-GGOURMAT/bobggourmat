package com.bobggourmat.dao;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.bobggourmat.vo.CommentVO;
import com.bobggourmat.vo.ResCommentVO;

@Repository
@Mapper
public interface CommentDAO {
	
	// 0.댓글 한개 가져오기.
	CommentVO selectByIdx(int comment_idx);
	// 1. 댓글 저장 
	void comment_insert(CommentVO commentVO);
	// 2. 댓글 수정
	void comment_update(CommentVO commentVO);
	// 3. 댓글 삭제 
	void comment_delete(int comment_idx);
	//4. 댓글 리스트
	List<ResCommentVO> comment_list(int resinfo_idx);
	//5. 개수얻기 
    int selectCount(int resinfo_idx);
	//<!-- 6. 평가한 맛집 가져오기 -->
	List<ResCommentVO> estimate_resinfo(int user_idx);
}
