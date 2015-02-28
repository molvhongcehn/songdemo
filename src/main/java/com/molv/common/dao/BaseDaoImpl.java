package com.molv.common.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class BaseDaoImpl implements BaseDao{

	@Autowired
	JdbcTemplate jdbcTemplate;
	@Override
	public <T extends Serializable> void saveOrUpdateObject(String sql, T entry) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T extends Serializable> List<T> getObjList(String sql,
			Class<T> className, Object[] objs) {
	List<T> list= (List<T>) jdbcTemplate.queryForList(sql);
		return list;
	}

	@Override
	public <T extends Serializable> T getObject(String sql, Class<T> clazz,
			Object[] objs) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, ?> find(String sql, Object[] objs) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void batchOperate(String sql, List<?> objLs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int isExist(String sql, Object[] obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editObject(String sql, Object[] obj) {
		// TODO Auto-generated method stub
		return 0;
	}

}
