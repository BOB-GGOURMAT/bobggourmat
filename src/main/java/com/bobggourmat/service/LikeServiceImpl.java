package com.bobggourmat.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.bobggourmat.dao.LikeDAO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RequiredArgsConstructor
@Service("likeService")
public class LikeServiceImpl implements LikeService{

	private final LikeDAO likeDAO;
	
	@Override
	public void plusLike(HashMap<String,Integer> map) {
		log.info("LikeService plusLike 호출" +map);
          likeDAO.like_insert(map);			
	}

	@Override
	public void deleteLike(HashMap<String,Integer> map) {
		log.info("LikeService deleteLike 호출" +map);
	          likeDAO.like_delete(map);			
	}

	@Override
	public int countLike(int comment_idx) {
		log.info("LikeService countLike 호출" +comment_idx);
		return likeDAO.like_count(comment_idx);
	}

	@Override
	public int checkLike(HashMap<String,Integer> map) {
		log.info("LikeService checkLike 호출" +map);
		return likeDAO.like_check(map);
	}

}
