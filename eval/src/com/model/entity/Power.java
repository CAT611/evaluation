package com.model.entity;

public class Power {
    private Integer pid;

    private String ppname;

    private Integer sjid;

    private String dic;

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}


	public String getPpname() {
		return ppname;
	}

	public void setPpname(String ppname) {
		this.ppname = ppname;
	}

	public Integer getSjid() {
		return sjid;
	}

	public void setSjid(Integer sjid) {
		this.sjid = sjid;
	}

	public String getDic() {
		return dic;
	}

	public void setDic(String dic) {
		this.dic = dic;
	}

	@Override
	public String toString() {
		return "Power [pid=" + pid + ", ppname=" + ppname + ", sjid=" + sjid
				+ ", dic=" + dic + "]";
	}

    
}