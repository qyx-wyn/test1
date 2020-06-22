package com.ssm.login.pojo;

public class Hospital {
    private int h_id;
    private String hos_name;
    private String city;
    private String address;
    private String lev;
    private String type;
    private String postcode;
    private String tel;
    private String website;
    private String special;
    private String recommend;
	public int getH_id() {
		return h_id;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	public String getHos_name() {
		return hos_name;
	}
	public void setHos_name(String hos_name) {
		this.hos_name = hos_name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLev() {
		return lev;
	}
	public void setLev(String lev) {
		this.lev = lev;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getSpecial() {
		return special;
	}
	public void setSpecial(String special) {
		this.special = special;
	}
	public String getRecommend() {
		return recommend;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	
	@Override
	public String toString() {
		return "Hospial [h_id=" + h_id + ", hos_name=" + hos_name + ", city=" + city + ", address=" + address + ", lev="
				+ lev + ", type=" + type + ", postcode=" + postcode + ", tel=" + tel + ", website=" + website
				+ ", special=" + special + ", recommend=" + recommend + "]";
	}
}
