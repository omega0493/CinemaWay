package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.User;

@Component("userDAO")
public class MySqlUserDAO implements UserDAO {
	/*
	 * Connection connection;
	 * 
	 * //DAO��ü�� servlet�� �ƴϱ� ������ servletcontext�� �ִ� Ŀ�ؼ� ���� ���� �Ұ���
	 * //userlistServlet���� Ŀ�ؼ��� ��ü�� DAO�� �������� �� public void
	 * setConnection(Connection connection) { this.connection = connection; }
	 */
	
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	@Override
	public List<User> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM USERTBL ORDER BY USER_NO ASC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<User> usertbl = new ArrayList<User>();
			
			while(rs.next()) {
				usertbl.add(new User()
										.setUserNo(rs.getInt("USER_NO"))
										.setName(rs.getString("NAME"))
										.setEmail(rs.getString("EMAIL")));
			}
			return usertbl;
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	//userAddServlet���� �Է� ������ �Է¹��� �����͸� user��ü�� ��Ƽ� 
	//DAO�� ������ ����
	@Override
	public int insert(User user) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		final String sqlInsert = "INSERT INTO USERTBL(USER_NO, EMAIL, PWD, NAME )" +
												"VALUES((SELECT IFNULL(MAX(USER_NO), 0) + 1 FROM usertbl b), ?, ?, ?)";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getPwd());
			stmt.setString(3, user.getName());
			//insert �����ϸ� 1 int �� ����
			result = stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public int delete(int userNo) throws Exception {
		int result = 0;
		Connection connection = null;
		Statement stmt = null;
		final String sqlDelete = "DELETE FROM USERTBL WHERE USER_NO=" + userNo;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			result = stmt.executeUpdate(sqlDelete);
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//�ش� ��� ������ ��ȸ
	@Override
	public User selectOne(int userNo) throws Exception {
		User user = null;
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		final String sqlSelectOne = "SELECT * FROM USERTBL WHERE USER_NO=" + userNo;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				user = new User()
									 .setUserNo(rs.getInt("USER_NO"))
									 .setEmail(rs.getString("EMAIL"))
									 .setName(rs.getString("UNAME"))
									 .setPwd(rs.getString("PWD"));
			} else {
				throw new Exception("�ش� ��ȣ�� ȸ���� ã�� �� �����ϴ�.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return user;
	}
	
	//�ش� ��� ������ ����
	@Override
	public int update(User user) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		final String sqlUpdate = "UPDATE USERTBL SET EMAIL=?, NAME=?, PWD=? WHERE USER_NO=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, user.getEmail());
			stmt.setString(3, user.getPwd());
			stmt.setString(2, user.getName());
			stmt.setInt(4, user.getUserNo());
			result = stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public User exist(String email, String pwd) throws Exception {
		System.out.println(email);
		System.out.println(pwd);
		User user = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		final String sqlExist = "SELECT * FROM USERTBL WHERE EMAIL=? AND PWD=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlExist);
			stmt.setString(1, email);
			stmt.setString(2, pwd);
			rs = stmt.executeQuery();
			if(rs.next()) {
				user = new User()
									 .setUserNo(rs.getInt("USER_NO"))
									 .setName(rs.getString("NAME"))
									 .setEmail(rs.getString("EMAIL"))
									 .setPwd(rs.getString("pwd"));
			} else {
				return null;
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return user;
	}
}
