package dao;

import model.member;

public interface memberDao {
	//create
	 void add(member m);//註冊
	
	
	//read
	member queryMember(String username , String password);//檢查帳號密碼
	boolean queryUsername(String name);//帳號是否重複
	//update
	
	
	
	//delete

}