package com.model.entity;

public class Power {
    private Integer pid;

    private String pname;

    private Integer sjid;

    private String dic;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
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
        this.dic = dic == null ? null : dic.trim();
    }
}