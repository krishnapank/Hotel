/**
 * 
 */
package com.hotel.entity;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * @author vivekgupta
 *
 */
@MappedSuperclass
public class AbstractBaseEntity<T> implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
	private Long id;
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}
}
