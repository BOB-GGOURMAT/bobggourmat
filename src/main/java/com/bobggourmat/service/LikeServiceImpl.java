package com.bobggourmat.service;

import org.springframework.stereotype.Service;

import com.bobggourmat.dao.LikeDAO;
import com.bobggourmat.vo.LikeVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RequiredArgsConstructor
@Service("likeService")
public class LikeServiceImpl implements LikeService{

	private final LikeDAO likeDAO;
	
	@Override
	public void plusLike(LikeVO likeVO) {
		log.info("LikeService plusLike 호출" +likeVO);
		if(likeDAO.like_check(likeVO) == 0);{
          likeDAO.like_insert(likeVO);			
		}
	}

	@Override
	public void deleteLike(LikeVO likeVO) {
		log.info("LikeService deleteLike 호출" +likeVO);
		if(likeDAO.like_check(likeVO) == 1);{
	          likeDAO.like_delete(likeVO);			
			}
	}

	@Override
	public int countLike(int comment_idx) {
		log.info("LikeService countLike 호출" +comment_idx);
		return likeDAO.like_count(comment_idx);
	}

	@Override
	public int checkLike(LikeVO likeVO) {
		log.info("LikeService checkLike 호출" +likeVO);
		return likeDAO.like_check(likeVO);
	}

}
