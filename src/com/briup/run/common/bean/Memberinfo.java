package com.briup.run.common.bean;

import java.util.Date;

public class Memberinfo {
	private Long id;
	private String name;
	private String password;
	private String nickname;
	private String birthday;
	private String sax;
	private Long age;
	private String height;
    private String weight;
    private String photo;
    private String address;
    private String degree;
    private String email;
    private Long status;
    private Long point;
    private Date registerdate;
    private Date latestdate;
    private String ip;
    private Long logincount;
    private String registerip;
    
	public Date getRegisterdate() {
		return registerdate;
	}
	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}
	public Date getLatestdate() {
		return latestdate;
	}
	public void setLatestdate(Date latestdate) {
		this.latestdate = latestdate;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSax() {
		return sax;
	}
	public void setSax(String sax) {
		this.sax = sax;
	}
	public Long getAge() {
		return age;
	}
	public void setAge(Long age) {
		this.age = age;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getStatus() {
		return status;
	}
	public void setStatus(Long status) {
		this.status = status;
	}
	public Long getPoint() {
		return point;
	}
	public void setPoint(Long point) {
		this.point = point;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Long getLogincount() {
		return logincount;
	}
	public void setLogincount(Long logincount) {
		this.logincount = logincount;
	}
	public String getRegisterip() {
		return registerip;
	}
	public void setRegisterip(String registerip) {
		this.registerip = registerip;
	}
}
