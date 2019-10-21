package com.cn.Daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cn.vo.Goods;
import com.cn.vo.Indent;
import com.cn.vo.Order_detail;
import com.cn.vo.Type;
import com.cn.vo.User;

import JDBC.JDBCUtil4pre;

public class UserDaos {
	JDBCUtil4pre j4=null;
	public UserDaos(){
		j4=new JDBCUtil4pre();
	}
	
	public int  Register(User u) {//用户注册
		String sql="insert into user(username,password,email,realname,sex,phone,hobbies,introduce) values(?,?,?,?,?,?,?,?)";
		Object params[]= {u.getUsername(),u.getPassword(),u.getEamil(),u.getRealname(),u.getSex(),u.getPhone(),u.getHobbies(),u.getNote()};
	return j4.updateData(sql, params);
	}
	
	public List<User> QueryUser(){//用户查询
		String sql="select * from user";
		Object params[]= {};
		List<User> userlist=new ArrayList<User>();
		ResultSet rs=j4.QueryData(sql, params);
		try {
			while(rs.next()) {
				User u=new User();
				u.setEamil(rs.getString("email"));
				u.setHobbies(rs.getString("hobbies"));
				u.setNote(rs.getString("introduce"));
				u.setPassword(rs.getString("password"));
				u.setPhone(rs.getString("phone"));
				u.setRealname(rs.getString("realname"));
				u.setSex(rs.getString("sex"));
				u.setType(rs.getString("type"));
				u.setUser_id(rs.getInt("user_id"));
				u.setUsername(rs.getString("username"));
				userlist.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userlist;
	}
	
	public User Login(String username,String password,String type) {//用户登录
		String sql="select * from user where username=? and password=? and type=?";
		Object params[]= {username,password,type};
		ResultSet rs=j4.QueryData(sql, params);
		User u=null;
		try {
			if(rs.next()) {
				u=new User();
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setType(rs.getString("type"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	
	public int DeleteUser(int user_id) {//删除用户
		String sql="delete from user where user_id=?";
		Object params[]= {user_id};
		return j4.updateData(sql, params);
	}
	
	public int UpdateUser(User u) {//修改用户
		String sql="update user set username=?,password=?,email=?,realname=?,sex=?,phone=?,hobbies=?,introduce=?,type=? where user_id=?";
		Object params[]= {u.getUsername(),u.getPassword(),u.getEamil(),u.getRealname(),u.getSex(),u.getPhone(),u.getHobbies(),u.getNote(),u.getType(),u.getUser_id()};
		return j4.updateData(sql, params);
	}
	
	public boolean CheckUser(String username) {//查询用户是否重复
		String sql="select * from user where username=?";
		Object params[]= {username};
		ResultSet rs=j4.QueryData(sql, params);
		boolean bl=false;
		try {
			if(rs.next()) {
				bl=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bl;
	}
	public List<Type> QueryAllType() {//商品类型查询
		String sql="select * from type";
		Object params[]= {};
		List<Type> list=new ArrayList<Type>();
		ResultSet rs=j4.QueryData(sql, params);
		try {
			while(rs.next()) {
				Type type=new Type();
				type.setId(rs.getInt("id"));
				type.setType_name(rs.getString("type_name"));
				type.setType_desc(rs.getString("type_desc"));
				list.add(type);
			}
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return list;
	}
	public int AddType(Type type) {//添加商品类别
		String sql="insert into type(type_name,type_desc) values(?,?)";
		Object params[]= {type.getType_name(),type.getType_desc()};
		return j4.updateData(sql, params);
	}
	public int UpdateType(Type type) {//修改商品类别
		String sql="update type set type_name=?,type_desc=? where id=?";
		Object params[]= {type.getType_name(),type.getType_desc(),type.getId()};
		return j4.updateData(sql, params);
	}
	public int DeleteType(int id) {//删除商品类别
		String sql="delete from type where id=?";
		Object params[]= {id};
		return j4.updateData(sql, params);
	}
	public List<Indent> QueryOrder(){//订单查询
		String sql="select * from indent";
		Object params[]= {};
		List<Indent> indentlist=new ArrayList<Indent>();
		ResultSet rs=j4.QueryData(sql, params);
		try {
			while(rs.next()) {
				Indent indent=new Indent();
				indent.setId(rs.getInt("id"));
				indent.setOrder_id(rs.getString("order_id"));
				indent.setAddress(rs.getString("address"));
				indent.setDealDate(rs.getString("dealDate"));
				indent.setStatus(rs.getString("status"));
				indent.setOrderSum(rs.getFloat("orderSum"));
				indent.setUsername(rs.getString("username"));
				indentlist.add(indent);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return indentlist;
	}
	public int DeleteIndent(int id) {//删除订单
		String sql="delete from indent where id=?";
		Object params[]= {id};
		return j4.updateData(sql, params);
	}
	public int UpdateIndent(Indent indent) {//修改订单
		String sql="update indent set order_id=?,address=?,username=?,orderSum=?,dealDate=?,status=? where id=?";
		Object params[]= {indent.getOrder_id(),indent.getAddress(),indent.getUsername(),indent.getOrderSum(),indent.getDealDate(),indent.getStatus(),indent.getId()};
	return j4.updateData(sql, params);
	}
	public int AddIndent(Indent indent) {//添加订单
		String sql="insert into indent(order_id,address,username,orderSum,dealDate,status) values(?,?,?,?,?,?)";
		Object params[]= {indent.getOrder_id(),indent.getAddress(),indent.getUsername(),indent.getOrderSum(),indent.getDealDate(),indent.getStatus()};
		return j4.updateData(sql, params);
	}

	public List<Goods> QueryAllGoods() {//商品查询
		String sql="select * from goods";
		Object params[]= {};
		List<Goods> list=new ArrayList<Goods>();
		ResultSet rs=j4.QueryData(sql, params);
		try {
			while(rs.next()) {
				Goods goods=new Goods();
				goods.setGoods_id(rs.getInt("goods_id"));
				goods.setGoods_name(rs.getString("goods_name"));
				goods.setType_id(rs.getInt("type_id"));
				goods.setGoods_price(rs.getFloat("goods_price"));
				goods.setGoods_desc(rs.getString("goods_desc"));
				goods.setGoods_pic(rs.getString("goods_pic"));
				list.add(goods);
			}
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return list;
	}

	public int AddGoods(Goods goods) {
		String sql="insert into goods(goods_name,type_id,goods_price,goods_desc,goods_pic) values(?,?,?,?,?)";
		Object params[]= {goods.getGoods_name(),goods.getType_id(),goods.getGoods_price(),goods.getGoods_desc(),goods.getGoods_pic()};
		return j4.updateData(sql, params);

	}

	public int DeleteGoods(int id) {
		String sql="delete from goods where goods_id=?";
		Object params[]= {id};
		return j4.updateData(sql, params);
	}

	public int UpdateGoods(Goods goods) {
		String sql="update goods set goods_name=?,type_id=?,goods_price=?,goods_desc=?,goods_pic=? where goods_id=?";
		Object params[]= {goods.getGoods_name(),goods.getType_id(),goods.getGoods_price(),goods.getGoods_desc(),goods.getGoods_pic(),goods.getGoods_id()};
		return j4.updateData(sql, params);
	}
	public int  AddCar(Order_detail o) {//购物车
		String sql="insert into order_detail(order_id,goods_name,goods_price) values(?,?,?)";
		Object params[]= {o.getOrder_id(),o.getGoods_name(),o.getGoods_price()};
		return j4.updateData(sql, params);
	}

	public List<Order_detail> QueryOrder_() {
		String sql="select * from order_detail";
		Object params[]= {};
		List<Order_detail> list=new ArrayList<Order_detail>();
		ResultSet rs=j4.QueryData(sql, params);
		try {
			while(rs.next()) {
				Order_detail Order_detail=new Order_detail();
				Order_detail.setOrder_id(rs.getString("order_id"));
				Order_detail.setGoods_name(rs.getString("goods_name"));
				Order_detail.setGoods_price(rs.getString("goods_price"));
				Order_detail.setQty(rs.getInt("qty"));
				
				list.add(Order_detail);
			}
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return list;
	}


}
