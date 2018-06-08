package com.model.entity;

import java.util.ArrayList;
import java.util.List;

public class Teacher {
    private Integer tid;

    private String userName;

    private String pwd;

    private Integer rid;

    private Integer cid;
    
    private String cpic;
    
    private String tint;
    
    private Course course;
    
    private List<Stutea> list  = new ArrayList<Stutea>();
    
    
   	public List<Stutea> getList() {
   		return list;
   	}

   	public void setList(List<Stutea> list) {
   		this.list = list;
   	}


	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getCpic() {
		return cpic;
	}

	public void setCpic(String cpic) {
		this.cpic = cpic;
	}

	public String getTint() {
		return tint;
	}

	public void setTint(String tint) {
		this.tint = tint;
	}

	public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
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

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }
}