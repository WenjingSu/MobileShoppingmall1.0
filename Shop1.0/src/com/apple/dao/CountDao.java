package com.apple.dao;

import com.apple.beans.dto.Ordercount;

public interface CountDao {
	public int[] tablechart(String year);

	/**
	 * 
	 * ��̨��ҳ
	 */
	public Ordercount count_number();
}
