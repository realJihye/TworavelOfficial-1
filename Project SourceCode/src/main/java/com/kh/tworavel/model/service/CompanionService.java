package com.kh.tworavel.model.service;

import java.util.List;

import com.kh.tworavel.model.domain.Board;
import com.kh.tworavel.model.domain.Companion;
import com.kh.tworavel.model.domain.CompanionAdd;
import com.kh.tworavel.model.domain.CompanionInfo;
import com.kh.tworavel.model.domain.CompanionMap;
import com.kh.tworavel.model.domain.CompanionTag;

public interface CompanionService {
	void companion(Companion c, CompanionMap cm, CompanionTag ct);
//	void companion1(Companion c);

	
	int listCountC ();
	List<Companion> selectListC();
	List<Companion> selectListCp(int startPage, int limit);
	List<Companion> selectSearchC(String keyword);
	
	Companion selectOneC(int c_id);
	List<Companion> selectTwoC(int c_id);
	List<Companion> selectThrC(int c_id);
	
	void updateOneC(Companion c);
	void updateTwoC(CompanionMap cm);
	void updateThrC(CompanionTag ct);
	
	void deleteC(String c_id);
	
}
