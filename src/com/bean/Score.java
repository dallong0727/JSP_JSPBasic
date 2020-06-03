package com.bean;

public class Score {
	
	private String id;
	private String pw;
	private String name;
	private String address;
	private int kor;
	private int math;
	private int sum;
	private double avg;
	
	public Score() {
		// TODO Auto-generated constructor stub
	}

	public Score(String id, String pw, String name, String address, int kor, int math, int sum, double avg) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.address = address;
		this.kor = kor;
		this.math = math;
		this.sum = sum;
		this.avg = avg;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(int avg) {
		this.avg = avg;
	}
	
}
