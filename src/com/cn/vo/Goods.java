package com.cn.vo;

public class Goods {
	int goods_id;		//��Ʒ���
 String goods_name;		//��Ʒ����
 float goods_price;		//��Ʒ�۸�
 String goods_pic;		//��ƷͼƬ
 String goods_desc;		//��Ʒ����
 int type_id;			//��Ʒ���
public String getGoods_name() {
	return goods_name;
}
public void setGoods_name(String goods_name) {
	this.goods_name = goods_name;
}
public int getType_id() {
	return type_id;
}
public void setType_id(int type_id) {
	this.type_id = type_id;
}
public double getGoods_price() {
	return goods_price;
}
public String getGoods_desc() {
	return goods_desc;
}
public void setGoods_desc(String goods_desc) {
	this.goods_desc = goods_desc;
}
public void setGoods_price(float goods_price) {
	this.goods_price = goods_price;
}
public String getGoods_pic() {
	return goods_pic;
}
public void setGoods_pic(String goods_pic) {
	this.goods_pic = goods_pic;
}
public int getGoods_id() {
	return goods_id;
}
public void setGoods_id(int goods_id) {
	this.goods_id = goods_id;
}
}
