package com.model.entity;

public class Problem {
    private Integer pid;

    private String pcontent;
    
    private String panswer1;
    
    public String getPanswer1() {
		return panswer1;
	}

	public void setPanswer1(String panswer1) {
		this.panswer1 = panswer1;
	}

	public String getPanswer2() {
		return panswer2;
	}

	public void setPanswer2(String panswer2) {
		this.panswer2 = panswer2;
	}

	public String getPanswer3() {
		return panswer3;
	}

	public void setPanswer3(String panswer3) {
		this.panswer3 = panswer3;
	}

	public String getPanswer4() {
		return panswer4;
	}

	public void setPanswer4(String panswer4) {
		this.panswer4 = panswer4;
	}

	public String getPanswer5() {
		return panswer5;
	}

	public void setPanswer5(String panswer5) {
		this.panswer5 = panswer5;
	}

	private String panswer2;
    
    private String panswer3;
    
    private String panswer4;
    
    private String panswer5;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPcontent() {
        return pcontent;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent == null ? null : pcontent.trim();
    }
}