package com.apple.beans.dto;

public class Ordercount {
private int orderamount;
private int order_notpay;
private int order_notput;
private int order_notreceive;
private int order_success;
private int user_amount;
public Ordercount(int orderamount, int order_notpay, int order_notput,
		int order_notreceive, int order_success, int user_amount) {
	super();
	this.orderamount = orderamount;
	this.order_notpay = order_notpay;
	this.order_notput = order_notput;
	this.order_notreceive = order_notreceive;
	this.order_success = order_success;
	this.user_amount = user_amount;
}
public Ordercount() {
	super();
}
public int getOrderamount() {
	return orderamount;
}
public void setOrderamount(int orderamount) {
	this.orderamount = orderamount;
}
public int getOrder_notpay() {
	return order_notpay;
}
public void setOrder_notpay(int order_notpay) {
	this.order_notpay = order_notpay;
}
public int getOrder_notput() {
	return order_notput;
}
public void setOrder_notput(int order_notput) {
	this.order_notput = order_notput;
}
public int getOrder_notreceive() {
	return order_notreceive;
}
public void setOrder_notreceive(int order_notreceive) {
	this.order_notreceive = order_notreceive;
}
public int getOrder_success() {
	return order_success;
}
public void setOrder_success(int order_success) {
	this.order_success = order_success;
}
public int getUser_amount() {
	return user_amount;
}
public void setUser_amount(int user_amount) {
	this.user_amount = user_amount;
}
@Override
public String toString() {
	return "Ordercount [orderamount=" + orderamount + ", order_notpay="
			+ order_notpay + ", order_notput=" + order_notput
			+ ", order_notreceive=" + order_notreceive + ", order_success="
			+ order_success + ", user_amount=" + user_amount + "]";
}




}
