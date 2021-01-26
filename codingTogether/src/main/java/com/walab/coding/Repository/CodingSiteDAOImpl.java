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


	public int insertCodingSite(CodingSiteDTO dto) {
		int result = sqlSession.insert("CodingSite.insertCodingSite", dto);
		return result;
	}

	public int updateCodingSite(CodingSiteDTO dto) {
		int result = sqlSession.update("CodingSite.updateCodingSite", dto);
		return result;
	}

	public int deleteCodingSite(int seq) {
		int result = sqlSession.delete("CodingSite.deleteCodingSite", seq);
		return result;
	}
	@Override
	public List<CodingSiteDTO> readCodingSite() {
		List<CodingSiteDTO> codingSitelist = new ArrayList<CodingSiteDTO>();
		codingSitelist = sqlSession.selectList("CodingSite.readCodingsite");

		return codingSitelist;
	}

}
