package com.niit.entity;

public class User {

   private Integer id;
   private String name;
   private String password;
   private Integer age;
   private String gender;
   private String phoneNumber;
   private int grade;
   
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
   
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}


public int getGrade() {
	return grade;
}
public void setGrade(int grade) {
	this.grade = grade;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public Integer getAge() {
	return age;
}
public void setAge(Integer age) {
	this.age = age;
}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", password=" + password + ", age=" + age + ", gender=" + gender
			+ ", phoneNumber=" + phoneNumber + ", grade=" + grade + "]";
}

}
