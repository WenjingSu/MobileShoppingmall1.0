package com.apple.dao;

import java.util.List;

import com.apple.beans.Review;
import com.apple.beans.dto.Review_User;

public interface ReviewDao {
	public boolean reviewAdd(Review review);//添加评论
	
	public boolean reviewDel(Review review);//删除评论
	
	public List<Review_User> reviewFindAll(int gt_id);//查询评论
}
