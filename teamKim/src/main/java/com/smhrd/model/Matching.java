package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter
@RequiredArgsConstructor
public class Matching {
	
	private int mc_index;  // 매칭 인덱스
	@NonNull private String writer;  // 매칭글 작성자
	@NonNull private String challenger;  // 매칭 신청자
	@NonNull private int m_index;      // 매칭 고유번호

	private char matching;    // 성사 여부 OX


	
}
