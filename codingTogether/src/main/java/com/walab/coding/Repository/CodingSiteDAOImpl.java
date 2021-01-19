package com.walab.coding.Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.CodingSiteDTO;

@Repository
public class CodingSiteDAOImpl implements CodingSiteDAO{

	@Autowired
	SqlSession sqlSession;
	public int insertCodingSite(CodingSiteDTO dto) {
		int result=sqlSession.insert("CodingSite.insertCodingSite",dto);
		return result;
	}
	public int updateCodingSite(CodingSiteDTO dto) {
		int result=sqlSession.update("CodingSite.updateCodingSite", dto);
		return result;
	}
	public int deleteCodingSite(int seq) {
		int result=sqlSession.delete("CodingSite.deleteCodingSite",seq);
		return result;
	}
	public List<CodingSiteDTO> getCodingSiteList() {
		List<CodingSiteDTO> result = sqlSession.selectList("CodingSite.getCodingSiteList");
		return result;
	}
}


