package com.rahul.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.rahul.hibernate.HibernateUtils;
import com.rahul.model.UserBean;

@Repository
public class UserDao {

	public void saveUser(UserBean user) {

		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		session.save(user);

		transaction.commit();

	}

	public UserBean getUserByLogin(UserBean user) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		Criteria criteria = session.createCriteria(UserBean.class);
		criteria.add(Restrictions.eq("username", user.getUsername()));
		criteria.add(Restrictions.eq("password", user.getPassword()));

		user = (UserBean) criteria.uniqueResult();
		transaction.commit();
		return user;
	}

	public List<UserBean> getAllUsers() {
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		Criteria criteria = session.createCriteria(UserBean.class);

		List<UserBean> userList = criteria.list();
		transaction.commit();
		return userList;
	}

	public UserBean getUser(int uid) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		UserBean user = (UserBean) session.get(UserBean.class, uid);

		transaction.commit();
		return user;
	}

	public UserBean editUserDetails(UserBean user) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		session.update(user);

		transaction.commit();

		user = getUser(user.getUid());

		return user;

	}

}
