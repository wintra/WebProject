package com.webproject.app.Login;

public class Talent {
	String id;
	String nickname;
	String technology; //보유기술
	String profield; //전문분야
	String education;
	String state;
	String major;
	String certificate;
	String certificate_date;
	String certificate_state; //발급기관
	int accountNum; //계좌번호
	String bank;
	
	public String getTechnology() {
		return technology;
	}
	public void setTechnology(String technology) {
		this.technology = technology;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProfield() {
		return profield;
	}
	public void setProfield(String profield) {
		this.profield = profield;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	public String getCertificate_date() {
		return certificate_date;
	}
	public void setCertificate_date(String certificate_date) {
		this.certificate_date = certificate_date;
	}
	public String getCertificate_state() {
		return certificate_state;
	}
	public void setCertificate_state(String certificate_state) {
		this.certificate_state = certificate_state;
	}
	public int getAccountNum() {
		return accountNum;
	}
	public void setAccountNum(int accountNum) {
		this.accountNum = accountNum;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}

}