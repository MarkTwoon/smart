package com.chinasoft.SSHDemo1.model;
import javax.persistence.Entity;

import javax.persistence.Table;

 

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "tb_user")
public class User implements Serializable{
    private int id;

    private String name;
    private String password;

    private int age;

    private String sex;
    private Set<Goods> goods;
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Set<Goods> getGoods() {
		return goods;
	}

	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}

     
}
