package com.hotel.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.NonUniqueObjectException;

import com.hotel.entity.AbstractBaseEntity;
import com.hotel.entity.AbstractEntity;
import com.hotel.entity.HotelFacilityTypeDetail;


public abstract class AbstractDao<T extends AbstractBaseEntity<T>> extends BaseHibernateDao{

	private final Class<T> type;
	
	public Class<T> getType() {
		return type;
	}

	public AbstractDao(Class<T> type) {
		this.type = type;
	}

	@SuppressWarnings("unchecked")
	public T findById(Long id) {
		return (T) getSession().get(type, id);
	}

	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		return getSession().createCriteria(type)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	}

	
	public void delete(Long id) {
		getSession().delete(findById(id));
	}

	public void delete(T entity) {
		getSession().delete(entity);
	}
	
	public void save(T entity) {
		try {
			try {
				getSession().saveOrUpdate(entity);
			}catch(NonUniqueObjectException exception){
				exception.printStackTrace();
				merge(entity);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void merge(T entity) {
		getSession().merge(entity);
	}

	public void update(T entity) {
		getSession().update(entity);
	}

	

}
