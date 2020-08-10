package com.web.core.Entity;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Diary {

	private int did;
	private String dname;	
	private String dcontent;
	private String dimage;
	private int uid;
	private String diarytime;
	private List<Message> message;
	private MultipartFile files;
	
	public Diary() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Diary(int did, String dname, String dcontent, String dimage, int uid,String diarytime) {
		super();
		this.did = did;
		this.dname = dname;
		this.dcontent = dcontent;
		this.dimage = dimage;
		this.uid = uid;
		this.diarytime = diarytime;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDcontent() {
		return dcontent;
	}

	public void setDcontent(String dcontent) {
		this.dcontent = dcontent;
	}

	public String getDimage() {
		return dimage;
	}

	public void setDimage(String dimage) {
		this.dimage = dimage;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}


	public String getDiarytime() {
		return diarytime;
	}

	public void setDiarytime(String diarytime) {
		this.diarytime = diarytime;
	}

	public List<Message> getMessage() {
		return message;
	}

	public void setMessage(List<Message> message) {
		this.message = message;
	}

	public MultipartFile getFiles() {
		return files;
	}

	public void setFiles(MultipartFile files) {
		this.files = files;
	}
	
	
}
