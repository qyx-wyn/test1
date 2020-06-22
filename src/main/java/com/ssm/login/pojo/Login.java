package com.ssm.login.pojo;

public class Login {
	private Long uid;
	private String username;
	private String password;
	public Long getId() {
		return uid;
	}
	public void setId(Long id) {
		this.uid = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Login [id=" + uid + ", username=" + username + ", password=" + password + "]";
	}


}
