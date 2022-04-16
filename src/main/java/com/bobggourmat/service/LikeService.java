package com.bobggourmat.service;

import com.bobggourmat.vo.LikeVO;

public interface LikeService {
     //댓글에 좋아요 추가
	 public void plusLike (LikeVO likeVO);
	 //댓글에 좋아요 취소
	 public void deleteLike (LikeVO likeVO);
	 //좋아요 개수 보여주기
	 public int countLike (int comment_idx);
	 //좋아요 확인 여부
	 public int checkLike (LikeVO likeVO);
}