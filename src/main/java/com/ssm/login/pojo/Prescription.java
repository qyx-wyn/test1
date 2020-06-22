package com.ssm.login.pojo;

public class Prescription {
	private int id;
	private String name;
	private int doc_id;
	private String form;
	private String major;
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
	public int getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
	public String getForm() {
		return form;
	}
	public void setForm(String form) {
		this.form = form;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	@Override
	public String toString() {
		return "Prescription [id=" + id + ", name=" + name + ", doc_id=" + doc_id + ", form=" + form + ", major="
				+ major + "]";
	}
}
