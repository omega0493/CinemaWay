package spms.controller;

import java.util.Map;


import spms.annotation.Component;
import spms.dao.MySqlUserDAO;

@Component("/user/list.do")
public class UserListController implements Controller {
	/*
	 * DI(Dependency Injection)
	 * 1) Ŭ������ ���յ� ����
	 * 2) MemberDAO �������̽��� �����ϰ� ��ӱ����ϹǷν� �ٸ� DBMS���� ��ȯ ����
	 * 3) ���߿� ������ �ڵ�ȭ �۾��� ���
	 * */
	
	MySqlUserDAO userDAO = null;
	
	public UserListController setUserDAO(MySqlUserDAO userDAO) {
		this.userDAO = userDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		//���ϵ� ��ȸ ��� �ʿ� ����
		model.put("userList", userDAO.selectlist());
		
		return "/user/UserList.jsp";
	}
}