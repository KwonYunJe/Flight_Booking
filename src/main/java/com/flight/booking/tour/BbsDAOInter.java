package com.flight.booking.tour;

import java.util.List;

public interface BbsDAOInter {

	void bbsDelete(int delKey);

	void bbsInsert(BbsVO vo);

	BbsVO bbsOne(int oneKey);

	List<BbsVO> bbsAll();

	List<BbsVO> paging(Criteria cri);

	int getTotal();
	
	public List<BbsVO> searchAllArea(String[] searchArray);
}