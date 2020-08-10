package com.web.core.Entity;

import org.springframework.web.multipart.MultipartFile;

public class DiaryCheck {

	private int c_did;
	private int c_uid;
	private String c_dname;
	private String c_dcontent;
	private String c_dimage;
	private String c_diarytime;
	private String diaryState;
	private MultipartFile files;
	
	public DiaryCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DiaryCheck(int c_did, int c_uid, String c_dname, String c_dcontent, String c_dimage, String c_diarytime,
			String diaryState) {
		super();
		this.c_did = c_did;
		this.c_uid = c_uid;
		this.c_dname = c_dname;
		this.c_dcontent = c_dcontent;
		this.c_dimage = c_dimage;
		this.c_diarytime = c_diarytime;
		this.diaryState = diaryState;
	}

	public int getC_did() {
		return c_did;
	}

	public void setC_did(int c_did) {
		this.c_did = c_did;
	}

	public int getC_uid() {
		return c_uid;
	}

	public void setC_uid(int c_uid) {
		this.c_uid = c_uid;
	}

	public String getC_dname() {
		return c_dname;
	}

	public void setC_dname(String c_dname) {
		this.c_dname = c_dname;
	}

	public String getC_dcontent() {
		return c_dcontent;
	}

	public void setC_dcontent(String c_dcontent) {
		this.c_dcontent = c_dcontent;
	}

	public String getC_dimage() {
		return c_dimage;
	}

	public void setC_dimage(String c_dimage) {
		this.c_dimage = c_dimage;
	}

	public String getC_diarytime() {
		return c_diarytime;
	}

	public void setC_diarytime(String c_diarytime) {
		this.c_diarytime = c_diarytime;
	}

	public String getDiaryState() {
		return diaryState;
	}

	public void setDiaryState(String diaryState) {
		this.diaryState = diaryState;
	}

	public MultipartFile getFiles() {
		return files;
	}

	public void setFiles(MultipartFile files) {
		this.files = files;
	}
	
	
}
