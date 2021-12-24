package spms.dao;

import java.util.List;

import spms.vo.User;

/*
 * �������̽� ���� ����
 * 
 * Oracle, MySql, MSSql �� DBMS ����� 
 * �� �������̽��� ��ӹ޴� DAO Ŭ������ �����ϵ�
 * �� DBMS Ư���� �°� �����Ͽ� DBMS ��ü�� ���� ��
 * �޼����� ���Ұ� ���� ���� �����ϰ� ó��
 * 
 * */
public interface UserDAO {
	public List<User> selectlist() throws Exception;
	public int insert(User user) throws Exception;
	public int delete(int userNo) throws Exception;
	public User selectOne(int userNo) throws Exception;
	public int update(User user) throws Exception;
	public User exist(String email, String pwd) throws Exception;
}
