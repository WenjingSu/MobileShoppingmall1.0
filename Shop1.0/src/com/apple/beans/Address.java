package com.apple.beans;

public class Address {
private Integer add_id;
private Integer u_id;
private String address;
private String postcode;
private String consignee_name;
private String consignee_tel;
private Integer add_del;
private String other;

public String getOther() {
	return other;
}
public void setOther(String other) {
	this.other = other;
}
public Integer getAdd_id() {
	return add_id;
}
public void setAdd_id(Integer add_id) {
	this.add_id = add_id;
}
public Integer getU_id() {
	return u_id;
}
public void setU_id(Integer u_id) {
	this.u_id = u_id;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPostcode() {
	return postcode;
}
public void setPostcode(String postcode) {
	this.postcode = postcode;
}
public String getConsignee_name() {
	return consignee_name;
}
public void setConsignee_name(String consignee_name) {
	this.consignee_name = consignee_name;
}
public String getConsignee_tel() {
	return consignee_tel;
}
public void setConsignee_tel(String consignee_tel) {
	this.consignee_tel = consignee_tel;
}
public Integer getAdd_del() {
	return add_del;
}
public void setAdd_del(Integer add_del) {
	this.add_del = add_del;
}

public Address(Integer add_id, Integer u_id, String address, String postcode,
		String consignee_name, String consignee_tel, Integer add_del,
		String other) {
	super();
	this.add_id = add_id;
	this.u_id = u_id;
	this.address = address;
	this.postcode = postcode;
	this.consignee_name = consignee_name;
	this.consignee_tel = consignee_tel;
	this.add_del = add_del;
	this.other = other;
}

@Override
public String toString() {
	return "Address [add_id=" + add_id + ", u_id=" + u_id + ", address="
			+ address + ", postcode=" + postcode + ", consignee_name="
			+ consignee_name + ", consignee_tel=" + consignee_tel
			+ ", add_del=" + add_del + ", other=" + other + "]";
}
public Address(){}
}
