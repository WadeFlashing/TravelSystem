package com.web.core.Entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Tree_menu {

	private int id;
	@JsonProperty(value = "text")
	private String treename;
	private int pid;
	private List<Tree_menu> children;
	private String state;
	//只有一个属性
	//@JsonProperty(value = "attributes")
	//private String filename;
	
	//多个属性
	private Attributes attributes;
	private String filename;
	
	public Tree_menu() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTreename() {
		return treename;
	}

	public void setTreename(String treename) {
		this.treename = treename;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public List<Tree_menu> getChildren() {
		return children;
	}

	public void setChildren(List<Tree_menu> children) {
		this.children = children;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Attributes getAttributes() {
		return attributes;
	}

	public void setAttributes(Attributes attributes) {
		this.attributes = attributes;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
}
