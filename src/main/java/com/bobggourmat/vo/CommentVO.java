package com.bobggourmat.vo;

import java.util.Date;
import lombok.Data;

@Data
public class CommentVO {
	private int 	comment_idx;
	private int 	comment_user;
	private int 	comment_res_info;
	private Date 	comment_time;
	private String  comment_content;
	private int 	comment_star;

}
