package com.chinasoft.SSHDemo1.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tb_goods")
public class Goods implements Serializable{
private int id;
private String name;
private int number;
/*private int userId;*/
private User user;
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
public int getNumber() {
	return number;
}
public void setNumber(int number) {
	this.number = number;
}
/*public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}*/
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}

	
	
}
