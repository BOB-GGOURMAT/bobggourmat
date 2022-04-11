package com.bobggourmat.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bobggourmat.dao.CommentDAO;
import com.bobggourmat.vo.CommentVO;
import com.bobggourmat.vo.ResCommentVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("commentService")
public class CommentServiceImpl implements CommentService {
	private final CommentDAO commentDAO;

	@Override
	public List<ResCommentVO> comment_list(int resinfo_idx) {
		log.info("CommentService comment_list리턴 :" + resinfo_idx );
		return commentDAO.comment_list(resinfo_idx);
	}

	@Override
	public void insert(CommentVO commentVO) {
		log.info("CommentService insert호출 :" + commentVO );
		commentDAO.comment_insert(commentVO);
	}

	@Override
	public void update(CommentVO commentVO) {
		log.info("CommentService update호출 :" + commentVO );
		commentDAO.comment_update(commentVO);
	}

	@Override
	public void delete(int Comment_idx) {
		log.info("CommentService delete호출 :" +Comment_idx);
		if (Comment_idx != 0) {
			commentDAO.comment_delete(Comment_idx);
		}
	}

	@Override
	public int commentCount(int resinfo_idx) {
		log.info("CommentService commentCount 호출:" + resinfo_idx);
		return commentDAO.selectCount(resinfo_idx);
	}

	@Override
	public List<ResCommentVO> estimate_resinfo(int user_idx) {
		log.info("CommentService estimate_resinfo 호출:" + user_idx);
		return commentDAO.estimate_resinfo(user_idx);
	}

	@Override
	public CommentVO selectByIdx(int comment_idx) {
		log.info("CommentService selectByIdx 호출:" + comment_idx);
		return commentDAO.selectByIdx(comment_idx);
	}
  


}
