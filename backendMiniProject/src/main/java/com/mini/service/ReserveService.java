package com.mini.service;

import java.util.List;

import com.mini.vo.CakeVO;
import com.mini.vo.ReserveVO;

public interface ReserveService {
	
	/* 케이크 상세 정보 */
	public CakeVO cakeDetailGet(int cakeId);
	
	/* 케이크 예약 */
	public int reserveCake(ReserveVO reserve) throws Exception;
	
	/* 케이크 예약 목록 */
	public List<ReserveVO> reserveCakeGet(String memberId);
	
	/* 케이크 예약 취소 */
	public int reserveCancle(int reserveId);
	
}
