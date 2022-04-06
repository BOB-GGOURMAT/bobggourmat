package com.bobggourmat.vo;

import lombok.Data;

@Data
public class ResinfoVO {
   private int resinfo_idx;
   private String resinfo_name;
   private String resinfo_address;
   private String resinfo_tel;
   private String resinfo_review;
   private int location_idx;
   private String location_name;
   private int category_idx;
   private String category_name;
   private String resinfo_mainphoto;
   private String resinfo_subphoto1;
   private String resinfo_subphoto2;
   private String resinfo_map;
   private double resinfo_star;
}
