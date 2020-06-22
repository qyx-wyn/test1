package com.ssm.login.pojo;

public class Tcm {
	private int id;
	private String Tcm_name;
	private String location;
	private String origin;
	private String taste;
	private String efficacy;
	private String processing;
	private String img;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTcm_name() {
		return Tcm_name;
	}
	public void setTcm_name(String tcm_name) {
		Tcm_name = tcm_name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getTaste() {
		return taste;
	}
	public void setTaste(String taste) {
		this.taste = taste;
	}
	public String getEfficacy() {
		return efficacy;
	}
	public void setEfficacy(String efficacy) {
		this.efficacy = efficacy;
	}
	public String getProcessing() {
		return processing;
	}
	public void setProcessing(String processing) {
		this.processing = processing;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "Tcm [id=" + id + ", Tcm_name=" + Tcm_name + ", location=" + location + ", origin=" + origin + ", taste="
				+ taste + ", efficacy=" + efficacy + ", processing=" + processing + ", img=" + img + "]";
	}
}
