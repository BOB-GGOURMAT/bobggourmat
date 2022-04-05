package com.bobggourmat.vo;

import lombok.Data;

@Data
public class ResCommentVO {
  private String resinfo_name;
  private String location_name;
  private String user_nickname;
  private String comment_content;
  private String comment_time;
  private int comment_star;
}
