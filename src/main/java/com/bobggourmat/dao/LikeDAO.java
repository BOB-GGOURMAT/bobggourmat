package com.bobggourmat.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface LikeDAO {
  //<!-- 1. insert_댓글 좋아요하기 -->
	void like_insert (HashMap<String,Integer> map);
  //<!--2. delete_좋아요 취소 -->
	void like_delete (HashMap<String,Integer> map);
  //<!--3. select_ 좋아요 여부 확인 -->
	int like_check (HashMap<String,Integer> map);
  //<!-- 4. select_ 댓글 좋아요 개수 -->	
	int like_count (int comment_idx);
	
}
