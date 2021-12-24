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
@Component("/main.do")
public class MainController implements Controller, DataBinding {
	MySqlUserDAO userDAO = null;
    
    public MainController setMemberDAO(MySqlUserDAO userDAO) {
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
      
      if(loginInfo.getEmail() == null) {
         return "/Main.jsp";
      } else {
    	  User user = userDAO.exist(loginInfo.getEmail(), loginInfo.getPwd());
         
         if(user != null) {
            HttpSession session = (HttpSession)model.get("session");
            session.setAttribute("User", user);
            return "redirect:../user/list.do";
         } else {
            return "/auth/LoginFail.jsp";
         }
      }
   }
}