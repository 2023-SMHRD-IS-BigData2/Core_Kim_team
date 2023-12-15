package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class Feed {

	
	private int f_index;  // 인덱스
	@NonNull private String f_id;  // 작성자
	@NonNull private String f_content;   // 내용
    private Date f_date;  // 업로드 시각
    private String f_file; // 파일 주소
    private int f_likecnt; // 좋아요 수
    

    
    

}

