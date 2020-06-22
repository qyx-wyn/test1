package com.ssm.login.pojo;

import java.util.List;

public class Doctor {
	private int id;
	private String doc_name;
	private String story;
	private String dynasty;
	private String book;
	private List<Prescription> prescriptions;
	
	public List<Prescription> getPrescriptions() {
		return prescriptions;
	}
	public void setPrescriptions(List<Prescription> prescriptions) {
		this.prescriptions = prescriptions;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDoc_name() {
		return doc_name;
	}
	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getDynasty() {
		return dynasty;
	}
	public void setDynasty(String dynasty) {
		this.dynasty = dynasty;
	}
	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	@Override
	public String toString() {
		return "Doctor [id=" + id + ", doc_name=" + doc_name + ", story=" + story + ", dynasty=" + dynasty + ", book="
				+ book + ", Prescriptions=" + prescriptions + "]";
	}
	
	
}
