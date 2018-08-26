package com.bookstore.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.UserDao;
import com.bookstore.domain.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public void saveUser(User user) {//用户注册
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(user);
	}

	public void deleteUser(Serializable id) {//用户永久注销
		// TODO Auto-generated method stub
		User entity=this.findUserById(id);
		this.getHibernateTemplate().delete(entity);
	}

	public void updataUser(User user) {//用户更新
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(user);
	}

	public User findUserById(Serializable id) {//通过id查找用户
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(User.class, id);
	}

	public User login(User user) {//用户邮箱登入
		// TODO Auto-generated method stub
		String sql="from User where uEmail=? AND uPw=?";
		try {
			List<User> list=this.getSession().createQuery(sql).setString(0, user.getuEmail()).setString(1, user.getuPw()).list();
			return list.get(0);
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
	}

	public Boolean findUserByUsm(String usm) {//通过用户名查找
		// TODO Auto-generated method stub
		String sql="from User where uName=?";
		try {
			List<User> list=this.getSession().createQuery(sql).setString(0, usm).list();
			return list.isEmpty();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	public Boolean findUserReeEmail(String email) {
		// TODO Auto-generated method stub
		String sql="from User where uEmail=?";
		try {
			List<User> list=this.getSession().createQuery(sql).setString(0,email).list();
			return list.isEmpty();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

}
