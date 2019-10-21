package com.cn.service;

import java.util.List;

import com.cn.Daos.UserDaos;
import com.cn.vo.Goods;
import com.cn.vo.Indent;
import com.cn.vo.Order_detail;
import com.cn.vo.Type;
import com.cn.vo.User;

public class UserService {
	UserDaos uds=null;
	
	public UserService() {
		uds=new UserDaos();
	}
	public int register(User u) {
		return uds.Register(u);
	}
	public User Login(String username,String password,String type) {
		return uds.Login(username, password, type);
	}
	public boolean CheckUser(String username) {
		return uds.CheckUser(username);
	}
	public List<Type> QueryAllType(){
		return uds.QueryAllType();
	}
	public int AddType(Type type) {
		return uds.AddType(type);
	}
	public int UpdateType(Type type) {
		return uds.UpdateType(type);
	}
	public int DeleteType(int id) {
		return uds.DeleteType(id);
	}
	public List<Indent> QueryOrder(){
		return uds.QueryOrder();
	}
	public int DeleteIndent(int id) {
		return uds.DeleteIndent(id);
	}
	public int UpdateIndent(Indent indent) {
		return uds.UpdateIndent(indent);
	}
	public int AddIndent(Indent indent) {
		return uds.AddIndent(indent);
	}
	public List<User> QueryUser(){
		return uds.QueryUser();
	}
	public int DeleteUser(int user_id) {
		return uds.DeleteUser(user_id);
	}
	public int UpdateUser(User u) {
		return uds.UpdateUser(u);
	}
	public List<Goods> QueryAllGoods() {
		return uds.QueryAllGoods();
	}
	public int AddGoods(Goods goods) {
		return uds.AddGoods(goods);
	}
	public int DeleteGoods(int id) {
		return uds.DeleteGoods(id);
	}
	public int UpdateGoods(Goods goods) {
		return uds.UpdateGoods(goods);
	}
	public int AddCar(Order_detail o) {
		return uds.AddCar(o);
	}
	public List<Order_detail> QueryOrder_() {
		return uds.QueryOrder_();
	}

}
