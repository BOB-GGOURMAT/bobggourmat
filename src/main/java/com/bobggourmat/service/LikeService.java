package com.bobggourmat.service;

import java.util.HashMap;


public interface LikeService {
     //댓글에 좋아요 추가
	 public void plusLike (HashMap<String,Integer> map);
	 //댓글에 좋아요 취소
	 public void deleteLike (HashMap<String,Integer> map);
	 //좋아요 개수 보여주기
	 public int countLike (int comment_idx);
	 //좋아요 확인 여부
	 public int checkLike (HashMap<String,Integer> map);
}