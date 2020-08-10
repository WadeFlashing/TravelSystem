package com.web.core.Entity;

import org.springframework.web.multipart.MultipartFile;

public class Project {

	private int pid;
	private String pname;	
	private String pdescribe;
	private String pbegin;
	private String pend;
	private String pcontent;
	private String pimage;
	private double pcost;
	private String province;
	private MultipartFile files;
	
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Project(int pid, String pname, String pdescribe, String pbegin, String pend, String pcontent, String pimage,
			double pcost,String province) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pdescribe = pdescribe;
		this.pbegin = pbegin;
		this.pend = pend;
		this.pcontent = pcontent;
		this.pimage = pimage;
		this.pcost = pcost;
		this.province = province;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdescribe() {
		return pdescribe;
	}

	public void setPdescribe(String pdescribe) {
		this.pdescribe = pdescribe;
	}

	public String getPbegin() {
		return pbegin;
	}

	public void setPbegin(String pbegin) {
		this.pbegin = pbegin;
	}

	public String getPend() {
		return pend;
	}

	public void setPend(String pend) {
		this.pend = pend;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public double getPcost() {
		return pcost;
	}

	public void setPcost(double pcost) {
		this.pcost = pcost;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public MultipartFile getFiles() {
		return files;
	}

	public void setFiles(MultipartFile files) {
		this.files = files;
	}
	
}
