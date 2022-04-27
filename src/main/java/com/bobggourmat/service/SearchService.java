package com.bobggourmat.service;

import java.util.List;

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
		
		for(int i=0; i<searchList.size(); i++) {
	 		   int resinfo_idx = searchList.get(i).getResinfo_idx();
	 		  double resinfo_star=  resinfoDAO.saveRes_star(resinfo_idx);
	 		 searchList.get(i).setResinfo_star(resinfo_star);
	 	   }
		
		model.addAttribute("fn_search", searchList);
		model.addAttribute("keyword",keyword);
	}
}
