package com.model.entity;

public class Stu {
    private Integer sid;

    private String userName;

    private String pwd;

    private Integer rid;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }


    public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

	public Stu() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Stu(Integer sid, String userName, String pwd) {
		super();
		this.sid = sid;
		this.userName = userName;
		this.pwd = pwd;
	}

	
}
