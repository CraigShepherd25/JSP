package dao;

import java.util.List;

import model.porder;

public interface porderDao {
	//creat
	void add(porder p);
	
	//read
	List<porder> queryAll();
	List<porder> querySum(int start ,int end);
	porder queryId(int id);
	
	//update
	
	void update(porder p );
	//delete
	void delete(int id);
}