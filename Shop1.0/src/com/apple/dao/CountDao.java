package com.apple.dao;

import com.apple.beans.dto.Ordercount;

public interface CountDao {
	public int[] tablechart(String year);

	/**
	 * 
	 * ºóÌ¨Ê×Ò³
	 */
	public Ordercount count_number();
}
