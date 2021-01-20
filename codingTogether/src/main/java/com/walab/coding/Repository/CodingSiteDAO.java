package com.walab.coding.Repository;

import java.util.ArrayList;
import java.util.List;

import com.walab.coding.Model.CodingSiteDTO;

public interface CodingSiteDAO {
	
	public int insertCodingSite(CodingSiteDTO dto);
	public int updateCodingSite(CodingSiteDTO dto);
	public int deleteCodingSite(int seq);
	public List<CodingSiteDTO> readCodingSite();
	
}
