package com.apple.beans;

import java.util.List;

//��Ʒ����
public class GoodsType {
	private Integer gt_id;
	private String gt_typename;
	private List<GoodsType> father;
	private List<GoodsType> children;
	private String gt_mark;
	private Integer gt_del;
	

	public Integer getGt_id() {
		return gt_id;
	}

	public void setGt_id(Integer gt_id) {
		this.gt_id = gt_id;
	}

	public String getGt_typename() {
		return gt_typename;
	}

	public void setGt_typename(String gt_typename) {
		this.gt_typename = gt_typename;
	}

	public List<GoodsType> getFather() {
		return father;
	}

	public void setFather(List<GoodsType> father) {
		this.father = father;
	}

	public List<GoodsType> getChildren() {
		return children;
	}

	public void setChildren(List<GoodsType> children) {
		this.children = children;
	}

	public String getGt_mark() {
		return gt_mark;
	}

	public void setGt_mark(String gt_mark) {
		this.gt_mark = gt_mark;
	}

	public Integer getGt_del() {
		return gt_del;
	}

	public void setGt_del(Integer gt_del) {
		this.gt_del = gt_del;
	}

	public GoodsType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GoodsType(Integer gt_id, String gt_typename, List<GoodsType> father,
			List<GoodsType> children, String gt_mark, Integer gt_del) {
		super();
		this.gt_id = gt_id;
		this.gt_typename = gt_typename;
		this.father = father;
		this.children = children;
		this.gt_mark = gt_mark;
		this.gt_del = gt_del;
	}

	@Override
	public String toString() {
		return "GoodsType [gt_id=" + gt_id + ", gt_typename=" + gt_typename
				+ ", father=" + father + ", children=" + children
				+ ", gt_mark=" + gt_mark + ", gt_del=" + gt_del + "]";
	}

}
