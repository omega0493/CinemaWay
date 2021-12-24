package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.MySqlUserDAO;
import spms.vo.User;

/*
 * ������ ��Ʈ�ѷ��鿡�� Servlet�� ���ŵǰ� �Ϲ� Ŭ������ ���ϱ� ������
 * HttpServletRequest, HttpServletResponse �� ServletContext�� ����� �� ����
 * execute �޼ҵ��� �Ű������� String Key���� ������ ��ü���� �ʿ� ��Ƽ� ����
 * */
@Component("/page/Page.do")

public class PageController implements Controller, DataBinding {
	MySqlUserDAO userDAO = null;
    
    public PageController setMemberDAO(MySqlUserDAO userDAO) {
       this.userDAO = userDAO;
       return this;
    }
    
    @Override
   public Object[] getDataBinders() {
      //key ���� �̸����� �����Ͽ� �ڵ����� �����ؾ� �Ǵ� Ŭ���� Ÿ�� ����
      return new Object[] {
            "loginInfo", spms.vo.User.class
      };
   }
    
   @Override
   public String execute(Map<String, Object> model) throws Exception {
	   User loginInfo = (User)model.get("loginInfo");
      String boardName = (String)model.get("boardName");
      System.out.println(boardName);
	      if (boardName.equals("0")) {
	    	  return "/page/BudapestHotel.jsp";
	      } else if (boardName.equals("1")) {
	    	  return "../page/EternalSunshine.jsp";
	      } else if (boardName.equals("2")) {
	    	  return "../page/TheWailing.jsp";
	      } else if (boardName.equals("3")) {
	    	  return "../page/LittelForest.jsp";
	      } else if (boardName.equals("4")) {
	    	  return "../project/ReviewList.jsp";
	      }
	      
      
      if(loginInfo.getEmail() == null) {
         return "/page/BudapestHotel.jsp";
      } else {
    	  User user = userDAO.exist(loginInfo.getEmail(), loginInfo.getPwd());
    	  System.out.println("���ƾƾ�");
         if(user != null) {
            HttpSession session = (HttpSession)model.get("session");
            session.setAttribute("User", user);
            return "redirect:../main.do";
         } else {
            return "/auth/LoginFail.jsp";
         }
      }
   }
}