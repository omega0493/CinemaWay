package spms.controller;

import java.util.Map;


import spms.bind.DataBinding;
import spms.dao.MySqlUserDAO;
import spms.vo.User;
import spms.annotation.Component;

//HttpServlet�� GenericServlet�� ��ӹ��� Ŭ����
//service() �޼ҵ带 ȣ���Ŀ� ���� doGet(), doPost(), doPut(), doDelete()�� �и��س���
@Component("/user/add.do")
public class UserAddController implements Controller, DataBinding {
	MySqlUserDAO userDAO = null;
	
	public UserAddController setUserDAO(MySqlUserDAO userDAO) {
		this.userDAO = userDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		//key ���� �̸����� �����Ͽ� �ڵ����� �����ؾ� �Ǵ� Ŭ���� Ÿ�� ����
		return new Object[] {
				"user", spms.vo.User.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		User user = (User)model.get("user");
		
		if(user.getEmail() == null) {
			return "redirect:../UserForm.jsp";
		} else {
			userDAO.insert(user);
			
			return "redirect:../auth/login.do";
		}
	}
}
