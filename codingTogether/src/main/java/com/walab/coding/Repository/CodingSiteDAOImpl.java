package com.walab.coding.Repository;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.CodingSiteDTO;

@Repository("CodingSiteDAO")
public class CodingSiteDAOImpl implements CodingSiteDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<CodingSiteDTO> readCodingSite() {
		List<CodingSiteDTO> codingSitelist = new ArrayList<CodingSiteDTO>();
		codingSitelist = sqlSession.selectList("codingSite.readCodingsite");
		
		return codingSitelist;
	}
	
}

