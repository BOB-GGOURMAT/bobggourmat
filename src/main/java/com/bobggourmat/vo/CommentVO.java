package com.bobggourmat.vo;

import java.util.Date;
import lombok.Data;

@Data
public class CommentVO {
	private int 	comment_idx;
	private int 	user_idx;
	private int 	resinfo_idx;
	private Date 	comment_time;
	private String  comment_content;
	private int 	comment_star;

}
