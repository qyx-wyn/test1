package com.ssm.login.pojo;

public class FeedBack {
	private int id;
	private String advice;
	private int status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "FeedBack [id=" + id + ", advice=" + advice + ", status=" + status + "]";
	}
}
