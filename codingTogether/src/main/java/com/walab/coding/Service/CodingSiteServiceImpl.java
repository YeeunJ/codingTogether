package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.CodingSiteDTO;
import com.walab.coding.Repository.CodingSiteDAO;

@Service("CodingSiteService")
public class CodingSiteServiceImpl implements CodingSiteService {
	@Autowired
	CodingSiteDAO codingDAO;

	@Override
	public int insertCodingSite(CodingSiteDTO dto) {
		// TODO Auto-generated method stub
		return codingDAO.insertCodingSite(dto);
	}

	@Override
	public int deleteCodingSite(int id) {
		// TODO Auto-generated method stub
		return codingDAO.deleteCodingSite(id);
	}

	@Override
	public int updateCodingSite(CodingSiteDTO dto) {
		// TODO Auto-generated method stub
		return codingDAO.updateCodingSite(dto);
	}

	@Override
	public List<CodingSiteDTO> read() {
		// TODO Auto-generated method stub
		List<CodingSiteDTO> result = codingDAO.readCodingSite();

		return result;
	}

}
