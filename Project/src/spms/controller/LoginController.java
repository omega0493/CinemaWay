package spms.controller;

import java.util.Map;


import javax.servlet.http.HttpSession;

import spms.bind.DataBinding;
import spms.dao.MySqlUserDAO;
import spms.annotation.Component;
import spms.vo.User;

/*
 * ������ ��Ʈ�ѷ��鿡�� Servlet�� ���ŵǰ� �Ϲ� Ŭ������ ���ϱ� ������
 * HttpServletRequest, HttpServletResponse �� ServletContext�� ����� �� ����
 * execute �޼ҵ��� �Ű������� String Key���� ������ ��ü���� �ʿ� ��Ƽ� ����
 * */
@Component("/auth/login.do")
public class LoginController implements Controller, DataBinding {
	 MySqlUserDAO userDAO = null;
	 
	 public LoginController setUserDAO(MySqlUserDAO userDAO) {
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
			return "/auth/LoginForm.jsp";
		} else {
			User user = userDAO.exist(loginInfo.getEmail(), loginInfo.getPwd());
			
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
