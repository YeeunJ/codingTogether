package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.CodingSiteDTO;
import com.walab.coding.Repository.CodingSiteDAOImpl;

@Service

public class CodingSiteServiceImpl implements CodingSiteService {
	
	@Autowired
	CodingSiteDAOImpl codingSiteDAO;

	@Override
	public int insertCodingSite(CodingSiteDTO dto) {
		// TODO Auto-generated method stub
		return codingSiteDAO.insertCodingSite(dto);
	}

	@Override
	public int deleteCodingSite(int id) {
		// TODO Auto-generated method stub
		return codingSiteDAO.deleteCodingSite(id);
	}

	@Override
	public int updateCodingSite(CodingSiteDTO dto) {
		// TODO Auto-generated method stub
		return codingSiteDAO.updateCodingSite(dto);
	}

	@Override
	public List<CodingSiteDTO> getCodingSiteList() {
		// TODO Auto-generated method stub
		return codingSiteDAO.getCodingSiteList();
	}

}
