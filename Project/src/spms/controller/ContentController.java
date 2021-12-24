package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.ReviewDAO;

@Component("/project/content.do")
public class ContentController implements Controller {
	
	ReviewDAO reviewDAO;
	
	public ContentController setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("content", reviewDAO.selectList());
		return "/project/content.jsp";
	}

	
	
	

}
