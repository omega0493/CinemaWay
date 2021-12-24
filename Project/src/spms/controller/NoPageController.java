package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ReviewDAO;
import spms.vo.Review;
import spms.vo.User;

@Component("/nopage.do")
public class NoPageController implements Controller, DataBinding{
	
	ReviewDAO reviewDAO;
	
	public NoPageController setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"review_no", Integer.class	
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		
		int Review_no = (Integer)model.get("review_no");
		
		model.put("noReviews", reviewDAO.noSelectList(Review_no));
			
			return "/project/content.jsp";
			
		
	}

}
