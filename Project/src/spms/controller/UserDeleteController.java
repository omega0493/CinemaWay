package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.MySqlUserDAO;

@Component("/user/delete.do")
public class UserDeleteController implements Controller, DataBinding {
	MySqlUserDAO userDAO = null;
	
	public UserDeleteController setUserrDAO(MySqlUserDAO userDAO) {
		this.userDAO = userDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		//key ���� �̸����� �����Ͽ� �ڵ����� �����ؾ� �Ǵ� Ŭ���� Ÿ�� ����
		return new Object[] {
				"userNo", Integer.class
		};
	}	
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {		
		Integer userNo = (Integer)model.get("userNo");
		HttpSession session = (HttpSession)model.get("session");
		userDAO.delete(userNo);
		session.invalidate();
		
		return "redirect:../main.do";
	}
}
