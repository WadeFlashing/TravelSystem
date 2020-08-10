package com.web.core.Entity;

public class Requirement {

	private int requireid;
	private int uid;
	private String requireplace;
	private String scenicspot;
	private String requiredate;
	private String requirements;
	private String name;
	
	
	public Requirement() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Requirement(int requireid, int uid, String requireplace, String scenicspot, String requiredate,
			String requirements,String name) {
		super();
		this.requireid = requireid;
		this.uid = uid;
		this.requireplace = requireplace;
		this.scenicspot = scenicspot;
		this.requiredate = requiredate;
		this.requirements = requirements;
		this.name = name;
	}

	public int getRequireid() {
		return requireid;
	}

	public void setRequireid(int requireid) {
		this.requireid = requireid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getRequireplace() {
		return requireplace;
	}

	public void setRequireplace(String requireplace) {
		this.requireplace = requireplace;
	}

	public String getScenicspot() {
		return scenicspot;
	}

	public void setScenicspot(String scenicspot) {
		this.scenicspot = scenicspot;
	}

	public String getRequiredate() {
		return requiredate;
	}

	public void setRequiredate(String requiredate) {
		this.requiredate = requiredate;
	}

	public String getRequirements() {
		return requirements;
	}

	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
