package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@ToString
@NonNull
@Getter
public class Match {
	 // 매칭, 용병 피드 추가시 모든 정보 입력!
	   private int f_index;
	   @NonNull private int mm; // 1 = 매칭 / 2 = 용병 / 3 = 매칭 성사 / 4 = 용병 성사
	   @NonNull private String m_date; // 경기날짜
	   @NonNull private String user_index; // 작성자 고유번호
	   @NonNull private String start_hour;
	   @NonNull private String last_hour;
	   @NonNull private String people_num;
	   @NonNull private String f_level;
	   private String writing;
	   private String place;
	   
	   public void setWriting(String writing) {
	      this.writing = writing;
	   }
	   public void setPlace(String place) {
		   this.place = place;
	   }
	   
	   public void update() {
	      switch (this.mm) {
	      case 1:
	         this.mm = 3;
	         break;
	      case 2:
	         this.mm = 4;
	         break;
	      case 3:
	         this.mm = 1;
	         break;
	      case 4:
	         this.mm = 2;
	         break;

	      default:
	         System.out.println("mm에러");
	         break;
	      }
	   }
	  
	   

	
}
