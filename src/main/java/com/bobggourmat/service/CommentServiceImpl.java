package com.bobggourmat.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bobggourmat.dao.CommentDAO;
import com.bobggourmat.vo.CommentVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service("commentService")
public class CommentServiceImpl implements CommentService {
	private final CommentDAO commentDAO;

	@Override
	public List<CommentVO> comment_list(int resinfo_idx) {
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
	public void delete(CommentVO commentVO) {
		log.info("CommentService delete호출 :" +commentVO);
		if (commentVO != null) {
			commentDAO.selectByIdx(commentVO.getComment_idx());
			commentDAO.comment_delete(commentVO.getComment_idx());
	}
	}
  


}
