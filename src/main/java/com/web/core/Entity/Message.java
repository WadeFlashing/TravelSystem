package com.web.core.Entity;

public class Message {

	private int messageid;
	private int uid;
	private int did;
	private String mcontent;
	private String mtime;
	private Diary diary;
	private String dname;
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Message(int messageid, int uid, int did, String mcontent, String mtime) {
		super();
		this.messageid = messageid;
		this.uid = uid;
		this.did = did;
		this.mcontent = mcontent;
		this.mtime = mtime;
	}

	public int getMessageid() {
		return messageid;
	}

	public void setMessageid(int messageid) {
		this.messageid = messageid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getMcontent() {
		return mcontent;
	}

	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}

	public String getMtime() {
		return mtime;
	}

	public void setMtime(String mtime) {
		this.mtime = mtime;
	}

	public Diary getDiary() {
		return diary;
	}

	public void setDiary(Diary diary) {
		this.diary = diary;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}
	
	
}
