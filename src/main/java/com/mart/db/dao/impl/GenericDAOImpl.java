package com.mart.db.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.math.BigInteger;
import java.util.List;

import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public abstract class GenericDAOImpl<T> extends BaseDAOImpl {

	private static final Logger logger = LoggerFactory.getLogger(GenericDAOImpl.class);

	private Class<T> persistentClass;

	@SuppressWarnings("unchecked")
	public GenericDAOImpl() {
		this.persistentClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass())
				.getActualTypeArguments()[0];
	}

	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM " + persistentClass.getSimpleName();
		List<T> list = session.createQuery(hql).list();
		for (T u : list) {
			logger.info("User List::" + u);
		}
		return list;
	}

	public void add(T t) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(t);
		logger.info(persistentClass.getSimpleName() + " saved successfully, User Details=" + t);

	}

	public void update(T t) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(t);
		logger.info(persistentClass.getSimpleName() + " updated successfully, User Details=" + t);

	}

	@SuppressWarnings("unchecked")
	public T findById(BigInteger id) {
		Session session = this.sessionFactory.getCurrentSession();
		T t = (T) session.load(persistentClass, id);
		logger.info(persistentClass.getSimpleName() + " loaded successfully, details=" + t);
		return t;
	}

	@SuppressWarnings("unchecked")
	public void removeUser(BigInteger id) {
		Session session = this.sessionFactory.getCurrentSession();
		T t = (T) session.load(persistentClass, id);
		if (null != t) {
			session.delete(t);
		}
		logger.info(persistentClass.getSimpleName() + " deleted successfully, details=" + t);

	}

}
