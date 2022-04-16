package com.bobggourmat.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ResCommentVO {
  private int resinfo_idx;
  private int user_idx;
  private int comment_idx;
  private String resinfo_name;
  private String location_name;
  private String category_naeme;
  private String user_nickname;
  private String comment_content;
  private Date comment_time;
  private double comment_star;
  private String user_icon;
  private String resinfo_mainphoto;
  private int likeCount;
}
