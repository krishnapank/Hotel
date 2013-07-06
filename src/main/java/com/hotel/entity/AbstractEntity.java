package com.hotel.entity;

import java.io.Serializable;
import java.util.Random;
import java.util.UUID;

import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.Transient;
import javax.persistence.Version;

@MappedSuperclass
@EntityListeners(AbstractEntity.AbstractEntityListener.class)
public abstract class AbstractEntity<T> extends AbstractBaseEntity<T>implements Serializable{
	
	
	@Version
    private Integer version;

	private String uid;
	
	

	@Override
    public boolean equals(Object o) {
        return (o == this || (o instanceof AbstractEntity && uid().equals(((AbstractEntity) o).uid())));
    }

    @Override
    public int hashCode() {
        return uid().hashCode();
    }

    public static class AbstractEntityListener {

        @PrePersist
        public void onPrePersist(AbstractEntity abstractEntity) {
            abstractEntity.uid();
        }
    }

    @Transient
    private String uid() {
        if (uid == null || getId() == null){
        	Random randomGenerator = new Random();           
           
            uid = UUID.randomUUID() + "" + randomGenerator.nextInt(100);
        }
        return uid;
    }

    @Transient
    public String generateUniqueId() {
        return uid;
    }
    
	
}