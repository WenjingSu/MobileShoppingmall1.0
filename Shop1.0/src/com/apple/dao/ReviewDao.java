package com.apple.dao;

import java.util.List;

import com.apple.beans.Review;
import com.apple.beans.dto.Review_User;

public interface ReviewDao {
	public boolean reviewAdd(Review review);//�������
	
	public boolean reviewDel(Review review);//ɾ������
	
	public List<Review_User> reviewFindAll(int gt_id);//��ѯ����
}
