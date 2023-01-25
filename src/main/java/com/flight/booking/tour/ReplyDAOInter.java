package com.flight.booking.tour;

import java.util.List;

public interface ReplyDAOInter {

	void create(ReplyVO vo);

	List<ReplyVO> replyList(int oneKey);

	void bbsReDel(int bbsnum);

}