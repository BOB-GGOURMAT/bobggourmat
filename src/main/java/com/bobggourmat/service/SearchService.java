package com.bobggourmat.service;

import java.util.List;
import java.util.Map;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bobggourmat.dao.ResinfoDAO;
import com.bobggourmat.vo.ResinfoVO;

//public interface SearchService {
//	//검색리스트 불러오기
//	List<ResinfoVO> searchList(String keyword);
//	
//
//}
@Service("SearchService")
public class SearchService{	
	@Autowired
	ResinfoDAO resinfoDAO;
	public void search(Model model, String keyword) {
		List<ResinfoVO> searchList = resinfoDAO.search(keyword); //db에서 값을 가져와 list에 담아줌
		System.out.println("리스트 시작 ~!~!~");
		searchList.forEach(System.out::println);
		System.out.println("리스트 끝 ~!~!~");
		model.addAttribute("fn_search", searchList);
		model.addAttribute("keyword",keyword);
	}
}
