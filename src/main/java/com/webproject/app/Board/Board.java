package com.webproject.app.Board;

import java.util.Date;

public class Board {
	String id;
	int categoryNum;
	String tabone;
	String tabtwo;
	String tabthree;
	String tabfour;
	String subject;
	int price;
	String startDate;
	String endDate;
	String progress;
	int maxPeople;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCategoryNum() {
		return categoryNum;
	}
	public void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}
	public String getTabone() {
		return tabone;
	}
	public void setTabone(String tabone) {
		this.tabone = tabone;
	}
	public String getTabtwo() {
		return tabtwo;
	}
	public void setTabtwo(String tabtwo) {
		this.tabtwo = tabtwo;
	}
	public String getTabthree() {
		return tabthree;
	}
	public void setTabthree(String tabthree) {
		this.tabthree = tabthree;
	}
	public String getTabfour() {
		return tabfour;
	}
	public void setTabfour(String tabfour) {
		this.tabfour = tabfour;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public int getMaxPeople() {
		return maxPeople;
	}
	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
	}
	
	
}
